//! Raw bindings for the functions declared by TES3MP's Server.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigLogMessage: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigLogAppend: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigStopServer: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigKick: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigBanAddress: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigUnbanAddress: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigDoesFilePathExist: *const fn (c_str) callconv(.C) bool = &binding.ub_fn_str;
pub export var zigGetCaseInsensitiveFilename: *const fn (c_str, c_str) callconv(.C) c_str = &binding.ub_fn_2str;
pub export var zigGetDataPath: *const fn () callconv(.C) c_str = &binding.ub_fn;
pub export var zigGetMillisecondsSinceServerStart: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetOperatingSystemType: *const fn () callconv(.C) c_str = &binding.ub_fn;
pub export var zigGetArchitectureType: *const fn () callconv(.C) c_str = &binding.ub_fn;
pub export var zigGetServerVersion: *const fn () callconv(.C) c_str = &binding.ub_fn;
pub export var zigGetProtocolVersion: *const fn () callconv(.C) c_str = &binding.ub_fn;
pub export var zigGetAvgPing: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetIP: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigGetPort: *const fn () callconv(.C) c_ushort = &binding.ub_fn;
pub export var zigGetMaxPlayers: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigHasPassword: *const fn () callconv(.C) bool = &binding.ub_fn;
pub export var zigSetServerPassword: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigAddDataFileRequirement: *const fn (c_str, c_str) callconv(.C) void = &binding.ub_fn_2str;
pub export var zigGetDataFileEnforcementState: *const fn () callconv(.C) bool = &binding.ub_fn;
pub export var zigSetDataFileEnforcementState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigGetScriptErrorIgnoringState: *const fn () callconv(.C) bool = &binding.ub_fn;
pub export var zigSetScriptErrorIgnoringState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetGameMode: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetHostname: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRuleString: *const fn (c_str, c_str) callconv(.C) void = &binding.ub_fn_2str;
pub export var zigSetRuleValue: *const fn (c_str, f64) callconv(.C) void = &binding.ub_fn_str_f64;

pub export fn impl_LogMessage(pid: c_ushort, message: c_str) callconv(.C) void {
    return @call(.never_inline, zigLogMessage, .{ pid, message });
}
pub export fn impl_LogAppend(pid: c_ushort, message: c_str) callconv(.C) void {
    return @call(.never_inline, zigLogAppend, .{ pid, message });
}
pub export fn impl_StopServer(code: c_int) callconv(.C) void {
    return @call(.never_inline, zigStopServer, .{code});
}
pub export fn impl_Kick(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigKick, .{pid});
}
pub export fn impl_BanAddress(ip: c_str) callconv(.C) void {
    return @call(.never_inline, zigBanAddress, .{ip});
}
pub export fn impl_UnbanAddress(ip: c_str) callconv(.C) void {
    return @call(.never_inline, zigUnbanAddress, .{ip});
}
pub export fn impl_DoesFilePathExist(filePath: c_str) callconv(.C) bool {
    return @call(.never_inline, zigDoesFilePathExist, .{filePath});
}
pub export fn impl_GetCaseInsensitiveFilename(
    folderPath: c_str,
    filename: c_str,
) callconv(.C) c_str {
    return @call(.never_inline, zigGetCaseInsensitiveFilename, .{ folderPath, filename });
}
pub export fn impl_GetDataPath() callconv(.C) c_str {
    return @call(.never_inline, zigGetDataPath, .{});
}
pub export fn impl_GetMillisecondsSinceServerStart() callconv(.C) c_uint {
    return @call(.never_inline, zigGetMillisecondsSinceServerStart, .{});
}
pub export fn impl_GetOperatingSystemType() callconv(.C) c_str {
    return @call(.never_inline, zigGetOperatingSystemType, .{});
}
pub export fn impl_GetArchitectureType() callconv(.C) c_str {
    return @call(.never_inline, zigGetArchitectureType, .{});
}
pub export fn impl_GetServerVersion() callconv(.C) c_str {
    return @call(.never_inline, zigGetServerVersion, .{});
}
pub export fn impl_GetProtocolVersion() callconv(.C) c_str {
    return @call(.never_inline, zigGetProtocolVersion, .{});
}
pub export fn impl_GetAvgPing(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetAvgPing, .{pid});
}
pub export fn impl_GetIP(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetIP, .{pid});
}
pub export fn impl_GetPort() callconv(.C) c_ushort {
    return @call(.never_inline, zigGetPort, .{});
}
pub export fn impl_GetMaxPlayers() callconv(.C) c_uint {
    return @call(.never_inline, zigGetMaxPlayers, .{});
}
pub export fn impl_HasPassword() callconv(.C) bool {
    return @call(.never_inline, zigHasPassword, .{});
}
pub export fn impl_SetServerPassword(password: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetServerPassword, .{password});
}
pub export fn impl_AddDataFileRequirement(
    dataFilename: c_str,
    checksumString: c_str,
) callconv(.C) void {
    return @call(.never_inline, zigAddDataFileRequirement, .{ dataFilename, checksumString });
}
pub export fn impl_GetDataFileEnforcementState() callconv(.C) bool {
    return @call(.never_inline, zigGetDataFileEnforcementState, .{});
}
pub export fn impl_SetDataFileEnforcementState(state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetDataFileEnforcementState, .{state});
}
pub export fn impl_GetScriptErrorIgnoringState() callconv(.C) bool {
    return @call(.never_inline, zigGetScriptErrorIgnoringState, .{});
}
pub export fn impl_SetScriptErrorIgnoringState(state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetScriptErrorIgnoringState, .{state});
}
pub export fn impl_SetGameMode(gameMode: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetGameMode, .{gameMode});
}
pub export fn impl_SetHostname(name: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetHostname, .{name});
}
pub export fn impl_SetRuleString(key: c_str, value: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetRuleString, .{ key, value });
}
pub export fn impl_SetRuleValue(key: c_str, value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRuleValue, .{ key, value });
}
