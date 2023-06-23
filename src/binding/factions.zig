//! Raw bindings to the functions declared by TES3MP's Factions.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigGetFactionId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigSetFactionId: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetFactionRank: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigSetFactionRank: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigGetFactionExpulsionState: *const fn (c_ushort, c_uint) callconv(.C) bool = &binding.ub_fn_ushort_uint;
pub export var zigSetFactionExpulsionState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigGetFactionReputation: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigSetFactionReputation: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigAddFaction: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// FactionChanges functions
pub export var zigClearFactionChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetFactionChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetFactionChangesAction: *const fn (c_ushort) callconv(.C) u8 = &binding.ub_fn_ushort;
pub export var zigSetFactionChangesAction: *const fn (c_ushort, u8) callconv(.C) void = &binding.ub_fn_ushort_u8;
pub export var zigSendFactionChanges: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

pub export fn impl_GetFactionId(pid: c_ushort, index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetFactionId, .{ pid, index });
}
pub export fn impl_SetFactionId(factionId: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetFactionId, .{factionId});
}
pub export fn impl_GetFactionRank(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetFactionRank, .{ pid, index });
}
pub export fn impl_SetFactionRank(rank: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetFactionRank, .{rank});
}
pub export fn impl_GetFactionExpulsionState(pid: c_ushort, index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetFactionExpulsionState, .{ pid, index });
}
pub export fn impl_SetFactionExpulsionState(expulsionState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetFactionExpulsionState, .{expulsionState});
}
pub export fn impl_GetFactionReputation(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetFactionReputation, .{ pid, index });
}
pub export fn impl_SetFactionReputation(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetFactionReputation, .{pid});
}
pub export fn impl_AddFaction(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigAddFaction, .{pid});
}
pub export fn impl_ClearFactionChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearFactionChanges, .{pid});
}
pub export fn impl_GetFactionChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetFactionChangesSize, .{pid});
}
pub export fn impl_GetFactionChangesAction(pid: c_ushort) callconv(.C) u8 {
    return @call(.never_inline, zigGetFactionChangesAction, .{pid});
}
pub export fn impl_SetFactionChangesAction(pid: c_ushort, action: u8) callconv(.C) void {
    return @call(.never_inline, zigSetFactionChangesAction, .{ pid, action });
}
pub export fn impl_SendFactionChanges(
    pid: c_ushort,
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigSendFactionChanges,
        .{ pid, sendToOtherPlayers, skipAttachedPlayer },
    );
}
