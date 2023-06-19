//! These functions are deprecated in TES3MP's API, but it still expects DLLs it directly loads to
//! expose these bindings.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigReadLastActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigInitializeActorList: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigCopyLastActorListToStore: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigGetActorRefNumIndex: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetActorKillerRefNumIndex: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetActorRefNumIndex: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigInitializeBookChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigInitializeTopicChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigInitializeFactionChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigInitializeQuickKeyChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigInitializeInventoryChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigAddItem: *const fn (c_ushort, c_str, c_uint, c_int, f64, c_str) callconv(.C) void = &binding.ub_fn_ushort_str_uint_int_f64_str;
pub export var zigGetDeathReason: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerRefNumIndex: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigReadLastObjectList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigReadLastEvent: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigInitializeObjectList: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigInitializeEvent: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigCopyLastObjectListToStore: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigGetObjectChangesSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetEventAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var zigGetEventContainerSubAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var zigGetObjectRefNumIndex: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigGetObjectSummonerRefNumIndex: *const fn (c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var zigSetEventCell: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetEventAction: *const fn (u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var zigSetEventConsoleCommand: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetObjectRefNumIndex: *const fn (c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigAddWorldObject: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigInitializeJournalChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigDoesFileExist: *const fn (c_str) callconv(.C) bool = &binding.ub_fn_str;
pub export var zigGetModDir: *const fn () callconv(.C) c_str = &binding.ub_fn;
pub export var zigGetPluginEnforcementState: *const fn () callconv(.C) bool = &binding.ub_fn;
pub export var zigSetPluginEnforcementState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigAddPluginHash: *const fn (c_str, c_str) callconv(.C) void = &binding.ub_fn_2str;
pub export var zigInitializeSpellbookChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigReadLastWorldstate: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigCopyLastWorldstateToStore: *const fn () callconv(.C) void = &binding.ub_fn;
