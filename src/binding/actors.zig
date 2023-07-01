//! Raw bindings for the functions declared in TES3MP's Actors.hpp file.

const binding = @import("../binding.zig");

pub export var zigReadReceivedActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigReadCellActorList: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var zigClearActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSetActorListPid: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigCopyReceivedActorListToStore: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigGetActorListSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetActorListAction: *const fn () callconv(.C) u8 = &binding.ub_fn;

pub export var zigGetActorCell: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetActorRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetActorRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetActorMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;

pub export var zigGetActorPosX: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorPosY: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorPosZ: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorRotX: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorRotY: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorRotZ: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;

pub export var zigGetActorHealthBase: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorHealthCurrent: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorHealthModified: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorMagickaBase: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorMagickaCurrent: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorMagickaModified: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorFatigueBase: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorFatigueCurrent: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorFatigueModified: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;

pub export var zigGetActorEquipmentItemRefId: *const fn (index: c_uint, slot: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint_ushort;
pub export var zigGetActorEquipmentItemCount: *const fn (index: c_uint, slot: c_ushort) callconv(.C) c_int = &binding.ub_fn_uint_ushort;
pub export var zigGetActorEquipmentItemCharge: *const fn (index: c_uint, slot: c_ushort) callconv(.C) c_int = &binding.ub_fn_uint_ushort;
pub export var zigGetActorEquipmentItemEnchantmentCharge: *const fn (index: c_uint, slot: c_ushort) callconv(.C) f64 = &binding.ub_fn_uint_ushort;

pub export var zigDoesActorHavePlayerKiller: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetActorKillerPid: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetActorKillerRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetActorKillerRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetActorKillerMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetActorKillerName: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetActorDeathState: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;

pub export var zigGetActorSpellsActiveChangesSize: *const fn (actorIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetActorSpellsActiveChangesAction: *const fn (actorIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetActorSpellsActiveId: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveDisplayName: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveStackingState: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) bool = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveEffectCount: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveEffectId: *const fn (actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_3uint;
pub export var zigGetActorSpellsActiveEffectArg: *const fn (actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_3uint;
pub export var zigGetActorSpellsActiveEffectMagnitude: *const fn (actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_3uint;
pub export var zigGetActorSpellsActiveEffectDuration: *const fn (actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_3uint;
pub export var zigGetActorSpellsActiveEffectTimeLeft: *const fn (actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_3uint;

pub export var zigDoesActorSpellsActiveHavePlayerCaster: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) bool = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveCasterPid: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveCasterRefId: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveCasterRefNum: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveCasterMpNum: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;

pub export var zigDoesActorHavePosition: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigDoesActorHaveStatsDynamic: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;

pub export var zigSetActorListCell: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetActorListAction: *const fn (action: u8) callconv(.C) void = &binding.ub_fn_u8;

pub export var zigSetActorCell: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetActorRefId: *const fn (refId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetActorRefNum: *const fn (refNum: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetActorMpNum: *const fn (mpNum: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var zigSetActorPosition: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var zigSetActorRotation: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;

pub export var zigSetActorHealthBase: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetActorHealthCurrent: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetActorHealthModified: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetActorMagickaBase: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetActorMagickaCurrent: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetActorMagickaModified: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetActorFatigueBase: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetActorFatigueCurrent: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetActorFatigueModified: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;

pub export var zigSetActorSound: *const fn (sound: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetActorDeathState: *const fn (deathState: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetActorDeathInstant: *const fn (isInstant: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetActorSpellsActiveAction: *const fn (action: u8) callconv(.C) void = &binding.ub_fn_u8;

pub export var zigSetActorAIAction: *const fn (action: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetActorAITargetToPlayer: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSetActorAITargetToObject: *const fn (refNum: c_int, mpNum: c_int) callconv(.C) void = &binding.ub_fn_2int;
pub export var zigSetActorAICoordinates: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var zigSetActorAIDistance: *const fn (distance: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetActorAIDuration: *const fn (duration: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetActorAIRepetition: *const fn (shouldRepeat: bool) callconv(.C) void = &binding.ub_fn_bool;

pub export var zigEquipActorItem: *const fn (slot: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64) callconv(.C) void = &binding.ub_fn_ushort_str_uint_int_f64;
pub export var zigUnequipActorItem: *const fn (slot: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigAddActorSpellActive: *const fn (spellId: [*:0]const u8, displayName: [*:0]const u8, stackingState: bool) callconv(.C) void = &binding.ub_fn_2str_bool;
pub export var zigAddActorSpellActiveEffect: *const fn (effectId: c_int, magnitude: f64, duration: f64, timeLeft: f64, arg: c_int) callconv(.C) void = &binding.ub_fn_int_3f64_int;

pub export var zigAddActor: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigSendActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSendActorAuthority: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSendActorPosition: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendActorStatsDynamic: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendActorEquipment: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendActorSpellsActiveChanges: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendActorSpeech: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendActorDeath: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendActorAI: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendActorCellChange: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;

pub export fn impl_ReadReceivedActorList() callconv(.C) void {
    return @call(.never_inline, zigReadReceivedActorList, .{});
}
pub export fn impl_ReadCellActorList(cellDescription: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigReadCellActorList, .{cellDescription});
}

pub export fn impl_ClearActorList() callconv(.C) void {
    return @call(.never_inline, zigClearActorList, .{});
}
pub export fn impl_SetActorListPid(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetActorListPid, .{pid});
}

pub export fn impl_CopyReceivedActorListToStore() callconv(.C) void {
    return @call(.never_inline, zigCopyReceivedActorListToStore, .{});
}

pub export fn impl_GetActorListSize() callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorListSize, .{});
}
pub export fn impl_GetActorListAction() callconv(.C) u8 {
    return @call(.never_inline, zigGetActorListAction, .{});
}

pub export fn impl_GetActorCell(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetActorCell, .{index});
}
pub export fn impl_GetActorRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetActorRefId, .{index});
}
pub export fn impl_GetActorRefNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorRefNum, .{index});
}
pub export fn impl_GetActorMpNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorMpNum, .{index});
}

pub export fn impl_GetActorPosX(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorPosX, .{index});
}
pub export fn impl_GetActorPosY(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorPosY, .{index});
}
pub export fn impl_GetActorPosZ(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorPosZ, .{index});
}
pub export fn impl_GetActorRotX(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorRotX, .{index});
}
pub export fn impl_GetActorRotY(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorRotY, .{index});
}
pub export fn impl_GetActorRotZ(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorRotZ, .{index});
}

pub export fn impl_GetActorHealthBase(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorHealthBase, .{index});
}
pub export fn impl_GetActorHealthCurrent(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorHealthCurrent, .{index});
}
pub export fn impl_GetActorHealthModified(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorHealthModified, .{index});
}
pub export fn impl_GetActorMagickaBase(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorMagickaBase, .{index});
}
pub export fn impl_GetActorMagickaCurrent(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorMagickaCurrent, .{index});
}
pub export fn impl_GetActorMagickaModified(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorMagickaModified, .{index});
}
pub export fn impl_GetActorFatigueBase(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorFatigueBase, .{index});
}
pub export fn impl_GetActorFatigueCurrent(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorFatigueCurrent, .{index});
}
pub export fn impl_GetActorFatigueModified(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorFatigueModified, .{index});
}

pub export fn impl_GetActorEquipmentItemRefId(index: c_uint, slot: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetActorEquipmentItemRefId, .{ index, slot });
}
pub export fn impl_GetActorEquipmentItemCount(index: c_uint, slot: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetActorEquipmentItemCount, .{ index, slot });
}
pub export fn impl_GetActorEquipmentItemCharge(index: c_uint, slot: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetActorEquipmentItemCharge, .{ index, slot });
}
pub export fn impl_GetActorEquipmentItemEnchantmentCharge(index: c_uint, slot: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorEquipmentItemEnchantmentCharge, .{ index, slot });
}

pub export fn impl_DoesActorHavePlayerKiller(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesActorHavePlayerKiller, .{index});
}
pub export fn impl_GetActorKillerPid(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetActorKillerPid, .{index});
}
pub export fn impl_GetActorKillerRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetActorKillerRefId, .{index});
}
pub export fn impl_GetActorKillerRefNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorKillerRefNum, .{index});
}
pub export fn impl_GetActorKillerMpNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorKillerMpNum, .{index});
}
pub export fn impl_GetActorKillerName(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetActorKillerName, .{index});
}
pub export fn impl_GetActorDeathState(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorDeathState, .{index});
}

pub export fn impl_GetActorSpellsActiveChangesSize(actorIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorSpellsActiveChangesSize, .{actorIndex});
}
pub export fn impl_GetActorSpellsActiveChangesAction(actorIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorSpellsActiveChangesAction, .{actorIndex});
}
pub export fn impl_GetActorSpellsActiveId(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetActorSpellsActiveId, .{ actorIndex, spellIndex });
}
pub export fn impl_GetActorSpellsActiveDisplayName(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetActorSpellsActiveDisplayName, .{ actorIndex, spellIndex });
}
pub export fn impl_GetActorSpellsActiveStackingState(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetActorSpellsActiveStackingState, .{ actorIndex, spellIndex });
}
pub export fn impl_GetActorSpellsActiveEffectCount(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorSpellsActiveEffectCount, .{ actorIndex, spellIndex });
}
pub export fn impl_GetActorSpellsActiveEffectId(actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorSpellsActiveEffectId, .{ actorIndex, spellIndex, effectIndex });
}
pub export fn impl_GetActorSpellsActiveEffectArg(actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetActorSpellsActiveEffectArg, .{ actorIndex, spellIndex, effectIndex });
}
pub export fn impl_GetActorSpellsActiveEffectMagnitude(actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorSpellsActiveEffectMagnitude, .{ actorIndex, spellIndex, effectIndex });
}
pub export fn impl_GetActorSpellsActiveEffectDuration(actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorSpellsActiveEffectDuration, .{ actorIndex, spellIndex, effectIndex });
}
pub export fn impl_GetActorSpellsActiveEffectTimeLeft(actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetActorSpellsActiveEffectTimeLeft, .{ actorIndex, spellIndex, effectIndex });
}

pub export fn impl_DoesActorSpellsActiveHavePlayerCaster(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesActorSpellsActiveHavePlayerCaster, .{ actorIndex, spellIndex });
}
pub export fn impl_GetActorSpellsActiveCasterPid(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetActorSpellsActiveCasterPid, .{ actorIndex, spellIndex });
}
pub export fn impl_GetActorSpellsActiveCasterRefId(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetActorSpellsActiveCasterRefId, .{ actorIndex, spellIndex });
}
pub export fn impl_GetActorSpellsActiveCasterRefNum(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorSpellsActiveCasterRefNum, .{ actorIndex, spellIndex });
}
pub export fn impl_GetActorSpellsActiveCasterMpNum(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetActorSpellsActiveCasterMpNum, .{ actorIndex, spellIndex });
}

pub export fn impl_DoesActorHavePosition(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesActorHavePosition, .{index});
}
pub export fn impl_DoesActorHaveStatsDynamic(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesActorHaveStatsDynamic, .{index});
}

pub export fn impl_SetActorListCell(cellDescription: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetActorListCell, .{cellDescription});
}
pub export fn impl_SetActorListAction(action: u8) callconv(.C) void {
    return @call(.never_inline, zigSetActorListAction, .{action});
}

pub export fn impl_SetActorCell(cellDescription: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetActorCell, .{cellDescription});
}
pub export fn impl_SetActorRefId(refId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetActorRefId, .{refId});
}
pub export fn impl_SetActorRefNum(refNum: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetActorRefNum, .{refNum});
}
pub export fn impl_SetActorMpNum(mpNum: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetActorMpNum, .{mpNum});
}

pub export fn impl_SetActorPosition(x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorPosition, .{ x, y, z });
}
pub export fn impl_SetActorRotation(x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorRotation, .{ x, y, z });
}

pub export fn impl_SetActorHealthBase(value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorHealthBase, .{value});
}
pub export fn impl_SetActorHealthCurrent(value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorHealthCurrent, .{value});
}
pub export fn impl_SetActorHealthModified(value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorHealthModified, .{value});
}
pub export fn impl_SetActorMagickaBase(value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorMagickaBase, .{value});
}
pub export fn impl_SetActorMagickaCurrent(value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorMagickaCurrent, .{value});
}
pub export fn impl_SetActorMagickaModified(value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorMagickaModified, .{value});
}
pub export fn impl_SetActorFatigueBase(value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorFatigueBase, .{value});
}
pub export fn impl_SetActorFatigueCurrent(value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorFatigueCurrent, .{value});
}
pub export fn impl_SetActorFatigueModified(value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorFatigueModified, .{value});
}

pub export fn impl_SetActorSound(sound: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetActorSound, .{sound});
}
pub export fn impl_SetActorDeathState(deathState: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetActorDeathState, .{deathState});
}
pub export fn impl_SetActorDeathInstant(isInstant: bool) callconv(.C) void {
    return @call(.never_inline, zigSetActorDeathInstant, .{isInstant});
}
pub export fn impl_SetActorSpellsActiveAction(action: u8) callconv(.C) void {
    return @call(.never_inline, zigSetActorSpellsActiveAction, .{action});
}

pub export fn impl_SetActorAIAction(action: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetActorAIAction, .{action});
}
pub export fn impl_SetActorAITargetToPlayer(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetActorAITargetToPlayer, .{pid});
}
pub export fn impl_SetActorAITargetToObject(refNum: c_int, mpNum: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetActorAITargetToObject, .{ refNum, mpNum });
}
pub export fn impl_SetActorAICoordinates(x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetActorAICoordinates, .{ x, y, z });
}
pub export fn impl_SetActorAIDistance(distance: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetActorAIDistance, .{distance});
}
pub export fn impl_SetActorAIDuration(duration: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetActorAIDuration, .{duration});
}
pub export fn impl_SetActorAIRepetition(shouldRepeat: bool) callconv(.C) void {
    return @call(.never_inline, zigSetActorAIRepetition, .{shouldRepeat});
}

pub export fn impl_EquipActorItem(slot: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64) callconv(.C) void {
    return @call(.never_inline, zigEquipActorItem, .{ slot, refId, count, charge, enchantmentCharge });
}
pub export fn impl_UnequipActorItem(slot: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigUnequipActorItem, .{slot});
}

pub export fn impl_AddActorSpellActive(spellId: [*:0]const u8, displayName: [*:0]const u8, stackingState: bool) callconv(.C) void {
    return @call(.never_inline, zigAddActorSpellActive, .{ spellId, displayName, stackingState });
}
pub export fn impl_AddActorSpellActiveEffect(effectId: c_int, magnitude: f64, duration: f64, timeLeft: f64, arg: c_int) callconv(.C) void {
    return @call(.never_inline, zigAddActorSpellActiveEffect, .{ effectId, magnitude, duration, timeLeft, arg });
}

pub export fn impl_AddActor() callconv(.C) void {
    return @call(.never_inline, zigAddActor, .{});
}

pub export fn impl_SendActorList() callconv(.C) void {
    return @call(.never_inline, zigSendActorList, .{});
}
pub export fn impl_SendActorAuthority() callconv(.C) void {
    return @call(.never_inline, zigSendActorAuthority, .{});
}
pub export fn impl_SendActorPosition(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendActorPosition, .{ sendToOtherVisitors, skipAttachedPlayer });
}
pub export fn impl_SendActorStatsDynamic(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendActorStatsDynamic, .{ sendToOtherVisitors, skipAttachedPlayer });
}
pub export fn impl_SendActorEquipment(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendActorEquipment, .{ sendToOtherVisitors, skipAttachedPlayer });
}
pub export fn impl_SendActorSpellsActiveChanges(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendActorSpellsActiveChanges, .{ sendToOtherVisitors, skipAttachedPlayer });
}
pub export fn impl_SendActorSpeech(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendActorSpeech, .{ sendToOtherVisitors, skipAttachedPlayer });
}
pub export fn impl_SendActorDeath(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendActorDeath, .{ sendToOtherVisitors, skipAttachedPlayer });
}
pub export fn impl_SendActorAI(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendActorAI, .{ sendToOtherVisitors, skipAttachedPlayer });
}
pub export fn impl_SendActorCellChange(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendActorCellChange, .{ sendToOtherVisitors, skipAttachedPlayer });
}
