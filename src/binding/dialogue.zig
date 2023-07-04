//! Raw bindings to the functions declared by TES3MP's Dialogue.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ClearTopicChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetTopicChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_AddTopic: *const fn (pid: c_ushort, topicId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_GetTopicId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_SendTopicChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export var libtes3mp_internal_PlayAnimation: *const fn (pid: c_ushort, groupname: [*:0]const u8, mode: c_int, count: c_int, persist: bool) callconv(.C) void = &binding.ub_fn_ushort_str_2int_bool;
pub export var libtes3mp_internal_PlaySpeech: *const fn (pid: c_ushort, sound: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;

pub export fn libtes3mp_ClearTopicChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearTopicChanges(pid);
}
pub export fn libtes3mp_GetTopicChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetTopicChangesSize(pid);
}
pub export fn libtes3mp_AddTopic(pid: c_ushort, topicId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddTopic(pid, topicId);
}
pub export fn libtes3mp_GetTopicId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetTopicId(pid, index);
}
pub export fn libtes3mp_SendTopicChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendTopicChanges(pid, sendToOtherPlayers, skipAttachedPlayer);
}

pub export fn libtes3mp_PlayAnimation(pid: c_ushort, groupname: [*:0]const u8, mode: c_int, count: c_int, persist: bool) callconv(.C) void {
    return libtes3mp_internal_PlayAnimation(pid, groupname, mode, count, persist);
}
pub export fn libtes3mp_PlaySpeech(pid: c_ushort, sound: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_PlaySpeech(pid, sound);
}
