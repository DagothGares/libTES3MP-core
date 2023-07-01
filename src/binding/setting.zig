//! Bindings for functions declared by TES3MP's Settings.hpp file.

const binding = @import("../binding.zig");

pub export var zigSetDifficulty: *const fn (pid: c_ushort, difficulty: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigSetEnforcedLogLevel: *const fn (pid: c_ushort, enforcedLogLevel: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigSetPhysicsFramerate: *const fn (pid: c_ushort, physicsFramerate: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;

pub export var zigSetConsoleAllowed: *const fn (pid: c_ushort, state: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSetBedRestAllowed: *const fn (pid: c_ushort, state: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSetWildernessRestAllowed: *const fn (pid: c_ushort, state: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSetWaitAllowed: *const fn (pid: c_ushort, state: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;

pub export var zigSetGameSettingValue: *const fn (pid: c_ushort, setting: [*:0]const u8, value: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_2str;
pub export var zigClearGameSettingValues: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigSetVRSettingValue: *const fn (pid: c_ushort, setting: [*:0]const u8, value: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_2str;
pub export var zigClearVRSettingValues: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigSendSettings: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export fn impl_SetDifficulty(pid: c_ushort, difficulty: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetDifficulty, .{ pid, difficulty });
}
pub export fn impl_SetEnforcedLogLevel(pid: c_ushort, enforcedLogLevel: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetEnforcedLogLevel, .{ pid, enforcedLogLevel });
}
pub export fn impl_SetPhysicsFramerate(pid: c_ushort, physicsFramerate: f64) callconv(.C) void {
    return @call(.never_inline, zigSetPhysicsFramerate, .{ pid, physicsFramerate });
}

pub export fn impl_SetConsoleAllowed(pid: c_ushort, state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetConsoleAllowed, .{ pid, state });
}
pub export fn impl_SetBedRestAllowed(pid: c_ushort, state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetBedRestAllowed, .{ pid, state });
}
pub export fn impl_SetWildernessRestAllowed(pid: c_ushort, state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetWildernessRestAllowed, .{ pid, state });
}
pub export fn impl_SetWaitAllowed(pid: c_ushort, state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetWaitAllowed, .{ pid, state });
}

pub export fn impl_SetGameSettingValue(pid: c_ushort, setting: [*:0]const u8, value: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetGameSettingValue, .{ pid, setting, value });
}
pub export fn impl_ClearGameSettingValues(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearGameSettingValues, .{pid});
}

pub export fn impl_SetVRSettingValue(pid: c_ushort, setting: [*:0]const u8, value: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetVRSettingValue, .{ pid, setting, value });
}
pub export fn impl_ClearVRSettingValues(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearVRSettingValues, .{pid});
}

pub export fn impl_SendSettings(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendSettings, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
