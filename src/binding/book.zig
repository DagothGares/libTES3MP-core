//! Raw bindings to the functions declared by TES3MP's Books.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ClearBookChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetBookChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_AddBook: *const fn (pid: c_ushort, bookId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_GetBookId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_SendBookChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export fn libtes3mp_ClearBookChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearBookChanges(pid);
}
pub export fn libtes3mp_GetBookChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetBookChangesSize(pid);
}
pub export fn libtes3mp_AddBook(pid: c_ushort, bookId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddBook(pid, bookId);
}
pub export fn libtes3mp_GetBookId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetBookId(pid, index);
}
pub export fn libtes3mp_SendBookChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendBookChanges(pid, sendToOtherPlayers, skipAttachedPlayer);
}
