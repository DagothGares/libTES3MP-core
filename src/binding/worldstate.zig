//! Raw bindings to the functions declared by TES3MP's Worldstate.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

// Base functions
pub export var zigReadReceivedWorldstate: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigCopyReceivedWorldstateToStore: *const fn () callconv(.C) void = &binding.ub_fn;

// Collision functions
pub export var zigSetPlayerCollisionState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetActorCollisionState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetPlacedObjectCollisionState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigUseActorCollisionForPlacedObjects: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigAddEnforcedCollisionRefId: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigClearEnforcedCollisionRefIds: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSendWorldCollisionOverride: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// Cell functions
pub export var zigAddDestinationOverride: *const fn (c_str, c_str) callconv(.C) void = &binding.ub_fn_2str;
pub export var zigSendWorldDestinationOverride: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigClearDestinationOverrides: *const fn () callconv(.C) void = &binding.ub_fn;
// The description in Worldstate.hpp makes me think this is a red herring.
pub export var zigAddCellToReset: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigClearCellsToReset: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSendCellReset: *const fn (c_ushort, bool) callconv(.C) void = &binding.ub_fn_ushort_bool;

// Kill functions
pub export var zigClearKillChanges: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigGetKillChangesSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetKillRefId: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigGetKillNumber: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigAddKill: *const fn (c_str, c_int) callconv(.C) void = &binding.ub_fn_str_int;
pub export var zigSendWorldKillCount: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// Map functions
pub export var zigClearMapChanges: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigGetMapChangesSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetMapTileCellX: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetMapTileCellY: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigSaveMapTileImageFile: *const fn (c_uint, c_str) callconv(.C) void = &binding.ub_fn_uint_str;
pub export var zigLoadMapTileImageFile: *const fn (c_int, c_int, c_str) callconv(.C) void = &binding.ub_fn_2int_str;
pub export var zigSendWorldMap: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// ClientGlobal functions
pub export var zigClearClientGlobals: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigGetClientGlobalsSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetClientGlobalId: *const fn (c_uint) callconv(.C) c_str = &binding.ub_fn_uint;
pub export var zigGetClientGlobalVariableType: *const fn (c_uint) callconv(.C) c_ushort = &binding.ub_fn_uint;
pub export var zigGetClientGlobalIntValue: *const fn (c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigAddClientGlobalInteger: *const fn (c_str, c_int, c_uint) callconv(.C) void = &binding.ub_fn_str_int_uint;
pub export var zigGetClientGlobalFloatValue: *const fn (c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigAddClientGlobalFloat: *const fn (c_str, f64) callconv(.C) void = &binding.ub_fn_str_f64;
pub export var zigAddSynchronizedClientScriptId: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigClearSynchronizedClientScriptIds: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigAddSynchronizedClientGlobalId: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigClearSynchronizedClientGlobalIds: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigSendClientScriptGlobal: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendClientScriptSettings: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// Weather functions
pub export var zigGetWeatherRegion: *const fn () callconv(.C) c_str = &binding.ub_fn;
pub export var zigSetWeatherRegion: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetWeatherCurrent: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigSetWeatherCurrent: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetWeatherNext: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigSetWeatherNext: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetWeatherQueued: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigSetWeatherQueued: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigGetWeatherTransitionFactor: *const fn () callconv(.C) f64 = &binding.ub_fn;
pub export var zigSetWeatherTransitionFactor: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetAuthorityRegion: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSendWorldRegionAuthority: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSetWeatherForceState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSendWorldWeather: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// Time functions
pub export var zigSetHour: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetDay: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetMonth: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetYear: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetDaysPassed: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetTimeScale: *const fn (f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSendWorldTime: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
