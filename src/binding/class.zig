//! Raw bindings to the functions declared by TES3MP's CharClass.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigGetDefaultClass: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetDefaultClass: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
// NOTE: This actually returns c_int, but the C++ function uses string::empty() which returns bool
pub export var zigIsClassDefault: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetClassName: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetClassName: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetClassDesc: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetClassDesc: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSendClass: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Class misc functions
pub export var zigGetClassMajorAttribute: *const fn (c_ushort, u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var zigSetClassMajorAttribute: *const fn (c_ushort, u8, c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;
pub export var zigGetClassSpecialization: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigSetClassSpecialization: *const fn (c_ushort, c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigGetClassMajorSkill: *const fn (c_ushort, u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var zigSetClassMajorSkill: *const fn (c_ushort, u8, c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;
pub export var zigGetClassMinorSkill: *const fn (c_ushort, u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var zigSetClassMinorSkill: *const fn (c_ushort, u8, c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;
