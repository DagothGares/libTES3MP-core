//! Raw bindings for the functions declared in TES3MP's Actors.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ReadReceivedActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_ReadCellActorList: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_ClearActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_SetActorListPid: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_CopyReceivedActorListToStore: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_GetActorListSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var libtes3mp_internal_GetActorListAction: *const fn () callconv(.C) u8 = &binding.ub_fn;

pub export var libtes3mp_internal_GetActorCell: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetActorPosX: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorPosY: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorPosZ: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorRotX: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorRotY: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorRotZ: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetActorHealthBase: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorHealthCurrent: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorHealthModified: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorMagickaBase: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorMagickaCurrent: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorMagickaModified: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorFatigueBase: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorFatigueCurrent: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorFatigueModified: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetActorEquipmentItemRefId: *const fn (index: c_uint, slot: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint_ushort;
pub export var libtes3mp_internal_GetActorEquipmentItemCount: *const fn (index: c_uint, slot: c_ushort) callconv(.C) c_int = &binding.ub_fn_uint_ushort;
pub export var libtes3mp_internal_GetActorEquipmentItemCharge: *const fn (index: c_uint, slot: c_ushort) callconv(.C) c_int = &binding.ub_fn_uint_ushort;
pub export var libtes3mp_internal_GetActorEquipmentItemEnchantmentCharge: *const fn (index: c_uint, slot: c_ushort) callconv(.C) f64 = &binding.ub_fn_uint_ushort;

pub export var libtes3mp_internal_DoesActorHavePlayerKiller: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorKillerPid: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorKillerRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorKillerRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorKillerMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorKillerName: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorDeathState: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetActorSpellsActiveChangesSize: *const fn (actorIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorSpellsActiveChangesAction: *const fn (actorIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorSpellsActiveId: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetActorSpellsActiveDisplayName: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetActorSpellsActiveStackingState: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) bool = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetActorSpellsActiveEffectCount: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetActorSpellsActiveEffectId: *const fn (actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_3uint;
pub export var libtes3mp_internal_GetActorSpellsActiveEffectArg: *const fn (actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_3uint;
pub export var libtes3mp_internal_GetActorSpellsActiveEffectMagnitude: *const fn (actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_3uint;
pub export var libtes3mp_internal_GetActorSpellsActiveEffectDuration: *const fn (actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_3uint;
pub export var libtes3mp_internal_GetActorSpellsActiveEffectTimeLeft: *const fn (actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_3uint;

pub export var libtes3mp_internal_DoesActorSpellsActiveHavePlayerCaster: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) bool = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetActorSpellsActiveCasterPid: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetActorSpellsActiveCasterRefId: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetActorSpellsActiveCasterRefNum: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetActorSpellsActiveCasterMpNum: *const fn (actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;

pub export var libtes3mp_internal_DoesActorHavePosition: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_DoesActorHaveStatsDynamic: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;

pub export var libtes3mp_internal_SetActorListCell: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetActorListAction: *const fn (action: u8) callconv(.C) void = &binding.ub_fn_u8;

pub export var libtes3mp_internal_SetActorCell: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetActorRefId: *const fn (refId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetActorRefNum: *const fn (refNum: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetActorMpNum: *const fn (mpNum: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var libtes3mp_internal_SetActorPosition: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var libtes3mp_internal_SetActorRotation: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;

pub export var libtes3mp_internal_SetActorHealthBase: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetActorHealthCurrent: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetActorHealthModified: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetActorMagickaBase: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetActorMagickaCurrent: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetActorMagickaModified: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetActorFatigueBase: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetActorFatigueCurrent: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetActorFatigueModified: *const fn (value: f64) callconv(.C) void = &binding.ub_fn_f64;

pub export var libtes3mp_internal_SetActorSound: *const fn (sound: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetActorDeathState: *const fn (deathState: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetActorDeathInstant: *const fn (isInstant: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetActorSpellsActiveAction: *const fn (action: u8) callconv(.C) void = &binding.ub_fn_u8;

pub export var libtes3mp_internal_SetActorAIAction: *const fn (action: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetActorAITargetToPlayer: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SetActorAITargetToObject: *const fn (refNum: c_int, mpNum: c_int) callconv(.C) void = &binding.ub_fn_2int;
pub export var libtes3mp_internal_SetActorAICoordinates: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var libtes3mp_internal_SetActorAIDistance: *const fn (distance: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetActorAIDuration: *const fn (duration: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetActorAIRepetition: *const fn (shouldRepeat: bool) callconv(.C) void = &binding.ub_fn_bool;

pub export var libtes3mp_internal_EquipActorItem: *const fn (slot: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64) callconv(.C) void = &binding.ub_fn_ushort_str_uint_int_f64;
pub export var libtes3mp_internal_UnequipActorItem: *const fn (slot: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_AddActorSpellActive: *const fn (spellId: [*:0]const u8, displayName: [*:0]const u8, stackingState: bool) callconv(.C) void = &binding.ub_fn_2str_bool;
pub export var libtes3mp_internal_AddActorSpellActiveEffect: *const fn (effectId: c_int, magnitude: f64, duration: f64, timeLeft: f64, arg: c_int) callconv(.C) void = &binding.ub_fn_int_3f64_int;

pub export var libtes3mp_internal_AddActor: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_SendActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_SendActorAuthority: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_SendActorPosition: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendActorStatsDynamic: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendActorEquipment: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendActorSpellsActiveChanges: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendActorSpeech: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendActorDeath: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendActorAI: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendActorCellChange: *const fn (sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;

pub export fn libtes3mp_ReadReceivedActorList() callconv(.C) void {
    return libtes3mp_internal_ReadReceivedActorList();
}
pub export fn libtes3mp_ReadCellActorList(cellDescription: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_ReadCellActorList(cellDescription);
}

pub export fn libtes3mp_ClearActorList() callconv(.C) void {
    return libtes3mp_internal_ClearActorList();
}
pub export fn libtes3mp_SetActorListPid(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SetActorListPid(pid);
}

pub export fn libtes3mp_CopyReceivedActorListToStore() callconv(.C) void {
    return libtes3mp_internal_CopyReceivedActorListToStore();
}

pub export fn libtes3mp_GetActorListSize() callconv(.C) c_uint {
    return libtes3mp_internal_GetActorListSize();
}
pub export fn libtes3mp_GetActorListAction() callconv(.C) u8 {
    return libtes3mp_internal_GetActorListAction();
}

pub export fn libtes3mp_GetActorCell(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetActorCell(index);
}
pub export fn libtes3mp_GetActorRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetActorRefId(index);
}
pub export fn libtes3mp_GetActorRefNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorRefNum(index);
}
pub export fn libtes3mp_GetActorMpNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorMpNum(index);
}

pub export fn libtes3mp_GetActorPosX(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorPosX(index);
}
pub export fn libtes3mp_GetActorPosY(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorPosY(index);
}
pub export fn libtes3mp_GetActorPosZ(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorPosZ(index);
}
pub export fn libtes3mp_GetActorRotX(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorRotX(index);
}
pub export fn libtes3mp_GetActorRotY(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorRotY(index);
}
pub export fn libtes3mp_GetActorRotZ(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorRotZ(index);
}

pub export fn libtes3mp_GetActorHealthBase(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorHealthBase(index);
}
pub export fn libtes3mp_GetActorHealthCurrent(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorHealthCurrent(index);
}
pub export fn libtes3mp_GetActorHealthModified(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorHealthModified(index);
}
pub export fn libtes3mp_GetActorMagickaBase(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorMagickaBase(index);
}
pub export fn libtes3mp_GetActorMagickaCurrent(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorMagickaCurrent(index);
}
pub export fn libtes3mp_GetActorMagickaModified(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorMagickaModified(index);
}
pub export fn libtes3mp_GetActorFatigueBase(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorFatigueBase(index);
}
pub export fn libtes3mp_GetActorFatigueCurrent(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorFatigueCurrent(index);
}
pub export fn libtes3mp_GetActorFatigueModified(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorFatigueModified(index);
}

pub export fn libtes3mp_GetActorEquipmentItemRefId(index: c_uint, slot: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetActorEquipmentItemRefId(index, slot);
}
pub export fn libtes3mp_GetActorEquipmentItemCount(index: c_uint, slot: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetActorEquipmentItemCount(index, slot);
}
pub export fn libtes3mp_GetActorEquipmentItemCharge(index: c_uint, slot: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetActorEquipmentItemCharge(index, slot);
}
pub export fn libtes3mp_GetActorEquipmentItemEnchantmentCharge(index: c_uint, slot: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetActorEquipmentItemEnchantmentCharge(index, slot);
}

pub export fn libtes3mp_DoesActorHavePlayerKiller(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_DoesActorHavePlayerKiller(index);
}
pub export fn libtes3mp_GetActorKillerPid(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetActorKillerPid(index);
}
pub export fn libtes3mp_GetActorKillerRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetActorKillerRefId(index);
}
pub export fn libtes3mp_GetActorKillerRefNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorKillerRefNum(index);
}
pub export fn libtes3mp_GetActorKillerMpNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorKillerMpNum(index);
}
pub export fn libtes3mp_GetActorKillerName(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetActorKillerName(index);
}
pub export fn libtes3mp_GetActorDeathState(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorDeathState(index);
}

pub export fn libtes3mp_GetActorSpellsActiveChangesSize(actorIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorSpellsActiveChangesSize(actorIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveChangesAction(actorIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorSpellsActiveChangesAction(actorIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveId(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetActorSpellsActiveId(actorIndex, spellIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveDisplayName(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetActorSpellsActiveDisplayName(actorIndex, spellIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveStackingState(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) bool {
    return libtes3mp_internal_GetActorSpellsActiveStackingState(actorIndex, spellIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveEffectCount(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorSpellsActiveEffectCount(actorIndex, spellIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveEffectId(actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorSpellsActiveEffectId(actorIndex, spellIndex, effectIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveEffectArg(actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetActorSpellsActiveEffectArg(actorIndex, spellIndex, effectIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveEffectMagnitude(actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorSpellsActiveEffectMagnitude(actorIndex, spellIndex, effectIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveEffectDuration(actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorSpellsActiveEffectDuration(actorIndex, spellIndex, effectIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveEffectTimeLeft(actorIndex: c_uint, spellIndex: c_uint, effectIndex: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetActorSpellsActiveEffectTimeLeft(actorIndex, spellIndex, effectIndex);
}

pub export fn libtes3mp_DoesActorSpellsActiveHavePlayerCaster(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) bool {
    return libtes3mp_internal_DoesActorSpellsActiveHavePlayerCaster(actorIndex, spellIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveCasterPid(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetActorSpellsActiveCasterPid(actorIndex, spellIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveCasterRefId(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetActorSpellsActiveCasterRefId(actorIndex, spellIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveCasterRefNum(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorSpellsActiveCasterRefNum(actorIndex, spellIndex);
}
pub export fn libtes3mp_GetActorSpellsActiveCasterMpNum(actorIndex: c_uint, spellIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetActorSpellsActiveCasterMpNum(actorIndex, spellIndex);
}

pub export fn libtes3mp_DoesActorHavePosition(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_DoesActorHavePosition(index);
}
pub export fn libtes3mp_DoesActorHaveStatsDynamic(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_DoesActorHaveStatsDynamic(index);
}

pub export fn libtes3mp_SetActorListCell(cellDescription: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetActorListCell(cellDescription);
}
pub export fn libtes3mp_SetActorListAction(action: u8) callconv(.C) void {
    return libtes3mp_internal_SetActorListAction(action);
}

pub export fn libtes3mp_SetActorCell(cellDescription: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetActorCell(cellDescription);
}
pub export fn libtes3mp_SetActorRefId(refId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetActorRefId(refId);
}
pub export fn libtes3mp_SetActorRefNum(refNum: c_int) callconv(.C) void {
    return libtes3mp_internal_SetActorRefNum(refNum);
}
pub export fn libtes3mp_SetActorMpNum(mpNum: c_int) callconv(.C) void {
    return libtes3mp_internal_SetActorMpNum(mpNum);
}

pub export fn libtes3mp_SetActorPosition(x: f64, y: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorPosition(x, y, z);
}
pub export fn libtes3mp_SetActorRotation(x: f64, y: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorRotation(x, y, z);
}

pub export fn libtes3mp_SetActorHealthBase(value: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorHealthBase(value);
}
pub export fn libtes3mp_SetActorHealthCurrent(value: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorHealthCurrent(value);
}
pub export fn libtes3mp_SetActorHealthModified(value: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorHealthModified(value);
}
pub export fn libtes3mp_SetActorMagickaBase(value: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorMagickaBase(value);
}
pub export fn libtes3mp_SetActorMagickaCurrent(value: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorMagickaCurrent(value);
}
pub export fn libtes3mp_SetActorMagickaModified(value: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorMagickaModified(value);
}
pub export fn libtes3mp_SetActorFatigueBase(value: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorFatigueBase(value);
}
pub export fn libtes3mp_SetActorFatigueCurrent(value: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorFatigueCurrent(value);
}
pub export fn libtes3mp_SetActorFatigueModified(value: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorFatigueModified(value);
}

pub export fn libtes3mp_SetActorSound(sound: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetActorSound(sound);
}
pub export fn libtes3mp_SetActorDeathState(deathState: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetActorDeathState(deathState);
}
pub export fn libtes3mp_SetActorDeathInstant(isInstant: bool) callconv(.C) void {
    return libtes3mp_internal_SetActorDeathInstant(isInstant);
}
pub export fn libtes3mp_SetActorSpellsActiveAction(action: u8) callconv(.C) void {
    return libtes3mp_internal_SetActorSpellsActiveAction(action);
}

pub export fn libtes3mp_SetActorAIAction(action: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetActorAIAction(action);
}
pub export fn libtes3mp_SetActorAITargetToPlayer(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SetActorAITargetToPlayer(pid);
}
pub export fn libtes3mp_SetActorAITargetToObject(refNum: c_int, mpNum: c_int) callconv(.C) void {
    return libtes3mp_internal_SetActorAITargetToObject(refNum, mpNum);
}
pub export fn libtes3mp_SetActorAICoordinates(x: f64, y: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetActorAICoordinates(x, y, z);
}
pub export fn libtes3mp_SetActorAIDistance(distance: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetActorAIDistance(distance);
}
pub export fn libtes3mp_SetActorAIDuration(duration: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetActorAIDuration(duration);
}
pub export fn libtes3mp_SetActorAIRepetition(shouldRepeat: bool) callconv(.C) void {
    return libtes3mp_internal_SetActorAIRepetition(shouldRepeat);
}

pub export fn libtes3mp_EquipActorItem(slot: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64) callconv(.C) void {
    return libtes3mp_internal_EquipActorItem(slot, refId, count, charge, enchantmentCharge);
}
pub export fn libtes3mp_UnequipActorItem(slot: c_ushort) callconv(.C) void {
    return libtes3mp_internal_UnequipActorItem(slot);
}

pub export fn libtes3mp_AddActorSpellActive(spellId: [*:0]const u8, displayName: [*:0]const u8, stackingState: bool) callconv(.C) void {
    return libtes3mp_internal_AddActorSpellActive(spellId, displayName, stackingState);
}
pub export fn libtes3mp_AddActorSpellActiveEffect(effectId: c_int, magnitude: f64, duration: f64, timeLeft: f64, arg: c_int) callconv(.C) void {
    return libtes3mp_internal_AddActorSpellActiveEffect(effectId, magnitude, duration, timeLeft, arg);
}

pub export fn libtes3mp_AddActor() callconv(.C) void {
    return libtes3mp_internal_AddActor();
}

pub export fn libtes3mp_SendActorList() callconv(.C) void {
    return libtes3mp_internal_SendActorList();
}
pub export fn libtes3mp_SendActorAuthority() callconv(.C) void {
    return libtes3mp_internal_SendActorAuthority();
}
pub export fn libtes3mp_SendActorPosition(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendActorPosition(sendToOtherVisitors, skipAttachedPlayer);
}
pub export fn libtes3mp_SendActorStatsDynamic(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendActorStatsDynamic(sendToOtherVisitors, skipAttachedPlayer);
}
pub export fn libtes3mp_SendActorEquipment(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendActorEquipment(sendToOtherVisitors, skipAttachedPlayer);
}
pub export fn libtes3mp_SendActorSpellsActiveChanges(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendActorSpellsActiveChanges(sendToOtherVisitors, skipAttachedPlayer);
}
pub export fn libtes3mp_SendActorSpeech(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendActorSpeech(sendToOtherVisitors, skipAttachedPlayer);
}
pub export fn libtes3mp_SendActorDeath(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendActorDeath(sendToOtherVisitors, skipAttachedPlayer);
}
pub export fn libtes3mp_SendActorAI(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendActorAI(sendToOtherVisitors, skipAttachedPlayer);
}
pub export fn libtes3mp_SendActorCellChange(sendToOtherVisitors: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendActorCellChange(sendToOtherVisitors, skipAttachedPlayer);
}
