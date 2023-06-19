//! Raw bindings to the functions declared by TES3MP's Books.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigClearBookChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetBookChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigAddBook: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetBookId: *const fn (c_ushort, c_uint) callconv(.C) void = &binding.ub_fn_ushort_uint;
pub export var zigSendBookChanges: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
