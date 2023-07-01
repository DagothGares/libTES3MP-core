//! Raw bindings for the functions declared by TES3MP's RecordsDynamic.hpp file.
// I have to be honest, I don't feel like formatting these so they're below the 100 line limit.
// Maybe later.

const binding = @import("../binding.zig");

pub export var zigClearRecords: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigGetRecordType: *const fn () callconv(.C) c_ushort = &binding.ub_fn;
pub export var zigGetRecordCount: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var zigGetRecordEffectCount: *const fn (recordIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;

pub export var zigGetRecordId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetRecordBaseId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;

pub export var zigGetRecordSubtype: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetRecordName: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetRecordModel: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetRecordIcon: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetRecordScript: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetRecordEnchantmentId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var zigGetRecordEnchantmentCharge: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;

pub export var zigGetRecordAutoCalc: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetRecordCharge: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetRecordCost: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetRecordFlags: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetRecordValue: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var zigGetRecordWeight: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var zigGetRecordQuantity: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;

pub export var zigGetRecordEffectId: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var zigGetRecordEffectAttribute: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigGetRecordEffectSkill: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigGetRecordEffectRangeType: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var zigGetRecordEffectArea: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigGetRecordEffectDuration: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigGetRecordEffectMagnitudeMax: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var zigGetRecordEffectMagnitudeMin: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;

pub export var zigSetRecordType: *const fn (type: c_uint) callconv(.C) void = &binding.ub_fn_uint;

pub export var zigSetRecordId: *const fn (id: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordBaseId: *const fn (baseId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordInventoryBaseId: *const fn (inventoryBaseId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var zigSetRecordSubtype: *const fn (subtype: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetRecordName: *const fn (name: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordModel: *const fn (model: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordIcon: *const fn (icon: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordScript: *const fn (script: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordEnchantmentId: *const fn (enchantmentId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordEnchantmentCharge: *const fn (enchantmentCharge: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var zigSetRecordAutoCalc: *const fn (autoCalc: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordCharge: *const fn (charge: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordCost: *const fn (cost: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordFlags: *const fn (flags: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordValue: *const fn (value: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordWeight: *const fn (weight: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetRecordQuality: *const fn (quality: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetRecordUses: *const fn (uses: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordTime: *const fn (time: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordRadius: *const fn (radius: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordColor: *const fn (red: c_uint, green: c_uint, blue: c_uint) callconv(.C) void = &binding.ub_fn_3uint;

pub export var zigSetRecordArmorRating: *const fn (armorRating: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordHealth: *const fn (health: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var zigSetRecordDamageChop: *const fn (minDamage: c_uint, maxDamage: c_uint) callconv(.C) void = &binding.ub_fn_2uint;
pub export var zigSetRecordDamageSlash: *const fn (minDamage: c_uint, maxDamage: c_uint) callconv(.C) void = &binding.ub_fn_2uint;
pub export var zigSetRecordDamageThrust: *const fn (minDamage: c_uint, maxDamage: c_uint) callconv(.C) void = &binding.ub_fn_2uint;
pub export var zigSetRecordReach: *const fn (reach: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetRecordSpeed: *const fn (speed: f64) callconv(.C) void = &binding.ub_fn_f64;

pub export var zigSetRecordKeyState: *const fn (keyState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetRecordScrollState: *const fn (scrollState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigSetRecordSkillId: *const fn (skillId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordText: *const fn (text: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var zigSetRecordHair: *const fn (hair: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordHead: *const fn (head: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordGender: *const fn (gender: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetRecordRace: *const fn (race: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordClass: *const fn (charClass: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordFaction: *const fn (faction: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var zigSetRecordScale: *const fn (scale: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetRecordBloodType: *const fn (bloodType: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordVampireState: *const fn (vampireState: bool) callconv(.C) void = &binding.ub_fn_bool;

pub export var zigSetRecordLevel: *const fn (level: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordMagicka: *const fn (magicka: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordFatigue: *const fn (fatigue: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var zigSetRecordSoulValue: *const fn (soulValue: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var zigSetRecordAIFight: *const fn (aiFight: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordAIFlee: *const fn (aiFlee: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordAIAlarm: *const fn (aiAlarm: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordAIServices: *const fn (aiServices: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var zigSetRecordSound: *const fn (sound: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordVolume: *const fn (volume: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetRecordMinRange: *const fn (minRange: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetRecordMaxRange: *const fn (maxRange: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetRecordOpenSound: *const fn (sound: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordCloseSound: *const fn (sound: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var zigSetRecordScriptText: *const fn (scriptText: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordIntegerVariable: *const fn (intVar: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordFloatVariable: *const fn (floatVar: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var zigSetRecordStringVariable: *const fn (stringVar: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var zigSetRecordIdByIndex: *const fn (index: c_uint, id: [*:0]const u8) callconv(.C) void = &binding.ub_fn_uint_str;
pub export var zigSetRecordEnchantmentIdByIndex: *const fn (index: c_uint, enchantmentId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_uint_str;

pub export var zigSetRecordEffectId: *const fn (effectId: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetRecordEffectAttribute: *const fn (attributeId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordEffectSkill: *const fn (skillId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordEffectRangeType: *const fn (rangeType: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetRecordEffectArea: *const fn (area: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordEffectDuration: *const fn (duration: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordEffectMagnitudeMax: *const fn (magnitudeMax: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var zigSetRecordEffectMagnitudeMin: *const fn (magnitudeMin: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var zigSetRecordBodyPartType: *const fn (partType: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigSetRecordBodyPartIdForMale: *const fn (partId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordBodyPartIdForFemale: *const fn (partId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var zigSetRecordInventoryItemId: *const fn (itemId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var zigSetRecordInventoryItemCount: *const fn (count: c_uint) callconv(.C) void = &binding.ub_fn_uint;

pub export var zigAddRecord: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigAddRecordEffect: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigAddRecordBodyPart: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var zigAddRecordInventoryItem: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var zigSendRecordDynamic: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// Instantiations

pub export fn impl_ClearRecords() callconv(.C) void {
    return @call(.never_inline, zigClearRecords, .{});
}

pub export fn impl_GetRecordType() callconv(.C) c_ushort {
    return @call(.never_inline, zigGetRecordType, .{});
}
pub export fn impl_GetRecordCount() callconv(.C) c_uint {
    return @call(.never_inline, zigGetRecordCount, .{});
}
pub export fn impl_GetRecordEffectCount(recordIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetRecordEffectCount, .{recordIndex});
}

pub export fn impl_GetRecordId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetRecordId, .{index});
}
pub export fn impl_GetRecordBaseId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetRecordBaseId, .{index});
}

pub export fn impl_GetRecordSubtype(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordSubtype, .{index});
}
pub export fn impl_GetRecordName(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetRecordName, .{index});
}
pub export fn impl_GetRecordModel(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetRecordModel, .{index});
}
pub export fn impl_GetRecordIcon(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetRecordIcon, .{index});
}
pub export fn impl_GetRecordScript(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetRecordScript, .{index});
}
pub export fn impl_GetRecordEnchantmentId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetRecordEnchantmentId, .{index});
}
pub export fn impl_GetRecordEnchantmentCharge(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordEnchantmentCharge, .{index});
}

pub export fn impl_GetRecordAutoCalc(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordAutoCalc, .{index});
}
pub export fn impl_GetRecordCharge(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordCharge, .{index});
}
pub export fn impl_GetRecordCost(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordCost, .{index});
}
pub export fn impl_GetRecordFlags(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordFlags, .{index});
}
pub export fn impl_GetRecordValue(index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordValue, .{index});
}
pub export fn impl_GetRecordWeight(index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetRecordWeight, .{index});
}
pub export fn impl_GetRecordQuantity(index: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetRecordQuantity, .{index});
}

pub export fn impl_GetRecordEffectId(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetRecordEffectId, .{ recordIndex, effectIndex });
}
pub export fn impl_GetRecordEffectAttribute(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordEffectAttribute, .{ recordIndex, effectIndex });
}
pub export fn impl_GetRecordEffectSkill(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordEffectSkill, .{ recordIndex, effectIndex });
}
pub export fn impl_GetRecordEffectRangeType(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint {
    return @call(.never_inline, zigGetRecordEffectRangeType, .{ recordIndex, effectIndex });
}
pub export fn impl_GetRecordEffectArea(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordEffectArea, .{ recordIndex, effectIndex });
}
pub export fn impl_GetRecordEffectDuration(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordEffectDuration, .{ recordIndex, effectIndex });
}
pub export fn impl_GetRecordEffectMagnitudeMax(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordEffectMagnitudeMax, .{ recordIndex, effectIndex });
}
pub export fn impl_GetRecordEffectMagnitudeMin(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetRecordEffectMagnitudeMin, .{ recordIndex, effectIndex });
}

pub export fn impl_SetRecordType(recordType: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordType, .{recordType});
}

pub export fn impl_SetRecordId(id: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordId, .{id});
}
pub export fn impl_SetRecordBaseId(baseId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordBaseId, .{baseId});
}
pub export fn impl_SetRecordInventoryBaseId(inventoryBaseId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordInventoryBaseId, .{inventoryBaseId});
}

pub export fn impl_SetRecordSubtype(subtype: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordSubtype, .{subtype});
}
pub export fn impl_SetRecordName(name: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordName, .{name});
}
pub export fn impl_SetRecordModel(model: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordModel, .{model});
}
pub export fn impl_SetRecordIcon(icon: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordIcon, .{icon});
}
pub export fn impl_SetRecordScript(script: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordScript, .{script});
}
pub export fn impl_SetRecordEnchantmentId(enchantmentId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEnchantmentId, .{enchantmentId});
}
pub export fn impl_SetRecordEnchantmentCharge(enchantmentCharge: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEnchantmentCharge, .{enchantmentCharge});
}

pub export fn impl_SetRecordAutoCalc(autoCalc: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordAutoCalc, .{autoCalc});
}
pub export fn impl_SetRecordCharge(charge: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordCharge, .{charge});
}
pub export fn impl_SetRecordCost(cost: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordCost, .{cost});
}
pub export fn impl_SetRecordFlags(flags: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordFlags, .{flags});
}
pub export fn impl_SetRecordValue(value: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordValue, .{value});
}
pub export fn impl_SetRecordWeight(weight: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRecordWeight, .{weight});
}
pub export fn impl_SetRecordQuality(quality: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRecordQuality, .{quality});
}
pub export fn impl_SetRecordUses(uses: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordUses, .{uses});
}
pub export fn impl_SetRecordTime(time: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordTime, .{time});
}
pub export fn impl_SetRecordRadius(radius: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordRadius, .{radius});
}
pub export fn impl_SetRecordColor(red: c_uint, green: c_uint, blue: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordColor, .{ red, green, blue });
}

pub export fn impl_SetRecordArmorRating(armorRating: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordArmorRating, .{armorRating});
}
pub export fn impl_SetRecordHealth(health: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordHealth, .{health});
}

pub export fn impl_SetRecordDamageChop(minDamage: c_uint, maxDamage: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordDamageChop, .{ minDamage, maxDamage });
}
pub export fn impl_SetRecordDamageSlash(minDamage: c_uint, maxDamage: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordDamageSlash, .{ minDamage, maxDamage });
}
pub export fn impl_SetRecordDamageThrust(minDamage: c_uint, maxDamage: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordDamageThrust, .{ minDamage, maxDamage });
}
pub export fn impl_SetRecordReach(reach: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRecordReach, .{reach});
}
pub export fn impl_SetRecordSpeed(speed: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRecordSpeed, .{speed});
}

pub export fn impl_SetRecordKeyState(keyState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetRecordKeyState, .{keyState});
}
pub export fn impl_SetRecordScrollState(scrollState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetRecordScrollState, .{scrollState});
}
pub export fn impl_SetRecordSkillId(skillId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordSkillId, .{skillId});
}
pub export fn impl_SetRecordText(text: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordText, .{text});
}

pub export fn impl_SetRecordHair(hair: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordHair, .{hair});
}
pub export fn impl_SetRecordHead(head: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordHead, .{head});
}
pub export fn impl_SetRecordGender(gender: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordGender, .{gender});
}
pub export fn impl_SetRecordRace(race: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordRace, .{race});
}
pub export fn impl_SetRecordClass(charClass: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordClass, .{charClass});
}
pub export fn impl_SetRecordFaction(faction: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordFaction, .{faction});
}

pub export fn impl_SetRecordScale(scale: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRecordScale, .{scale});
}
pub export fn impl_SetRecordBloodType(bloodType: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordBloodType, .{bloodType});
}
pub export fn impl_SetRecordVampireState(vampireState: bool) callconv(.C) void {
    return @call(.never_inline, zigSetRecordVampireState, .{vampireState});
}

pub export fn impl_SetRecordLevel(level: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordLevel, .{level});
}
pub export fn impl_SetRecordMagicka(magicka: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordMagicka, .{magicka});
}
pub export fn impl_SetRecordFatigue(fatigue: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordFatigue, .{fatigue});
}

pub export fn impl_SetRecordSoulValue(soulValue: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordSoulValue, .{soulValue});
}

pub export fn impl_SetRecordAIFight(aiFight: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordAIFight, .{aiFight});
}
pub export fn impl_SetRecordAIFlee(aiFlee: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordAIFlee, .{aiFlee});
}
pub export fn impl_SetRecordAIAlarm(aiAlarm: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordAIAlarm, .{aiAlarm});
}
pub export fn impl_SetRecordAIServices(aiServices: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordAIServices, .{aiServices});
}

pub export fn impl_SetRecordSound(sound: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordSound, .{sound});
}
pub export fn impl_SetRecordVolume(volume: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRecordVolume, .{volume});
}
pub export fn impl_SetRecordMinRange(minRange: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRecordMinRange, .{minRange});
}
pub export fn impl_SetRecordMaxRange(maxRange: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRecordMaxRange, .{maxRange});
}
pub export fn impl_SetRecordOpenSound(sound: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordOpenSound, .{sound});
}
pub export fn impl_SetRecordCloseSound(sound: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordCloseSound, .{sound});
}

pub export fn impl_SetRecordScriptText(scriptText: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordScriptText, .{scriptText});
}
pub export fn impl_SetRecordIntegerVariable(intVar: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordIntegerVariable, .{intVar});
}
pub export fn impl_SetRecordFloatVariable(floatVar: f64) callconv(.C) void {
    return @call(.never_inline, zigSetRecordFloatVariable, .{floatVar});
}
pub export fn impl_SetRecordStringVariable(stringVar: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordStringVariable, .{stringVar});
}

pub export fn impl_SetRecordIdByIndex(index: c_uint, id: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordIdByIndex, .{ index, id });
}
pub export fn impl_SetRecordEnchantmentIdByIndex(index: c_uint, enchantmentId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEnchantmentIdByIndex, .{ index, enchantmentId });
}

pub export fn impl_SetRecordEffectId(effectId: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEffectId, .{effectId});
}
pub export fn impl_SetRecordEffectAttribute(attributeId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEffectAttribute, .{attributeId});
}
pub export fn impl_SetRecordEffectSkill(skillId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEffectSkill, .{skillId});
}
pub export fn impl_SetRecordEffectRangeType(rangeType: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEffectRangeType, .{rangeType});
}
pub export fn impl_SetRecordEffectArea(area: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEffectArea, .{area});
}
pub export fn impl_SetRecordEffectDuration(duration: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEffectDuration, .{duration});
}
pub export fn impl_SetRecordEffectMagnitudeMax(magnitudeMax: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEffectMagnitudeMax, .{magnitudeMax});
}
pub export fn impl_SetRecordEffectMagnitudeMin(magnitudeMin: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetRecordEffectMagnitudeMin, .{magnitudeMin});
}

pub export fn impl_SetRecordBodyPartType(partType: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordBodyPartType, .{partType});
}
pub export fn impl_SetRecordBodyPartIdForMale(partId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordBodyPartIdForMale, .{partId});
}
pub export fn impl_SetRecordBodyPartIdForFemale(partId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordBodyPartIdForFemale, .{partId});
}

pub export fn impl_SetRecordInventoryItemId(itemId: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetRecordInventoryItemId, .{itemId});
}
pub export fn impl_SetRecordInventoryItemCount(count: c_uint) callconv(.C) void {
    return @call(.never_inline, zigSetRecordInventoryItemCount, .{count});
}

pub export fn impl_AddRecord() callconv(.C) void {
    return @call(.never_inline, zigAddRecord, .{});
}
pub export fn impl_AddRecordEffect() callconv(.C) void {
    return @call(.never_inline, zigAddRecordEffect, .{});
}
pub export fn impl_AddRecordBodyPart() callconv(.C) void {
    return @call(.never_inline, zigAddRecordBodyPart, .{});
}
pub export fn impl_AddRecordInventoryItem() callconv(.C) void {
    return @call(.never_inline, zigAddRecordInventoryItem, .{});
}

pub export fn impl_SendRecordDynamic(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendRecordDynamic, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
