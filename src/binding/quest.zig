//! Raw bindings for the functions declared by TES3MP's Quests.hpp file.

const binding = @import("../binding.zig");

pub export var zigClearJournalChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigGetJournalChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var zigAddJournalEntry: *const fn (pid: c_ushort, quest: [*:0]const u8, index: c_uint, actorRefId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str_uint_str;
pub export var zigAddJournalEntryWithTimestamp: *const fn (pid: c_ushort, quest: [*:0]const u8, index: c_uint, actorRefId: [*:0]const u8, daysPassed: c_uint, month: c_uint, day: c_uint) callconv(.C) void = &binding.ub_fn_ushort_str_uint_str_3uint;
pub export var zigAddJournalIndex: *const fn (pid: c_ushort, quest: [*:0]const u8, index: c_uint) callconv(.C) void = &binding.ub_fn_ushort_str_uint;

pub export var zigSetReputation: *const fn (pid: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;

pub export var zigGetJournalItemQuest: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var zigGetJournalItemIndex: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetJournalItemType: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetJournalItemActorRefId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;

pub export var zigGetReputation: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;

pub export var zigSendJournalChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendReputation: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export fn impl_ClearJournalChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearJournalChanges, .{pid});
}

pub export fn impl_GetJournalChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetJournalChangesSize, .{pid});
}

pub export fn impl_AddJournalEntry(pid: c_ushort, quest: [*:0]const u8, index: c_uint, actorRefId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigAddJournalEntry, .{ pid, quest, index, actorRefId });
}
pub export fn impl_AddJournalEntryWithTimestamp(pid: c_ushort, quest: [*:0]const u8, index: c_uint, actorRefId: [*:0]const u8, daysPassed: c_uint, month: c_uint, day: c_uint) callconv(.C) void {
    return @call(.never_inline, zigAddJournalEntryWithTimestamp, .{ pid, quest, index, actorRefId, daysPassed, month, day });
}
pub export fn impl_AddJournalIndex(pid: c_ushort, quest: [*:0]const u8, index: c_uint) callconv(.C) void {
    return @call(.never_inline, zigAddJournalIndex, .{ pid, quest, index });
}

pub export fn impl_SetReputation(pid: c_ushort, value: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetReputation, .{ pid, value });
}

pub export fn impl_GetJournalItemQuest(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetJournalItemQuest, .{ pid, index });
}
pub export fn impl_GetJournalItemIndex(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetJournalItemIndex, .{ pid, index });
}
pub export fn impl_GetJournalItemType(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetJournalItemType, .{ pid, index });
}
pub export fn impl_GetJournalItemActorRefId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetJournalItemActorRefId, .{ pid, index });
}

pub export fn impl_GetReputation(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetReputation, .{pid});
}

pub export fn impl_SendJournalChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendJournalChanges, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendReputation(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendReputation, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
