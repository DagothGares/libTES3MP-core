//! Raw bindings to the functions declared by TES3MP's Miscellaneous.hpp file.

const binding = @import("../binding.zig");

/// Despite how it is used in TES3MP, this function does not generate cryptographically secure salt
/// (i.e it is not guaranteed to give truly distinct output each time it is called). Avoid using it
/// if your language has other options available.
pub export var libtes3mp_internal_GenerateRandomString: *const fn (length: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetSHA256Hash: *const fn (inputString: [*:0]const u8) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_str;

pub export var libtes3mp_internal_GetLastPlayerId: *const fn () callconv(.C) c_uint = &binding.ub_fn;

pub export var libtes3mp_internal_GetCurrentMpNum: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var libtes3mp_internal_SetCurrentMpNum: *const fn (mpNum: c_int) callconv(.C) void = &binding.ub_fn_int;

/// Despite how it is used in TES3MP, this function does not generate cryptographically secure salt
/// (i.e it is not guaranteed to give truly distinct output each time it is called). Avoid using it
/// if your language has other options available.
pub export fn libtes3mp_GenerateRandomString(length: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GenerateRandomString(length);
}

pub export fn libtes3mp_GetSHA256Hash(inputString: [*:0]const u8) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetSHA256Hash(inputString);
}

pub export fn libtes3mp_GetLastPlayerId() callconv(.C) c_uint {
    return libtes3mp_internal_GetLastPlayerId();
}

pub export fn libtes3mp_GetCurrentMpNum() callconv(.C) c_int {
    return libtes3mp_internal_GetCurrentMpNum();
}
pub export fn libtes3mp_SetCurrentMpNum(mpNum: c_int) callconv(.C) void {
    return libtes3mp_internal_SetCurrentMpNum(mpNum);
}
