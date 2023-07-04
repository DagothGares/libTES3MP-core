//! Raw bindings for the functions declared by TES3MP's Quests.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ClearJournalChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetJournalChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_AddJournalEntry: *const fn (pid: c_ushort, quest: [*:0]const u8, index: c_uint, actorRefId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str_uint_str;
pub export var libtes3mp_internal_AddJournalEntryWithTimestamp: *const fn (pid: c_ushort, quest: [*:0]const u8, index: c_uint, actorRefId: [*:0]const u8, daysPassed: c_uint, month: c_uint, day: c_uint) callconv(.C) void = &binding.ub_fn_ushort_str_uint_str_3uint;
pub export var libtes3mp_internal_AddJournalIndex: *const fn (pid: c_ushort, quest: [*:0]const u8, index: c_uint) callconv(.C) void = &binding.ub_fn_ushort_str_uint;

pub export var libtes3mp_internal_SetReputation: *const fn (pid: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;

pub export var libtes3mp_internal_GetJournalItemQuest: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetJournalItemIndex: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetJournalItemType: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetJournalItemActorRefId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;

pub export var libtes3mp_internal_GetReputation: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SendJournalChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendReputation: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export fn libtes3mp_ClearJournalChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearJournalChanges(pid);
}

pub export fn libtes3mp_GetJournalChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetJournalChangesSize(pid);
}

pub export fn libtes3mp_AddJournalEntry(pid: c_ushort, quest: [*:0]const u8, index: c_uint, actorRefId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddJournalEntry(pid, quest, index, actorRefId);
}
pub export fn libtes3mp_AddJournalEntryWithTimestamp(pid: c_ushort, quest: [*:0]const u8, index: c_uint, actorRefId: [*:0]const u8, daysPassed: c_uint, month: c_uint, day: c_uint) callconv(.C) void {
    return libtes3mp_internal_AddJournalEntryWithTimestamp(pid, quest, index, actorRefId, daysPassed, month, day);
}
pub export fn libtes3mp_AddJournalIndex(pid: c_ushort, quest: [*:0]const u8, index: c_uint) callconv(.C) void {
    return libtes3mp_internal_AddJournalIndex(pid, quest, index);
}

pub export fn libtes3mp_SetReputation(pid: c_ushort, value: c_int) callconv(.C) void {
    return libtes3mp_internal_SetReputation(pid, value);
}

pub export fn libtes3mp_GetJournalItemQuest(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetJournalItemQuest(pid, index);
}
pub export fn libtes3mp_GetJournalItemIndex(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetJournalItemIndex(pid, index);
}
pub export fn libtes3mp_GetJournalItemType(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetJournalItemType(pid, index);
}
pub export fn libtes3mp_GetJournalItemActorRefId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetJournalItemActorRefId(pid, index);
}

pub export fn libtes3mp_GetReputation(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetReputation(pid);
}

pub export fn libtes3mp_SendJournalChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendJournalChanges(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendReputation(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendReputation(pid, sendToOtherPlayers, skipAttachedPlayer);
}
