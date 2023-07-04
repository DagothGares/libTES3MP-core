//! Raw bindings to the functions declared by TES3MP's Factions.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ClearFactionChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetFactionChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetFactionChangesAction: *const fn (pid: c_ushort) callconv(.C) u8 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetFactionId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetFactionRank: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetFactionExpulsionState: *const fn (pid: c_ushort, index: c_uint) callconv(.C) bool = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetFactionReputation: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_SetFactionChangesAction: *const fn (pid: c_ushort, action: u8) callconv(.C) void = &binding.ub_fn_ushort_u8;
pub export var libtes3mp_internal_SetFactionId: *const fn (factionId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetFactionRank: *const fn (rank: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetFactionExpulsionState: *const fn (expulsionState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetFactionReputation: *const fn (reputation: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_AddFaction: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SendFactionChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export fn libtes3mp_ClearFactionChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearFactionChanges(pid);
}

pub export fn libtes3mp_GetFactionChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetFactionChangesSize(pid);
}
pub export fn libtes3mp_GetFactionChangesAction(pid: c_ushort) callconv(.C) u8 {
    return libtes3mp_internal_GetFactionChangesAction(pid);
}

pub export fn libtes3mp_GetFactionId(pid: c_ushort, index: c_uint) callconv(.C) [*c]const u8 {
    return libtes3mp_internal_GetFactionId(pid, index);
}
pub export fn libtes3mp_GetFactionRank(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetFactionRank(pid, index);
}
pub export fn libtes3mp_GetFactionExpulsionState(pid: c_ushort, index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_GetFactionExpulsionState(pid, index);
}
pub export fn libtes3mp_GetFactionReputation(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetFactionReputation(pid, index);
}

pub export fn libtes3mp_SetFactionChangesAction(pid: c_ushort, action: u8) callconv(.C) void {
    return libtes3mp_internal_SetFactionChangesAction(pid, action);
}
pub export fn libtes3mp_SetFactionId(factionId: [*c]const u8) callconv(.C) void {
    return libtes3mp_internal_SetFactionId(factionId);
}
pub export fn libtes3mp_SetFactionRank(rank: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetFactionRank(rank);
}
pub export fn libtes3mp_SetFactionExpulsionState(expulsionState: bool) callconv(.C) void {
    return libtes3mp_internal_SetFactionExpulsionState(expulsionState);
}
pub export fn libtes3mp_SetFactionReputation(reputation: c_int) callconv(.C) void {
    return libtes3mp_internal_SetFactionReputation(reputation);
}

pub export fn libtes3mp_AddFaction(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_AddFaction(pid);
}

pub export fn libtes3mp_SendFactionChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendFactionChanges(pid, sendToOtherPlayers, skipAttachedPlayer);
}
