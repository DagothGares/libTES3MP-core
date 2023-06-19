//! Raw bindings to the functions declared by TES3MP's Shapeshift.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigGetScale: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSetScale: *const fn (c_ushort, f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigIsWerewolf: *const fn (c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;
pub export var zigSetWerewolfState: *const fn (c_ushort, bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigGetCreatureRefId: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetCreatureRefId: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetCreatureNameDisplayState: *const fn (c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;
pub export var zigSetCreatureNameDisplayState: *const fn (c_ushort, bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSendShapeshift: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
