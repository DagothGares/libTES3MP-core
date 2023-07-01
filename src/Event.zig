const std = @import("std");
const builtin = @import("builtin");

const binding = @import("binding.zig");

const Param = std.builtin.Type.Fn.Param;

const g_alloc = @import("main.zig").allocator;

pub const Status = enum(u8) {
    None = 0,
    Default = 1,
    Custom = 2,
    All = 3,
};

pub fn CallbackType(comptime Function: anytype) type {
    return @Type(.{ .Fn = .{
        .calling_convention = .C,
        .alignment = @alignOf(Function),
        .is_generic = false,
        .is_var_args = false,
        .return_type = u8,
        .params = [1]Param{.{
            .is_generic = false,
            .is_noalias = false,
            .type = u8,
        }} ++ @typeInfo(Function).Fn.params,
    } });
}

pub fn PreCallbackType(comptime Function: anytype) type {
    return @Type(.{ .Fn = .{
        .calling_convention = .Unspecified,
        .alignment = @alignOf(Function),
        .is_generic = false,
        .is_var_args = false,
        .return_type = Status,
        .params = @typeInfo(Function).Fn.params,
    } });
}

pub fn PostCallbackType(comptime Function: anytype) type {
    return @Type(.{ .Fn = .{
        .calling_convention = .Unspecified,
        .alignment = @alignOf(Function),
        .is_generic = false,
        .is_var_args = false,
        .return_type = void,
        .params = [1]Param{.{
            .is_generic = false,
            .is_noalias = false,
            .type = Status,
        }} ++ @typeInfo(Function).Fn.params,
    } });
}

pub const TriggerType = enum {
    Void,
    Bool,
    UnsignedShort,
    Int,
    String,
    UnsignedShort_String,
    UnsignedShort_Int_String,
};

pub fn Event(
    comptime Function: anytype,
    comptime export_name: []const u8,
    comptime trigger_type: TriggerType,
    comptime pre_callback: ?PreCallbackType(Function),
    comptime post_callback: ?PostCallbackType(Function),
) type {
    return struct {
        pub var callbacks: std.ArrayListUnmanaged(*const CallbackType(Function)) = .{};

        fn trigger_void() callconv(.C) void {
            var status: Status = if (pre_callback) |cb| cb() else Status.All;

            for (callbacks.items) |cb| {
                // TODO: force bound functions to supply a name, so if they return an invalid
                // Status, we can provide helpful info instead of defaulting back to enabling
                // everything
                status = std.meta.intToEnum(Status, cb(
                    @intFromEnum(status),
                )) catch Status.All;
            }

            if (post_callback) |cb| cb(status);
        }

        fn trigger_bool(boolean: bool) callconv(.C) void {
            var status: Status = if (pre_callback) |cb| cb(boolean) else Status.All;

            for (callbacks.items) |cb| {
                status = std.meta.intToEnum(
                    Status,
                    cb(@intFromEnum(status), boolean),
                ) catch Status.All;
            }

            if (post_callback) |cb| cb(status, boolean);
        }

        fn trigger_ushort(ushort: c_ushort) callconv(.C) void {
            var status: Status = if (pre_callback) |cb| cb(ushort) else Status.All;

            for (callbacks.items) |cb| {
                status = std.meta.intToEnum(
                    Status,
                    cb(@intFromEnum(status), ushort),
                ) catch Status.All;
            }

            if (post_callback) |cb| cb(status, ushort);
        }

        fn trigger_int(int: c_int) callconv(.C) void {
            var status: Status = if (pre_callback) |cb| cb(int) else Status.All;

            for (callbacks.items) |cb| {
                status = std.meta.intToEnum(
                    Status,
                    cb(@intFromEnum(status), int),
                ) catch Status.All;
            }

            if (post_callback) |cb| cb(status, int);
        }

        fn trigger_str(str: [*:0]const u8) callconv(.C) void {
            var status: Status = if (pre_callback) |cb| cb(str) else Status.All;

            for (callbacks.items) |cb| {
                status = std.meta.intToEnum(
                    Status,
                    cb(@intFromEnum(status), str),
                ) catch Status.All;
            }

            if (post_callback) |cb| cb(status, str);
        }

        fn trigger_ushort_str(ushort: c_ushort, str: [*:0]const u8) callconv(.C) void {
            var status: Status = if (pre_callback) |cb| cb(ushort, str) else Status.All;

            for (callbacks.items) |cb| {
                status = std.meta.intToEnum(
                    Status,
                    cb(@intFromEnum(status), ushort, str),
                ) catch Status.All;
            }

            if (post_callback) |cb| cb(status, ushort, str);
        }

        fn trigger_ushort_int_str(
            ushort: c_ushort,
            int: c_int,
            str: [*:0]const u8,
        ) callconv(.C) void {
            var status: Status = if (pre_callback) |cb| cb(ushort, int, str) else Status.All;

            for (callbacks.items) |cb| {
                status = std.meta.intToEnum(
                    Status,
                    cb(@intFromEnum(status), ushort, int, str),
                ) catch Status.All;
            }

            if (post_callback) |cb| cb(status, ushort, int, str);
        }

        pub const trigger = switch (trigger_type) {
            .Void => trigger_void,
            .Bool => trigger_bool,
            .UnsignedShort => trigger_ushort,
            .Int => trigger_int,
            .String => trigger_str,
            .UnsignedShort_String => trigger_ushort_str,
            .UnsignedShort_Int_String => trigger_ushort_int_str,
        };

        pub fn bind(callback: *const CallbackType(Function)) callconv(.C) void {
            callbacks.append(g_alloc, callback) catch |err| switch (err) {
                inline else => |e| {
                    const err_name = comptime @errorName(e);
                    binding.server.zigLogMessage(
                        4,
                        "Zig Event " ++ export_name ++ " failed to bind function: " ++ err_name,
                    );
                    return binding.server.zigStopServer(1);
                },
            };
        }

        pub fn unbind() void {
            callbacks.deinit(g_alloc);
        }

        comptime {
            @export(trigger, .{
                .name = export_name,
                .linkage = .Strong,
            });

            @export(bind, .{
                .name = "bind_" ++ export_name,
                .linkage = .Strong,
            });
        }
    };
}
