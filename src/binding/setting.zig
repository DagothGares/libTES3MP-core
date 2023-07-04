//! Bindings for functions declared by TES3MP's Settings.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_SetDifficulty: *const fn (pid: c_ushort, difficulty: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var libtes3mp_internal_SetEnforcedLogLevel: *const fn (pid: c_ushort, enforcedLogLevel: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var libtes3mp_internal_SetPhysicsFramerate: *const fn (pid: c_ushort, physicsFramerate: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;

pub export var libtes3mp_internal_SetConsoleAllowed: *const fn (pid: c_ushort, state: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var libtes3mp_internal_SetBedRestAllowed: *const fn (pid: c_ushort, state: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var libtes3mp_internal_SetWildernessRestAllowed: *const fn (pid: c_ushort, state: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var libtes3mp_internal_SetWaitAllowed: *const fn (pid: c_ushort, state: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;

pub export var libtes3mp_internal_SetGameSettingValue: *const fn (pid: c_ushort, setting: [*:0]const u8, value: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_2str;
pub export var libtes3mp_internal_ClearGameSettingValues: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetVRSettingValue: *const fn (pid: c_ushort, setting: [*:0]const u8, value: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_2str;
pub export var libtes3mp_internal_ClearVRSettingValues: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SendSettings: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export fn libtes3mp_SetDifficulty(pid: c_ushort, difficulty: c_int) callconv(.C) void {
    return libtes3mp_internal_SetDifficulty(pid, difficulty);
}
pub export fn libtes3mp_SetEnforcedLogLevel(pid: c_ushort, enforcedLogLevel: c_int) callconv(.C) void {
    return libtes3mp_internal_SetEnforcedLogLevel(pid, enforcedLogLevel);
}
pub export fn libtes3mp_SetPhysicsFramerate(pid: c_ushort, physicsFramerate: f64) callconv(.C) void {
    return libtes3mp_internal_SetPhysicsFramerate(pid, physicsFramerate);
}

pub export fn libtes3mp_SetConsoleAllowed(pid: c_ushort, state: bool) callconv(.C) void {
    return libtes3mp_internal_SetConsoleAllowed(pid, state);
}
pub export fn libtes3mp_SetBedRestAllowed(pid: c_ushort, state: bool) callconv(.C) void {
    return libtes3mp_internal_SetBedRestAllowed(pid, state);
}
pub export fn libtes3mp_SetWildernessRestAllowed(pid: c_ushort, state: bool) callconv(.C) void {
    return libtes3mp_internal_SetWildernessRestAllowed(pid, state);
}
pub export fn libtes3mp_SetWaitAllowed(pid: c_ushort, state: bool) callconv(.C) void {
    return libtes3mp_internal_SetWaitAllowed(pid, state);
}

pub export fn libtes3mp_SetGameSettingValue(pid: c_ushort, setting: [*:0]const u8, value: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetGameSettingValue(pid, setting, value);
}
pub export fn libtes3mp_ClearGameSettingValues(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearGameSettingValues(pid);
}

pub export fn libtes3mp_SetVRSettingValue(pid: c_ushort, setting: [*:0]const u8, value: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetVRSettingValue(pid, setting, value);
}
pub export fn libtes3mp_ClearVRSettingValues(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearVRSettingValues(pid);
}

pub export fn libtes3mp_SendSettings(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendSettings(pid, sendToOtherPlayers, skipAttachedPlayer);
}
