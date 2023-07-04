//! Raw bindings to the functions declared by TES3MP's Shapeshift.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_GetScale: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_IsWerewolf: *const fn (pid: c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetCreatureRefId: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetCreatureNameDisplayState: *const fn (pid: c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetScale: *const fn (pid: c_ushort, scale: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var libtes3mp_internal_SetWerewolfState: *const fn (pid: c_ushort, isWerewolf: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var libtes3mp_internal_SetCreatureRefId: *const fn (pid: c_ushort, refId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetCreatureNameDisplayState: *const fn (pid: c_ushort, displayState: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;

pub export var libtes3mp_internal_SendShapeshift: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Definitions

pub export fn libtes3mp_GetScale(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetScale(pid);
}
pub export fn libtes3mp_IsWerewolf(pid: c_ushort) callconv(.C) bool {
    return libtes3mp_internal_IsWerewolf(pid);
}
pub export fn libtes3mp_GetCreatureRefId(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetCreatureRefId(pid);
}
pub export fn libtes3mp_GetCreatureNameDisplayState(pid: c_ushort) callconv(.C) bool {
    return libtes3mp_internal_GetCreatureNameDisplayState(pid);
}

pub export fn libtes3mp_SetScale(pid: c_ushort, scale: f64) callconv(.C) void {
    return libtes3mp_internal_SetScale(pid, scale);
}
pub export fn libtes3mp_SetWerewolfState(pid: c_ushort, isWerewolf: bool) callconv(.C) void {
    return libtes3mp_internal_SetWerewolfState(pid, isWerewolf);
}
pub export fn libtes3mp_SetCreatureRefId(pid: c_ushort, refId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetCreatureRefId(pid, refId);
}
pub export fn libtes3mp_SetCreatureNameDisplayState(pid: c_ushort, displayState: bool) callconv(.C) void {
    return libtes3mp_internal_SetCreatureNameDisplayState(pid, displayState);
}

pub export fn libtes3mp_SendShapeshift(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendShapeshift(pid);
}
