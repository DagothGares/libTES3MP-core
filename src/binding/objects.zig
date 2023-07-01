//! Raw bindings to the functions declared by TES3MP's Objects.hpp file.

const binding = @import("../binding.zig");

pub export var zigReadReceivedObjectList: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigClearObjectList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSetObjectListPid: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigCopyReceivedObjectListToStore: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigGetObjectListSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetObjectListOrigin: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var zigGetObjectListClientScript: *const fn () callconv(.C) ?[*:0]const u8 =
    &binding.ub_fn;
pub export var zigGetObjectListAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var zigGetObjectListConsoleCommand: *const fn () callconv(.C) ?[*:0]const u8 =
    &binding.ub_fn;
pub export var zigGetObjectListContainerSubAction: *const fn () callconv(.C) u8 = &binding.ub_fn;

pub export var zigIsObjectPlayer: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectPid: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetObjectRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetObjectRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectCount: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetObjectCharge: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetObjectEnchantmentCharge: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectSoul: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetObjectGoldValue: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetObjectScale: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectSoundId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetObjectState: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectDoorState: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetObjectLockLevel: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetObjectDialogueChoiceType: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectDialogueChoiceTopic: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetObjectGoldPool: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectLastGoldRestockHour: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectLastGoldRestockDay: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;

pub export var zigDoesObjectHavePlayerActivating: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectActivatingPid: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetObjectActivatingRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetObjectActivatingRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectActivatingMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectActivatingName: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;

pub export var zigGetObjectHitSuccess: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectHitDamage: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectHitBlock: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectHitKnockdown: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigDoesObjectHavePlayerHitting: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectHittingPid: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetObjectHittingRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetObjectHittingRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectHittingMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectHittingName: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;

pub export var zigGetObjectSummonState: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectSummonEffectId: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint; // returns a double when the Set version uses an int?
pub export var zigGetObjectSummonSpellId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetObjectSummonDuration: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigDoesObjectHavePlayerSummoner: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectSummonerPid: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetObjectSummonerRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetObjectSummonerRefNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectSummonerMpNum: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;

pub export var zigGetObjectPosX: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectPosY: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectPosZ: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectRotX: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectRotY: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectRotZ: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;

pub export var zigGetVideoFilename: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;

pub export var zigGetClientLocalsSize: *const fn (objectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetClientLocalInternalIndex: *const fn (objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var zigGetClientLocalVariableType: *const fn (objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_ushort = &binding.ub_fn_2uint;
pub export var zigGetClientLocalIntValue: *const fn (objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigGetClientLocalFloatValue: *const fn (objectIndex: c_uint, variableIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_2uint;

pub export var zigGetContainerChangesSize: *const fn (objectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetContainerItemRefId: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2uint;
pub export var zigGetContainerItemCount: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigGetContainerItemCharge: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigGetContainerItemEnchantmentCharge: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) f64 = &binding.ub_fn_2uint;
pub export var zigGetContainerItemSoul: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2uint;
pub export var zigGetContainerItemActionCount: *const fn (objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;

pub export var zigDoesObjectHaveContainer: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigIsObjectDroppedByPlayer: *const fn (index: c_uint) callconv(.C) bool = &binding.ub_fn_uint;

pub export var zigSetObjectListCell: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetObjectListAction: *const fn (action: u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var zigSetObjectListContainerSubAction: *const fn (subAction: u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var zigSetObjectListConsoleCommand: *const fn (consoleCommand: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var zigSetObjectRefId: *const fn (refId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetObjectRefNum: *const fn (refNum: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectMpNum: *const fn (mpNum: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectCount: *const fn (count: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectCharge: *const fn (charge: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectEnchantmentCharge: *const fn (enchantmentCharge: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetObjectSoul: *const fn (soul: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetObjectGoldValue: *const fn (goldValue: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectScale: *const fn (scale: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetObjectState: *const fn (objectState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetObjectLockLevel: *const fn (lockLevel: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectDialogueChoiceType: *const fn (dialogueChoiceType: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetObjectDialogueChoiceTopic: *const fn (topic: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetObjectGoldPool: *const fn (goldPool: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetObjectLastGoldRestockHour: *const fn (hour: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetObjectLastGoldRestockDay: *const fn (day: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectDisarmState: *const fn (disarmState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetObjectDroppedByPlayerState: *const fn (dropedByPlayerState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetObjectPosition: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var zigSetObjectRotation: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var zigSetObjectSound: *const fn (soundId: [*:0]const u8, volume: f64, pitch: f64) callconv(.C) void = &binding.ub_fn_str_2f64;

pub export var zigSetObjectSummonState: *const fn (summonState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetObjectSummonEffectId: *const fn (summonEffectId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectSummonSpellId: *const fn (summonSpellId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetObjectSummonDuration: *const fn (summonDuration: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetObjectSummonerPid: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSetObjectSummonerRefNum: *const fn (refNum: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectSummonerMpNum: *const fn (mpNum: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var zigSetObjectActivatingPid: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigSetObjectDoorState: *const fn (doorState: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectDoorTeleportState: *const fn (teleportState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetObjectDoorDestinationCell: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetObjectDoorDestinationPosition: *const fn (x: f64, y: f64, z: f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var zigSetObjectDoorDestinationRotation: *const fn (x: f64, z: f64) callconv(.C) void = &binding.ub_fn_2f64;

pub export var zigSetPlayerAsObject: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigSetContainerItemRefId: *const fn (refId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetContainerItemCount: *const fn (count: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetContainerItemCharge: *const fn (charge: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetContainerItemEnchantmentCharge: *const fn (enchantmentCharge: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetContainerItemSoul: *const fn (soul: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var zigSetContainerItemActionCountByIndex: *const fn (objectIndex: c_uint, itemIndex: c_uint, actionCount: c_int) callconv(.C) void = &binding.ub_fn_2uint_int;

pub export var zigAddObject: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigAddClientLocalInteger: *const fn (internalIndex: c_int, intValue: c_int, variableType: c_uint) callconv(.C) void = &binding.ub_fn_2int_uint;
pub export var zigAddClientLocalFloat: *const fn (internalIndex: c_int, floatValue: f64) callconv(.C) void = &binding.ub_fn_int_f64;
pub export var zigAddContainerItem: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigSendObjectActivate: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectPlace: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectSpawn: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectDelete: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectLock: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectDialogueChoice: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectMiscellaneous: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectRestock: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectTrap: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectScale: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectSound: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectState: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectMove: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectRotate: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendDoorState: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendDoorDestination: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendContainer: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendVideoPlay: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendClientScriptLocal: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendConsoleCommand: *const fn (sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_2bool;

pub fn impl_ReadReceivedObjectList() callconv(.C) void {
    return @call(.never_inline, zigReadReceivedObjectList, .{});
}

pub fn impl_ClearObjectList() callconv(.C) void {
    return @call(.never_inline, zigClearObjectList, .{});
}
pub fn impl_SetObjectListPid(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetObjectListPid, .{pid});
}

pub fn impl_CopyReceivedObjectListToStore() callconv(.C) void {
    return @call(.never_inline, zigCopyReceivedObjectListToStore, .{});
}

pub fn impl_GetObjectListSize() callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectListSize, .{});
}
pub fn impl_GetObjectListOrigin() callconv(.C) u8 {
    return @call(.never_inline, zigGetObjectListOrigin, .{});
}
pub fn impl_GetObjectListClientScript() callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectListClientScript, .{});
}
pub fn impl_GetObjectListAction() callconv(.C) u8 {
    return @call(.never_inline, zigGetObjectListAction, .{});
}
pub fn impl_GetObjectListConsoleCommand() callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectListConsoleCommand, .{});
}
pub fn impl_GetObjectListContainerSubAction() callconv(.C) u8 {
    return @call(.never_inline, zigGetObjectListContainerSubAction, .{});
}

pub fn impl_IsObjectPlayer(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigIsObjectPlayer, .{index});
}
pub fn impl_GetObjectPid(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectPid, .{index});
}
pub fn impl_GetObjectRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectRefId, .{index});
}
pub fn impl_GetObjectRefNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectRefNum, .{index});
}
pub fn impl_GetObjectMpNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectMpNum, .{index});
}
pub fn impl_GetObjectCount(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectCount, .{index});
}
pub fn impl_GetObjectCharge(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectCharge, .{index});
}
pub fn impl_GetObjectEnchantmentCharge(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectEnchantmentCharge, .{index});
}
pub fn impl_GetObjectSoul(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectSoul, .{index});
}
pub fn impl_GetObjectGoldValue(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectGoldValue, .{index});
}
pub fn impl_GetObjectScale(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectScale, .{index});
}
pub fn impl_GetObjectSoundId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectSoundId, .{index});
}
pub fn impl_GetObjectState(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetObjectState, .{index});
}
pub fn impl_GetObjectDoorState(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectDoorState, .{index});
}
pub fn impl_GetObjectLockLevel(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectLockLevel, .{index});
}
pub fn impl_GetObjectDialogueChoiceType(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectDialogueChoiceType, .{index});
}
pub fn impl_GetObjectDialogueChoiceTopic(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectDialogueChoiceTopic, .{index});
}
pub fn impl_GetObjectGoldPool(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectGoldPool, .{index});
}
pub fn impl_GetObjectLastGoldRestockHour(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectLastGoldRestockHour, .{index});
}
pub fn impl_GetObjectLastGoldRestockDay(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectLastGoldRestockDay, .{index});
}

pub fn impl_DoesObjectHavePlayerActivating(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesObjectHavePlayerActivating, .{index});
}
pub fn impl_GetObjectActivatingPid(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectActivatingPid, .{index});
}
pub fn impl_GetObjectActivatingRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectActivatingRefId, .{index});
}
pub fn impl_GetObjectActivatingRefNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectActivatingRefNum, .{index});
}
pub fn impl_GetObjectActivatingMpNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectActivatingMpNum, .{index});
}
pub fn impl_GetObjectActivatingName(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectActivatingName, .{index});
}

pub fn impl_GetObjectHitSuccess(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetObjectHitSuccess, .{index});
}
pub fn impl_GetObjectHitDamage(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectHitDamage, .{index});
}
pub fn impl_GetObjectHitBlock(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetObjectHitBlock, .{index});
}
pub fn impl_GetObjectHitKnockdown(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetObjectHitKnockdown, .{index});
}
pub fn impl_DoesObjectHavePlayerHitting(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesObjectHavePlayerHitting, .{index});
}
pub fn impl_GetObjectHittingPid(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectHittingPid, .{index});
}
pub fn impl_GetObjectHittingRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectHittingRefId, .{index});
}
pub fn impl_GetObjectHittingRefNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectHittingRefNum, .{index});
}
pub fn impl_GetObjectHittingMpNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectHittingMpNum, .{index});
}
pub fn impl_GetObjectHittingName(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectHittingName, .{index});
}

pub fn impl_GetObjectSummonState(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetObjectSummonState, .{index});
}
pub fn impl_GetObjectSummonEffectId(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectSummonEffectId, .{index});
}
pub fn impl_GetObjectSummonSpellId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectSummonSpellId, .{index});
}
pub fn impl_GetObjectSummonDuration(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectSummonDuration, .{index});
}
pub fn impl_DoesObjectHavePlayerSummoner(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesObjectHavePlayerSummoner, .{index});
}
pub fn impl_GetObjectSummonerPid(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectSummonerPid, .{index});
}
pub fn impl_GetObjectSummonerRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetObjectSummonerRefId, .{index});
}
pub fn impl_GetObjectSummonerRefNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectSummonerRefNum, .{index});
}
pub fn impl_GetObjectSummonerMpNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectSummonerMpNum, .{index});
}

pub fn impl_GetObjectPosX(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectPosX, .{index});
}
pub fn impl_GetObjectPosY(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectPosY, .{index});
}
pub fn impl_GetObjectPosZ(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectPosZ, .{index});
}
pub fn impl_GetObjectRotX(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectRotX, .{index});
}
pub fn impl_GetObjectRotY(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectRotY, .{index});
}
pub fn impl_GetObjectRotZ(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectRotZ, .{index});
}

pub fn impl_GetVideoFilename(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetVideoFilename, .{index});
}

pub fn impl_GetClientLocalsSize(objectIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetClientLocalsSize, .{objectIndex});
}
pub fn impl_GetClientLocalInternalIndex(objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetClientLocalInternalIndex, .{ objectIndex, variableIndex });
}
pub fn impl_GetClientLocalVariableType(objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_ushort {
    return @call(.never_inline, zigGetClientLocalVariableType, .{ objectIndex, variableIndex });
}
pub fn impl_GetClientLocalIntValue(objectIndex: c_uint, variableIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetClientLocalIntValue, .{ objectIndex, variableIndex });
}
pub fn impl_GetClientLocalFloatValue(objectIndex: c_uint, variableIndex: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetClientLocalFloatValue, .{ objectIndex, variableIndex });
}

pub fn impl_GetContainerChangesSize(objectIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetContainerChangesSize, .{objectIndex});
}
pub fn impl_GetContainerItemRefId(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetContainerItemRefId, .{ objectIndex, itemIndex });
}
pub fn impl_GetContainerItemCount(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetContainerItemCount, .{ objectIndex, itemIndex });
}
pub fn impl_GetContainerItemCharge(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetContainerItemCharge, .{ objectIndex, itemIndex });
}
pub fn impl_GetContainerItemEnchantmentCharge(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetContainerItemEnchantmentCharge, .{ objectIndex, itemIndex });
}
pub fn impl_GetContainerItemSoul(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetContainerItemSoul, .{ objectIndex, itemIndex });
}
pub fn impl_GetContainerItemActionCount(objectIndex: c_uint, itemIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetContainerItemActionCount, .{ objectIndex, itemIndex });
}

pub fn impl_DoesObjectHaveContainer(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesObjectHaveContainer, .{index});
}
pub fn impl_IsObjectDroppedByPlayer(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigIsObjectDroppedByPlayer, .{index});
}

pub fn impl_SetObjectListCell(cellDescription: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectListCell, .{cellDescription});
}
pub fn impl_SetObjectListAction(action: u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectListAction, .{action});
}
pub fn impl_SetObjectListContainerSubAction(subAction: u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectListContainerSubAction, .{subAction});
}
pub fn impl_SetObjectListConsoleCommand(consoleCommand: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectListConsoleCommand, .{consoleCommand});
}

pub fn impl_SetObjectRefId(refId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectRefId, .{refId});
}
pub fn impl_SetObjectRefNum(refNum: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectRefNum, .{refNum});
}
pub fn impl_SetObjectMpNum(mpNum: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectMpNum, .{mpNum});
}
pub fn impl_SetObjectCount(count: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectCount, .{count});
}
pub fn impl_SetObjectCharge(charge: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectCharge, .{charge});
}
pub fn impl_SetObjectEnchantmentCharge(enchantmentCharge: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectEnchantmentCharge, .{enchantmentCharge});
}
pub fn impl_SetObjectSoul(soul: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSoul, .{soul});
}
pub fn impl_SetObjectGoldValue(goldValue: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectGoldValue, .{goldValue});
}
pub fn impl_SetObjectScale(scale: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectScale, .{scale});
}
pub fn impl_SetObjectState(objectState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetObjectState, .{objectState});
}
pub fn impl_SetObjectLockLevel(lockLevel: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectLockLevel, .{lockLevel});
}
pub fn impl_SetObjectDialogueChoiceType(dialogueChoiceType: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDialogueChoiceType, .{dialogueChoiceType});
}
pub fn impl_SetObjectDialogueChoiceTopic(topic: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDialogueChoiceTopic, .{topic});
}
pub fn impl_SetObjectGoldPool(goldPool: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetObjectGoldPool, .{goldPool});
}
pub fn impl_SetObjectLastGoldRestockHour(hour: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectLastGoldRestockHour, .{hour});
}
pub fn impl_SetObjectLastGoldRestockDay(day: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectLastGoldRestockDay, .{day});
}
pub fn impl_SetObjectDisarmState(disarmState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDisarmState, .{disarmState});
}
pub fn impl_SetObjectDroppedByPlayerState(dropedByPlayerState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDroppedByPlayerState, .{dropedByPlayerState});
}
pub fn impl_SetObjectPosition(x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectPosition, .{ x, y, z });
}
pub fn impl_SetObjectRotation(x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectRotation, .{ x, y, z });
}
pub fn impl_SetObjectSound(soundId: [*:0]const u8, volume: f64, pitch: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSound, .{ soundId, volume, pitch });
}

pub fn impl_SetObjectSummonState(summonState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonState, .{summonState});
}
pub fn impl_SetObjectSummonEffectId(summonEffectId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonEffectId, .{summonEffectId});
}
pub fn impl_SetObjectSummonSpellId(summonSpellId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonSpellId, .{summonSpellId});
}
pub fn impl_SetObjectSummonDuration(summonDuration: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonDuration, .{summonDuration});
}
pub fn impl_SetObjectSummonerPid(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonerPid, .{pid});
}
pub fn impl_SetObjectSummonerRefNum(refNum: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonerRefNum, .{refNum});
}
pub fn impl_SetObjectSummonerMpNum(mpNum: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonerMpNum, .{mpNum});
}

pub fn impl_SetObjectActivatingPid(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetObjectActivatingPid, .{pid});
}

pub fn impl_SetObjectDoorState(doorState: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDoorState, .{doorState});
}
pub fn impl_SetObjectDoorTeleportState(teleportState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDoorTeleportState, .{teleportState});
}
pub fn impl_SetObjectDoorDestinationCell(cellDescription: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDoorDestinationCell, .{cellDescription});
}
pub fn impl_SetObjectDoorDestinationPosition(x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDoorDestinationPosition, .{ x, y, z });
}
pub fn impl_SetObjectDoorDestinationRotation(x: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDoorDestinationRotation, .{ x, z });
}

pub fn impl_SetPlayerAsObject(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetPlayerAsObject, .{pid});
}

pub fn impl_SetContainerItemRefId(refId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemRefId, .{refId});
}
pub fn impl_SetContainerItemCount(count: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemCount, .{count});
}
pub fn impl_SetContainerItemCharge(charge: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemCharge, .{charge});
}
pub fn impl_SetContainerItemEnchantmentCharge(enchantmentCharge: f64) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemEnchantmentCharge, .{enchantmentCharge});
}
pub fn impl_SetContainerItemSoul(soul: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemSoul, .{soul});
}

pub fn impl_SetContainerItemActionCountByIndex(objectIndex: c_uint, itemIndex: c_uint, actionCount: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemActionCountByIndex, .{ objectIndex, itemIndex, actionCount });
}

pub fn impl_AddObject() callconv(.C) void {
    return @call(.never_inline, zigAddObject, .{});
}
pub fn impl_AddClientLocalInteger(internalIndex: c_int, intValue: c_int, variableType: c_uint) callconv(.C) void {
    return @call(.never_inline, zigAddClientLocalInteger, .{ internalIndex, intValue, variableType });
}
pub fn impl_AddClientLocalFloat(internalIndex: c_int, floatValue: f64) callconv(.C) void {
    return @call(.never_inline, zigAddClientLocalFloat, .{ internalIndex, floatValue });
}
pub fn impl_AddContainerItem() callconv(.C) void {
    return @call(.never_inline, zigAddContainerItem, .{});
}

pub fn impl_SendObjectActivate(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectActivate, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectPlace(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectPlace, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectSpawn(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectSpawn, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectDelete(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectDelete, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectLock(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectLock, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectDialogueChoice(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectDialogueChoice, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectMiscellaneous(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectMiscellaneous, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectRestock(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectRestock, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectTrap(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectTrap, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectScale(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectScale, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectSound(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectSound, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectState(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectState, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectMove(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectMove, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendObjectRotate(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendObjectRotate, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendDoorState(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendDoorState, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendDoorDestination(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendDoorDestination, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendContainer(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendContainer, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendVideoPlay(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendVideoPlay, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendClientScriptLocal(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendClientScriptLocal, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub fn impl_SendConsoleCommand(sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendConsoleCommand, .{ sendToOtherPlayers, skipAttachedPlayer });
}
