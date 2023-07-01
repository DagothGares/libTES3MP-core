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

pub fn init() Status {
    server.zigLogMessage(
        1,
        "libTES3MP-core: Version 0.1.0, compiled in " ++
            @tagName(builtin.mode) ++ " mode.",
    );
    if (builtin.os.tag == .windows) {
        // undo TES3MP hiding StdErr so error messages are visible
        const attached = AttachConsole(@bitCast(@as(i32, -1)));
        if (attached != 0) {
            server.zigLogMessage(4, "libTES3MP-core: Could not attach to console window");

            server.zigStopServer(1);

            return Status.None;
        }
    }
    var arena = std.heap.ArenaAllocator.init(g_alloc);
    defer arena.deinit();
    var allocator = arena.allocator();

    const cwd = std.fs.cwd();

    // TODO: put this back to openFile once windows.wToPrefixedFileW starts behaving again
    var libraries_file = blk: {
        if (builtin.os.tag == .windows) {
            var path_space: windows.PathSpace = undefined;
            {
                const temp = std.unicode.utf8ToUtf16LeStringLiteral(
                    ".\\server\\data\\libraries.json",
                );

                @memcpy(path_space.data[0..temp.len], temp);
                path_space.len = windows.normalizePath(u16, path_space.data[0..temp.len]) catch {
                    unreachable;
                };
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
            break :blk cwd.openFileW(path_space.span(), .{}) catch |err| switch (err) {
                inline else => |e| {
                    server.zigLogMessage(
                        4,
                        "libTES3MP-core: Could not open ./server/data/libraries.json: " ++
                            @errorName(e),
                    );

                    server.zigStopServer(1);

                    return Status.None;
                },
            };
        } else break :blk cwd.openFile("./server/data/libraries.json") catch |err| switch (err) {
            inline else => |e| {
                server.zigLogMessage(
                    4,
                    "libTES3MP-core: Could not open ./server/data/libraries.json: " ++
                        @errorName(e),
                );

                server.zigStopServer(1);

                return Status.None;
            },
        };
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

        switch (next) {
            .allocated_string => |path| {
                defer allocator.free(path);

                const prefix = "./server/scripts/custom/";

                var library = blk: {
                    const full_length = prefix.len + path.len;
                    if (full_length > std.fs.MAX_PATH_BYTES) {
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

                    @memcpy(path_buffer[0..prefix.len], prefix);
                    @memcpy(path_buffer[prefix.len .. prefix.len + path.len], path);
                    path_buffer[full_length] = 0;
                    const full_path = path_buffer[0..full_length :0];
                    if (builtin.os.tag == .windows) {
                        // sliceToPrefixedFileW

                        var path_u16: windows.PathSpace = undefined;
                        path_u16.len = std.unicode.utf8ToUtf16Le(
                            &path_u16.data,
                            full_path,
                        ) catch |err| switch (err) {
                            inline else => |e| {
                                var err_buf: [48 * 1024]u8 = undefined;
                                server.zigLogMessage(4, std.fmt.bufPrintZ(
                                    &err_buf,
                                    "libTES3MP-core: Could not open external library " ++
                                        prefix ++ "{s}: " ++ @errorName(e),
                                    .{path},
                                ) catch unreachable);

                                server.zigStopServer(1);

                                return Status.None;
                            },
                        };
                        path_u16.data[path_u16.len] = 0;

                        // wToPrefixedFileW

                        var path_space: windows.PathSpace = undefined;
                        @memcpy(path_space.data[0..path_u16.len], path_u16.span());

                        path_space.len = windows.normalizePath(
                            u16,
                            path_space.data[0..path_u16.len],
                        ) catch unreachable;
                        path_space.data[path_space.len] = 0;

                        const nt_prefix = [_]u16{ '\\', '?', '?', '\\' };
                        path_space.data[0..nt_prefix.len].* = nt_prefix;

                        const buf_len: u32 = @intCast(path_space.data.len - 4);
                        const len = windows.ntdll.RtlGetFullPathName_U(
                            &path_u16.data,
                            buf_len * 2,
                            path_space.data[4..].ptr,
                            null,
                        );

                        if (len == 0) {
                            var err_buf: [48 * 1024]u8 = undefined;
                            server.zigLogMessage(4, std.fmt.bufPrintZ(
                                &err_buf,
                                "libTES3MP-core: Could not open external library " ++
                                    prefix ++ "{s}: BadPathName",
                                .{path},
                            ) catch unreachable);

                            server.zigStopServer(1);

                            return Status.None;
                        } else if (len / 2 > buf_len) {
                            var err_buf: [48 * 1024]u8 = undefined;
                            server.zigLogMessage(4, std.fmt.bufPrintZ(
                                &err_buf,
                                "libTES3MP-core: Could not open external library " ++
                                    prefix ++ "{s}: NameTooLong",
                                .{path},
                            ) catch unreachable);

                            server.zigStopServer(1);

                            return Status.None;
                        }
                        path_space.len = 4 + (len / 2);

                        break :blk std.DynLib.openW(path_space.span()) catch |err| switch (err) {
                            inline else => |e| {
                                var err_buf: [48 * 1024]u8 = undefined;
                                server.zigLogMessage(4, std.fmt.bufPrintZ(
                                    &err_buf,
                                    "libTES3MP-core: Could not open external library " ++
                                        prefix ++ "{s}: " ++ @errorName(e),
                                    .{path},
                                ) catch unreachable);

                                server.zigStopServer(1);

                                return Status.None;
                            },
                        };
                    } else break :blk std.DynLib.open(full_path) catch |err| switch (err) {
                        inline else => |e| {
                            var err_buff: [48 * 1024]u8 = undefined;
                            server.zigLogMessage(4, std.fmt.bufPrintZ(
                                &err_buff,
                                "libTES3MP-core: Could not open external library " ++
                                    prefix ++ "{s}: " ++ @errorName(e),
                                .{path},
                            ) catch unreachable);

                            server.zigStopServer(1);

                            return Status.None;
                        },
                    };
                };

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

                libmain();

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

    return Status.All;
}
