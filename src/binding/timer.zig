//! Raw bindings to the timer functions declared by TES3MP's ScriptFunctions.hpp file.
//! NOTE: You must patch TES3MP to properly use these functions, as of TES3MP 0.8.1. Currently,
//! TES3MP is missing the necessary lines of code to actually call non-Lua callback functions.
//! See ../patch/libtes3mp-timer.patch.

const std = @import("std");
const builtin = @import("builtin");
const binding = @import("../binding.zig");

const ForeignFunction = binding.ForeignFunction;
const va_list = binding.va_list;

pub export var libtes3mp_internal_CreateTimer: *const fn (callback: *const ForeignFunction, msec: c_int) callconv(.C) c_int = &binding.ub_fn_fptrva_int;
pub export var libtes3mp_internal_CreateTimerEx: *const fn (callback: *const ForeignFunction, msec: c_int, types: [*:0]const u8, args: ?va_list) callconv(.C) c_int = &binding.ub_fn_fptrva_int_str_va;
pub export var libtes3mp_internal_StartTimer: *const fn (timerId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_StopTimer: *const fn (timerId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_RestartTimer: *const fn (timerId: c_int, msec: c_int) callconv(.C) void = &binding.ub_fn_2int;
pub export var libtes3mp_internal_FreeTimer: *const fn (timerId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_IsTimerElapsed: *const fn (timerId: c_int) callconv(.C) bool = &binding.ub_fn_int;

pub export fn libtes3mp_CreateTimer(callback: *const ForeignFunction, msec: c_int) callconv(.C) c_int {
    return libtes3mp_internal_CreateTimer(callback, msec);
}
pub export fn libtes3mp_CreateTimerEx(callback: *const ForeignFunction, msec: c_int, types: [*:0]const u8, args: ?va_list) callconv(.C) c_int {
    return libtes3mp_internal_CreateTimerEx(callback, msec, types, args);
}
pub export fn libtes3mp_StartTimer(timerId: c_int) callconv(.C) void {
    return libtes3mp_internal_StartTimer(timerId);
}
pub export fn libtes3mp_StopTimer(timerId: c_int) callconv(.C) void {
    return libtes3mp_internal_StopTimer(timerId);
}
pub export fn libtes3mp_RestartTimer(timerId: c_int, msec: c_int) callconv(.C) void {
    return libtes3mp_internal_RestartTimer(timerId, msec);
}
pub export fn libtes3mp_FreeTimer(timerId: c_int) callconv(.C) void {
    return libtes3mp_internal_FreeTimer(timerId);
}
pub export fn libtes3mp_IsTimerElapsed(timerId: c_int) callconv(.C) bool {
    return libtes3mp_internal_IsTimerElapsed(timerId);
}
