//! Raw bindings for the functions declared by TES3MP's Positions.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_GetPosX: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetPosY: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetPosZ: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetPreviousCellPosX: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetPreviousCellPosY: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetPreviousCellPosZ: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetRotX: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetRotZ: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetPos: *const fn (pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_ushort_3f64;
pub export var libtes3mp_internal_SetRot: *const fn (pid: c_ushort, x: f64, z: f64) callconv(.C) void = &binding.ub_fn_ushort_2f64;
pub export var libtes3mp_internal_SetMomentum: *const fn (pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_ushort_3f64;

pub export var libtes3mp_internal_SendPos: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SendMomentum: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn libtes3mp_GetPosX(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetPosX(pid);
}
pub export fn libtes3mp_GetPosY(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetPosY(pid);
}
pub export fn libtes3mp_GetPosZ(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetPosZ(pid);
}

pub export fn libtes3mp_GetPreviousCellPosX(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetPreviousCellPosX(pid);
}
pub export fn libtes3mp_GetPreviousCellPosY(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetPreviousCellPosY(pid);
}
pub export fn libtes3mp_GetPreviousCellPosZ(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetPreviousCellPosZ(pid);
}

pub export fn libtes3mp_GetRotX(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetRotX(pid);
}
pub export fn libtes3mp_GetRotZ(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetRotZ(pid);
}

pub export fn libtes3mp_SetPos(pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetPos(pid, x, y, z);
}
pub export fn libtes3mp_SetRot(pid: c_ushort, x: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetRot(pid, x, z);
}
pub export fn libtes3mp_SetMomentum(pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetMomentum(pid, x, y, z);
}

pub export fn libtes3mp_SendPos(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendPos(pid);
}
pub export fn libtes3mp_SendMomentum(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendMomentum(pid);
}
