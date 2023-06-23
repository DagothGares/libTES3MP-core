//! Raw bindings to the functions declared by TES3MP's Mechanics.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigGetDrawState: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetSneakState: *const fn (c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;
pub export var zigJail: *const fn (c_ushort, c_int, bool, bool, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_2bool_2str;
pub export var zigResurrect: *const fn (c_ushort, c_uint) callconv(.C) void = &binding.ub_fn_ushort_uint;
pub export var zigGetMiscellaneousChangeType: *const fn (c_ushort) callconv(.C) u8 = &binding.ub_fn_ushort;

// AlliedPlayers functions
pub export var zigClearAlliedPlayersForPlayer: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigAddAlliedPlayerForPlayer: *const fn (c_ushort, c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;
pub export var zigSendAlliedPlayers: *const fn (c_ushort, bool) callconv(.C) void = &binding.ub_fn_ushort_bool;

// Mark functions
pub export var zigGetMarkCell: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigGetMarkPosX: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMarkPosY: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMarkPosZ: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMarkRotX: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMarkRotY: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMarkRotZ: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetMarkCell: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetMarkPos: *const fn (c_ushort, f64, f64, f64) callconv(.C) void = &binding.ub_fn_ushort_3f64;
pub export var zigSetMarkRot: *const fn (c_ushort, f64, f64, f64) callconv(.C) void = &binding.ub_fn_ushort_3f64;
pub export var zigSendMarkLocation: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// SelectedSpell functions
pub export var zigGetSelectedSpellId: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetSelectedSpellId: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSendSelectedSpell: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// PlayerKiller functions
pub export var zigDoesPlayerHavePlayerKiller: *const fn (c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerPid: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerRefId: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerRefNum: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerMpNum: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerName: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;

pub export fn impl_GetDrawState(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetDrawState, .{pid});
}
pub export fn impl_GetSneakState(pid: c_ushort) callconv(.C) bool {
    return @call(.never_inline, zigGetSneakState, .{pid});
}
pub export fn impl_Jail(
    pid: c_ushort,
    jailDays: c_int,
    ignoreJailTeleportation: bool,
    ignoreJailSkillIncreases: bool,
    jailProgressText: c_str,
    jailEndText: c_str,
) callconv(.C) void {
    return @call(.never_inline, zigJail, .{
        pid,
        jailDays,
        ignoreJailTeleportation,
        ignoreJailSkillIncreases,
        jailProgressText,
        jailEndText,
    });
}
pub export fn impl_Resurrect(pid: c_ushort, resurrectType: c_uint) callconv(.C) void {
    return @call(.never_inline, zigResurrect, .{ pid, resurrectType });
}
pub export fn impl_GetMiscellaneousChangeType(pid: c_ushort) callconv(.C) u8 {
    return @call(.never_inline, zigGetMiscellaneousChangeType, .{pid});
}
pub export fn impl_ClearAlliedPlayersForPlayer(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearAlliedPlayersForPlayer, .{pid});
}
pub export fn impl_AddAlliedPlayerForPlayer(
    pid: c_ushort,
    alliedPlayerPid: c_ushort,
) callconv(.C) void {
    return @call(.never_inline, zigAddAlliedPlayerForPlayer, .{ pid, alliedPlayerPid });
}
pub export fn impl_SendAlliedPlayers(pid: c_ushort, sendToOtherPlayers: bool) callconv(.C) void {
    return @call(.never_inline, zigSendAlliedPlayers, .{ pid, sendToOtherPlayers });
}
pub export fn impl_GetMarkCell(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetMarkCell, .{pid});
}
pub export fn impl_GetMarkPosX(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetMarkPosX, .{pid});
}
pub export fn impl_GetMarkPosY(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetMarkPosY, .{pid});
}
pub export fn impl_GetMarkPosZ(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetMarkPosZ, .{pid});
}
pub export fn impl_GetMarkRotX(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetMarkRotX, .{pid});
}
pub export fn impl_GetMarkRotY(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetMarkRotY, .{pid});
}
pub export fn impl_GetMarkRotZ(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetMarkRotZ, .{pid});
}
pub export fn impl_SetMarkCell(pid: c_ushort, cellDescription: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetMarkCell, .{ pid, cellDescription });
}
pub export fn impl_SetMarkPos(pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetMarkPos, .{ pid, x, y, z });
}
pub export fn impl_SetMarkRot(pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetMarkRot, .{ pid, x, y, z });
}
pub export fn impl_SendMarkLocation(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendMarkLocation, .{pid});
}
pub export fn impl_GetSelectedSpellId(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetSelectedSpellId, .{pid});
}
pub export fn impl_SetSelectedSpellId(pid: c_ushort, spellId: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetSelectedSpellId, .{ pid, spellId });
}
pub export fn impl_SendSelectedSpell(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendSelectedSpell, .{pid});
}
pub export fn impl_DoesPlayerHavePlayerKiller(pid: c_ushort) callconv(.C) bool {
    return @call(.never_inline, zigDoesPlayerHavePlayerKiller, .{pid});
}
pub export fn impl_GetPlayerKillerPid(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetPlayerKillerPid, .{pid});
}
pub export fn impl_GetPlayerKillerRefId(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetPlayerKillerRefId, .{pid});
}
pub export fn impl_GetPlayerKillerRefNum(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetPlayerKillerRefNum, .{pid});
}
pub export fn impl_GetPlayerKillerMpNum(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetPlayerKillerMpNum, .{pid});
}
pub export fn impl_GetPlayerKillerName(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetPlayerKillerName, .{pid});
}
