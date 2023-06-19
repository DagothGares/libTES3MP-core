//! Raw bindings to the timer functions declared by TES3MP's ScriptFunctions.hpp file.
//! NOTE: You must patch TES3MP to properly use these functions, as of TES3MP 0.8.1. Currently,
//! TES3MP is missing the necessary lines of code to actually call non-Lua callback functions.
//! See tes3mp-timer.patch.

const binding = @import("../binding.zig");

const c_str = binding.c_str;
const cpp_ScriptFunc = binding.cpp_ScriptFunc;

pub export var zigCreateTimer: *const fn (cpp_ScriptFunc, c_int) callconv(.C) c_int = &binding.ub_fn_fptrva_int;
pub export var zigCreateTimerEx: *const fn (cpp_ScriptFunc, c_int, c_str, ...) callconv(.C) c_int = &binding.ub_fn_fptrva_int_str_va;
pub export var zigStartTimer: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigStopTimer: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigRestartTimer: *const fn (c_int, c_int) callconv(.C) void = &binding.ub_fn_2int;
pub export var zigFreeTimer: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigIsTimerElapsed: *const fn (c_int) callconv(.C) bool = &binding.ub_fn_int;
