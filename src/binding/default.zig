//! It's not clear what these functions are intended to do. They're undocumented in TES3MP's API.

const binding = @import("../binding.zig");

const ForeignFunction = binding.ForeignFunction;
const va_list = binding.va_list;

pub export var zigMakePublic: *const fn (publicFn: *const ForeignFunction, name: [*:0]const u8, ret_type: c_char, def: [*:0]const u8) callconv(.C) void = &binding.ub_fn_fptrva_str_char_str;
pub export var zigCallPublic: *const fn (name: [*:0]const u8, args: ?va_list) callconv(.C) void = &binding.ub_fn_str_va;

pub export fn impl_MakePublic(publicFn: *const ForeignFunction, name: [*:0]const u8, ret_type: c_char, def: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigMakePublic, .{ publicFn, name, ret_type, def });
}

/// Your mileage may vary when calling this function, especially on Windows.
pub export fn impl_CallPublic(name: [*:0]const u8, args: ?va_list) callconv(.C) void {
    return @call(.never_inline, zigCallPublic, .{ name, args });
}
