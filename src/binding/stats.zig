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

pub export fn impl_GetAttributeCount() callconv(.C) c_int {
    return @call(.never_inline, zigGetAttributeCount, .{});
}
pub export fn impl_GetSkillCount() callconv(.C) c_int {
    return @call(.never_inline, zigGetSkillCount, .{});
}
pub export fn impl_GetAttributeId(name: c_str) callconv(.C) c_int {
    return @call(.never_inline, zigGetAttributeId, .{name});
}
pub export fn impl_GetSkillId(name: c_str) callconv(.C) c_int {
    return @call(.never_inline, zigGetSkillId, .{name});
}
pub export fn impl_GetAttributeName(attributeId: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetAttributeName, .{attributeId});
}
pub export fn impl_GetSkillName(skillId: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetSkillName, .{skillId});
}
pub export fn impl_GetName(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetName, .{pid});
}
pub export fn impl_SetName(pid: c_ushort, name: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetName, .{ pid, name });
}
pub export fn impl_GetRace(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetRace, .{pid});
}
pub export fn impl_SetRace(pid: c_ushort, race: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetRace, .{ pid, race });
}
pub export fn impl_GetHead(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetHead, .{pid});
}
pub export fn impl_SetHead(pid: c_ushort, head: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetHead, .{ pid, head });
}
pub export fn impl_GetHair(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetHair, .{pid});
}
pub export fn impl_SetHair(pid: c_ushort, hair: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetHair, .{ pid, hair });
}
pub export fn impl_GetIsMale(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetIsMale, .{pid});
}
pub export fn impl_SetIsMale(pid: c_ushort, isMale: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetIsMale, .{ pid, isMale });
}
pub export fn impl_GetModel(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetModel, .{pid});
}
pub export fn impl_SetModel(pid: c_ushort, model: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetModel, .{ pid, model });
}
pub export fn impl_GetBirthsign(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetBirthsign, .{pid});
}
pub export fn impl_SetBirthsign(pid: c_ushort, birthsign: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetBirthsign, .{ pid, birthsign });
}
pub export fn impl_GetBounty(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetBounty, .{pid});
}
pub export fn impl_SetBounty(pid: c_ushort, bounty: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetBounty, .{ pid, bounty });
}
pub export fn impl_SendBounty(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendBounty, .{pid});
}
pub export fn impl_SetResetStats(pid: c_ushort, state: bool) callconv(.C) void {
    return @call(.never_inline, zigSetResetStats, .{ pid, state });
}
pub export fn impl_SetCharGenStage(
    pid: c_ushort,
    currentStage: c_int,
    endStage: c_int,
) callconv(.C) void {
    return @call(.never_inline, zigSetCharGenStage, .{ pid, currentStage, endStage });
}
pub export fn impl_SendBaseInfo(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendBaseInfo, .{pid});
}
pub export fn impl_GetHealthBase(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetHealthBase, .{pid});
}
pub export fn impl_SetHealthBase(pid: c_ushort, healthBase: f64) callconv(.C) void {
    return @call(.never_inline, zigSetHealthBase, .{ pid, healthBase });
}
pub export fn impl_GetHealthCurrent(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetHealthCurrent, .{pid});
}
pub export fn impl_SetHealthCurrent(pid: c_ushort, healthCurrent: f64) callconv(.C) void {
    return @call(.never_inline, zigSetHealthCurrent, .{ pid, healthCurrent });
}
pub export fn impl_GetMagickaBase(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetMagickaBase, .{pid});
}
pub export fn impl_SetMagickaBase(pid: c_ushort, magickaBase: f64) callconv(.C) void {
    return @call(.never_inline, zigSetMagickaBase, .{ pid, magickaBase });
}
pub export fn impl_GetMagickaCurrent(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetMagickaCurrent, .{pid});
}
pub export fn impl_SetMagickaCurrent(pid: c_ushort, magickaCurrent: f64) callconv(.C) void {
    return @call(.never_inline, zigSetMagickaCurrent, .{ pid, magickaCurrent });
}
pub export fn impl_GetFatigueBase(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetFatigueBase, .{pid});
}
pub export fn impl_SetFatigueBase(pid: c_ushort, fatigueBase: f64) callconv(.C) void {
    return @call(.never_inline, zigSetFatigueBase, .{ pid, fatigueBase });
}
pub export fn impl_GetFatigueCurrent(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetFatigueCurrent, .{pid});
}
pub export fn impl_SetFatigueCurrent(pid: c_ushort, fatigueCurrent: f64) callconv(.C) void {
    return @call(.never_inline, zigSetFatigueCurrent, .{ pid, fatigueCurrent });
}
pub export fn impl_SendStatsDynamic(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendStatsDynamic, .{pid});
}
pub export fn impl_GetLevel(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetLevel, .{pid});
}
pub export fn impl_SetLevel(pid: c_ushort, level: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetLevel, .{ pid, level });
}
pub export fn impl_GetLevelProgress(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetLevelProgress, .{pid});
}
pub export fn impl_SetLevelProgress(pid: c_ushort, levelProgress: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetLevelProgress, .{ pid, levelProgress });
}
pub export fn impl_GetAttributeBase(pid: c_ushort, index: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetAttributeBase, .{ pid, index });
}
pub export fn impl_SetAttributeBase(
    pid: c_ushort,
    index: c_ushort,
    base: c_int,
) callconv(.C) void {
    return @call(.never_inline, zigSetAttributeBase, .{ pid, index, base });
}
pub export fn impl_GetAttributeModifier(pid: c_ushort, index: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetAttributeModifier, .{ pid, index });
}
pub export fn impl_ClearAttributeModifier(pid: c_ushort, index: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearAttributeModifier, .{ pid, index });
}
pub export fn impl_GetAttributeDamage(pid: c_ushort, index: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetAttributeDamage, .{ pid, index });
}
pub export fn impl_SetAttributeDamage(
    pid: c_ushort,
    index: c_ushort,
    damage: f64,
) callconv(.C) void {
    return @call(.never_inline, zigSetAttributeDamage, .{ pid, index, damage });
}
pub export fn impl_GetSkillBase(pid: c_ushort, index: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetSkillBase, .{ pid, index });
}
pub export fn impl_SetSkillBase(pid: c_ushort, index: c_ushort, base: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetSkillBase, .{ pid, index, base });
}
pub export fn impl_GetSkillModifier(pid: c_ushort, index: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetSkillModifier, .{ pid, index });
}
pub export fn impl_ClearSkillModifier(pid: c_ushort, index: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigClearSkillModifier, .{ pid, index });
}
pub export fn impl_GetSkillDamage(pid: c_ushort, index: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetSkillDamage, .{ pid, index });
}
pub export fn impl_SetSkillDamage(pid: c_ushort, index: c_ushort, damage: f64) callconv(.C) void {
    return @call(.never_inline, zigSetSkillDamage, .{ pid, index, damage });
}
pub export fn impl_GetSkillProgress(pid: c_ushort, index: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetSkillProgress, .{ pid, index });
}
pub export fn impl_SetSkillProgress(
    pid: c_ushort,
    index: c_ushort,
    progress: f64,
) callconv(.C) void {
    return @call(.never_inline, zigSetSkillProgress, .{ pid, index, progress });
}
pub export fn impl_GetSkillIncrease(pid: c_ushort, index: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetSkillIncrease, .{ pid, index });
}
pub export fn impl_SetSkillIncrease(
    pid: c_ushort,
    index: c_ushort,
    increase: c_int,
) callconv(.C) void {
    return @call(.never_inline, zigSetSkillIncrease, .{ pid, index, increase });
}
pub export fn impl_SendAttributes(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendAttributes, .{pid});
}
pub export fn impl_SendSkills(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendSkills, .{pid});
}
pub export fn impl_SendLevel(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendLevel, .{pid});
}
