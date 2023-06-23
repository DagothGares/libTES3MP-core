//! Raw bindings for the functions declared by TES3MP's Positions.hpp file.

const binding = @import("../binding.zig");

pub export var zigGetPosX: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetPosY: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetPosZ: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetPos: *const fn (c_ushort, f64, f64, f64) callconv(.C) void = &binding.ub_fn_ushort_3f64;
pub export var zigGetRotX: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetRotY: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetRotZ: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetRot: *const fn (c_ushort, f64, f64, f64) callconv(.C) void = &binding.ub_fn_ushort_3f64;
pub export var zigSendPos: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetPreviousCellPosX: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetPreviousCellPosY: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetPreviousCellPosZ: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetMomentum: *const fn (c_ushort, f64, f64, f64) callconv(.C) f64 = &binding.ub_fn_ushort_3f64;
pub export var zigSendMomentum: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn impl_GetPosX(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetPosX, .{pid});
}
pub export fn impl_GetPosY(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetPosY, .{pid});
}
pub export fn impl_GetPosZ(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetPosZ, .{pid});
}
pub export fn impl_SetPos(pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetPos, .{ pid, x, y, z });
}
pub export fn impl_GetRotX(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetRotX, .{pid});
}
pub export fn impl_GetRotY(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetRotY, .{pid});
}
pub export fn impl_GetRotZ(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetRotZ, .{pid});
}
pub export fn impl_SetRot(pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRot, .{ pid, x, y, z });
}
pub export fn impl_SendPos(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendPos, .{pid});
}
pub export fn impl_GetPreviousCellPosX(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetPreviousCellPosX, .{pid});
}
pub export fn impl_GetPreviousCellPosY(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetPreviousCellPosY, .{pid});
}
pub export fn impl_GetPreviousCellPosZ(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetPreviousCellPosZ, .{pid});
}
pub export fn impl_SetMomentum(pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) f64 {
    return @call(.never_inline, zigSetMomentum, .{ pid, x, y, z });
}
pub export fn impl_SendMomentum(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendMomentum, .{pid});
}
