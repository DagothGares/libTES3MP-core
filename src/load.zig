//! Goal: Load other libraries specified by a configuration file. Call an entrypoint function so
//! that they can bind themselves to the provided events.

const std = @import("std");
const builtin = @import("builtin");
const server = @import("binding.zig").server;

const Status = @import("Event.zig").Status;

var g_alloc = @import("main.zig").allocator;

pub var libraries: std.ArrayListUnmanaged(std.DynLib) = .{};

pub fn unloadLibraries() void {
    for (libraries.items) |*lib| {
        lib.close();
    }

    libraries.deinit(g_alloc);
}

const windows = std.os.windows;
extern "kernel32" fn AttachConsole(dwProcessId: windows.DWORD) callconv(windows.WINAPI) windows.BOOL;
extern "kernel32" fn LoadLibraryA(lpLibFileName: windows.LPCSTR) callconv(windows.WINAPI) ?windows.HMODULE;

pub fn init() Status {
    // undo TES3MP fucking up StdErr
    const attached = AttachConsole(@bitCast(@as(i32, -1)));
    if (attached != 0) {
        server.zigLogMessage(4, "libTES3MP-core: Could not attach to console window");

        server.zigStopServer(1);

        return Status.None;
    }
    //
    var arena = std.heap.ArenaAllocator.init(g_alloc);
    defer arena.deinit();
    var allocator = arena.allocator();

    const cwd = std.fs.cwd();

    // std.os.windows.wToPrefixedFileW causes a segfault here, even though inlining it is fine???
    var path_space: windows.PathSpace = undefined;
    {
        const temp = std.unicode.utf8ToUtf16LeStringLiteral(".\\server\\data\\libraries.json");

        @memcpy(path_space.data[0..temp.len], temp);
        path_space.len = windows.normalizePath(u16, path_space.data[0..temp.len]) catch unreachable;
        path_space.data[path_space.len] = 0;

        const nt_prefix = [_]u16{ '\\', '?', '?', '\\' };
        path_space.data[0..nt_prefix.len].* = nt_prefix;

        const buf_len = @as(u32, @intCast(path_space.data.len - 4));
        const len = windows.ntdll.RtlGetFullPathName_U(
            temp,
            buf_len * 2,
            path_space.data[4..].ptr,
            null,
        );

        if (len == 0) {
            unreachable;
        } else if (len / 2 > buf_len) {
            unreachable;
        }
        path_space.len = 4 + (len / 2);
    }

    // TODO: put this back to openFile once wToPrefixedFileW starts behaving again
    var libraries_file = cwd.openFileW(path_space.span(), .{}) catch |err| switch (err) {
        inline else => |e| {
            server.zigLogMessage(
                4,
                "libTES3MP-core: Could not open ./server/data/libraries.json: " ++ @errorName(e),
            );

            server.zigStopServer(1);

            return Status.None;
        },
    };
    defer libraries_file.close();

    var reader = std.json.reader(allocator, libraries_file.reader());

    {
        const should_begin = reader.next() catch |err| switch (err) {
            inline else => |e| {
                server.zigLogMessage(
                    4,
                    "libTES3MP-core: Could not parse libraries.json " ++
                        @errorName(e),
                );

                server.zigStopServer(1);

                return Status.None;
            },
        };

        if (should_begin != .array_begin) {
            var err_buf: [48 * 1024]u8 = undefined;

            server.zigLogMessage(4, std.fmt.bufPrintZ(
                &err_buf,
                "libTES3MP-core: Could not parse libraries.json: " ++
                    "expected 'array_begin' token, got '{s}'",
                .{@tagName(should_begin)},
            ) catch unreachable);

            server.zigStopServer(1);

            return Status.None;
        }
    }

    while (reader.nextAlloc(allocator, .alloc_always)) |next| {
        if (next == .end_of_document) {
            break;
        }

        server.zigLogMessage(4, "libTES3MP-core: Here 1");

        switch (next) {
            .allocated_string => |path| {
                defer allocator.free(path);

                server.zigLogMessage(4, "libTES3MP-core: Here 2");

                const prefix = "./server/scripts/custom/";
                const full_length = prefix.len + path.len;
                if (full_length > std.fs.MAX_PATH_BYTES) {
                    // I dunno if StopServer is noreturn or not.
                    defer server.zigStopServer(1);

                    var err_buff: [48 * 1024]u8 = undefined;
                    server.zigLogMessage(4, std.fmt.bufPrintZ(
                        &err_buff,
                        "libTES3MP-core: Could not open external library " ++
                            prefix ++
                            "{s}: path longer than maximum allowed",
                        .{path},
                    ) catch {
                        server.zigLogMessage(
                            4,
                            "libTES3MP-core: libraries.json contains absurdly long entry",
                        );

                        return Status.None;
                    });

                    return Status.None;
                }
                var path_buffer: [std.fs.MAX_PATH_BYTES]u8 = undefined;

                server.zigLogMessage(4, "libTES3MP-core: Here 3");

                @memcpy(path_buffer[0..prefix.len], prefix);
                @memcpy(path_buffer[prefix.len .. prefix.len + path.len], path);
                path_buffer[full_length] = 0;
                const full_path = path_buffer[0..full_length :0];

                server.zigLogMessage(4, "libTES3MP-core: Here 4");

                // I can't be bothered inlining wToPrefixedFileW a second time, especially not for
                // user-input strings
                var library = std.DynLib{ .dll = LoadLibraryA(full_path) orelse {
                    server.zigLogMessage(4, "libTES3MP-core: LoadLibraryA returned null");

                    server.zigStopServer(1);

                    return Status.None;
                } };

                //var library = std.DynLib.open(full_path) catch |err| switch (err) {
                //    inline else => |e| {
                //        var err_buff: [48 * 1024]u8 = undefined;
                //        server.zigLogMessage(4, std.fmt.bufPrintZ(
                //            &err_buff,
                //            "libTES3MP-core: Could not open external library " ++
                //                prefix ++ "{s}: " ++ @errorName(e),
                //            .{path},
                //        ) catch unreachable);

                //        server.zigStopServer(1);

                //        return Status.None;
                //    },
                //};

                server.zigLogMessage(4, "libTES3MP-core: Here 5");

                const libmain: *const fn () callconv(.C) void = library.lookup(
                    *const fn () callconv(.C) void,
                    "libmain",
                ) orelse {
                    var err_buf: [48 * 1024]u8 = undefined;
                    server.zigLogMessage(2, std.fmt.bufPrintZ(
                        &err_buf,
                        "libTES3MP-core: external library {s} missing symbol \'libmain\'",
                        .{path},
                    ) catch unreachable);

                    library.close();
                    continue;
                };

                server.zigLogMessage(4, "libTES3MP-core: Here 6");

                libmain();

                server.zigLogMessage(4, "libTES3MP-core: Here 7");

                // We can't close the library when we might have its function pointers bound to an
                // Event.
                libraries.append(g_alloc, library) catch |err| switch (err) {
                    inline else => {
                        var err_buf: [48 * 1024]u8 = undefined;
                        server.zigLogMessage(4, std.fmt.bufPrintZ(
                            &err_buf,
                            "libTES3MP-core: ran out of memory while binding external library {s}",
                            .{path},
                        ) catch unreachable);

                        library.close();

                        server.zigStopServer(1);

                        return Status.None;
                    },
                };

                server.zigLogMessage(4, "libTES3MP-core: Here 8");
            },
            .array_end => break,
            // need to free the allocation
            .allocated_number => |n| {
                defer allocator.free(n);

                server.zigLogMessage(
                    4,
                    "libTES3MP-core: Could not parse libraries.json: " ++
                        "expected string token, got 'number'",
                );

                server.zigStopServer(1);

                return Status.None;
            },
            inline else => {
                var err_buf: [16 * 1024]u8 = undefined;
                server.zigLogMessage(4, std.fmt.bufPrintZ(
                    &err_buf,
                    "libTES3MP-core: Could not parse libraries.json: " ++
                        "expected string token, got '{s}'",
                    .{@tagName(next)},
                ) catch unreachable);

                server.zigStopServer(1);

                return Status.None;
            },
        }
    } else |err| switch (err) {
        inline else => |e| {
            server.zigLogMessage(
                4,
                "libTES3MP-core: Could not parse libraries.json: " ++
                    @errorName(e),
            );

            server.zigStopServer(1);

            return Status.None;
        },
    }

    server.zigLogMessage(4, "libTES3MP-core: Here 9");

    return Status.All;
}
