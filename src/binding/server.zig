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
