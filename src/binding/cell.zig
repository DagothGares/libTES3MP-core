//! Raw bindings to the functions declared by TES3MP's Cells.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_GetCellStateChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetCellStateType: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetCellStateDescription: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;

pub export var libtes3mp_internal_GetCell: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetExteriorX: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetExteriorY: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_IsInExterior: *const fn (pid: c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetRegion: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_IsChangingRegion: *const fn (pid: c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetCell: *const fn (pid: c_ushort, cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetExteriorCell: *const fn (pid: c_ushort, x: c_int, y: c_int) callconv(.C) void = &binding.ub_fn_ushort_2int;

pub export var libtes3mp_internal_SendCell: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn libtes3mp_GetCellStateChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetCellStateChangesSize(pid);
}
pub export fn libtes3mp_GetCellStateType(pid: c_ushort, index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetCellStateType(pid, index);
}
pub export fn libtes3mp_GetCellStateDescription(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetCellStateDescription(pid, index);
}
pub export fn libtes3mp_GetCell(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetCell(pid);
}
pub export fn libtes3mp_GetExteriorX(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetExteriorX(pid);
}
pub export fn libtes3mp_GetExteriorY(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetExteriorY(pid);
}
pub export fn libtes3mp_IsInExterior(pid: c_ushort) callconv(.C) bool {
    return libtes3mp_internal_IsInExterior(pid);
}
pub export fn libtes3mp_GetRegion(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetRegion(pid);
}
pub export fn libtes3mp_IsChangingRegion(pid: c_ushort) callconv(.C) bool {
    return libtes3mp_internal_IsChangingRegion(pid);
}
pub export fn libtes3mp_SetCell(pid: c_ushort, cellDescription: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetCell(pid, cellDescription);
}
pub export fn libtes3mp_SetExteriorCell(pid: c_ushort, x: c_int, y: c_int) callconv(.C) void {
    return libtes3mp_internal_SetExteriorCell(pid, x, y);
}
pub export fn libtes3mp_SendCell(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendCell(pid);
}
