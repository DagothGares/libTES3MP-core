//! Raw bindings to the functions declared by TES3MP's Factions.hpp file.

const binding = @import("../binding.zig");

pub export var zigClearFactionChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetFactionChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetFactionChangesAction: *const fn (pid: c_ushort) callconv(.C) u8 = &binding.ub_fn_ushort;
pub export var zigGetFactionId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var zigGetFactionRank: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetFactionExpulsionState: *const fn (pid: c_ushort, index: c_uint) callconv(.C) bool = &binding.ub_fn_ushort_uint;
pub export var zigGetFactionReputation: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigSetFactionChangesAction: *const fn (pid: c_ushort, action: u8) callconv(.C) void = &binding.ub_fn_ushort_u8;
pub export var zigSetFactionId: *const fn (factionId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetFactionRank: *const fn (rank: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetFactionExpulsionState: *const fn (expulsionState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetFactionReputation: *const fn (reputation: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigAddFaction: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSendFactionChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export fn impl_ClearFactionChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearFactionChanges, .{pid});
}
pub export fn impl_GetFactionChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetFactionChangesSize, .{pid});
}
pub export fn impl_GetFactionChangesAction(pid: c_ushort) callconv(.C) u8 {
    return @call(.never_inline, zigGetFactionChangesAction, .{pid});
}
pub export fn impl_GetFactionId(pid: c_ushort, index: c_uint) callconv(.C) [*c]const u8 {
    return @call(.never_inline, zigGetFactionId, .{ pid, index });
}
pub export fn impl_GetFactionRank(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetFactionRank, .{ pid, index });
}
pub export fn impl_GetFactionExpulsionState(pid: c_ushort, index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetFactionExpulsionState, .{ pid, index });
}
pub export fn impl_GetFactionReputation(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetFactionReputation, .{ pid, index });
}
pub export fn impl_SetFactionChangesAction(pid: c_ushort, action: u8) callconv(.C) void {
    return @call(.never_inline, zigSetFactionChangesAction, .{ pid, action });
}
pub export fn impl_SetFactionId(factionId: [*c]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetFactionId, .{factionId});
}
pub export fn impl_SetFactionRank(rank: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetFactionRank, .{rank});
}
pub export fn impl_SetFactionExpulsionState(expulsionState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetFactionExpulsionState, .{expulsionState});
}
pub export fn impl_SetFactionReputation(reputation: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetFactionReputation, .{reputation});
}
pub export fn impl_AddFaction(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigAddFaction, .{pid});
}
pub export fn impl_SendFactionChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendFactionChanges, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
