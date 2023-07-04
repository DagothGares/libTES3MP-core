//! Raw bindings to the functions declared by TES3MP's Objects.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ReadReceivedObjectList: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_ClearObjectList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_SetObjectListPid: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_CopyReceivedObjectListToStore: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_GetObjectListSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var libtes3mp_internal_GetObjectListOrigin: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetObjectListClientScript: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetObjectListAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetObjectListConsoleCommand: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetObjectListContainerSubAction: *const fn () callconv(.C) u8 = &binding.ub_fn;

pub export var libtes3mp_internal_IsObjectPlayer: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectPid: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectCount: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectCharge: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectEnchantmentCharge: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectSoul: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectGoldValue: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectScale: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectSoundId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectState: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectDoorState: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectLockLevel: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectDialogueChoiceType: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectDialogueChoiceTopic: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectGoldPool: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectLastGoldRestockHour: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectLastGoldRestockDay: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;

pub export var libtes3mp_internal_DoesObjectHavePlayerActivating: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectActivatingPid: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectActivatingRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectActivatingRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectActivatingMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectActivatingName: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetObjectHitSuccess: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectHitDamage: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectHitBlock: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectHitKnockdown: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_DoesObjectHavePlayerHitting: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectHittingPid: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectHittingRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectHittingRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectHittingMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectHittingName: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetObjectSummonState: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectSummonEffectId: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint; // returns a double when the Set version uses an int?
pub export var libtes3mp_internal_GetObjectSummonSpellId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectSummonDuration: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_DoesObjectHavePlayerSummoner: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectSummonerPid: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectSummonerRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectSummonerRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectSummonerMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetObjectPosX: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectPosY: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectPosZ: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectRotX: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectRotY: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectRotZ: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetVideoFilename: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetClientLocalsSize: *const fn (objectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetClientLocalInternalIndex: *const fn (objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetClientLocalVariableType: *const fn (objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_ushort = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetClientLocalIntValue: *const fn (objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetClientLocalFloatValue: *const fn (objectIndex: c_uint, variableIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_2uint;

pub export var libtes3mp_internal_GetContainerChangesSize: *const fn (objectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetContainerItemRefId: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetContainerItemCount: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetContainerItemCharge: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetContainerItemEnchantmentCharge: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetContainerItemSoul: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetContainerItemActionCount: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;

pub export var libtes3mp_internal_DoesObjectHaveContainer: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var libtes3mp_internal_IsObjectDroppedByPlayer: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;

pub export var libtes3mp_internal_SetObjectListCell: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetObjectListAction: *const fn (action: u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var libtes3mp_internal_SetObjectListContainerSubAction: *const fn (subAction: u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var libtes3mp_internal_SetObjectListConsoleCommand: *const fn (consoleCommand: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_SetObjectRefId: *const fn (refId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetObjectRefNum: *const fn (refNum: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetObjectMpNum: *const fn (mpNum: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetObjectCount: *const fn (count: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetObjectCharge: *const fn (charge: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetObjectEnchantmentCharge: *const fn (enchantmentCharge: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetObjectSoul: *const fn (soul: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetObjectGoldValue: *const fn (goldValue: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetObjectScale: *const fn (scale: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetObjectState: *const fn (objectState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetObjectLockLevel: *const fn (lockLevel: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetObjectDialogueChoiceType: *const fn (dialogueChoiceType: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetObjectDialogueChoiceTopic: *const fn (topic: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetObjectGoldPool: *const fn (goldPool: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetObjectLastGoldRestockHour: *const fn (hour: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetObjectLastGoldRestockDay: *const fn (day: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetObjectDisarmState: *const fn (disarmState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetObjectDroppedByPlayerState: *const fn (droppedByPlayerState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetObjectPosition: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var libtes3mp_internal_SetObjectRotation: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var libtes3mp_internal_SetObjectSound: *const fn (soundId: [*:0]const u8, volume: f64, pitch: f64) callconv(.C) void = &binding.ub_fn_str_2f64;

pub export var libtes3mp_internal_SetObjectSummonState: *const fn (summonState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetObjectSummonEffectId: *const fn (summonEffectId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetObjectSummonSpellId: *const fn (summonSpellId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetObjectSummonDuration: *const fn (summonDuration: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetObjectSummonerPid: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SetObjectSummonerRefNum: *const fn (refNum: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetObjectSummonerMpNum: *const fn (mpNum: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var libtes3mp_internal_SetObjectActivatingPid: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetObjectDoorState: *const fn (doorState: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetObjectDoorTeleportState: *const fn (teleportState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetObjectDoorDestinationCell: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetObjectDoorDestinationPosition: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var libtes3mp_internal_SetObjectDoorDestinationRotation: *const fn (x: f64, z: f64) callconv(.C) void = &binding.ub_fn_2f64;

pub export var libtes3mp_internal_SetPlayerAsObject: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetContainerItemRefId: *const fn (refId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetContainerItemCount: *const fn (count: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetContainerItemCharge: *const fn (charge: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetContainerItemEnchantmentCharge: *const fn (enchantmentCharge: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetContainerItemSoul: *const fn (soul: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_SetContainerItemActionCountByIndex: *const fn (objectIndex: c_uint, itemIndex: c_uint, actionCount: c_int) callconv(.C) void = &binding.ub_fn_2uint_int;

pub export var libtes3mp_internal_AddObject: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_AddClientLocalInteger: *const fn (internalIndex: c_int, intValue: c_int, variableType: c_uint) callconv(.C) void = &binding.ub_fn_2int_uint;
pub export var libtes3mp_internal_AddClientLocalFloat: *const fn (internalIndex: c_int, floatValue: f64) callconv(.C) void = &binding.ub_fn_int_f64;
pub export var libtes3mp_internal_AddContainerItem: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_SendObjectActivate: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectPlace: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectSpawn: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectDelete: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectLock: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectDialogueChoice: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectMiscellaneous: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectRestock: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectTrap: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectScale: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectSound: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectState: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectMove: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendObjectRotate: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendDoorState: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendDoorDestination: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendContainer: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendVideoPlay: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendClientScriptLocal: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var libtes3mp_internal_SendConsoleCommand: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;

pub fn libtes3mp_ReadReceivedObjectList() callconv(.C) void {
    return libtes3mp_internal_ReadReceivedObjectList();
}

pub fn libtes3mp_ClearObjectList() callconv(.C) void {
    return libtes3mp_internal_ClearObjectList();
}
pub fn libtes3mp_SetObjectListPid(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SetObjectListPid(pid);
}

pub fn libtes3mp_CopyReceivedObjectListToStore() callconv(.C) void {
    return libtes3mp_internal_CopyReceivedObjectListToStore();
}

pub fn libtes3mp_GetObjectListSize() callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectListSize();
}
pub fn libtes3mp_GetObjectListOrigin() callconv(.C) u8 {
    return libtes3mp_internal_GetObjectListOrigin();
}
pub fn libtes3mp_GetObjectListClientScript() callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectListClientScript();
}
pub fn libtes3mp_GetObjectListAction() callconv(.C) u8 {
    return libtes3mp_internal_GetObjectListAction();
}
pub fn libtes3mp_GetObjectListConsoleCommand() callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectListConsoleCommand();
}
pub fn libtes3mp_GetObjectListContainerSubAction() callconv(.C) u8 {
    return libtes3mp_internal_GetObjectListContainerSubAction();
}

pub fn libtes3mp_IsObjectPlayer(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_IsObjectPlayer(index);
}
pub fn libtes3mp_GetObjectPid(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetObjectPid(index);
}
pub fn libtes3mp_GetObjectRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectRefId(index);
}
pub fn libtes3mp_GetObjectRefNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectRefNum(index);
}
pub fn libtes3mp_GetObjectMpNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectMpNum(index);
}
pub fn libtes3mp_GetObjectCount(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetObjectCount(index);
}
pub fn libtes3mp_GetObjectCharge(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetObjectCharge(index);
}
pub fn libtes3mp_GetObjectEnchantmentCharge(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectEnchantmentCharge(index);
}
pub fn libtes3mp_GetObjectSoul(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectSoul(index);
}
pub fn libtes3mp_GetObjectGoldValue(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetObjectGoldValue(index);
}
pub fn libtes3mp_GetObjectScale(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectScale(index);
}
pub fn libtes3mp_GetObjectSoundId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectSoundId(index);
}
pub fn libtes3mp_GetObjectState(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_GetObjectState(index);
}
pub fn libtes3mp_GetObjectDoorState(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetObjectDoorState(index);
}
pub fn libtes3mp_GetObjectLockLevel(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetObjectLockLevel(index);
}
pub fn libtes3mp_GetObjectDialogueChoiceType(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectDialogueChoiceType(index);
}
pub fn libtes3mp_GetObjectDialogueChoiceTopic(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectDialogueChoiceTopic(index);
}
pub fn libtes3mp_GetObjectGoldPool(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectGoldPool(index);
}
pub fn libtes3mp_GetObjectLastGoldRestockHour(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectLastGoldRestockHour(index);
}
pub fn libtes3mp_GetObjectLastGoldRestockDay(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetObjectLastGoldRestockDay(index);
}

pub fn libtes3mp_DoesObjectHavePlayerActivating(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_DoesObjectHavePlayerActivating(index);
}
pub fn libtes3mp_GetObjectActivatingPid(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetObjectActivatingPid(index);
}
pub fn libtes3mp_GetObjectActivatingRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectActivatingRefId(index);
}
pub fn libtes3mp_GetObjectActivatingRefNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectActivatingRefNum(index);
}
pub fn libtes3mp_GetObjectActivatingMpNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectActivatingMpNum(index);
}
pub fn libtes3mp_GetObjectActivatingName(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectActivatingName(index);
}

pub fn libtes3mp_GetObjectHitSuccess(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_GetObjectHitSuccess(index);
}
pub fn libtes3mp_GetObjectHitDamage(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectHitDamage(index);
}
pub fn libtes3mp_GetObjectHitBlock(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_GetObjectHitBlock(index);
}
pub fn libtes3mp_GetObjectHitKnockdown(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_GetObjectHitKnockdown(index);
}
pub fn libtes3mp_DoesObjectHavePlayerHitting(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_DoesObjectHavePlayerHitting(index);
}
pub fn libtes3mp_GetObjectHittingPid(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetObjectHittingPid(index);
}
pub fn libtes3mp_GetObjectHittingRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectHittingRefId(index);
}
pub fn libtes3mp_GetObjectHittingRefNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectHittingRefNum(index);
}
pub fn libtes3mp_GetObjectHittingMpNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectHittingMpNum(index);
}
pub fn libtes3mp_GetObjectHittingName(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectHittingName(index);
}

pub fn libtes3mp_GetObjectSummonState(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_GetObjectSummonState(index);
}
pub fn libtes3mp_GetObjectSummonEffectId(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectSummonEffectId(index);
}
pub fn libtes3mp_GetObjectSummonSpellId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectSummonSpellId(index);
}
pub fn libtes3mp_GetObjectSummonDuration(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectSummonDuration(index);
}
pub fn libtes3mp_DoesObjectHavePlayerSummoner(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_DoesObjectHavePlayerSummoner(index);
}
pub fn libtes3mp_GetObjectSummonerPid(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetObjectSummonerPid(index);
}
pub fn libtes3mp_GetObjectSummonerRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetObjectSummonerRefId(index);
}
pub fn libtes3mp_GetObjectSummonerRefNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectSummonerRefNum(index);
}
pub fn libtes3mp_GetObjectSummonerMpNum(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetObjectSummonerMpNum(index);
}

pub fn libtes3mp_GetObjectPosX(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectPosX(index);
}
pub fn libtes3mp_GetObjectPosY(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectPosY(index);
}
pub fn libtes3mp_GetObjectPosZ(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectPosZ(index);
}
pub fn libtes3mp_GetObjectRotX(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectRotX(index);
}
pub fn libtes3mp_GetObjectRotY(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectRotY(index);
}
pub fn libtes3mp_GetObjectRotZ(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetObjectRotZ(index);
}

pub fn libtes3mp_GetVideoFilename(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetVideoFilename(index);
}

pub fn libtes3mp_GetClientLocalsSize(objectIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetClientLocalsSize(objectIndex);
}
pub fn libtes3mp_GetClientLocalInternalIndex(objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetClientLocalInternalIndex(objectIndex, variableIndex);
}
pub fn libtes3mp_GetClientLocalVariableType(objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_ushort {
    return libtes3mp_internal_GetClientLocalVariableType(objectIndex, variableIndex);
}
pub fn libtes3mp_GetClientLocalIntValue(objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetClientLocalIntValue(objectIndex, variableIndex);
}
pub fn libtes3mp_GetClientLocalFloatValue(objectIndex: c_uint, variableIndex: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetClientLocalFloatValue(objectIndex, variableIndex);
}

pub fn libtes3mp_GetContainerChangesSize(objectIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetContainerChangesSize(objectIndex);
}
pub fn libtes3mp_GetContainerItemRefId(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetContainerItemRefId(objectIndex, itemIndex);
}
pub fn libtes3mp_GetContainerItemCount(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetContainerItemCount(objectIndex, itemIndex);
}
pub fn libtes3mp_GetContainerItemCharge(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetContainerItemCharge(objectIndex, itemIndex);
}
pub fn libtes3mp_GetContainerItemEnchantmentCharge(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetContainerItemEnchantmentCharge(objectIndex, itemIndex);
}
pub fn libtes3mp_GetContainerItemSoul(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetContainerItemSoul(objectIndex, itemIndex);
}
pub fn libtes3mp_GetContainerItemActionCount(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetContainerItemActionCount(objectIndex, itemIndex);
}

pub fn libtes3mp_DoesObjectHaveContainer(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_DoesObjectHaveContainer(index);
}
pub fn libtes3mp_IsObjectDroppedByPlayer(index: c_uint) callconv(.C) bool {
    return libtes3mp_internal_IsObjectDroppedByPlayer(index);
}

pub fn libtes3mp_SetObjectListCell(cellDescription: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetObjectListCell(cellDescription);
}
pub fn libtes3mp_SetObjectListAction(action: u8) callconv(.C) void {
    return libtes3mp_internal_SetObjectListAction(action);
}
pub fn libtes3mp_SetObjectListContainerSubAction(subAction: u8) callconv(.C) void {
    return libtes3mp_internal_SetObjectListContainerSubAction(subAction);
}
pub fn libtes3mp_SetObjectListConsoleCommand(consoleCommand: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetObjectListConsoleCommand(consoleCommand);
}

pub fn libtes3mp_SetObjectRefId(refId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetObjectRefId(refId);
}
pub fn libtes3mp_SetObjectRefNum(refNum: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectRefNum(refNum);
}
pub fn libtes3mp_SetObjectMpNum(mpNum: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectMpNum(mpNum);
}
pub fn libtes3mp_SetObjectCount(count: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectCount(count);
}
pub fn libtes3mp_SetObjectCharge(charge: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectCharge(charge);
}
pub fn libtes3mp_SetObjectEnchantmentCharge(enchantmentCharge: f64) callconv(.C) void {
    return libtes3mp_internal_SetObjectEnchantmentCharge(enchantmentCharge);
}
pub fn libtes3mp_SetObjectSoul(soul: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetObjectSoul(soul);
}
pub fn libtes3mp_SetObjectGoldValue(goldValue: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectGoldValue(goldValue);
}
pub fn libtes3mp_SetObjectScale(scale: f64) callconv(.C) void {
    return libtes3mp_internal_SetObjectScale(scale);
}
pub fn libtes3mp_SetObjectState(objectState: bool) callconv(.C) void {
    return libtes3mp_internal_SetObjectState(objectState);
}
pub fn libtes3mp_SetObjectLockLevel(lockLevel: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectLockLevel(lockLevel);
}
pub fn libtes3mp_SetObjectDialogueChoiceType(dialogueChoiceType: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetObjectDialogueChoiceType(dialogueChoiceType);
}
pub fn libtes3mp_SetObjectDialogueChoiceTopic(topic: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetObjectDialogueChoiceTopic(topic);
}
pub fn libtes3mp_SetObjectGoldPool(goldPool: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetObjectGoldPool(goldPool);
}
pub fn libtes3mp_SetObjectLastGoldRestockHour(hour: f64) callconv(.C) void {
    return libtes3mp_internal_SetObjectLastGoldRestockHour(hour);
}
pub fn libtes3mp_SetObjectLastGoldRestockDay(day: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectLastGoldRestockDay(day);
}
pub fn libtes3mp_SetObjectDisarmState(disarmState: bool) callconv(.C) void {
    return libtes3mp_internal_SetObjectDisarmState(disarmState);
}
pub fn libtes3mp_SetObjectDroppedByPlayerState(droppedByPlayerState: bool) callconv(.C) void {
    return libtes3mp_internal_SetObjectDroppedByPlayerState(droppedByPlayerState);
}
pub fn libtes3mp_SetObjectPosition(x: f64, y: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetObjectPosition(x, y, z);
}
pub fn libtes3mp_SetObjectRotation(x: f64, y: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetObjectRotation(x, y, z);
}
pub fn libtes3mp_SetObjectSound(soundId: [*:0]const u8, volume: f64, pitch: f64) callconv(.C) void {
    return libtes3mp_internal_SetObjectSound(soundId, volume, pitch);
}

pub fn libtes3mp_SetObjectSummonState(summonState: bool) callconv(.C) void {
    return libtes3mp_internal_SetObjectSummonState(summonState);
}
pub fn libtes3mp_SetObjectSummonEffectId(summonEffectId: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectSummonEffectId(summonEffectId);
}
pub fn libtes3mp_SetObjectSummonSpellId(summonSpellId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetObjectSummonSpellId(summonSpellId);
}
pub fn libtes3mp_SetObjectSummonDuration(summonDuration: f64) callconv(.C) void {
    return libtes3mp_internal_SetObjectSummonDuration(summonDuration);
}
pub fn libtes3mp_SetObjectSummonerPid(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SetObjectSummonerPid(pid);
}
pub fn libtes3mp_SetObjectSummonerRefNum(refNum: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectSummonerRefNum(refNum);
}
pub fn libtes3mp_SetObjectSummonerMpNum(mpNum: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectSummonerMpNum(mpNum);
}

pub fn libtes3mp_SetObjectActivatingPid(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SetObjectActivatingPid(pid);
}

pub fn libtes3mp_SetObjectDoorState(doorState: c_int) callconv(.C) void {
    return libtes3mp_internal_SetObjectDoorState(doorState);
}
pub fn libtes3mp_SetObjectDoorTeleportState(teleportState: bool) callconv(.C) void {
    return libtes3mp_internal_SetObjectDoorTeleportState(teleportState);
}
pub fn libtes3mp_SetObjectDoorDestinationCell(cellDescription: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetObjectDoorDestinationCell(cellDescription);
}
pub fn libtes3mp_SetObjectDoorDestinationPosition(x: f64, y: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetObjectDoorDestinationPosition(x, y, z);
}
pub fn libtes3mp_SetObjectDoorDestinationRotation(x: f64, z: f64) callconv(.C) void {
    return libtes3mp_internal_SetObjectDoorDestinationRotation(x, z);
}

pub fn libtes3mp_SetPlayerAsObject(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SetPlayerAsObject(pid);
}

pub fn libtes3mp_SetContainerItemRefId(refId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetContainerItemRefId(refId);
}
pub fn libtes3mp_SetContainerItemCount(count: c_int) callconv(.C) void {
    return libtes3mp_internal_SetContainerItemCount(count);
}
pub fn libtes3mp_SetContainerItemCharge(charge: c_int) callconv(.C) void {
    return libtes3mp_internal_SetContainerItemCharge(charge);
}
pub fn libtes3mp_SetContainerItemEnchantmentCharge(enchantmentCharge: f64) callconv(.C) void {
    return libtes3mp_internal_SetContainerItemEnchantmentCharge(enchantmentCharge);
}
pub fn libtes3mp_SetContainerItemSoul(soul: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetContainerItemSoul(soul);
}

pub fn libtes3mp_SetContainerItemActionCountByIndex(objectIndex: c_uint, itemIndex: c_uint, actionCount: c_int) callconv(.C) void {
    return libtes3mp_internal_SetContainerItemActionCountByIndex(objectIndex, itemIndex, actionCount);
}

pub fn libtes3mp_AddObject() callconv(.C) void {
    return libtes3mp_internal_AddObject();
}
pub fn libtes3mp_AddClientLocalInteger(internalIndex: c_int, intValue: c_int, variableType: c_uint) callconv(.C) void {
    return libtes3mp_internal_AddClientLocalInteger(internalIndex, intValue, variableType);
}
pub fn libtes3mp_AddClientLocalFloat(internalIndex: c_int, floatValue: f64) callconv(.C) void {
    return libtes3mp_internal_AddClientLocalFloat(internalIndex, floatValue);
}
pub fn libtes3mp_AddContainerItem() callconv(.C) void {
    return libtes3mp_internal_AddContainerItem();
}

pub fn libtes3mp_SendObjectActivate(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectActivate(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectPlace(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectPlace(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectSpawn(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectSpawn(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectDelete(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectDelete(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectLock(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectLock(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectDialogueChoice(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectDialogueChoice(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectMiscellaneous(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectMiscellaneous(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectRestock(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectRestock(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectTrap(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectTrap(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectScale(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectScale(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectSound(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectSound(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectState(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectState(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectMove(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectMove(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendObjectRotate(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendObjectRotate(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendDoorState(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendDoorState(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendDoorDestination(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendDoorDestination(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendContainer(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendContainer(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendVideoPlay(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendVideoPlay(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendClientScriptLocal(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendClientScriptLocal(sendToOtherPlayers, skipAttachedPlayer);
}
pub fn libtes3mp_SendConsoleCommand(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendConsoleCommand(sendToOtherPlayers, skipAttachedPlayer);
}
