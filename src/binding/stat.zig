//! Raw bindings to the functions declared by TES3MP's Stats.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_GetAttributeCount: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var libtes3mp_internal_GetSkillCount: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var libtes3mp_internal_GetAttributeId: *const fn (name: [*:0]const u8) callconv(.C) c_int = &binding.ub_fn_str;
pub export var libtes3mp_internal_GetSkillId: *const fn (name: [*:0]const u8) callconv(.C) c_int = &binding.ub_fn_str;
pub export var libtes3mp_internal_GetAttributeName: *const fn (attributeId: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetSkillName: *const fn (skillId: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetName: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetRace: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetHead: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetHair: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetIsMale: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetModel: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetBirthsign: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetLevel: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetLevelProgress: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetHealthBase: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetHealthCurrent: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetMagickaBase: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetMagickaCurrent: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetFatigueBase: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetFatigueCurrent: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetAttributeBase: *const fn (pid: c_ushort, attributeId: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_GetAttributeModifier: *const fn (pid: c_ushort, attributeId: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_GetAttributeDamage: *const fn (pid: c_ushort, attributeId: c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;

pub export var libtes3mp_internal_GetSkillBase: *const fn (pid: c_ushort, skillId: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_GetSkillModifier: *const fn (pid: c_ushort, skillId: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_GetSkillDamage: *const fn (pid: c_ushort, skillId: c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_GetSkillProgress: *const fn (pid: c_ushort, skillId: c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_GetSkillIncrease: *const fn (pid: c_ushort, attributeId: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;

pub export var libtes3mp_internal_GetBounty: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetName: *const fn (pid: c_ushort, name: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetRace: *const fn (pid: c_ushort, race: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetHead: *const fn (pid: c_ushort, head: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetHair: *const fn (pid: c_ushort, hairstyle: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetIsMale: *const fn (pid: c_ushort, state: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var libtes3mp_internal_SetModel: *const fn (pid: c_ushort, model: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetBirthsign: *const fn (pid: c_ushort, name: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetResetStats: *const fn (pid: c_ushort, resetStats: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;

pub export var libtes3mp_internal_SetLevel: *const fn (pid: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var libtes3mp_internal_SetLevelProgress: *const fn (pid: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;

pub export var libtes3mp_internal_SetHealthBase: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var libtes3mp_internal_SetHealthCurrent: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var libtes3mp_internal_SetMagickaBase: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var libtes3mp_internal_SetMagickaCurrent: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var libtes3mp_internal_SetFatigueBase: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var libtes3mp_internal_SetFatigueCurrent: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;

pub export var libtes3mp_internal_SetAttributeBase: *const fn (pid: c_ushort, attributeId: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_2ushort_int;
pub export var libtes3mp_internal_ClearAttributeModifier: *const fn (pid: c_ushort, attributeId: c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_SetAttributeDamage: *const fn (pid: c_ushort, attributeId: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_2ushort_f64;

pub export var libtes3mp_internal_SetSkillBase: *const fn (pid: c_ushort, skillId: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_2ushort_int;
pub export var libtes3mp_internal_ClearSkillModifier: *const fn (pid: c_ushort, skillId: c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_SetSkillDamage: *const fn (pid: c_ushort, skillId: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_2ushort_f64;
pub export var libtes3mp_internal_SetSkillProgress: *const fn (pid: c_ushort, skillId: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_2ushort_f64;
pub export var libtes3mp_internal_SetSkillIncrease: *const fn (pid: c_ushort, attributeId: c_uint, value: c_int) callconv(.C) void = &binding.ub_fn_ushort_uint_int;

pub export var libtes3mp_internal_SetBounty: *const fn (pid: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var libtes3mp_internal_SetCharGenStage: *const fn (pid: c_ushort, currentStage: c_int, endStage: c_int) callconv(.C) void = &binding.ub_fn_ushort_2int;

pub export var libtes3mp_internal_SendBaseInfo: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SendStatsDynamic: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SendAttributes: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SendSkills: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SendLevel: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SendBounty: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn libtes3mp_GetAttributeCount() callconv(.C) c_int {
    return libtes3mp_internal_GetAttributeCount();
}
pub export fn libtes3mp_GetSkillCount() callconv(.C) c_int {
    return libtes3mp_internal_GetSkillCount();
}
pub export fn libtes3mp_GetAttributeId(name: [*:0]const u8) callconv(.C) c_int {
    return libtes3mp_internal_GetAttributeId(name);
}
pub export fn libtes3mp_GetSkillId(name: [*:0]const u8) callconv(.C) c_int {
    return libtes3mp_internal_GetSkillId(name);
}
pub export fn libtes3mp_GetAttributeName(attributeId: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetAttributeName(attributeId);
}
pub export fn libtes3mp_GetSkillName(skillId: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetSkillName(skillId);
}

pub export fn libtes3mp_GetName(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetName(pid);
}
pub export fn libtes3mp_GetRace(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetRace(pid);
}
pub export fn libtes3mp_GetHead(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetHead(pid);
}
pub export fn libtes3mp_GetHair(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetHair(pid);
}
pub export fn libtes3mp_GetIsMale(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetIsMale(pid);
}
pub export fn libtes3mp_GetModel(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetModel(pid);
}
pub export fn libtes3mp_GetBirthsign(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetBirthsign(pid);
}

pub export fn libtes3mp_GetLevel(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetLevel(pid);
}
pub export fn libtes3mp_GetLevelProgress(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetLevelProgress(pid);
}

pub export fn libtes3mp_GetHealthBase(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetHealthBase(pid);
}
pub export fn libtes3mp_GetHealthCurrent(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetHealthCurrent(pid);
}

pub export fn libtes3mp_GetMagickaBase(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetMagickaBase(pid);
}
pub export fn libtes3mp_GetMagickaCurrent(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetMagickaCurrent(pid);
}

pub export fn libtes3mp_GetFatigueBase(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetFatigueBase(pid);
}
pub export fn libtes3mp_GetFatigueCurrent(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetFatigueCurrent(pid);
}

pub export fn libtes3mp_GetAttributeBase(pid: c_ushort, attributeId: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetAttributeBase(pid, attributeId);
}
pub export fn libtes3mp_GetAttributeModifier(pid: c_ushort, attributeId: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetAttributeModifier(pid, attributeId);
}
pub export fn libtes3mp_GetAttributeDamage(pid: c_ushort, attributeId: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetAttributeDamage(pid, attributeId);
}

pub export fn libtes3mp_GetSkillBase(pid: c_ushort, skillId: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetSkillBase(pid, skillId);
}
pub export fn libtes3mp_GetSkillModifier(pid: c_ushort, skillId: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetSkillModifier(pid, skillId);
}
pub export fn libtes3mp_GetSkillDamage(pid: c_ushort, skillId: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetSkillDamage(pid, skillId);
}
pub export fn libtes3mp_GetSkillProgress(pid: c_ushort, skillId: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetSkillProgress(pid, skillId);
}
pub export fn libtes3mp_GetSkillIncrease(pid: c_ushort, attributeId: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetSkillIncrease(pid, attributeId);
}

pub export fn libtes3mp_GetBounty(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetBounty(pid);
}

pub export fn libtes3mp_SetName(pid: c_ushort, name: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetName(pid, name);
}
pub export fn libtes3mp_SetRace(pid: c_ushort, race: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRace(pid, race);
}
pub export fn libtes3mp_SetHead(pid: c_ushort, head: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetHead(pid, head);
}
pub export fn libtes3mp_SetHair(pid: c_ushort, hairstyle: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetHair(pid, hairstyle);
}
pub export fn libtes3mp_SetIsMale(pid: c_ushort, state: c_int) callconv(.C) void {
    return libtes3mp_internal_SetIsMale(pid, state);
}
pub export fn libtes3mp_SetModel(pid: c_ushort, model: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetModel(pid, model);
}
pub export fn libtes3mp_SetBirthsign(pid: c_ushort, name: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetBirthsign(pid, name);
}
pub export fn libtes3mp_SetResetStats(pid: c_ushort, resetStats: bool) callconv(.C) void {
    return libtes3mp_internal_SetResetStats(pid, resetStats);
}

pub export fn libtes3mp_SetLevel(pid: c_ushort, value: c_int) callconv(.C) void {
    return libtes3mp_internal_SetLevel(pid, value);
}
pub export fn libtes3mp_SetLevelProgress(pid: c_ushort, value: c_int) callconv(.C) void {
    return libtes3mp_internal_SetLevelProgress(pid, value);
}

pub export fn libtes3mp_SetHealthBase(pid: c_ushort, value: f64) callconv(.C) void {
    return libtes3mp_internal_SetHealthBase(pid, value);
}
pub export fn libtes3mp_SetHealthCurrent(pid: c_ushort, value: f64) callconv(.C) void {
    return libtes3mp_internal_SetHealthCurrent(pid, value);
}
pub export fn libtes3mp_SetMagickaBase(pid: c_ushort, value: f64) callconv(.C) void {
    return libtes3mp_internal_SetMagickaBase(pid, value);
}
pub export fn libtes3mp_SetMagickaCurrent(pid: c_ushort, value: f64) callconv(.C) void {
    return libtes3mp_internal_SetMagickaCurrent(pid, value);
}
pub export fn libtes3mp_SetFatigueBase(pid: c_ushort, value: f64) callconv(.C) void {
    return libtes3mp_internal_SetFatigueBase(pid, value);
}
pub export fn libtes3mp_SetFatigueCurrent(pid: c_ushort, value: f64) callconv(.C) void {
    return libtes3mp_internal_SetFatigueCurrent(pid, value);
}

pub export fn libtes3mp_SetAttributeBase(pid: c_ushort, attributeId: c_ushort, value: c_int) callconv(.C) void {
    return libtes3mp_internal_SetAttributeBase(pid, attributeId, value);
}
pub export fn libtes3mp_ClearAttributeModifier(pid: c_ushort, attributeId: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearAttributeModifier(pid, attributeId);
}
pub export fn libtes3mp_SetAttributeDamage(pid: c_ushort, attributeId: c_ushort, value: f64) callconv(.C) void {
    return libtes3mp_internal_SetAttributeDamage(pid, attributeId, value);
}

pub export fn libtes3mp_SetSkillBase(pid: c_ushort, skillId: c_ushort, value: c_int) callconv(.C) void {
    return libtes3mp_internal_SetSkillBase(pid, skillId, value);
}
pub export fn libtes3mp_ClearSkillModifier(pid: c_ushort, skillId: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearSkillModifier(pid, skillId);
}
pub export fn libtes3mp_SetSkillDamage(pid: c_ushort, skillId: c_ushort, value: f64) callconv(.C) void {
    return libtes3mp_internal_SetSkillDamage(pid, skillId, value);
}
pub export fn libtes3mp_SetSkillProgress(pid: c_ushort, skillId: c_ushort, value: f64) callconv(.C) void {
    return libtes3mp_internal_SetSkillProgress(pid, skillId, value);
}
pub export fn libtes3mp_SetSkillIncrease(pid: c_ushort, attributeId: c_uint, value: c_int) callconv(.C) void {
    return libtes3mp_internal_SetSkillIncrease(pid, attributeId, value);
}

pub export fn libtes3mp_SetBounty(pid: c_ushort, value: c_int) callconv(.C) void {
    return libtes3mp_internal_SetBounty(pid, value);
}
pub export fn libtes3mp_SetCharGenStage(pid: c_ushort, currentStage: c_int, endStage: c_int) callconv(.C) void {
    return libtes3mp_internal_SetCharGenStage(pid, currentStage, endStage);
}

pub export fn libtes3mp_SendBaseInfo(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendBaseInfo(pid);
}

pub export fn libtes3mp_SendStatsDynamic(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendStatsDynamic(pid);
}
pub export fn libtes3mp_SendAttributes(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendAttributes(pid);
}
pub export fn libtes3mp_SendSkills(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendSkills(pid);
}
pub export fn libtes3mp_SendLevel(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendLevel(pid);
}
pub export fn libtes3mp_SendBounty(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendBounty(pid);
}
