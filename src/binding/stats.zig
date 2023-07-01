//! Raw bindings to the functions declared by TES3MP's Stats.hpp file.

const binding = @import("../binding.zig");

pub export var zigGetAttributeCount: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigGetSkillCount: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigGetAttributeId: *const fn (name: [*:0]const u8) callconv(.C) c_int = &binding.ub_fn_str;
pub export var zigGetSkillId: *const fn (name: [*:0]const u8) callconv(.C) c_int = &binding.ub_fn_str;
pub export var zigGetAttributeName: *const fn (attributeId: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetSkillName: *const fn (skillId: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;

pub export var zigGetName: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetRace: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetHead: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetHair: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetIsMale: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetModel: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetBirthsign: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;

pub export var zigGetLevel: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetLevelProgress: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;

pub export var zigGetHealthBase: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetHealthCurrent: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;

pub export var zigGetMagickaBase: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMagickaCurrent: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;

pub export var zigGetFatigueBase: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetFatigueCurrent: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;

pub export var zigGetAttributeBase: *const fn (pid: c_ushort, attributeId: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigGetAttributeModifier: *const fn (pid: c_ushort, attributeId: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigGetAttributeDamage: *const fn (pid: c_ushort, attributeId: c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;

pub export var zigGetSkillBase: *const fn (pid: c_ushort, skillId: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigGetSkillModifier: *const fn (pid: c_ushort, skillId: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigGetSkillDamage: *const fn (pid: c_ushort, skillId: c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;
pub export var zigGetSkillProgress: *const fn (pid: c_ushort, skillId: c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;
pub export var zigGetSkillIncrease: *const fn (pid: c_ushort, attributeId: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;

pub export var zigGetBounty: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;

pub export var zigSetName: *const fn (pid: c_ushort, name: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetRace: *const fn (pid: c_ushort, race: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetHead: *const fn (pid: c_ushort, head: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetHair: *const fn (pid: c_ushort, hairstyle: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetIsMale: *const fn (pid: c_ushort, state: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigSetModel: *const fn (pid: c_ushort, model: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetBirthsign: *const fn (pid: c_ushort, name: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetResetStats: *const fn (pid: c_ushort, resetStats: bool) callconv(.C) void = &binding.ub_fn_ushort_bool;

pub export var zigSetLevel: *const fn (pid: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigSetLevelProgress: *const fn (pid: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;

pub export var zigSetHealthBase: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigSetHealthCurrent: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigSetMagickaBase: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigSetMagickaCurrent: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigSetFatigueBase: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;
pub export var zigSetFatigueCurrent: *const fn (pid: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_ushort_f64;

pub export var zigSetAttributeBase: *const fn (pid: c_ushort, attributeId: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_2ushort_int;
pub export var zigClearAttributeModifier: *const fn (pid: c_ushort, attributeId: c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;
pub export var zigSetAttributeDamage: *const fn (pid: c_ushort, attributeId: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_2ushort_f64;

pub export var zigSetSkillBase: *const fn (pid: c_ushort, skillId: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_2ushort_int;
pub export var zigClearSkillModifier: *const fn (pid: c_ushort, skillId: c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;
pub export var zigSetSkillDamage: *const fn (pid: c_ushort, skillId: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_2ushort_f64;
pub export var zigSetSkillProgress: *const fn (pid: c_ushort, skillId: c_ushort, value: f64) callconv(.C) void = &binding.ub_fn_2ushort_f64;
pub export var zigSetSkillIncrease: *const fn (pid: c_ushort, attributeId: c_uint, value: c_int) callconv(.C) void = &binding.ub_fn_ushort_uint_int;

pub export var zigSetBounty: *const fn (pid: c_ushort, value: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigSetCharGenStage: *const fn (pid: c_ushort, currentStage: c_int, endStage: c_int) callconv(.C) void = &binding.ub_fn_ushort_2int;

pub export var zigSendBaseInfo: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var zigSendStatsDynamic: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSendAttributes: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSendSkills: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSendLevel: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSendBounty: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn impl_GetAttributeCount() callconv(.C) c_int {
    return @call(.never_inline, zigGetAttributeCount, .{});
}
pub export fn impl_GetSkillCount() callconv(.C) c_int {
    return @call(.never_inline, zigGetSkillCount, .{});
}
pub export fn impl_GetAttributeId(name: [*:0]const u8) callconv(.C) c_int {
    return @call(.never_inline, zigGetAttributeId, .{name});
}
pub export fn impl_GetSkillId(name: [*:0]const u8) callconv(.C) c_int {
    return @call(.never_inline, zigGetSkillId, .{name});
}
pub export fn impl_GetAttributeName(attributeId: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetAttributeName, .{attributeId});
}
pub export fn impl_GetSkillName(skillId: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetSkillName, .{skillId});
}

pub export fn impl_GetName(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetName, .{pid});
}
pub export fn impl_GetRace(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetRace, .{pid});
}
pub export fn impl_GetHead(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetHead, .{pid});
}
pub export fn impl_GetHair(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetHair, .{pid});
}
pub export fn impl_GetIsMale(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetIsMale, .{pid});
}
pub export fn impl_GetModel(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetModel, .{pid});
}
pub export fn impl_GetBirthsign(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetBirthsign, .{pid});
}

pub export fn impl_GetLevel(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetLevel, .{pid});
}
pub export fn impl_GetLevelProgress(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetLevelProgress, .{pid});
}

pub export fn impl_GetHealthBase(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetHealthBase, .{pid});
}
pub export fn impl_GetHealthCurrent(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetHealthCurrent, .{pid});
}

pub export fn impl_GetMagickaBase(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetMagickaBase, .{pid});
}
pub export fn impl_GetMagickaCurrent(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetMagickaCurrent, .{pid});
}

pub export fn impl_GetFatigueBase(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetFatigueBase, .{pid});
}
pub export fn impl_GetFatigueCurrent(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetFatigueCurrent, .{pid});
}

pub export fn impl_GetAttributeBase(pid: c_ushort, attributeId: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetAttributeBase, .{ pid, attributeId });
}
pub export fn impl_GetAttributeModifier(pid: c_ushort, attributeId: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetAttributeModifier, .{ pid, attributeId });
}
pub export fn impl_GetAttributeDamage(pid: c_ushort, attributeId: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetAttributeDamage, .{ pid, attributeId });
}

pub export fn impl_GetSkillBase(pid: c_ushort, skillId: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetSkillBase, .{ pid, skillId });
}
pub export fn impl_GetSkillModifier(pid: c_ushort, skillId: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetSkillModifier, .{ pid, skillId });
}
pub export fn impl_GetSkillDamage(pid: c_ushort, skillId: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetSkillDamage, .{ pid, skillId });
}
pub export fn impl_GetSkillProgress(pid: c_ushort, skillId: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetSkillProgress, .{ pid, skillId });
}
pub export fn impl_GetSkillIncrease(pid: c_ushort, attributeId: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetSkillIncrease, .{ pid, attributeId });
}

pub export fn impl_GetBounty(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetBounty, .{pid});
}

pub export fn impl_SetName(pid: c_ushort, name: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetName, .{ pid, name });
}
pub export fn impl_SetRace(pid: c_ushort, race: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRace, .{ pid, race });
}
pub export fn impl_SetHead(pid: c_ushort, head: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetHead, .{ pid, head });
}
pub export fn impl_SetHair(pid: c_ushort, hairstyle: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetHair, .{ pid, hairstyle });
}
pub export fn impl_SetIsMale(pid: c_ushort, state: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetIsMale, .{ pid, state });
}
pub export fn impl_SetModel(pid: c_ushort, model: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetModel, .{ pid, model });
}
pub export fn impl_SetBirthsign(pid: c_ushort, name: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetBirthsign, .{ pid, name });
}
pub export fn impl_SetResetStats(pid: c_ushort, resetStats: bool) callconv(.C) void {
    return @call(.never_inline, zigSetResetStats, .{ pid, resetStats });
}

pub export fn impl_SetLevel(pid: c_ushort, value: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetLevel, .{ pid, value });
}
pub export fn impl_SetLevelProgress(pid: c_ushort, value: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetLevelProgress, .{ pid, value });
}

pub export fn impl_SetHealthBase(pid: c_ushort, value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetHealthBase, .{ pid, value });
}
pub export fn impl_SetHealthCurrent(pid: c_ushort, value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetHealthCurrent, .{ pid, value });
}
pub export fn impl_SetMagickaBase(pid: c_ushort, value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetMagickaBase, .{ pid, value });
}
pub export fn impl_SetMagickaCurrent(pid: c_ushort, value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetMagickaCurrent, .{ pid, value });
}
pub export fn impl_SetFatigueBase(pid: c_ushort, value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetFatigueBase, .{ pid, value });
}
pub export fn impl_SetFatigueCurrent(pid: c_ushort, value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetFatigueCurrent, .{ pid, value });
}

pub export fn impl_SetAttributeBase(pid: c_ushort, attributeId: c_ushort, value: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetAttributeBase, .{ pid, attributeId, value });
}
pub export fn impl_ClearAttributeModifier(pid: c_ushort, attributeId: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearAttributeModifier, .{ pid, attributeId });
}
pub export fn impl_SetAttributeDamage(pid: c_ushort, attributeId: c_ushort, value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetAttributeDamage, .{ pid, attributeId, value });
}

pub export fn impl_SetSkillBase(pid: c_ushort, skillId: c_ushort, value: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetSkillBase, .{ pid, skillId, value });
}
pub export fn impl_ClearSkillModifier(pid: c_ushort, skillId: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearSkillModifier, .{ pid, skillId });
}
pub export fn impl_SetSkillDamage(pid: c_ushort, skillId: c_ushort, value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetSkillDamage, .{ pid, skillId, value });
}
pub export fn impl_SetSkillProgress(pid: c_ushort, skillId: c_ushort, value: f64) callconv(.C) void {
    return @call(.never_inline, zigSetSkillProgress, .{ pid, skillId, value });
}
pub export fn impl_SetSkillIncrease(pid: c_ushort, attributeId: c_uint, value: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetSkillIncrease, .{ pid, attributeId, value });
}

pub export fn impl_SetBounty(pid: c_ushort, value: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetBounty, .{ pid, value });
}
pub export fn impl_SetCharGenStage(pid: c_ushort, currentStage: c_int, endStage: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetCharGenStage, .{ pid, currentStage, endStage });
}

pub export fn impl_SendBaseInfo(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendBaseInfo, .{pid});
}

pub export fn impl_SendStatsDynamic(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendStatsDynamic, .{pid});
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
pub export fn impl_SendBounty(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendBounty, .{pid});
}
