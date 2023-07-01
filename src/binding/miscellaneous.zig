//! Raw bindings to the functions declared by TES3MP's Miscellaneous.hpp file.

const binding = @import("../binding.zig");

// There's no reason to call these two in Zig, since these functions are both fulfilled by the
// standard library.
pub export var zigGenerateRandomString: *const fn (length: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;

pub export var zigGetSHA256Hash: *const fn (inputString: [*:0]const u8) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_str;

pub export var zigGetLastPlayerId: *const fn () callconv(.C) c_uint = &binding.ub_fn;

pub export var zigGetCurrentMpNum: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigSetCurrentMpNum: *const fn (mpNum: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export fn impl_GenerateRandomString(length: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGenerateRandomString, .{length});
}

pub export fn impl_GetSHA256Hash(inputString: [*:0]const u8) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetSHA256Hash, .{inputString});
}

pub export fn impl_GetLastPlayerId() callconv(.C) c_uint {
    return @call(.never_inline, zigGetLastPlayerId, .{});
}

pub export fn impl_GetCurrentMpNum() callconv(.C) c_int {
    return @call(.never_inline, zigGetCurrentMpNum, .{});
}
pub export fn impl_SetCurrentMpNum(mpNum: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetCurrentMpNum, .{mpNum});
}
