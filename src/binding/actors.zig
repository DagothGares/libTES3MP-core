//! Raw bindings for the functions declared in TES3MP's Actors.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigGetActorCell: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigSetActorCell: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetActorRefId: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigSetActorRefId: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetActorRefNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetActorRefNum: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetActorMpNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetActorMpNum: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigAddActor: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSendActorCellChange: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;

// ActorList functions
pub export var zigReadReceivedActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigReadCellActorList: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetActorListCell: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigClearActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSetActorListPid: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigCopyReceivedActorListToStore: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigGetActorListSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetActorListAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var zigSetActorListAction: *const fn (u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var zigSendActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSendActorAuthority: *const fn () callconv(.C) void = &binding.ub_fn;

// Position functions
pub export var zigGetActorPosX: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorPosY: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorPosZ: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorRotX: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorRotY: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetActorRotZ: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetActorPosition: *const fn (f64, f64, f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var zigSetActorRotation: *const fn (f64, f64, f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var zigDoesActorHavePosition: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigSendActorPosition: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;

// StatsDynamic functions
pub export var zigGetActorHealthBase: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetActorHealthBase: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetActorHealthCurrent: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetActorHealthCurrent: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetActorHealthModified: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetActorHealthModified: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetActorMagickaBase: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetActorMagickaBase: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetActorMagickaCurrent: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetActorMagickaCurrent: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetActorMagickaModified: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetActorMagickaModified: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetActorFatigueBase: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetActorFatigueBase: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetActorFatigueCurrent: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetActorFatigueCurrent: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigGetActorFatigueModified: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigSetActorFatigueModified: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigDoesActorHaveStatsDynamic: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigSendActorStatsDynamic: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;

// Equipment functions
pub export var zigGetActorEquipmentItemRefId: *const fn (c_uint, c_ushort) callconv(.C) c_str = &binding.ub_fn_uint_ushort;
pub export var zigGetActorEquipmentItemCount: *const fn (c_uint, c_ushort) callconv(.C) c_int = &binding.ub_fn_uint_ushort;
pub export var zigGetActorEquipmentItemCharge: *const fn (c_uint, c_ushort) callconv(.C) c_int = &binding.ub_fn_uint_ushort;
pub export var zigGetActorEquipmentItemEnchantmentCharge: *const fn (c_uint, c_ushort) callconv(.C) f64 = &binding.ub_fn_uint_ushort;
pub export var zigEquipActorItem: *const fn (c_ushort, c_str, c_uint, c_int, f64) callconv(.C) void = &binding.ub_fn_ushort_str_uint_int_f64;
pub export var zigUnequipActorItem: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSendActorEquipment: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;

// Death functions
pub export var zigDoesActorHavePlayerKiller: *const fn (c_uint) callconv(.C) bool = &binding.ub_fn_uint;
pub export var zigGetActorKillerPid: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetActorKillerRefId: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigGetActorKillerRefNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetActorKillerMpNum: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetActorKillerName: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigGetActorDeathState: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetActorDeathState: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetActorDeathInstant: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSendActorDeath: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;

// SpellsActive functions
pub export var zigGetActorSpellsActiveChangesSize: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetActorSpellsActiveChangesAction: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetActorSpellsActiveAction: *const fn (u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var zigGetActorSpellsActiveId: *const fn (c_uint, c_uint) callconv(.C) c_str = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveDisplayName: *const fn (c_uint, c_uint) callconv(.C) c_str = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveStackingState: *const fn (c_uint, c_uint) callconv(.C) bool = &binding.ub_fn_2uint;
pub export var zigAddActorSpellActive: *const fn (c_str, c_str, bool) callconv(.C) void = &binding.ub_fn_2str_bool;
pub export var zigSendActorSpellsActiveChanges: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;

// SpellsActiveEffect functions
pub export var zigGetActorSpellsActiveEffectCount: *const fn (c_uint, c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveEffectId: *const fn (c_uint, c_uint, c_uint) callconv(.C) c_uint = &binding.ub_fn_3uint;
pub export var zigGetActorSpellsActiveEffectArg: *const fn (c_uint, c_uint, c_uint) callconv(.C) c_str = &binding.ub_fn_3uint;
pub export var zigGetActorSpellsActiveEffectMagnitude: *const fn (c_uint, c_uint, c_uint) callconv(.C) f64 = &binding.ub_fn_3uint;
pub export var zigGetActorSpellsActiveEffectDuration: *const fn (c_uint, c_uint, c_uint) callconv(.C) f64 = &binding.ub_fn_3uint;
pub export var zigGetActorSpellsActiveEffectTimeLeft: *const fn (c_uint, c_uint, c_uint) callconv(.C) f64 = &binding.ub_fn_3uint;
pub export var zigAddActorSpellActiveEffect: *const fn (c_int, f64, f64, f64, c_int) callconv(.C) void = &binding.ub_fn_int_3f64_int;

// SpellsActivePlayerCaster functions
pub export var zigDoesActorSpellsActiveHavePlayerCaster: *const fn (c_uint, c_uint) callconv(.C) bool = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveCasterPid: *const fn (c_uint, c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveCasterRefId: *const fn (c_uint, c_uint) callconv(.C) c_str = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveCasterRefNum: *const fn (c_uint, c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var zigGetActorSpellsActiveCasterMpNum: *const fn (c_uint, c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;

// AI functions
pub export var zigSetActorAIAction: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetActorAITargetToPlayer: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSetActorAITargetToObject: *const fn (c_int, c_int) callconv(.C) void = &binding.ub_fn_2int;
pub export var zigSetActorAICoordinates: *const fn (f64, f64, f64) callconv(.C) void = &binding.ub_fn_3f64;
pub export var zigSetActorAIDistance: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetActorAIDuration: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetActorAIRepetition: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSendActorAI: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;

// Misc functions
pub export var zigSetActorSound: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSendActorSpeech: *const fn (bool, bool) callconv(.C) void = &binding.ub_fn_2bool;
