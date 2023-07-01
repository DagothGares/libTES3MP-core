//! Raw bindings to the functions declared by TES3MP's Books.hpp file.

const binding = @import("../binding.zig");

pub export var zigClearBookChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetBookChangesSize: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigAddBook: *const fn (pid: c_ushort, bookId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetBookId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var zigSendBookChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export fn impl_ClearBookChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearBookChanges, .{pid});
}
pub export fn impl_GetBookChangesSize(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigGetBookChangesSize, .{pid});
}
pub export fn impl_AddBook(pid: c_ushort, bookId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigAddBook, .{ pid, bookId });
}
pub export fn impl_GetBookId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetBookId, .{ pid, index });
}
pub export fn impl_SendBookChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendBookChanges, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
