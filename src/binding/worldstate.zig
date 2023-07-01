//! Raw bindings to the functions declared by TES3MP's Worldstate.hpp file.

const binding = @import("../binding.zig");

pub export var zigReadReceivedWorldstate: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigCopyReceivedWorldstateToStore: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigClearKillChanges: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigClearMapChanges: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigClearClientGlobals: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigGetKillChangesSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetMapChangesSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetClientGlobalsSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;

pub export var zigGetKillRefId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetKillNumber: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;

pub export var zigGetWeatherRegion: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var zigGetWeatherCurrent: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigGetWeatherNext: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigGetWeatherQueued: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigGetWeatherTransitionFactor: *const fn () callconv(.C) f64 = &binding.ub_fn;

pub export var zigGetMapTileCellX: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetMapTileCellY: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;

pub export var zigGetClientGlobalId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetClientGlobalVariableType: *const fn (index: c_uint) callconv(.C) c_ushort = &binding.ub_fn_uint;
pub export var zigGetClientGlobalIntValue: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetClientGlobalFloatValue: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;

pub export var zigSetAuthorityRegion: *const fn (authorityRegion: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var zigSetWeatherRegion: *const fn (region: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetWeatherForceState: *const fn (forceState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetWeatherCurrent: *const fn (currentWeather: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetWeatherNext: *const fn (nextWeather: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetWeatherQueued: *const fn (queuedWeather: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetWeatherTransitionFactor: *const fn (transitionFactor: f64) callconv(.C) void = &binding.ub_fn_f64;

pub export var zigSetHour: *const fn (hour: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetDay: *const fn (day: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetMonth: *const fn (month: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetYear: *const fn (year: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetDaysPassed: *const fn (daysPassed: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetTimeScale: *const fn (timeScale: f64) callconv(.C) void = &binding.ub_fn_f64;

pub export var zigSetPlayerCollisionState: *const fn (state: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetActorCollisionState: *const fn (state: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetPlacedObjectCollisionState: *const fn (state: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigUseActorCollisionForPlacedObjects: *const fn (useActorCollision: bool) callconv(.C) void = &binding.ub_fn_bool;

pub export var zigAddKill: *const fn (refId: [*:0]const u8, number: c_int) callconv(.C) void = &binding.ub_fn_str_int;
pub export var zigAddClientGlobalInteger: *const fn (id: [*:0]const u8, intValue: c_int, variableType: c_uint) callconv(.C) void = &binding.ub_fn_str_int_uint;
pub export var zigAddClientGlobalFloat: *const fn (id: [*:0]const u8, floatValue: f64) callconv(.C) void = &binding.ub_fn_str_f64;
pub export var zigAddSynchronizedClientScriptId: *const fn (scriptId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigAddSynchronizedClientGlobalId: *const fn (globalId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigAddEnforcedCollisionRefId: *const fn (refId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigAddCellToReset: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigAddDestinationOverride: *const fn (oldCellDescription: [*:0]const u8, newCellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_2str;

pub export var zigClearSynchronizedClientScriptIds: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigClearSynchronizedClientGlobalIds: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigClearEnforcedCollisionRefIds: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigClearCellsToReset: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigClearDestinationOverrides: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigSaveMapTileImageFile: *const fn (index: c_uint, filePath: [*:0]const u8) callconv(.C) void = &binding.ub_fn_uint_str;
pub export var zigLoadMapTileImageFile: *const fn (cellX: c_int, cellY: c_int, filePath: [*:0]const u8) callconv(.C) void = &binding.ub_fn_2int_str;

pub export var zigSendClientScriptGlobal: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendClientScriptSettings: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendWorldKillCount: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendWorldMap: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendWorldTime: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendWorldWeather: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendWorldCollisionOverride: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendCellReset: *const fn (pid: c_ushort, sendToOtherPlayers: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSendWorldDestinationOverride: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendWorldRegionAuthority: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn impl_ReadReceivedWorldstate() callconv(.C) void {
    return @call(.never_inline, zigReadReceivedWorldstate, .{});
}

pub export fn impl_CopyReceivedWorldstateToStore() callconv(.C) void {
    return @call(.never_inline, zigCopyReceivedWorldstateToStore, .{});
}

pub export fn impl_ClearKillChanges() callconv(.C) void {
    return @call(.never_inline, zigClearKillChanges, .{});
}
pub export fn impl_ClearMapChanges() callconv(.C) void {
    return @call(.never_inline, zigClearMapChanges, .{});
}
pub export fn impl_ClearClientGlobals() callconv(.C) void {
    return @call(.never_inline, zigClearClientGlobals, .{});
}

pub export fn impl_GetKillChangesSize() callconv(.C) c_uint {
    return @call(.never_inline, zigGetKillChangesSize, .{});
}
pub export fn impl_GetMapChangesSize() callconv(.C) c_uint {
    return @call(.never_inline, zigGetMapChangesSize, .{});
}
pub export fn impl_GetClientGlobalsSize() callconv(.C) c_uint {
    return @call(.never_inline, zigGetClientGlobalsSize, .{});
}

pub export fn impl_GetKillRefId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetKillRefId, .{index});
}
pub export fn impl_GetKillNumber(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetKillNumber, .{index});
}

pub export fn impl_GetWeatherRegion() callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetWeatherRegion, .{});
}
pub export fn impl_GetWeatherCurrent() callconv(.C) c_int {
    return @call(.never_inline, zigGetWeatherCurrent, .{});
}
pub export fn impl_GetWeatherNext() callconv(.C) c_int {
    return @call(.never_inline, zigGetWeatherNext, .{});
}
pub export fn impl_GetWeatherQueued() callconv(.C) c_int {
    return @call(.never_inline, zigGetWeatherQueued, .{});
}
pub export fn impl_GetWeatherTransitionFactor() callconv(.C) f64 {
    return @call(.never_inline, zigGetWeatherTransitionFactor, .{});
}

pub export fn impl_GetMapTileCellX(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetMapTileCellX, .{index});
}
pub export fn impl_GetMapTileCellY(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetMapTileCellY, .{index});
}

pub export fn impl_GetClientGlobalId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetClientGlobalId, .{index});
}
pub export fn impl_GetClientGlobalVariableType(index: c_uint) callconv(.C) c_ushort {
    return @call(.never_inline, zigGetClientGlobalVariableType, .{index});
}
pub export fn impl_GetClientGlobalIntValue(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetClientGlobalIntValue, .{index});
}
pub export fn impl_GetClientGlobalFloatValue(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetClientGlobalFloatValue, .{index});
}

pub export fn impl_SetAuthorityRegion(authorityRegion: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetAuthorityRegion, .{authorityRegion});
}

pub export fn impl_SetWeatherRegion(region: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetWeatherRegion, .{region});
}
pub export fn impl_SetWeatherForceState(forceState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetWeatherForceState, .{forceState});
}
pub export fn impl_SetWeatherCurrent(currentWeather: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetWeatherCurrent, .{currentWeather});
}
pub export fn impl_SetWeatherNext(nextWeather: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetWeatherNext, .{nextWeather});
}
pub export fn impl_SetWeatherQueued(queuedWeather: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetWeatherQueued, .{queuedWeather});
}
pub export fn impl_SetWeatherTransitionFactor(transitionFactor: f64) callconv(.C) void {
    return @call(.never_inline, zigSetWeatherTransitionFactor, .{transitionFactor});
}

pub export fn impl_SetHour(hour: f64) callconv(.C) void {
    return @call(.never_inline, zigSetHour, .{hour});
}
pub export fn impl_SetDay(day: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetDay, .{day});
}
pub export fn impl_SetMonth(month: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetMonth, .{month});
}
pub export fn impl_SetYear(year: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetYear, .{year});
}
pub export fn impl_SetDaysPassed(daysPassed: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetDaysPassed, .{daysPassed});
}
pub export fn impl_SetTimeScale(timeScale: f64) callconv(.C) void {
    return @call(.never_inline, zigSetTimeScale, .{timeScale});
}

pub export fn impl_SetPlayerCollisionState(state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetPlayerCollisionState, .{state});
}
pub export fn impl_SetActorCollisionState(state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetActorCollisionState, .{state});
}
pub export fn impl_SetPlacedObjectCollisionState(state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetPlacedObjectCollisionState, .{state});
}
pub export fn impl_UseActorCollisionForPlacedObjects(useActorCollision: bool) callconv(.C) void {
    return @call(.never_inline, zigUseActorCollisionForPlacedObjects, .{useActorCollision});
}

pub export fn impl_AddKill(refId: [*:0]const u8, number: c_int) callconv(.C) void {
    return @call(.never_inline, zigAddKill, .{ refId, number });
}
pub export fn impl_AddClientGlobalInteger(id: [*:0]const u8, intValue: c_int, variableType: c_uint) callconv(.C) void {
    return @call(.never_inline, zigAddClientGlobalInteger, .{ id, intValue, variableType });
}
pub export fn impl_AddClientGlobalFloat(id: [*:0]const u8, floatValue: f64) callconv(.C) void {
    return @call(.never_inline, zigAddClientGlobalFloat, .{ id, floatValue });
}
pub export fn impl_AddSynchronizedClientScriptId(scriptId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigAddSynchronizedClientScriptId, .{scriptId});
}
pub export fn impl_AddSynchronizedClientGlobalId(globalId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigAddSynchronizedClientGlobalId, .{globalId});
}
pub export fn impl_AddEnforcedCollisionRefId(refId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigAddEnforcedCollisionRefId, .{refId});
}
pub export fn impl_AddCellToReset(cellDescription: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigAddCellToReset, .{cellDescription});
}
pub export fn impl_AddDestinationOverride(oldCellDescription: [*:0]const u8, newCellDescription: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigAddDestinationOverride, .{ oldCellDescription, newCellDescription });
}

pub export fn impl_ClearSynchronizedClientScriptIds() callconv(.C) void {
    return @call(.never_inline, zigClearSynchronizedClientScriptIds, .{});
}
pub export fn impl_ClearSynchronizedClientGlobalIds() callconv(.C) void {
    return @call(.never_inline, zigClearSynchronizedClientGlobalIds, .{});
}
pub export fn impl_ClearEnforcedCollisionRefIds() callconv(.C) void {
    return @call(.never_inline, zigClearEnforcedCollisionRefIds, .{});
}
pub export fn impl_ClearCellsToReset() callconv(.C) void {
    return @call(.never_inline, zigClearCellsToReset, .{});
}
pub export fn impl_ClearDestinationOverrides() callconv(.C) void {
    return @call(.never_inline, zigClearDestinationOverrides, .{});
}

pub export fn impl_SaveMapTileImageFile(index: c_uint, filePath: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSaveMapTileImageFile, .{ index, filePath });
}
pub export fn impl_LoadMapTileImageFile(cellX: c_int, cellY: c_int, filePath: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigLoadMapTileImageFile, .{ cellX, cellY, filePath });
}

pub export fn impl_SendClientScriptGlobal(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendClientScriptGlobal, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendClientScriptSettings(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendClientScriptSettings, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendWorldKillCount(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendWorldKillCount, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendWorldMap(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendWorldMap, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendWorldTime(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendWorldTime, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendWorldWeather(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendWorldWeather, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendWorldCollisionOverride(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendWorldCollisionOverride, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendCellReset(pid: c_ushort, sendToOtherPlayers: bool) callconv(.C) void {
    return @call(.never_inline, zigSendCellReset, .{ pid, sendToOtherPlayers });
}
pub export fn impl_SendWorldDestinationOverride(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendWorldDestinationOverride, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendWorldRegionAuthority(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendWorldRegionAuthority, .{pid});
}
