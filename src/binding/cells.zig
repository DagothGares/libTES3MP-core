//! Raw bindings to the functions declared by TES3MP's Cells.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigGetCellStateChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetCellStateType: *const fn (c_ushort, c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var zigGetCellStateDescription: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigGetCell: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetCell: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSendCell: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Cell exterior functions
pub export var zigGetExteriorX: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetExteriorY: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigSetExteriorCell: *const fn (c_ushort, c_int, c_int) callconv(.C) void = &binding.ub_fn_ushort_2int;
pub export var zigIsInExterior: *const fn (c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;

// Cell region functions
pub export var zigGetRegion: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigIsChangingRegion: *const fn (c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;
