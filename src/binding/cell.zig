//! Raw bindings to the functions declared by TES3MP's Cells.hpp file.

const binding = @import("../binding.zig");

pub export var zigGetCellStateChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var zigGetCellStateType: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var zigGetCellStateDescription: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;

pub export var zigGetCell: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetExteriorX: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetExteriorY: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigIsInExterior: *const fn (pid: c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;

pub export var zigGetRegion: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigIsChangingRegion: *const fn (pid: c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;

pub export var zigSetCell: *const fn (pid: c_ushort, cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetExteriorCell: *const fn (pid: c_ushort, x: c_int, y: c_int) callconv(.C) void = &binding.ub_fn_ushort_2int;

pub export var zigSendCell: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn impl_GetCellStateChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetCellStateChangesSize, .{pid});
}
pub export fn impl_GetCellStateType(pid: c_ushort, index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetCellStateType, .{ pid, index });
}
pub export fn impl_GetCellStateDescription(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetCellStateDescription, .{ pid, index });
}
pub export fn impl_GetCell(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetCell, .{pid});
}
pub export fn impl_GetExteriorX(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetExteriorX, .{pid});
}
pub export fn impl_GetExteriorY(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetExteriorY, .{pid});
}
pub export fn impl_IsInExterior(pid: c_ushort) callconv(.C) bool {
    return @call(.never_inline, zigIsInExterior, .{pid});
}
pub export fn impl_GetRegion(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetRegion, .{pid});
}
pub export fn impl_IsChangingRegion(pid: c_ushort) callconv(.C) bool {
    return @call(.never_inline, zigIsChangingRegion, .{pid});
}
pub export fn impl_SetCell(pid: c_ushort, cellDescription: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetCell, .{ pid, cellDescription });
}
pub export fn impl_SetExteriorCell(pid: c_ushort, x: c_int, y: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetExteriorCell, .{ pid, x, y });
}
pub export fn impl_SendCell(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendCell, .{pid});
}
