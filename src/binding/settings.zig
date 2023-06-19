//! Bindings for functions declared by TES3MP's Settings.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigSetDifficulty: *const fn (c_ushort, c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigSetEnforcedLogLevel: *const fn (c_ushort, c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigSetPhysicsFramerate: *const fn (c_ushort, f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigSetConsoleAllowed: *const fn (c_ushort, bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSetBedRestAllowed: *const fn (c_ushort, bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSetWildernessRestAllowed: *const fn (c_ushort, bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSetWaitAllowed: *const fn (c_ushort, bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSetGameSettingValue: *const fn (c_ushort, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_2str;
pub export var zigClearGameSettingValues: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSetVRSettingValue: *const fn (c_ushort, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_2str;
pub export var zigClearVRSettingValues: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSendSettings: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
