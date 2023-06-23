//! Raw bindings to the functions declared by TES3MP's Dialogue.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigClearTopicChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetTopicChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigAddTopic: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetTopicId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigSendTopicChanges: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// Misc functions (Why are these in here?)
pub export var zigPlayAnimation: *const fn (c_ushort, c_str, c_int, c_int, bool) callconv(.C) void = &binding.ub_fn_ushort_str_2int_bool;
pub export var zigPlaySpeech: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;

pub export fn impl_ClearTopicChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearTopicChanges, .{pid});
}
pub export fn impl_GetTopicChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetTopicChangesSize, .{pid});
}
pub export fn impl_AddTopic(pid: c_ushort, topicId: c_str) callconv(.C) void {
    return @call(.never_inline, zigAddTopic, .{ pid, topicId });
}
pub export fn impl_GetTopicId(pid: c_ushort, index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetTopicId, .{ pid, index });
}
pub export fn impl_SendTopicChanges(
    pid: c_ushort,
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigSendTopicChanges,
        .{ pid, sendToOtherPlayers, skipAttachedPlayer },
    );
}
pub export fn impl_PlayAnimation(
    pid: c_ushort,
    groupname: c_str,
    mode: c_int,
    count: c_int,
    persist: bool,
) callconv(.C) void {
    return @call(.never_inline, zigPlayAnimation, .{ pid, groupname, mode, count, persist });
}
pub export fn impl_PlaySpeech(pid: c_ushort, sound: c_str) callconv(.C) void {
    return @call(.never_inline, zigPlaySpeech, .{ pid, sound });
}
