//! Raw bindings to the functions declared by TES3MP's Spells.hpp file.

const binding = @import("../binding.zig");

pub export var zigClearSpellbookChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigClearSpellsActiveChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigClearCooldownChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigGetSpellbookChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetSpellbookChangesAction: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetSpellsActiveChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetSpellsActiveChangesAction: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetCooldownChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var zigSetSpellbookChangesAction: *const fn (pid: c_ushort, action: u8) callconv(.C) void = &binding.ub_fn_ushort_u8;
pub export var zigSetSpellsActiveChangesAction: *const fn (pid: c_ushort, action: u8) callconv(.C) void = &binding.ub_fn_ushort_u8;

pub export var zigAddSpell: *const fn (pid: c_ushort, spellId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigAddSpellActive: *const fn (pid: c_ushort, spellId: [*:0]const u8, displayName: [*:0]const u8, stackingState: bool) callconv(.C) void = &binding.ub_fn_ushort_2str_bool;
pub export var zigAddSpellActiveEffect: *const fn (pid: c_ushort, effectId: c_int, magnitude: f64, duration: f64, timeLeft: f64, arg: c_int) callconv(.C) void = &binding.ub_fn_ushort_int_3f64_int;
pub export var zigAddCooldownSpell: *const fn (pid: c_ushort, spellId: [*:0]const u8, startDay: c_uint, startHour: f64) callconv(.C) void = &binding.ub_fn_ushort_str_uint_f64;

pub export var zigGetSpellId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveDisplayName: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveStackingState: *const fn (pid: c_ushort, index: c_uint) callconv(.C) bool = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveEffectCount: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveEffectId: *const fn (pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_2uint;
pub export var zigGetSpellsActiveEffectArg: *const fn (pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_2uint;
pub export var zigGetSpellsActiveEffectMagnitude: *const fn (pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_2uint;
pub export var zigGetSpellsActiveEffectDuration: *const fn (pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_2uint;
pub export var zigGetSpellsActiveEffectTimeLeft: *const fn (pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_2uint;

pub export var zigDoesSpellsActiveHavePlayerCaster: *const fn (pid: c_ushort, index: c_uint) callconv(.C) bool = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveCasterPid: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveCasterRefId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveCasterRefNum: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveCasterMpNum: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;

pub export var zigGetCooldownSpellId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var zigGetCooldownStartDay: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var zigGetCooldownStartHour: *const fn (pid: c_ushort, index: c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_uint;

pub export var zigSendSpellbookChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendSpellsActiveChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendCooldownChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Definitions

pub export fn impl_ClearSpellbookChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearSpellbookChanges, .{pid});
}
pub export fn impl_ClearSpellsActiveChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearSpellsActiveChanges, .{pid});
}
pub export fn impl_ClearCooldownChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearCooldownChanges, .{pid});
}

pub export fn impl_GetSpellbookChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetSpellbookChangesSize, .{pid});
}
pub export fn impl_GetSpellbookChangesAction(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetSpellbookChangesAction, .{pid});
}
pub export fn impl_GetSpellsActiveChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetSpellsActiveChangesSize, .{pid});
}
pub export fn impl_GetSpellsActiveChangesAction(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetSpellsActiveChangesAction, .{pid});
}
pub export fn impl_GetCooldownChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetCooldownChangesSize, .{pid});
}

pub export fn impl_SetSpellbookChangesAction(pid: c_ushort, action: u8) callconv(.C) void {
    return @call(.never_inline, zigSetSpellbookChangesAction, .{ pid, action });
}
pub export fn impl_SetSpellsActiveChangesAction(pid: c_ushort, action: u8) callconv(.C) void {
    return @call(.never_inline, zigSetSpellsActiveChangesAction, .{ pid, action });
}

pub export fn impl_AddSpell(pid: c_ushort, spellId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigAddSpell, .{ pid, spellId });
}
pub export fn impl_AddSpellActive(pid: c_ushort, spellId: [*:0]const u8, displayName: [*:0]const u8, stackingState: bool) callconv(.C) void {
    return @call(.never_inline, zigAddSpellActive, .{ pid, spellId, displayName, stackingState });
}
pub export fn impl_AddSpellActiveEffect(pid: c_ushort, effectId: c_int, magnitude: f64, duration: f64, timeLeft: f64, arg: c_int) callconv(.C) void {
    return @call(.never_inline, zigAddSpellActiveEffect, .{ pid, effectId, magnitude, duration, timeLeft, arg });
}
pub export fn impl_AddCooldownSpell(pid: c_ushort, spellId: [*:0]const u8, startDay: c_uint, startHour: f64) callconv(.C) void {
    return @call(.never_inline, zigAddCooldownSpell, .{ pid, spellId, startDay, startHour });
}

pub export fn impl_GetSpellId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetSpellId, .{ pid, index });
}
pub export fn impl_GetSpellsActiveId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetSpellsActiveId, .{ pid, index });
}
pub export fn impl_GetSpellsActiveDisplayName(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetSpellsActiveDisplayName, .{ pid, index });
}
pub export fn impl_GetSpellsActiveStackingState(pid: c_ushort, index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetSpellsActiveStackingState, .{ pid, index });
}
pub export fn impl_GetSpellsActiveEffectCount(pid: c_ushort, index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetSpellsActiveEffectCount, .{ pid, index });
}
pub export fn impl_GetSpellsActiveEffectId(pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetSpellsActiveEffectId, .{ pid, spellIndex, effectIndex });
}
pub export fn impl_GetSpellsActiveEffectArg(pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetSpellsActiveEffectArg, .{ pid, spellIndex, effectIndex });
}
pub export fn impl_GetSpellsActiveEffectMagnitude(pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetSpellsActiveEffectMagnitude, .{ pid, spellIndex, effectIndex });
}
pub export fn impl_GetSpellsActiveEffectDuration(pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetSpellsActiveEffectDuration, .{ pid, spellIndex, effectIndex });
}
pub export fn impl_GetSpellsActiveEffectTimeLeft(pid: c_ushort, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetSpellsActiveEffectTimeLeft, .{ pid, spellIndex, effectIndex });
}

pub export fn impl_DoesSpellsActiveHavePlayerCaster(pid: c_ushort, index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesSpellsActiveHavePlayerCaster, .{ pid, index });
}
pub export fn impl_GetSpellsActiveCasterPid(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetSpellsActiveCasterPid, .{ pid, index });
}
pub export fn impl_GetSpellsActiveCasterRefId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetSpellsActiveCasterRefId, .{ pid, index });
}
pub export fn impl_GetSpellsActiveCasterRefNum(pid: c_ushort, index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetSpellsActiveCasterRefNum, .{ pid, index });
}
pub export fn impl_GetSpellsActiveCasterMpNum(pid: c_ushort, index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetSpellsActiveCasterMpNum, .{ pid, index });
}

pub export fn impl_GetCooldownSpellId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetCooldownSpellId, .{ pid, index });
}
pub export fn impl_GetCooldownStartDay(pid: c_ushort, index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetCooldownStartDay, .{ pid, index });
}
pub export fn impl_GetCooldownStartHour(pid: c_ushort, index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetCooldownStartHour, .{ pid, index });
}

pub export fn impl_SendSpellbookChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendSpellbookChanges, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendSpellsActiveChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendSpellsActiveChanges, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendCooldownChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendCooldownChanges, .{pid});
}