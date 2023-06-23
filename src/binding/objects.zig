//! Raw bindings to the functions declared by TES3MP's Objects.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigReadReceivedObjectList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigClearObjectList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSetObjectListPid: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigCopyReceivedObjectListToStore: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigGetObjectListSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetObjectListOrigin: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var zigGetObjectListClientScript: *const fn () callconv(.C) c_str = &binding.ub_fn;
pub export var zigGetObjectListAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var zigSetObjectListAction: *const fn (u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var zigGetObjectListConsoleCommand: *const fn () callconv(.C) c_str = &binding.ub_fn;
pub export var zigSetObjectListConsoleCommand: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetObjectListContainerSubAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var zigSetObjectListContainerSubAction: *const fn (u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var zigSetObjectListCell: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigAddObject: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSendObjectActivate: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectPlace: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectSpawn: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectDelete: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectLock: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectDialogueChoice: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectMiscellaneous: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectRestock: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectTrap: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectScale: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectSound: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectState: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectMove: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendObjectRotate: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendDoorState: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendDoorDestination: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendContainer: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendVideoPlay: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendClientScriptLocal: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
pub export var zigSendConsoleCommand: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;

// Data functions
pub export var zigIsObjectPlayer: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectPid: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetObjectRefId: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigSetObjectRefId: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetObjectRefNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetObjectRefNum: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigGetObjectMpNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetObjectMpNum: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigGetObjectCount: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigSetObjectCount: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetObjectCharge: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigSetObjectCharge: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetObjectEnchantmentCharge: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetObjectEnchantmentCharge: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetObjectSoul: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigSetObjectSoul: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetObjectGoldValue: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigSetObjectGoldValue: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetObjectScale: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetObjectScale: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetObjectSoundId: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigGetObjectState: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigSetObjectState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigGetObjectDoorState: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigSetObjectDoorState: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetObjectDoorTeleportState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetObjectDoorDestinationCell: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetObjectDoorDestinationPosition: *const fn (f64, f64, f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var zigSetObjectDoorDestinationRotation: *const fn (f64, f64) callconv(.C) void = &binding.ub_fn_2f64;
pub export var zigGetObjectLockLevel: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigSetObjectLockLevel: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetObjectDialogueChoiceType: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetObjectDialogueChoiceType: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigGetObjectDialogueChoiceTopic: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigSetObjectDialogueChoiceTopic: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetObjectGoldPool: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetObjectGoldPool: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigGetObjectLastGoldRestockHour: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetObjectLastGoldRestockHour: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetObjectLastGoldRestockDay: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigSetObjectLastGoldRestockDay: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;

// Activating functions
pub export var zigDoesObjectHavePlayerActivating: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectActivatingPid: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigSetObjectActivatingPid: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetObjectActivatingRefId: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigGetObjectActivatingRefNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectActivatingMpNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectActivatingName: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;

// Combat functions
pub export var zigGetObjectHitSuccess: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectHitDamage: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectHitBlock: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectHitKnockdown: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigDoesObjectHavePlayerHitting: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectHittingPid: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectHittingRefId: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigGetObjectHittingRefNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectHittingMpNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectHittingName: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;

// Summon functions
pub export var zigGetObjectSummonState: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigSetObjectSummonState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigGetObjectSummonEffectId: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint; // whut
pub export var zigSetObjectSummonEffectId: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetObjectSummonSpellId: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigSetObjectSummonSpellId: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetObjectSummonDuration: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetObjectSummonDuration: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigDoesObjectHavePlayerSummoner: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetObjectSummonerPid: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigSetObjectSummonerPid: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetObjectSummonerRefId: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigGetObjectSummonerRefNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetObjectSummonerRefNum: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetObjectSummonerMpNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetObjectSummonerMpNum: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;

// Position functions
pub export var zigGetObjectPosX: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectPosY: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectPosZ: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectRotX: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectRotY: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetObjectRotZ: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetObjectPosition: *const fn (f64, f64, f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var zigSetObjectRotation: *const fn (f64, f64, f64) callconv(.C) void = &binding.ub_fn_3f64;

// ClientLocal functions
pub export var zigGetClientLocalsSize: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetClientLocalInternalIndex: *const fn (c_uint, c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var zigGetClientLocalVariableType: *const fn (c_uint, c_uint) callconv(.C) c_ushort = &binding.ub_fn_2uint;
pub export var zigGetClientLocalIntValue: *const fn (c_uint, c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigAddClientLocalInteger: *const fn (c_int, c_int, c_uint) callconv(.C) void = &binding.ub_fn_2int_uint;
pub export var zigGetClientLocalFloatValue: *const fn (c_uint, c_uint) callconv(.C) f64 = &binding.ub_fn_2uint;
pub export var zigAddClientLocalFloat: *const fn (c_int, f64) callconv(.C) void = &binding.ub_fn_int_f64;

// Container functions
pub export var zigGetContainerChangesSize: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetContainerItemRefId: *const fn (c_uint, c_uint) callconv(.C) c_str = &binding.ub_fn_2uint;
pub export var zigSetContainerItemRefId: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetContainerItemCount: *const fn (c_uint, c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigSetContainerItemCount: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetContainerItemCharge: *const fn (c_uint, c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigSetContainerItemCharge: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetContainerItemEnchantmentCharge: *const fn (c_uint, c_uint) callconv(.C) f64 = &binding.ub_fn_2uint;
pub export var zigSetContainerItemEnchantmentCharge: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetContainerItemSoul: *const fn (c_uint, c_uint) callconv(.C) c_str = &binding.ub_fn_2uint;
pub export var zigSetContainerItemSoul: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetContainerItemActionCount: *const fn (c_uint, c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigSetContainerItemActionCountByIndex: *const fn (c_uint, c_uint, c_int) callconv(.C) void = &binding.ub_fn_2uint_int;
pub export var zigDoesObjectHaveContainer: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigAddContainerItem: *const fn () callconv(.C) void = &binding.ub_fn;

// Misc functions
pub export var zigSetPlayerAsObject: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigIsObjectDroppedByPlayer: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigSetObjectDroppedByPlayerState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetObjectDisarmState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigGetVideoFilename: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigSetObjectSound: *const fn (c_str, f64, f64) callconv(.C) void = &binding.ub_fn_str_2f64;

pub export fn impl_ReadReceivedObjectList() callconv(.C) void {
    return @call(.never_inline, zigReadReceivedObjectList, .{});
}
pub export fn impl_ClearObjectList() callconv(.C) void {
    return @call(.never_inline, zigClearObjectList, .{});
}
pub export fn impl_SetObjectListPid(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetObjectListPid, .{pid});
}
pub export fn impl_CopyReceivedObjectListToStore() callconv(.C) void {
    return @call(.never_inline, zigCopyReceivedObjectListToStore, .{});
}
pub export fn impl_GetObjectListSize() callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectListSize, .{});
}
pub export fn impl_GetObjectListOrigin() callconv(.C) u8 {
    return @call(.never_inline, zigGetObjectListOrigin, .{});
}
pub export fn impl_GetObjectListClientScript() callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectListClientScript, .{});
}
pub export fn impl_GetObjectListAction() callconv(.C) u8 {
    return @call(.never_inline, zigGetObjectListAction, .{});
}
pub export fn impl_SetObjectListAction(action: u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectListAction, .{action});
}
pub export fn impl_GetObjectListConsoleCommand() callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectListConsoleCommand, .{});
}
pub export fn impl_SetObjectListConsoleCommand(consoleCommand: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetObjectListConsoleCommand, .{consoleCommand});
}
pub export fn impl_GetObjectListContainerSubAction() callconv(.C) u8 {
    return @call(.never_inline, zigGetObjectListContainerSubAction, .{});
}
pub export fn impl_SetObjectListContainerSubAction(action: u8) callconv(.C) void {
    return @call(.never_inline, zigSetObjectListContainerSubAction, .{action});
}
pub export fn impl_SetObjectListCell(cellDescription: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetObjectListCell, .{cellDescription});
}
pub export fn impl_AddObject() callconv(.C) void {
    return @call(.never_inline, zigAddObject, .{});
}
pub export fn impl_SendObjectActivate(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigSendObjectActivate,
        .{ sendToOtherPlayers, skipAttachedPlayer },
    );
}
pub export fn impl_SendObjectPlace(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectPlace, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendObjectSpawn(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectSpawn, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendObjectDelete(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectDelete, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendObjectLock(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectLock, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendObjectDialogueChoice(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigSendObjectDialogueChoice,
        .{ sendToOtherPlayers, skipAttachedPlayer },
    );
}
pub export fn impl_SendObjectMiscellaneous(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigSendObjectMiscellaneous,
        .{ sendToOtherPlayers, skipAttachedPlayer },
    );
}
pub export fn impl_SendObjectRestock(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectRestock, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendObjectTrap(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectTrap, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendObjectScale(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectScale, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendObjectSound(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectSound, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendObjectState(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectState, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendObjectMove(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectMove, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendObjectRotate(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendObjectRotate, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendDoorState(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendDoorState, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendDoorDestination(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigSendDoorDestination,
        .{ sendToOtherPlayers, skipAttachedPlayer },
    );
}
pub export fn impl_SendContainer(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendContainer, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendVideoPlay(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(.never_inline, zigSendVideoPlay, .{ sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendClientScriptLocal(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigSendClientScriptLocal,
        .{ sendToOtherPlayers, skipAttachedPlayer },
    );
}
pub export fn impl_SendConsoleCommand(
    sendToOtherPlayers: bool,
    skipAttachedPlayer: bool,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigSendConsoleCommand,
        .{ sendToOtherPlayers, skipAttachedPlayer },
    );
}
pub export fn impl_IsObjectPlayer(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigIsObjectPlayer, .{index});
}
pub export fn impl_GetObjectPid(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectPid, .{index});
}
pub export fn impl_GetObjectRefId(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectRefId, .{index});
}
pub export fn impl_SetObjectRefId(refId: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetObjectRefId, .{refId});
}
pub export fn impl_GetObjectRefNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectRefNum, .{index});
}
pub export fn impl_SetObjectRefNum(refNum: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetObjectRefNum, .{refNum});
}
pub export fn impl_GetObjectMpNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectMpNum, .{index});
}
pub export fn impl_SetObjectMpNum(mpNum: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetObjectMpNum, .{mpNum});
}
pub export fn impl_GetObjectCount(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectCount, .{index});
}
pub export fn impl_SetObjectCount(count: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectCount, .{count});
}
pub export fn impl_GetObjectCharge(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectCharge, .{index});
}
pub export fn impl_SetObjectCharge(charge: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectCharge, .{charge});
}
pub export fn impl_GetObjectEnchantmentCharge(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectEnchantmentCharge, .{index});
}
pub export fn impl_SetObjectEnchantmentCharge(enchantmentCharge: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectEnchantmentCharge, .{enchantmentCharge});
}
pub export fn impl_GetObjectSoul(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectSoul, .{index});
}
pub export fn impl_SetObjectSoul(soul: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSoul, .{soul});
}
pub export fn impl_GetObjectGoldValue(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectGoldValue, .{index});
}
pub export fn impl_SetObjectGoldValue(value: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectGoldValue, .{value});
}
pub export fn impl_GetObjectScale(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectScale, .{index});
}
pub export fn impl_SetObjectScale(scale: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectScale, .{scale});
}
pub export fn impl_GetObjectSoundId(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectSoundId, .{index});
}
pub export fn impl_GetObjectState(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetObjectState, .{index});
}
pub export fn impl_SetObjectState(state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetObjectState, .{state});
}
pub export fn impl_GetObjectDoorState(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectDoorState, .{index});
}
pub export fn impl_SetObjectDoorState(state: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDoorState, .{state});
}
pub export fn impl_SetObjectDoorTeleportState(state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDoorTeleportState, .{state});
}
pub export fn impl_SetObjectDoorDestinationCell(cellDescription: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDoorDestinationCell, .{cellDescription});
}
pub export fn impl_SetObjectDoorDestinationPosition(x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDoorDestinationPosition, .{ x, y, z });
}
pub export fn impl_SetObjectDoorDestinationRotation(x: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDoorDestinationRotation, .{ x, z });
}
pub export fn impl_GetObjectLockLevel(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectLockLevel, .{index});
}
pub export fn impl_SetObjectLockLevel(lockLevel: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectLockLevel, .{lockLevel});
}
pub export fn impl_GetObjectDialogueChoiceType(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectDialogueChoiceType, .{index});
}
pub export fn impl_SetObjectDialogueChoiceType(choiceType: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDialogueChoiceType, .{choiceType});
}
pub export fn impl_GetObjectDialogueChoiceTopic(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectDialogueChoiceTopic, .{index});
}
pub export fn impl_SetObjectDialogueChoiceTopic(topic: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDialogueChoiceTopic, .{topic});
}
pub export fn impl_GetObjectGoldPool(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectGoldPool, .{index});
}
pub export fn impl_SetObjectGoldPool(gold: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetObjectGoldPool, .{gold});
}
pub export fn impl_GetObjectLastGoldRestockHour(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectLastGoldRestockHour, .{index});
}
pub export fn impl_SetObjectLastGoldRestockHour(hour: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectLastGoldRestockHour, .{hour});
}
pub export fn impl_GetObjectLastGoldRestockDay(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectLastGoldRestockDay, .{index});
}
pub export fn impl_SetObjectLastGoldRestockDay(day: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectLastGoldRestockDay, .{day});
}
pub export fn impl_DoesObjectHavePlayerActivating(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesObjectHavePlayerActivating, .{index});
}
pub export fn impl_GetObjectActivatingPid(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectActivatingPid, .{index});
}
pub export fn impl_SetObjectActivatingPid(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetObjectActivatingPid, .{pid});
}
pub export fn impl_GetObjectActivatingRefId(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectActivatingRefId, .{index});
}
pub export fn impl_GetObjectActivatingRefNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectActivatingRefNum, .{index});
}
pub export fn impl_GetObjectActivatingMpNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectActivatingMpNum, .{index});
}
pub export fn impl_GetObjectActivatingName(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectActivatingName, .{index});
}
pub export fn impl_GetObjectHitSuccess(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetObjectHitSuccess, .{index});
}
pub export fn impl_GetObjectHitDamage(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectHitDamage, .{index});
}
pub export fn impl_GetObjectHitBlock(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetObjectHitBlock, .{index});
}
pub export fn impl_GetObjectHitKnockdown(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetObjectHitKnockdown, .{index});
}
pub export fn impl_DoesObjectHavePlayerHitting(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesObjectHavePlayerHitting, .{index});
}
pub export fn impl_GetObjectHittingPid(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectHittingPid, .{index});
}
pub export fn impl_GetObjectHittingRefId(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectHittingRefId, .{index});
}
pub export fn impl_GetObjectHittingRefNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectHittingRefNum, .{index});
}
pub export fn impl_GetObjectHittingMpNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectHittingMpNum, .{index});
}
pub export fn impl_GetObjectHittingName(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectHittingName, .{index});
}
pub export fn impl_GetObjectSummonState(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigGetObjectSummonState, .{index});
}
pub export fn impl_SetObjectSummonState(state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonState, .{state});
}
pub export fn impl_GetObjectSummonEffectId(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectSummonEffectId, .{index});
}
pub export fn impl_SetObjectSummonEffectId(effectId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonEffectId, .{effectId});
}
pub export fn impl_GetObjectSummonSpellId(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectSummonSpellId, .{index});
}
pub export fn impl_SetObjectSummonSpellId(spellId: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonSpellId, .{spellId});
}
pub export fn impl_GetObjectSummonDuration(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectSummonDuration, .{index});
}
pub export fn impl_SetObjectSummonDuration(duration: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonDuration, .{duration});
}
pub export fn impl_DoesObjectHavePlayerSummoner(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesObjectHavePlayerSummoner, .{index});
}
pub export fn impl_GetObjectSummonerPid(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetObjectSummonerPid, .{index});
}
pub export fn impl_SetObjectSummonerPid(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonerPid, .{pid});
}
pub export fn impl_GetObjectSummonerRefId(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetObjectSummonerRefId, .{index});
}
pub export fn impl_GetObjectSummonerRefNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectSummonerRefNum, .{index});
}
pub export fn impl_SetObjectSummonerRefNum(refNum: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonerRefNum, .{refNum});
}
pub export fn impl_GetObjectSummonerMpNum(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetObjectSummonerMpNum, .{index});
}
pub export fn impl_SetObjectSummonerMpNum(mpNum: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSummonerMpNum, .{mpNum});
}
pub export fn impl_GetObjectPosX(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectPosX, .{index});
}
pub export fn impl_GetObjectPosY(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectPosY, .{index});
}
pub export fn impl_GetObjectPosZ(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectPosZ, .{index});
}
pub export fn impl_GetObjectRotX(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectRotX, .{index});
}
pub export fn impl_GetObjectRotY(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectRotY, .{index});
}
pub export fn impl_GetObjectRotZ(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetObjectRotZ, .{index});
}
pub export fn impl_SetObjectPosition(x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectPosition, .{ x, y, z });
}
pub export fn impl_SetObjectRotation(x: f64, y: f64, z: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectRotation, .{ x, y, z });
}
pub export fn impl_GetClientLocalsSize(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetClientLocalsSize, .{index});
}
pub export fn impl_GetClientLocalInternalIndex(
    objectIndex: c_uint,
    variableIndex: c_uint,
) callconv(.C) c_uint {
    return @call(.never_inline, zigGetClientLocalInternalIndex, .{ objectIndex, variableIndex });
}
pub export fn impl_GetClientLocalVariableType(
    objectIndex: c_uint,
    variableIndex: c_uint,
) callconv(.C) c_ushort {
    return @call(.never_inline, zigGetClientLocalVariableType, .{ objectIndex, variableIndex });
}
pub export fn impl_GetClientLocalIntValue(
    objectIndex: c_uint,
    variableIndex: c_uint,
) callconv(.C) c_int {
    return @call(.never_inline, zigGetClientLocalIntValue, .{ objectIndex, variableIndex });
}
pub export fn impl_AddClientLocalInteger(
    internalIndex: c_int,
    intValue: c_int,
    variableType: c_uint,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigAddClientLocalInteger,
        .{ internalIndex, intValue, variableType },
    );
}
pub export fn impl_GetClientLocalFloatValue(
    objectIndex: c_uint,
    internalIndex: c_uint,
) callconv(.C) f64 {
    return @call(.never_inline, zigGetClientLocalFloatValue, .{ objectIndex, internalIndex });
}
pub export fn impl_AddClientLocalFloat(internalIndex: c_int, floatValue: f64) callconv(.C) void {
    return @call(.never_inline, zigAddClientLocalFloat, .{ internalIndex, floatValue });
}
pub export fn impl_GetContainerChangesSize(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetContainerChangesSize, .{index});
}
pub export fn impl_GetContainerItemRefId(
    objectIndex: c_uint,
    itemIndex: c_uint,
) callconv(.C) c_str {
    return @call(.never_inline, zigGetContainerItemRefId, .{ objectIndex, itemIndex });
}
pub export fn impl_SetContainerItemRefId(refId: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemRefId, .{refId});
}
pub export fn impl_GetContainerItemCount(
    objectIndex: c_uint,
    itemIndex: c_uint,
) callconv(.C) c_int {
    return @call(.never_inline, zigGetContainerItemCount, .{ objectIndex, itemIndex });
}
pub export fn impl_SetContainerItemCount(count: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemCount, .{count});
}
pub export fn impl_GetContainerItemCharge(
    objectIndex: c_uint,
    itemIndex: c_uint,
) callconv(.C) c_int {
    return @call(.never_inline, zigGetContainerItemCharge, .{ objectIndex, itemIndex });
}
pub export fn impl_SetContainerItemCharge(charge: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemCharge, .{charge});
}
pub export fn impl_GetContainerItemEnchantmentCharge(
    objectIndex: c_uint,
    itemIndex: c_uint,
) callconv(.C) f64 {
    return @call(.never_inline, zigGetContainerItemEnchantmentCharge, .{ objectIndex, itemIndex });
}
pub export fn impl_SetContainerItemEnchantmentCharge(enchantmentCharge: f64) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemEnchantmentCharge, .{enchantmentCharge});
}
pub export fn impl_GetContainerItemSoul(
    objectIndex: c_uint,
    itemIndex: c_uint,
) callconv(.C) c_str {
    return @call(.never_inline, zigGetContainerItemSoul, .{ objectIndex, itemIndex });
}
pub export fn impl_SetContainerItemSoul(soul: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetContainerItemSoul, .{soul});
}
pub export fn impl_GetContainerItemActionCount(
    objectIndex: c_uint,
    itemIndex: c_uint,
) callconv(.C) c_int {
    return @call(.never_inline, zigGetContainerItemActionCount, .{ objectIndex, itemIndex });
}
pub export fn impl_SetContainerItemActionCountByIndex(
    objectIndex: c_uint,
    itemIndex: c_uint,
    actionCount: c_int,
) callconv(.C) void {
    return @call(
        .never_inline,
        zigSetContainerItemActionCountByIndex,
        .{ objectIndex, itemIndex, actionCount },
    );
}
pub export fn impl_DoesObjectHaveContainer(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigDoesObjectHaveContainer, .{index});
}
pub export fn impl_AddContainerItem() callconv(.C) void {
    return @call(.never_inline, zigAddContainerItem, .{});
}
pub export fn impl_SetPlayerAsObject(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetPlayerAsObject, .{pid});
}
pub export fn impl_IsObjectDroppedByPlayer(index: c_uint) callconv(.C) bool {
    return @call(.never_inline, zigIsObjectDroppedByPlayer, .{index});
}
pub export fn impl_SetObjectDroppedByPlayerState(state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDroppedByPlayerState, .{state});
}
pub export fn impl_SetObjectDisarmState(state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetObjectDisarmState, .{state});
}
pub export fn impl_GetVideoFilename(index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetVideoFilename, .{index});
}
pub export fn impl_SetObjectSound(sound: c_str, volume: f64, pitch: f64) callconv(.C) void {
    return @call(.never_inline, zigSetObjectSound, .{ sound, volume, pitch });
}
