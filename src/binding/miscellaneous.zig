//! Raw bindings to the functions declared by TES3MP's Miscellaneous.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigGetLastPlayerId: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetCurrentMpNum: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigSetCurrentMpNum: *const fn () callconv(.C) c_int = &binding.ub_fn;

// There's no reason to call these two in Zig, since these functions are both fulfilled by the
// standard library.
pub export var zigGenerateRandomString: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigGetSHA256Hash: *const fn (c_str) callconv(.C) c_str = &binding.ub_fn_str;
