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

pub export fn impl_SetDifficulty(pid: c_ushort, difficulty: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetDifficulty, .{ pid, difficulty });
}
pub export fn impl_SetEnforcedLogLevel(pid: c_ushort, logLevel: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetEnforcedLogLevel, .{ pid, logLevel });
}
pub export fn impl_SetPhysicsFramerate(pid: c_ushort, framerate: f64) callconv(.C) void {
    return @call(.never_inline, zigSetPhysicsFramerate, .{ pid, framerate });
}
pub export fn impl_SetConsoleAllowed(pid: c_ushort, consoleAllowed: bool) callconv(.C) void {
    return @call(.never_inline, zigSetConsoleAllowed, .{ pid, consoleAllowed });
}
pub export fn impl_SetBedRestAllowed(pid: c_ushort, bedRestAllowed: bool) callconv(.C) void {
    return @call(.never_inline, zigSetBedRestAllowed, .{ pid, bedRestAllowed });
}
pub export fn impl_SetWildernessRestAllowed(
    pid: c_ushort,
    wildernessRestAllowed: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSetWildernessRestAllowed, .{ pid, wildernessRestAllowed });
}
pub export fn impl_SetWaitAllowed(pid: c_ushort, waitAllowed: bool) callconv(.C) void {
    return @call(.never_inline, zigSetWaitAllowed, .{ pid, waitAllowed });
}
pub export fn impl_SetGameSettingValue(
    pid: c_ushort,
    setting: c_str,
    value: c_str,
) callconv(.C) void {
    return @call(.never_inline, zigSetGameSettingValue, .{ pid, setting, value });
}
pub export fn impl_ClearGameSettingValues(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearGameSettingValues, .{pid});
}
pub export fn impl_SetVRSettingValue(
    pid: c_ushort,
    setting: c_str,
    value: c_str,
) callconv(.C) void {
    return @call(.never_inline, zigSetVRSettingValue, .{ pid, setting, value });
}
pub export fn impl_ClearVRSettingValues(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearVRSettingValues, .{pid});
}
pub export fn impl_SendSettings(
    pid: c_ushort,
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendSettings, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
