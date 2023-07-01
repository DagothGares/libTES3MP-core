//! Raw bindings to the functions declared by TES3MP's Dialogue.hpp file.

const binding = @import("../binding.zig");

pub export var zigClearTopicChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetTopicChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigAddTopic: *const fn (pid: c_ushort, topicId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetTopicId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var zigSendTopicChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export var zigPlayAnimation: *const fn (pid: c_ushort, groupname: [*:0]const u8, mode: c_int, count: c_int, persist: bool) callconv(.C) void = &binding.ub_fn_ushort_str_2int_bool;
pub export var zigPlaySpeech: *const fn (pid: c_ushort, sound: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;

pub export fn impl_ClearTopicChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearTopicChanges, .{pid});
}
pub export fn impl_GetTopicChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetTopicChangesSize, .{pid});
}
pub export fn impl_AddTopic(pid: c_ushort, topicId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigAddTopic, .{ pid, topicId });
}
pub export fn impl_GetTopicId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetTopicId, .{ pid, index });
}
pub export fn impl_SendTopicChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendTopicChanges, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}

pub export fn impl_PlayAnimation(pid: c_ushort, groupname: [*:0]const u8, mode: c_int, count: c_int, persist: bool) callconv(.C) void {
    return @call(.never_inline, zigPlayAnimation, .{ pid, groupname, mode, count, persist });
}
pub export fn impl_PlaySpeech(pid: c_ushort, sound: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigPlaySpeech, .{ pid, sound });
}
