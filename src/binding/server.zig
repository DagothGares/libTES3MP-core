//! Raw bindings for the functions declared by TES3MP's Server.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_LogMessage: *const fn (level: c_ushort, message: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_LogAppend: *const fn (level: c_ushort, message: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;

pub export var libtes3mp_internal_StopServer: *const fn (code: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var libtes3mp_internal_Kick: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_BanAddress: *const fn (ipAddress: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_UnbanAddress: *const fn (ipAddress: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_DoesFilePathExist: *const fn (filePath: [*:0]const u8) callconv(.C) bool = &binding.ub_fn_str;
pub export var libtes3mp_internal_GetCaseInsensitiveFilename: *const fn (folderPath: [*:0]const u8, filename: [*:0]const u8) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2str;
pub export var libtes3mp_internal_GetDataPath: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetMillisecondsSinceServerStart: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var libtes3mp_internal_GetOperatingSystemType: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetArchitectureType: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetServerVersion: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetProtocolVersion: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetAvgPing: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetIP: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetMaxPlayers: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var libtes3mp_internal_GetPort: *const fn () callconv(.C) c_ushort = &binding.ub_fn;
pub export var libtes3mp_internal_HasPassword: *const fn () callconv(.C) bool = &binding.ub_fn;
pub export var libtes3mp_internal_GetDataFileEnforcementState: *const fn () callconv(.C) bool = &binding.ub_fn;
pub export var libtes3mp_internal_GetScriptErrorIgnoringState: *const fn () callconv(.C) bool = &binding.ub_fn;

pub export var libtes3mp_internal_SetGameMode: *const fn (gameMode: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetHostname: *const fn (name: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetServerPassword: *const fn (password: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetDataFileEnforcementState: *const fn (state: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetScriptErrorIgnoringState: *const fn (state: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetRuleString: *const fn (key: [*:0]const u8, value: [*:0]const u8) callconv(.C) void = &binding.ub_fn_2str;
pub export var libtes3mp_internal_SetRuleValue: *const fn (key: [*:0]const u8, value: f64) callconv(.C) void = &binding.ub_fn_str_f64;

pub export var libtes3mp_internal_AddDataFileRequirement: *const fn (dataFilename: [*:0]const u8, checksumString: [*:0]const u8) callconv(.C) void = &binding.ub_fn_2str;

pub export fn libtes3mp_LogMessage(level: c_ushort, message: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_LogMessage(level, message);
}
pub export fn libtes3mp_LogAppend(level: c_ushort, message: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_LogAppend(level, message);
}

pub export fn libtes3mp_StopServer(code: c_int) callconv(.C) void {
    return libtes3mp_internal_StopServer(code);
}

pub export fn libtes3mp_Kick(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_Kick(pid);
}
pub export fn libtes3mp_BanAddress(ipAddress: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_BanAddress(ipAddress);
}
pub export fn libtes3mp_UnbanAddress(ipAddress: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_UnbanAddress(ipAddress);
}

pub export fn libtes3mp_DoesFilePathExist(filePath: [*:0]const u8) callconv(.C) bool {
    return libtes3mp_internal_DoesFilePathExist(filePath);
}
pub export fn libtes3mp_GetCaseInsensitiveFilename(folderPath: [*:0]const u8, filename: [*:0]const u8) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetCaseInsensitiveFilename(folderPath, filename);
}
pub export fn libtes3mp_GetDataPath() callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetDataPath();
}
pub export fn libtes3mp_GetMillisecondsSinceServerStart() callconv(.C) c_uint {
    return libtes3mp_internal_GetMillisecondsSinceServerStart();
}
pub export fn libtes3mp_GetOperatingSystemType() callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetOperatingSystemType();
}
pub export fn libtes3mp_GetArchitectureType() callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetArchitectureType();
}
pub export fn libtes3mp_GetServerVersion() callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetServerVersion();
}
pub export fn libtes3mp_GetProtocolVersion() callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetProtocolVersion();
}
pub export fn libtes3mp_GetAvgPing(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetAvgPing(pid);
}
pub export fn libtes3mp_GetIP(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetIP(pid);
}
pub export fn libtes3mp_GetMaxPlayers() callconv(.C) c_uint {
    return libtes3mp_internal_GetMaxPlayers();
}
pub export fn libtes3mp_GetPort() callconv(.C) c_ushort {
    return libtes3mp_internal_GetPort();
}
pub export fn libtes3mp_HasPassword() callconv(.C) bool {
    return libtes3mp_internal_HasPassword();
}
pub export fn libtes3mp_GetDataFileEnforcementState() callconv(.C) bool {
    return libtes3mp_internal_GetDataFileEnforcementState();
}
pub export fn libtes3mp_GetScriptErrorIgnoringState() callconv(.C) bool {
    return libtes3mp_internal_GetScriptErrorIgnoringState();
}

pub export fn libtes3mp_SetGameMode(gameMode: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetGameMode(gameMode);
}
pub export fn libtes3mp_SetHostname(name: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetHostname(name);
}
pub export fn libtes3mp_SetServerPassword(password: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetServerPassword(password);
}
pub export fn libtes3mp_SetDataFileEnforcementState(state: bool) callconv(.C) void {
    return libtes3mp_internal_SetDataFileEnforcementState(state);
}
pub export fn libtes3mp_SetScriptErrorIgnoringState(state: bool) callconv(.C) void {
    return libtes3mp_internal_SetScriptErrorIgnoringState(state);
}
pub export fn libtes3mp_SetRuleString(key: [*:0]const u8, value: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRuleString(key, value);
}
pub export fn libtes3mp_SetRuleValue(key: [*:0]const u8, value: f64) callconv(.C) void {
    return libtes3mp_internal_SetRuleValue(key, value);
}

pub export fn libtes3mp_AddDataFileRequirement(dataFilename: [*:0]const u8, checksumString: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddDataFileRequirement(dataFilename, checksumString);
}
