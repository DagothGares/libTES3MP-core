//! Raw bindings to the functions declared by TES3MP's Mechanics.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ClearAlliedPlayersForPlayer: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetMiscellaneousChangeType: *const fn (pid: c_ushort) callconv(.C) u8 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetMarkCell: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetMarkPosX: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetMarkPosY: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetMarkPosZ: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetMarkRotX: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetMarkRotZ: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetSelectedSpellId: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_DoesPlayerHavePlayerKiller: *const fn (pid: c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetPlayerKillerPid: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetPlayerKillerRefId: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetPlayerKillerRefNum: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetPlayerKillerMpNum: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetPlayerKillerName: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetDrawState: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetSneakState: *const fn (pid: c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetMarkCell: *const fn (pid: c_ushort, cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetMarkPos: *const fn (pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_ushort_3f64;
pub export var libtes3mp_internal_SetMarkRot: *const fn (pid: c_ushort, x: f64, z: f64) callconv(.C) void = &binding.ub_fn_ushort_2f64;
pub export var libtes3mp_internal_SetSelectedSpellId: *const fn (pid: c_ushort, spellId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;

pub export var libtes3mp_internal_AddAlliedPlayerForPlayer: *const fn (pid: c_ushort, alliedPlayerPid: c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;

pub export var libtes3mp_internal_SendMarkLocation: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SendSelectedSpell: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SendAlliedPlayers: *const fn (pid: c_ushort, sendToOtherPlayers: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;

pub export var libtes3mp_internal_Jail: *const fn (pid: c_ushort, jailDays: c_int, ignoreJailTeleportation: bool, ignoreJailSkillIncreases: bool, jailProgressText: [*:0]const u8, jailEndText: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_int_2bool_2str;
pub export var libtes3mp_internal_Resurrect: *const fn (pid: c_ushort, resurrectType: c_uint) callconv(.C) void = &binding.ub_fn_ushort_uint;

pub export fn libtes3mp_ClearAlliedPlayersForPlayer(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearAlliedPlayersForPlayer(pid);
}

pub export fn libtes3mp_GetMiscellaneousChangeType(pid: c_ushort) callconv(.C) u8 {
    return libtes3mp_internal_GetMiscellaneousChangeType(pid);
}

pub export fn libtes3mp_GetMarkCell(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetMarkCell(pid);
}
pub export fn libtes3mp_GetMarkPosX(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetMarkPosX(pid);
}
pub export fn libtes3mp_GetMarkPosY(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetMarkPosY(pid);
}
pub export fn libtes3mp_GetMarkPosZ(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetMarkPosZ(pid);
}
pub export fn libtes3mp_GetMarkRotX(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetMarkRotX(pid);
}
pub export fn libtes3mp_GetMarkRotZ(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetMarkRotZ(pid);
}
pub export fn libtes3mp_GetSelectedSpellId(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetSelectedSpellId(pid);
}

pub export fn libtes3mp_DoesPlayerHavePlayerKiller(pid: c_ushort) callconv(.C) bool {
    return libtes3mp_internal_DoesPlayerHavePlayerKiller(pid);
}
pub export fn libtes3mp_GetPlayerKillerPid(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetPlayerKillerPid(pid);
}
pub export fn libtes3mp_GetPlayerKillerRefId(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetPlayerKillerRefId(pid);
}
pub export fn libtes3mp_GetPlayerKillerRefNum(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetPlayerKillerRefNum(pid);
}
pub export fn libtes3mp_GetPlayerKillerMpNum(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetPlayerKillerMpNum(pid);
}
pub export fn libtes3mp_GetPlayerKillerName(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetPlayerKillerName(pid);
}

pub export fn libtes3mp_GetDrawState(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetDrawState(pid);
}
pub export fn libtes3mp_GetSneakState(pid: c_ushort) callconv(.C) bool {
    return libtes3mp_internal_GetSneakState(pid);
}

pub export fn libtes3mp_SetMarkCell(pid: c_ushort, cellDescription: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetMarkCell(pid, cellDescription);
}
pub export fn libtes3mp_SetMarkPos(pid: c_ushort, x: f64, y: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetMarkPos(pid, x, y, z);
}
pub export fn libtes3mp_SetMarkRot(pid: c_ushort, x: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetMarkRot(pid, x, z);
}
pub export fn libtes3mp_SetSelectedSpellId(pid: c_ushort, spellId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetSelectedSpellId(pid, spellId);
}

pub export fn libtes3mp_AddAlliedPlayerForPlayer(pid: c_ushort, alliedPlayerPid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_AddAlliedPlayerForPlayer(pid, alliedPlayerPid);
}

pub export fn libtes3mp_SendMarkLocation(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendMarkLocation(pid);
}
pub export fn libtes3mp_SendSelectedSpell(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendSelectedSpell(pid);
}
pub export fn libtes3mp_SendAlliedPlayers(pid: c_ushort, sendToOtherPlayers: bool) callconv(.C) void {
    return libtes3mp_internal_SendAlliedPlayers(pid, sendToOtherPlayers);
}

pub export fn libtes3mp_Jail(pid: c_ushort, jailDays: c_int, ignoreJailTeleportation: bool, ignoreJailSkillIncreases: bool, jailProgressText: [*:0]const u8, jailEndText: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_Jail(pid, jailDays, ignoreJailTeleportation, ignoreJailSkillIncreases, jailProgressText, jailEndText);
}
pub export fn libtes3mp_Resurrect(pid: c_ushort, resurrectType: c_uint) callconv(.C) void {
    return libtes3mp_internal_Resurrect(pid, resurrectType);
}
