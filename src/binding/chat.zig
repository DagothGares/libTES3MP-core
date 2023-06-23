//! Raw bindings to the functions declared by TES3MP's Chat.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigSendMessage: *const fn (c_ushort, c_str, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_str_2bool;
pub export var zigCleanChatForPid: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigCleanChat: *const fn () callconv(.C) void = &binding.ub_fn;

pub export fn impl_SendMessage(
    pid: c_ushort,
    message: c_str,
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigSendMessage,
        .{ pid, message, sendToOtherPlayers, skipAttachedPlayer },
    );
}
pub export fn impl_CleanChatForPid(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigCleanChatForPid, .{pid});
}
pub export fn impl_CleanChat() callconv(.C) void {
    return @call(.never_inline, zigCleanChat, .{});
}
