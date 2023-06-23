//! Raw bindings to the timer functions declared by TES3MP's ScriptFunctions.hpp file.
//! NOTE: You must patch TES3MP to properly use these functions, as of TES3MP 0.8.1. Currently,
//! TES3MP is missing the necessary lines of code to actually call non-Lua callback functions.
//! See ../patch/tes3mp-timer.patch.

const std = @import("std");
const builtin = @import("builtin");
const binding = @import("../binding.zig");

const c_str = binding.c_str;
const ForeignFunction = binding.ForeignFunction;
const va_list = binding.va_list;

pub export var zigCreateTimer: *const fn (*const ForeignFunction, c_int) callconv(.C) c_int = &binding.ub_fn_fptrva_int;
pub export var zigCreateTimerEx: *const fn (*const ForeignFunction, c_int, c_str, ?va_list) callconv(.C) c_int = &binding.ub_fn_fptrva_int_str_va;
pub export var zigStartTimer: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigStopTimer: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigRestartTimer: *const fn (c_int, c_int) callconv(.C) void = &binding.ub_fn_2int;
pub export var zigFreeTimer: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigIsTimerElapsed: *const fn (c_int) callconv(.C) bool = &binding.ub_fn_int;

pub export fn impl_CreateTimer(callback: *const ForeignFunction, msec: c_int) callconv(.C) c_int {
    return @call(.never_inline, zigCreateTimer, .{ callback, msec });
}
/// Your mileage may vary when calling this function, especially on Windows.
pub export fn impl_CreateTimerEx(
    callback: *const ForeignFunction,
    msec: c_int,
    types: c_str,
    args: ?va_list,
) callconv(.C) c_int {
    return @call(.never_inline, zigCreateTimerEx, .{ callback, msec, types, args });
}
pub export fn impl_StartTimer(timerId: c_int) callconv(.C) void {
    return @call(.never_inline, zigStartTimer, .{timerId});
}
pub export fn impl_StopTimer(timerId: c_int) callconv(.C) void {
    return @call(.never_inline, zigStopTimer, .{timerId});
}
pub export fn impl_RestartTimer(timerId: c_int, msec: c_int) callconv(.C) void {
    return @call(.never_inline, zigRestartTimer, .{ timerId, msec });
}
pub export fn impl_FreeTimer(timerId: c_int) callconv(.C) void {
    return @call(.never_inline, zigFreeTimer, .{timerId});
}
pub export fn impl_IsTimerElapsed(timerId: c_int) callconv(.C) bool {
    return @call(.never_inline, zigIsTimerElapsed, .{timerId});
}
