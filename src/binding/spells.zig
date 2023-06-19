//! Raw bindings to the functions declared by TES3MP's Spells.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

// Spellbook functions
pub export var zigClearSpellbookChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetSpellbookChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetSpellbookChangesAction: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigSetSpellbookChangesAction: *const fn (c_ushort, u8) callconv(.C) void = &binding.ub_fn_ushort_u8;
pub export var zigGetSpellId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigAddSpell: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSendSpellbookChanges: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// SpellsActive functions
pub export var zigClearSpellsActiveChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetSpellsActiveChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetSpellsActiveChangesAction: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigSetSpellsActiveChangesAction: *const fn (c_ushort, u8) callconv(.C) void = &binding.ub_fn_ushort_u8;
pub export var zigGetSpellsActiveId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveDisplayName: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveStackingState: *const fn (c_ushort, c_uint) callconv(.C) bool = &binding.ub_fn_ushort_uint;
pub export var zigAddSpellActive: *const fn (c_ushort, c_str, c_str, bool) callconv(.C) void = &binding.ub_fn_ushort_2str_bool;
pub export var zigDoesSpellsActiveHavePlayerCaster: *const fn (c_ushort, c_uint) callconv(.C) bool = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveCasterPid: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveCasterRefId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveCasterRefNum: *const fn (c_ushort, c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveCasterMpNum: *const fn (c_ushort, c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var zigSendSpellsActiveChanges: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// Cooldown functions
pub export var zigClearCooldownChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetCooldownChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetCooldownSpellId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigGetCooldownStartDay: *const fn (c_ushort, c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var zigGetCooldownStartHour: *const fn (c_ushort, c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_uint;
pub export var zigAddCooldownSpell: *const fn (c_ushort, c_str, c_uint, f64) callconv(.C) void = &binding.ub_fn_ushort_str_uint_f64;
pub export var zigSendCooldownChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// SpellActiveEffect functions
pub export var zigGetSpellsActiveEffectCount: *const fn (c_ushort, c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_uint;
pub export var zigGetSpellsActiveEffectId: *const fn (c_ushort, c_uint, c_uint) callconv(.C) c_uint = &binding.ub_fn_ushort_2uint;
pub export var zigGetSpellsActiveEffectArg: *const fn (c_ushort, c_uint, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_2uint;
pub export var zigGetSpellsActiveEffectMagnitude: *const fn (c_ushort, c_uint, c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_2uint;
pub export var zigGetSpellsActiveEffectDuration: *const fn (c_ushort, c_uint, c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_2uint;
pub export var zigGetSpellsActiveEffectTimeLeft: *const fn (c_ushort, c_uint, c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_2uint;
pub export var zigAddSpellActiveEffect: *const fn (c_ushort, c_int, f64, f64, f64, c_int) callconv(.C) void = &binding.ub_fn_ushort_int_3f64_int;
