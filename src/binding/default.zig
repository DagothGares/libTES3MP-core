//! It's not clear what these functions are intended to do. They're undocumented in TES3MP's API.

const binding = @import("../binding.zig");

const c_str = binding.c_str;
const cpp_ScriptFunc = binding.cpp_ScriptFunc;

pub export var zigMakePublic: *const fn (cpp_ScriptFunc, c_str, c_char, c_str) callconv(.C) void = &binding.ub_fn_fptrva_str_char_str;
pub export var zigCallPublic: *const fn (c_str, ...) callconv(.C) void = &binding.ub_fn_str_va;
