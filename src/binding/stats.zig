//! Raw bindings to the functions declared by TES3MP's Stats.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

// Constant functions
// returns 8 in 0.8.1
pub export var zigGetAttributeCount: *const fn () callconv(.C) c_int = &binding.ub_fn;
// Returns 27 in 0.8.1
pub export var zigGetSkillCount: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigGetAttributeId: *const fn (c_str) callconv(.C) c_int = &binding.ub_fn_str;
pub export var zigGetSkillId: *const fn (c_str) callconv(.C) c_int = &binding.ub_fn_str;
pub export var zigGetAttributeName: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigGetSkillName: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;

// Base functions
pub export var zigGetName: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetName: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetRace: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetRace: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetHead: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetHead: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetHair: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetHair: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetIsMale: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigSetIsMale: *const fn (c_ushort, c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigGetModel: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetModel: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetBirthsign: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetBirthsign: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetBounty: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigSetBounty: *const fn (c_ushort, c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigSendBounty: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSetResetStats: *const fn (c_ushort, bool) callconv(.C) void = &binding.ub_fn_ushort_bool;
pub export var zigSetCharGenStage: *const fn (c_ushort, c_int, c_int) callconv(.C) void = &binding.ub_fn_ushort_2int;
pub export var zigSendBaseInfo: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// StatsDynamic functions
pub export var zigGetHealthBase: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetHealthBase: *const fn (c_ushort, f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigGetHealthCurrent: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetHealthCurrent: *const fn (c_ushort, f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigGetMagickaBase: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetMagickaBase: *const fn (c_ushort, f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigGetMagickaCurrent: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetMagickaCurrent: *const fn (c_ushort, f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigGetFatigueBase: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetFatigueBase: *const fn (c_ushort, f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigGetFatigueCurrent: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetFatigueCurrent: *const fn (c_ushort, f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigSendStatsDynamic: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Progress functions
pub export var zigGetLevel: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigSetLevel: *const fn (c_ushort, c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigGetLevelProgress: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigSetLevelProgress: *const fn (c_ushort, c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigGetAttributeBase: *const fn (c_ushort, c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigSetAttributeBase: *const fn (c_ushort, c_ushort, c_int) callconv(.C) void = &binding.ub_fn_2ushort_int;
pub export var zigGetAttributeModifier: *const fn (c_ushort, c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigClearAttributeModifier: *const fn (c_ushort, c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;
pub export var zigGetAttributeDamage: *const fn (c_ushort, c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;
pub export var zigSetAttributeDamage: *const fn (c_ushort, c_ushort, f64) callconv(.C) void = &binding.ub_fn_2ushort_f64;
pub export var zigGetSkillBase: *const fn (c_ushort, c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigSetSkillBase: *const fn (c_ushort, c_ushort, c_int) callconv(.C) void = &binding.ub_fn_2ushort_int;
pub export var zigGetSkillModifier: *const fn (c_ushort, c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigClearSkillModifier: *const fn (c_ushort, c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigGetSkillDamage: *const fn (c_ushort, c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;
pub export var zigSetSkillDamage: *const fn (c_ushort, c_ushort, f64) callconv(.C) void = &binding.ub_fn_2ushort_f64;
pub export var zigGetSkillProgress: *const fn (c_ushort, c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;
pub export var zigSetSkillProgress: *const fn (c_ushort, c_ushort, f64) callconv(.C) void = &binding.ub_fn_2ushort_f64;
pub export var zigGetSkillIncrease: *const fn (c_ushort, c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigSetSkillIncrease: *const fn (c_ushort, c_ushort, c_int) callconv(.C) void = &binding.ub_fn_2ushort_int;
pub export var zigSendAttributes: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSendSkills: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSendLevel: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
