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
