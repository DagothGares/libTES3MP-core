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
