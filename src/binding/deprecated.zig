//! These functions are deprecated in TES3MP's API, but it still expects DLLs it directly loads to
//! expose these bindings.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ReadLastActorList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_InitializeActorList: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_CopyLastActorListToStore: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_GetActorRefNumIndex: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetActorKillerRefNumIndex: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetActorRefNumIndex: *const fn (refNum: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var libtes3mp_internal_InitializeBookChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_InitializeTopicChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_InitializeFactionChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_InitializeQuickKeyChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_InitializeInventoryChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_AddItem: *const fn (pid: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64, soul: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str_uint_int_f64_str;

pub export var libtes3mp_internal_GetDeathReason: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetPlayerKillerRefNumIndex: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_ReadLastObjectList: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_ReadLastEvent: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_InitializeObjectList: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_InitializeEvent: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_CopyLastObjectListToStore: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_GetObjectChangesSize: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var libtes3mp_internal_GetEventAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetEventContainerSubAction: *const fn () callconv(.C) u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetObjectRefNumIndex: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetObjectSummonerRefNumIndex: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetEventCell: *const fn (cellDescription: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetEventAction: *const fn (action: u8) callconv(.C) void = &binding.ub_fn_u8;
pub export var libtes3mp_internal_SetEventConsoleCommand: *const fn (consoleCommand: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetObjectRefNumIndex: *const fn (refNum: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_AddWorldObject: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_InitializeJournalChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_DoesFileExist: *const fn (filePath: [*:0]const u8) callconv(.C) bool = &binding.ub_fn_str;
pub export var libtes3mp_internal_GetModDir: *const fn () callconv(.C) ?[*:0]const u8 = &binding.ub_fn;
pub export var libtes3mp_internal_GetPluginEnforcementState: *const fn () callconv(.C) bool = &binding.ub_fn;
pub export var libtes3mp_internal_SetPluginEnforcementState: *const fn (state: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_AddPluginHash: *const fn (pluginName: [*:0]const u8, checksumString: [*:0]const u8) callconv(.C) void = &binding.ub_fn_2str;

pub export var libtes3mp_internal_InitializeSpellbookChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_ReadLastWorldstate: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_CopyLastWorldstateToStore: *const fn () callconv(.C) void = &binding.ub_fn;
