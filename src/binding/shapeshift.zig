//! Raw bindings to the functions declared by TES3MP's Shapeshift.hpp file.

const binding = @import("../binding.zig");

pub export var zigGetScale: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigIsWerewolf: *const fn (pid: c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;
pub export var zigGetCreatureRefId: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetCreatureNameDisplayState: *const fn (pid: c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;

pub export var zigSetScale: *const fn (pid: c_ushort, scale: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigSetWerewolfState: *const fn (pid: c_ushort, isWerewolf: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSetCreatureRefId: *const fn (pid: c_ushort, refId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetCreatureNameDisplayState: *const fn (pid: c_ushort, displayState: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;

pub export var zigSendShapeshift: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Definitions

pub export fn impl_GetScale(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetScale, .{pid});
}
pub export fn impl_IsWerewolf(pid: c_ushort) callconv(.C) bool {
    return @call(.never_inline, zigIsWerewolf, .{pid});
}
pub export fn impl_GetCreatureRefId(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetCreatureRefId, .{pid});
}
pub export fn impl_GetCreatureNameDisplayState(pid: c_ushort) callconv(.C) bool {
    return @call(.never_inline, zigGetCreatureNameDisplayState, .{pid});
}

pub export fn impl_SetScale(pid: c_ushort, scale: f64) callconv(.C) void {
    return @call(.never_inline, zigSetScale, .{ pid, scale });
}
pub export fn impl_SetWerewolfState(pid: c_ushort, isWerewolf: bool) callconv(.C) void {
    return @call(.never_inline, zigSetWerewolfState, .{ pid, isWerewolf });
}
pub export fn impl_SetCreatureRefId(pid: c_ushort, refId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetCreatureRefId, .{ pid, refId });
}
pub export fn impl_SetCreatureNameDisplayState(pid: c_ushort, displayState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetCreatureNameDisplayState, .{ pid, displayState });
}

pub export fn impl_SendShapeshift(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendShapeshift, .{pid});
}
