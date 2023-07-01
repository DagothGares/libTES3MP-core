//! These functions are deprecated in TES3MP's API, but it still expects DLLs it directly loads to
//! expose these bindings.

const binding = @import("../binding.zig");

pub export var zigReadLastActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigInitializeActorList: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigCopyLastActorListToStore: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigGetActorRefNumIndex: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetActorKillerRefNumIndex: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetActorRefNumIndex: *const fn (refNum: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var zigInitializeBookChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigInitializeTopicChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigInitializeFactionChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigInitializeQuickKeyChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigInitializeInventoryChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigAddItem: *const fn (pid: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64, soul: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str_uint_int_f64_str;

pub export var zigGetDeathReason: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerRefNumIndex: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var zigReadLastObjectList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigReadLastEvent: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigInitializeObjectList: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigInitializeEvent: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigCopyLastObjectListToStore: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigGetObjectChangesSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetEventAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var zigGetEventContainerSubAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var zigGetObjectRefNumIndex: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectSummonerRefNumIndex: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetEventCell: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetEventAction: *const fn (action: u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var zigSetEventConsoleCommand: *const fn (consoleCommand: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetObjectRefNumIndex: *const fn (refNum: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigAddWorldObject: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigInitializeJournalChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigDoesFileExist: *const fn (filePath: [*:0]const u8) callconv(.C) bool = &binding.ub_fn_str;
pub export var zigGetModDir: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var zigGetPluginEnforcementState: *const fn () callconv(.C) bool = &binding.ub_fn;
pub export var zigSetPluginEnforcementState: *const fn (state: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigAddPluginHash: *const fn (pluginName: [*:0]const u8, checksumString: [*:0]const u8) callconv(.C) void = &binding.ub_fn_2str;

pub export var zigInitializeSpellbookChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigReadLastWorldstate: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigCopyLastWorldstateToStore: *const fn () callconv(.C) void = &binding.ub_fn;
