const std = @import("std");

const binding = @import("binding.zig");

const Param = std.builtin.Type.Fn.Param;

var base_allocator: std.heap.GeneralPurposeAllocator(.{}) = .{};
pub var event_allocator = std.heap.ArenaAllocator.init(base_allocator.allocator());

const err_codes = @import("errcodes.zig").codes;
const c_str = binding.c_str;

pub const Status = extern struct {
    default: bool = true,
    custom: bool = true,
};

pub fn CallbackType(comptime Function: anytype) type {
    return @Type(.{ .Fn = .{
        .calling_convention = .C,
        .alignment = @alignOf(Function),
        .is_generic = false,
        .is_var_args = false,
        .return_type = Status,
        .params = [1]Param{.{
            .is_generic = false,
            .is_noalias = false,
            .type = Status,
        }} ++ @typeInfo(Function).Fn.params,
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
    comptime post_callback: ?PostCallbackType(Function),
) type {
    return struct {
        var callbacks: std.ArrayListUnmanaged(*const CallbackType(Function)) = .{};

        fn trigger_void() callconv(.C) void {
            var status: Status = .{};
            for (callbacks.items) |cb| {
                status = cb(status);
            }

            if (post_callback) |cb| cb(status);
        }

        fn trigger_bool(boolean: bool) callconv(.C) void {
            var status: Status = .{};
            for (callbacks.items) |cb| {
                status = cb(status, boolean);
            }

            if (post_callback) |cb| cb(status, boolean);
        }

        fn trigger_ushort(ushort: c_ushort) callconv(.C) void {
            var status: Status = .{};
            for (callbacks.items) |cb| {
                status = cb(status, ushort);
            }

            if (post_callback) |cb| cb(status, ushort);
        }

        fn trigger_int(int: c_int) callconv(.C) void {
            var status: Status = .{};
            for (callbacks.items) |cb| {
                status = cb(status, int);
            }

            if (post_callback) |cb| cb(status, int);
        }

        fn trigger_str(str: c_str) callconv(.C) void {
            var status: Status = .{};
            for (callbacks.items) |cb| {
                status = cb(status, str);
            }

            if (post_callback) |cb| cb(status, str);
        }

        fn trigger_ushort_str(ushort: c_ushort, str: c_str) callconv(.C) void {
            var status: Status = .{};
            for (callbacks.items) |cb| {
                status = cb(status, ushort, str);
            }

            if (post_callback) |cb| cb(status, ushort, str);
        }

        fn trigger_ushort_int_str(ushort: c_ushort, int: c_int, str: c_str) callconv(.C) void {
            var status: Status = .{};
            for (callbacks.items) |cb| {
                status = cb(status, ushort, int, str);
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
            callbacks.append(event_allocator.allocator(), callback) catch |err| switch (err) {
                inline else => |e| {
                    const err_name = comptime @errorName(e);
                    binding.server.zigLogMessage(
                        4,
                        "Zig Event " ++ export_name ++ " failed to bind function: " ++ err_name,
                    );
                    return binding.server.zigStopServer(@enumToInt(@field(err_codes, err_name)));
                },
            };
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
