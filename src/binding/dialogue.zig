//! Raw bindings to the functions declared by TES3MP's Dialogue.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigClearTopicChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetTopicChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigAddTopic: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetTopicId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigSendTopicChanges: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// Misc functions (Why are these in here?)
pub export var zigPlayAnimation: *const fn (c_ushort, c_str, c_int, c_int, bool) callconv(.C) void = &binding.ub_fn_ushort_str_2int_bool;
pub export var zigPlaySpeech: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
