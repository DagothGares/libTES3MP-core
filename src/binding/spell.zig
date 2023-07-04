//! Raw bindings to the functions declared by TES3MP's Spells.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ClearSpellbookChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_ClearSpellsActiveChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_ClearCooldownChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetSpellbookChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetSpellbookChangesAction: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetSpellsActiveChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetSpellsActiveChangesAction: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetCooldownChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetSpellbookChangesAction: *const fn (pid: c_ushort, action: u8) callconv(.C) void = &binding.ub_fn_ushort_u8;
pub export var libtes3mp_internal_SetSpellsActiveChangesAction: *const fn (pid: c_ushort, action: u8) callconv(.C) void = &binding.ub_fn_ushort_u8;

pub export var libtes3mp_internal_AddSpell: *const fn (pid: c_ushort, spellId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_AddSpellActive: *const fn (pid: c_ushort, spellId: [*:0]const u8, displayName: [*:0]const u8, stackingState: bool) callconv(.C) void = &binding.ub_fn_ushort_2str_bool;
pub export var libtes3mp_internal_AddSpellActiveEffect: *const fn (pid: c_ushort, effectId: c_int, magnitude: f64, duration: f64, timeLeft: f64, arg: c_int) callconv(.C) void = &binding.ub_fn_ushort_int_3f64_int;
pub export var libtes3mp_internal_AddCooldownSpell: *const fn (pid: c_ushort, spellId: [*:0]const u8, startDay: c_uint, startHour: f64) callconv(.C) void = &binding.ub_fn_ushort_str_uint_f64;

pub export var libtes3mp_internal_GetSpellId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetSpellsActiveId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetSpellsActiveDisplayName: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetSpellsActiveStackingState: *const fn (pid: c_ushort, index: c_uint) callconv(.C) bool = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetSpellsActiveEffectCount: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetSpellsActiveEffectId: *const fn (pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_2uint;
pub export var libtes3mp_internal_GetSpellsActiveEffectArg: *const fn (pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_2uint;
pub export var libtes3mp_internal_GetSpellsActiveEffectMagnitude: *const fn (pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_2uint;
pub export var libtes3mp_internal_GetSpellsActiveEffectDuration: *const fn (pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_2uint;
pub export var libtes3mp_internal_GetSpellsActiveEffectTimeLeft: *const fn (pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_2uint;

pub export var libtes3mp_internal_DoesSpellsActiveHavePlayerCaster: *const fn (pid: c_ushort, index: c_uint) callconv(.C) bool = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetSpellsActiveCasterPid: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetSpellsActiveCasterRefId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetSpellsActiveCasterRefNum: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetSpellsActiveCasterMpNum: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;

pub export var libtes3mp_internal_GetCooldownSpellId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetCooldownStartDay: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetCooldownStartHour: *const fn (pid: c_ushort, index: c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_uint;

pub export var libtes3mp_internal_SendSpellbookChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendSpellsActiveChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendCooldownChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Definitions

pub export fn libtes3mp_ClearSpellbookChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearSpellbookChanges(pid);
}
pub export fn libtes3mp_ClearSpellsActiveChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearSpellsActiveChanges(pid);
}
pub export fn libtes3mp_ClearCooldownChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearCooldownChanges(pid);
}

pub export fn libtes3mp_GetSpellbookChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetSpellbookChangesSize(pid);
}
pub export fn libtes3mp_GetSpellbookChangesAction(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetSpellbookChangesAction(pid);
}
pub export fn libtes3mp_GetSpellsActiveChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetSpellsActiveChangesSize(pid);
}
pub export fn libtes3mp_GetSpellsActiveChangesAction(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetSpellsActiveChangesAction(pid);
}
pub export fn libtes3mp_GetCooldownChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetCooldownChangesSize(pid);
}

pub export fn libtes3mp_SetSpellbookChangesAction(pid: c_ushort, action: u8) callconv(.C) void {
    return libtes3mp_internal_SetSpellbookChangesAction(pid, action);
}
pub export fn libtes3mp_SetSpellsActiveChangesAction(pid: c_ushort, action: u8) callconv(.C) void {
    return libtes3mp_internal_SetSpellsActiveChangesAction(pid, action);
}

pub export fn libtes3mp_AddSpell(pid: c_ushort, spellId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddSpell(pid, spellId);
}
pub export fn libtes3mp_AddSpellActive(pid: c_ushort, spellId: [*:0]const u8, displayName: [*:0]const u8, stackingState: bool) callconv(.C) void {
    return libtes3mp_internal_AddSpellActive(pid, spellId, displayName, stackingState);
}
pub export fn libtes3mp_AddSpellActiveEffect(pid: c_ushort, effectId: c_int, magnitude: f64, duration: f64, timeLeft: f64, arg: c_int) callconv(.C) void {
    return libtes3mp_internal_AddSpellActiveEffect(pid, effectId, magnitude, duration, timeLeft, arg);
}
pub export fn libtes3mp_AddCooldownSpell(pid: c_ushort, spellId: [*:0]const u8, startDay: c_uint, startHour: f64) callconv(.C) void {
    return libtes3mp_internal_AddCooldownSpell(pid, spellId, startDay, startHour);
}

pub export fn libtes3mp_GetSpellId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetSpellId(pid, index);
}
pub export fn libtes3mp_GetSpellsActiveId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetSpellsActiveId(pid, index);
}
pub export fn libtes3mp_GetSpellsActiveDisplayName(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetSpellsActiveDisplayName(pid, index);
}
pub export fn libtes3mp_GetSpellsActiveStackingState(pid: c_ushort, index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_GetSpellsActiveStackingState(pid, index);
}
pub export fn libtes3mp_GetSpellsActiveEffectCount(pid: c_ushort, index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetSpellsActiveEffectCount(pid, index);
}
pub export fn libtes3mp_GetSpellsActiveEffectId(pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetSpellsActiveEffectId(pid, spellIndex, effectIndex);
}
pub export fn libtes3mp_GetSpellsActiveEffectArg(pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetSpellsActiveEffectArg(pid, spellIndex, effectIndex);
}
pub export fn libtes3mp_GetSpellsActiveEffectMagnitude(pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetSpellsActiveEffectMagnitude(pid, spellIndex, effectIndex);
}
pub export fn libtes3mp_GetSpellsActiveEffectDuration(pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetSpellsActiveEffectDuration(pid, spellIndex, effectIndex);
}
pub export fn libtes3mp_GetSpellsActiveEffectTimeLeft(pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetSpellsActiveEffectTimeLeft(pid, spellIndex, effectIndex);
}

pub export fn libtes3mp_DoesSpellsActiveHavePlayerCaster(pid: c_ushort, index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_DoesSpellsActiveHavePlayerCaster(pid, index);
}
pub export fn libtes3mp_GetSpellsActiveCasterPid(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetSpellsActiveCasterPid(pid, index);
}
pub export fn libtes3mp_GetSpellsActiveCasterRefId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetSpellsActiveCasterRefId(pid, index);
}
pub export fn libtes3mp_GetSpellsActiveCasterRefNum(pid: c_ushort, index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetSpellsActiveCasterRefNum(pid, index);
}
pub export fn libtes3mp_GetSpellsActiveCasterMpNum(pid: c_ushort, index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetSpellsActiveCasterMpNum(pid, index);
}

pub export fn libtes3mp_GetCooldownSpellId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetCooldownSpellId(pid, index);
}
pub export fn libtes3mp_GetCooldownStartDay(pid: c_ushort, index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetCooldownStartDay(pid, index);
}
pub export fn libtes3mp_GetCooldownStartHour(pid: c_ushort, index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetCooldownStartHour(pid, index);
}

pub export fn libtes3mp_SendSpellbookChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendSpellbookChanges(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendSpellsActiveChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendSpellsActiveChanges(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendCooldownChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendCooldownChanges(pid);
}
