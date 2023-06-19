//! Raw bindings to the functions declared by TES3MP's GUI.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigMessageBox: *const fn (c_ushort, c_int, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_str;
pub export var zigCustomMessageBox: *const fn (c_ushort, c_int, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_2str;
pub export var zigInputDialog: *const fn (c_ushort, c_int, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_2str;
pub export var zigPasswordDialog: *const fn (c_ushort, c_int, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_2str;
pub export var zigListBox: *const fn (c_ushort, c_int, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_2str;

// GUI quickKey functions
pub export var zigClearQuickKeyChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetQuickKeyChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigAddQuickKey: *const fn (c_ushort, c_ushort, c_int, c_str) callconv(.C) void = &binding.ub_fn_2ushort_int_str;
pub export var zigGetQuickKeySlot: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetQuickKeyType: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetQuickKeyItemId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigSendQuickKeyChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// GUI misc functions (nonfunctional)
pub export var zigSetMapVisibility: *const fn (c_ushort, c_ushort, c_ushort) callconv(.C) void = &binding.ub_fn_3ushort;
pub export var zigSetMapVisibilityAll: *const fn (c_ushort, c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;
