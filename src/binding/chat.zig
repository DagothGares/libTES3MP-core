//! Raw bindings to the functions declared by TES3MP's Chat.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var libtes3mp_internal_SendMessage: *const fn (pid: c_ushort, message: [*:0]const u8, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_str_2bool;
pub export var libtes3mp_internal_CleanChatForPid: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_CleanChat: *const fn () callconv(.C) void = &binding.ub_fn;

pub export fn libtes3mp_SendMessage(pid: c_ushort, message: [*:0]const u8, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendMessage(pid, message, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_CleanChatForPid(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_CleanChatForPid(pid);
}
pub export fn libtes3mp_CleanChat() callconv(.C) void {
    return libtes3mp_internal_CleanChat();
}
