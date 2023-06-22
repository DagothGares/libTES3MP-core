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

pub fn init() Status {
    var arena = std.heap.ArenaAllocator.init(g_alloc);
    defer arena.deinit();
    var allocator = arena.allocator();

    const cwd = std.fs.cwd();

    // TODO: narrow down why this causes a segfault in debug builds on Windows, even with
    // @setRuntimeSafety(false)
    var libraries_file = cwd.openFile("./server/data/libraries.json", .{}) catch |err| switch (err) {
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

    var parser = std.json.Parser.init(allocator, .alloc_always);

    var libraries_json = parser.parse(libraries_file.readToEndAlloc(
        allocator,
        64 * 1024,
    ) catch |err| switch (err) {
        inline else => |e| {
            server.zigLogMessage(
                4,
                "libTES3MP-core: Failed to read ./server/data/libraries.json: " ++ @errorName(e),
            );

            server.zigStopServer(1);

            return Status.None;
        },
    }) catch |err| switch (err) {
        inline else => |e| {
            server.zigLogMessage(
                4,
                "libTES3MP-core: Failed to read ./server/data/libraries.json: " ++ @errorName(e),
            );

            server.zigStopServer(1);

            return Status.None;
        },
    };

    for (libraries_json.root.array.items) |value| {
        const prefix = "./server/scripts/custom/";
        const full_length = value.string.len + prefix.len;
        if (full_length > std.fs.MAX_PATH_BYTES) {
            // I dunno if StopServer is noreturn or not.
            defer server.zigStopServer(1);

            var err_buff: [48 * 1024]u8 = undefined;
            server.zigLogMessage(4, std.fmt.bufPrintZ(
                &err_buff,
                "Could not open external library " ++
                    prefix ++
                    "{s}: path longer than maximum allowed",
                .{value.string},
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
        @memcpy(path_buffer[prefix.len .. prefix.len + value.string.len], value.string);
        const full_path = path_buffer[0..full_length];

        var library = std.DynLib.open(full_path) catch |err| switch (err) {
            inline else => |e| {
                var err_buff: [48 * 1024]u8 = undefined;
                server.zigLogMessage(4, std.fmt.bufPrintZ(
                    &err_buff,
                    "libTES3MP-core: Could not open external library " ++
                        prefix ++
                        "{s}: " ++ @errorName(e),
                    .{value.string},
                ) catch unreachable);

                server.zigStopServer(1);

                return Status.None;
            },
        };

        const libmain: *const fn () callconv(.C) void = library.lookup(
            *const fn () callconv(.C) void,
            "libmain",
        ) orelse {
            var err_buf: [48 * 1024]u8 = undefined;
            server.zigLogMessage(2, std.fmt.bufPrintZ(
                &err_buf,
                "libTES3MP-core: external library {s} missing symbol \'libmain\'",
                .{value.string},
            ) catch unreachable);

            library.close();
            continue;
        };

        libmain();

        // We can't close the library when we might have its function pointers bound to an Event.
        libraries.append(g_alloc, library) catch |err| switch (err) {
            inline else => {
                var err_buf: [48 * 1024]u8 = undefined;
                server.zigLogMessage(4, std.fmt.bufPrintZ(
                    &err_buf,
                    "libTES3MP-core: ran out of memory while binding external library {s}",
                    .{value.string},
                ) catch unreachable);

                library.close();

                server.zigStopServer(1);

                return Status.None;
            },
        };
    }

    return Status.All;
}
