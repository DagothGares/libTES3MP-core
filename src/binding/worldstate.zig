//! Raw bindings to the functions declared by TES3MP's Worldstate.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ReadReceivedWorldstate: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_CopyReceivedWorldstateToStore: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_ClearKillChanges: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_ClearMapChanges: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_ClearClientGlobals: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_GetKillChangesSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var libtes3mp_internal_GetMapChangesSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var libtes3mp_internal_GetClientGlobalsSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;

pub export var libtes3mp_internal_GetKillRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetKillNumber: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetWeatherRegion: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetWeatherCurrent: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var libtes3mp_internal_GetWeatherNext: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var libtes3mp_internal_GetWeatherQueued: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var libtes3mp_internal_GetWeatherTransitionFactor: *const fn () callconv(.C) f64 = &binding.ub_fn;

pub export var libtes3mp_internal_GetMapTileCellX: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetMapTileCellY: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetClientGlobalId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetClientGlobalVariableType: *const fn (index: c_uint) callconv(.C) c_ushort = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetClientGlobalIntValue: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetClientGlobalFloatValue: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;

pub export var libtes3mp_internal_SetAuthorityRegion: *const fn (authorityRegion: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_SetWeatherRegion: *const fn (region: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetWeatherForceState: *const fn (forceState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetWeatherCurrent: *const fn (currentWeather: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetWeatherNext: *const fn (nextWeather: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetWeatherQueued: *const fn (queuedWeather: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetWeatherTransitionFactor: *const fn (transitionFactor: f64) callconv(.C) void = &binding.ub_fn_f64;

pub export var libtes3mp_internal_SetHour: *const fn (hour: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetDay: *const fn (day: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetMonth: *const fn (month: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetYear: *const fn (year: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetDaysPassed: *const fn (daysPassed: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetTimeScale: *const fn (timeScale: f64) callconv(.C) void = &binding.ub_fn_f64;

pub export var libtes3mp_internal_SetPlayerCollisionState: *const fn (state: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetActorCollisionState: *const fn (state: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetPlacedObjectCollisionState: *const fn (state: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_UseActorCollisionForPlacedObjects: *const fn (useActorCollision: bool) callconv(.C) void = &binding.ub_fn_bool;

pub export var libtes3mp_internal_AddKill: *const fn (refId: [*:0]const u8, number: c_int) callconv(.C) void = &binding.ub_fn_str_int;
pub export var libtes3mp_internal_AddClientGlobalInteger: *const fn (id: [*:0]const u8, intValue: c_int, variableType: c_uint) callconv(.C) void = &binding.ub_fn_str_int_uint;
pub export var libtes3mp_internal_AddClientGlobalFloat: *const fn (id: [*:0]const u8, floatValue: f64) callconv(.C) void = &binding.ub_fn_str_f64;
pub export var libtes3mp_internal_AddSynchronizedClientScriptId: *const fn (scriptId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_AddSynchronizedClientGlobalId: *const fn (globalId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_AddEnforcedCollisionRefId: *const fn (refId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_AddCellToReset: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_AddDestinationOverride: *const fn (oldCellDescription: [*:0]const u8, newCellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_2str;

pub export var libtes3mp_internal_ClearSynchronizedClientScriptIds: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_ClearSynchronizedClientGlobalIds: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_ClearEnforcedCollisionRefIds: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_ClearCellsToReset: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_ClearDestinationOverrides: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_SaveMapTileImageFile: *const fn (index: c_uint, filePath: [*:0]const u8) callconv(.C) void = &binding.ub_fn_uint_str;
pub export var libtes3mp_internal_LoadMapTileImageFile: *const fn (cellX: c_int, cellY: c_int, filePath: [*:0]const u8) callconv(.C) void = &binding.ub_fn_2int_str;

pub export var libtes3mp_internal_SendClientScriptGlobal: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendClientScriptSettings: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendWorldKillCount: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendWorldMap: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendWorldTime: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendWorldWeather: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendWorldCollisionOverride: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendCellReset: *const fn (pid: c_ushort, sendToOtherPlayers: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var libtes3mp_internal_SendWorldDestinationOverride: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendWorldRegionAuthority: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn libtes3mp_ReadReceivedWorldstate() callconv(.C) void {
    return libtes3mp_internal_ReadReceivedWorldstate();
}

pub export fn libtes3mp_CopyReceivedWorldstateToStore() callconv(.C) void {
    return libtes3mp_internal_CopyReceivedWorldstateToStore();
}

pub export fn libtes3mp_ClearKillChanges() callconv(.C) void {
    return libtes3mp_internal_ClearKillChanges();
}
pub export fn libtes3mp_ClearMapChanges() callconv(.C) void {
    return libtes3mp_internal_ClearMapChanges();
}
pub export fn libtes3mp_ClearClientGlobals() callconv(.C) void {
    return libtes3mp_internal_ClearClientGlobals();
}

pub export fn libtes3mp_GetKillChangesSize() callconv(.C) c_uint {
    return libtes3mp_internal_GetKillChangesSize();
}
pub export fn libtes3mp_GetMapChangesSize() callconv(.C) c_uint {
    return libtes3mp_internal_GetMapChangesSize();
}
pub export fn libtes3mp_GetClientGlobalsSize() callconv(.C) c_uint {
    return libtes3mp_internal_GetClientGlobalsSize();
}

pub export fn libtes3mp_GetKillRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetKillRefId(index);
}
pub export fn libtes3mp_GetKillNumber(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetKillNumber(index);
}

pub export fn libtes3mp_GetWeatherRegion() callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetWeatherRegion();
}
pub export fn libtes3mp_GetWeatherCurrent() callconv(.C) c_int {
    return libtes3mp_internal_GetWeatherCurrent();
}
pub export fn libtes3mp_GetWeatherNext() callconv(.C) c_int {
    return libtes3mp_internal_GetWeatherNext();
}
pub export fn libtes3mp_GetWeatherQueued() callconv(.C) c_int {
    return libtes3mp_internal_GetWeatherQueued();
}
pub export fn libtes3mp_GetWeatherTransitionFactor() callconv(.C) f64 {
    return libtes3mp_internal_GetWeatherTransitionFactor();
}

pub export fn libtes3mp_GetMapTileCellX(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetMapTileCellX(index);
}
pub export fn libtes3mp_GetMapTileCellY(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetMapTileCellY(index);
}

pub export fn libtes3mp_GetClientGlobalId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetClientGlobalId(index);
}
pub export fn libtes3mp_GetClientGlobalVariableType(index: c_uint) callconv(.C) c_ushort {
    return libtes3mp_internal_GetClientGlobalVariableType(index);
}
pub export fn libtes3mp_GetClientGlobalIntValue(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetClientGlobalIntValue(index);
}
pub export fn libtes3mp_GetClientGlobalFloatValue(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetClientGlobalFloatValue(index);
}

pub export fn libtes3mp_SetAuthorityRegion(authorityRegion: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetAuthorityRegion(authorityRegion);
}

pub export fn libtes3mp_SetWeatherRegion(region: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetWeatherRegion(region);
}
pub export fn libtes3mp_SetWeatherForceState(forceState: bool) callconv(.C) void {
    return libtes3mp_internal_SetWeatherForceState(forceState);
}
pub export fn libtes3mp_SetWeatherCurrent(currentWeather: c_int) callconv(.C) void {
    return libtes3mp_internal_SetWeatherCurrent(currentWeather);
}
pub export fn libtes3mp_SetWeatherNext(nextWeather: c_int) callconv(.C) void {
    return libtes3mp_internal_SetWeatherNext(nextWeather);
}
pub export fn libtes3mp_SetWeatherQueued(queuedWeather: c_int) callconv(.C) void {
    return libtes3mp_internal_SetWeatherQueued(queuedWeather);
}
pub export fn libtes3mp_SetWeatherTransitionFactor(transitionFactor: f64) callconv(.C) void {
    return libtes3mp_internal_SetWeatherTransitionFactor(transitionFactor);
}

pub export fn libtes3mp_SetHour(hour: f64) callconv(.C) void {
    return libtes3mp_internal_SetHour(hour);
}
pub export fn libtes3mp_SetDay(day: c_int) callconv(.C) void {
    return libtes3mp_internal_SetDay(day);
}
pub export fn libtes3mp_SetMonth(month: c_int) callconv(.C) void {
    return libtes3mp_internal_SetMonth(month);
}
pub export fn libtes3mp_SetYear(year: c_int) callconv(.C) void {
    return libtes3mp_internal_SetYear(year);
}
pub export fn libtes3mp_SetDaysPassed(daysPassed: c_int) callconv(.C) void {
    return libtes3mp_internal_SetDaysPassed(daysPassed);
}
pub export fn libtes3mp_SetTimeScale(timeScale: f64) callconv(.C) void {
    return libtes3mp_internal_SetTimeScale(timeScale);
}

pub export fn libtes3mp_SetPlayerCollisionState(state: bool) callconv(.C) void {
    return libtes3mp_internal_SetPlayerCollisionState(state);
}
pub export fn libtes3mp_SetActorCollisionState(state: bool) callconv(.C) void {
    return libtes3mp_internal_SetActorCollisionState(state);
}
pub export fn libtes3mp_SetPlacedObjectCollisionState(state: bool) callconv(.C) void {
    return libtes3mp_internal_SetPlacedObjectCollisionState(state);
}
pub export fn libtes3mp_UseActorCollisionForPlacedObjects(useActorCollision: bool) callconv(.C) void {
    return libtes3mp_internal_UseActorCollisionForPlacedObjects(useActorCollision);
}

pub export fn libtes3mp_AddKill(refId: [*:0]const u8, number: c_int) callconv(.C) void {
    return libtes3mp_internal_AddKill(refId, number);
}
pub export fn libtes3mp_AddClientGlobalInteger(id: [*:0]const u8, intValue: c_int, variableType: c_uint) callconv(.C) void {
    return libtes3mp_internal_AddClientGlobalInteger(id, intValue, variableType);
}
pub export fn libtes3mp_AddClientGlobalFloat(id: [*:0]const u8, floatValue: f64) callconv(.C) void {
    return libtes3mp_internal_AddClientGlobalFloat(id, floatValue);
}
pub export fn libtes3mp_AddSynchronizedClientScriptId(scriptId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddSynchronizedClientScriptId(scriptId);
}
pub export fn libtes3mp_AddSynchronizedClientGlobalId(globalId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddSynchronizedClientGlobalId(globalId);
}
pub export fn libtes3mp_AddEnforcedCollisionRefId(refId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddEnforcedCollisionRefId(refId);
}
pub export fn libtes3mp_AddCellToReset(cellDescription: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddCellToReset(cellDescription);
}
pub export fn libtes3mp_AddDestinationOverride(oldCellDescription: [*:0]const u8, newCellDescription: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddDestinationOverride(oldCellDescription, newCellDescription);
}

pub export fn libtes3mp_ClearSynchronizedClientScriptIds() callconv(.C) void {
    return libtes3mp_internal_ClearSynchronizedClientScriptIds();
}
pub export fn libtes3mp_ClearSynchronizedClientGlobalIds() callconv(.C) void {
    return libtes3mp_internal_ClearSynchronizedClientGlobalIds();
}
pub export fn libtes3mp_ClearEnforcedCollisionRefIds() callconv(.C) void {
    return libtes3mp_internal_ClearEnforcedCollisionRefIds();
}
pub export fn libtes3mp_ClearCellsToReset() callconv(.C) void {
    return libtes3mp_internal_ClearCellsToReset();
}
pub export fn libtes3mp_ClearDestinationOverrides() callconv(.C) void {
    return libtes3mp_internal_ClearDestinationOverrides();
}

pub export fn libtes3mp_SaveMapTileImageFile(index: c_uint, filePath: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SaveMapTileImageFile(index, filePath);
}
pub export fn libtes3mp_LoadMapTileImageFile(cellX: c_int, cellY: c_int, filePath: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_LoadMapTileImageFile(cellX, cellY, filePath);
}

pub export fn libtes3mp_SendClientScriptGlobal(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendClientScriptGlobal(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendClientScriptSettings(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendClientScriptSettings(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendWorldKillCount(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendWorldKillCount(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendWorldMap(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendWorldMap(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendWorldTime(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendWorldTime(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendWorldWeather(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendWorldWeather(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendWorldCollisionOverride(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendWorldCollisionOverride(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendCellReset(pid: c_ushort, sendToOtherPlayers: bool) callconv(.C) void {
    return libtes3mp_internal_SendCellReset(pid, sendToOtherPlayers);
}
pub export fn libtes3mp_SendWorldDestinationOverride(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendWorldDestinationOverride(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendWorldRegionAuthority(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendWorldRegionAuthority(pid);
}
