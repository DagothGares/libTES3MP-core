//! Raw bindings for the functions declared by TES3MP's RecordsDynamic.hpp file.
// I have to be honest, I don't feel like formatting these so they're below the 100 line limit.
// Maybe later.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ClearRecords: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_GetRecordType: *const fn () callconv(.C) c_ushort = &binding.ub_fn;
pub export var libtes3mp_internal_GetRecordCount: *const fn () callconv(.C) c_uint = &binding.ub_fn;
pub export var libtes3mp_internal_GetRecordEffectCount: *const fn (recordIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetRecordId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordBaseId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetRecordSubtype: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordName: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordModel: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordIcon: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordScript: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordEnchantmentId: *const fn (index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordEnchantmentCharge: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetRecordAutoCalc: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordCharge: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordCost: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordFlags: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordValue: *const fn (index: c_uint) callconv(.C) c_int = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordWeight: *const fn (index: c_uint) callconv(.C) f64 = &binding.ub_fn_uint;
pub export var libtes3mp_internal_GetRecordQuantity: *const fn (index: c_uint) callconv(.C) c_uint = &binding.ub_fn_uint;

pub export var libtes3mp_internal_GetRecordEffectId: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetRecordEffectAttribute: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetRecordEffectSkill: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetRecordEffectRangeType: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetRecordEffectArea: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetRecordEffectDuration: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetRecordEffectMagnitudeMax: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_GetRecordEffectMagnitudeMin: *const fn (recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_2uint;

pub export var libtes3mp_internal_SetRecordType: *const fn (recordType: c_uint) callconv(.C) void = &binding.ub_fn_uint;

pub export var libtes3mp_internal_SetRecordId: *const fn (id: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordBaseId: *const fn (baseId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordInventoryBaseId: *const fn (inventoryBaseId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_SetRecordSubtype: *const fn (subtype: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetRecordName: *const fn (name: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordModel: *const fn (model: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordIcon: *const fn (icon: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordScript: *const fn (script: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordEnchantmentId: *const fn (enchantmentId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordEnchantmentCharge: *const fn (enchantmentCharge: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var libtes3mp_internal_SetRecordAutoCalc: *const fn (autoCalc: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordCharge: *const fn (charge: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordCost: *const fn (cost: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordFlags: *const fn (flags: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordValue: *const fn (value: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordWeight: *const fn (weight: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetRecordQuality: *const fn (quality: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetRecordUses: *const fn (uses: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordTime: *const fn (time: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordRadius: *const fn (radius: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordColor: *const fn (red: c_uint, green: c_uint, blue: c_uint) callconv(.C) void = &binding.ub_fn_3uint;

pub export var libtes3mp_internal_SetRecordArmorRating: *const fn (armorRating: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordHealth: *const fn (health: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var libtes3mp_internal_SetRecordDamageChop: *const fn (minDamage: c_uint, maxDamage: c_uint) callconv(.C) void = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_SetRecordDamageSlash: *const fn (minDamage: c_uint, maxDamage: c_uint) callconv(.C) void = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_SetRecordDamageThrust: *const fn (minDamage: c_uint, maxDamage: c_uint) callconv(.C) void = &binding.ub_fn_2uint;
pub export var libtes3mp_internal_SetRecordReach: *const fn (reach: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetRecordSpeed: *const fn (speed: f64) callconv(.C) void = &binding.ub_fn_f64;

pub export var libtes3mp_internal_SetRecordKeyState: *const fn (keyState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetRecordScrollState: *const fn (scrollState: bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var libtes3mp_internal_SetRecordSkillId: *const fn (skillId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordText: *const fn (text: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_SetRecordHair: *const fn (hair: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordHead: *const fn (head: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordGender: *const fn (gender: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetRecordRace: *const fn (race: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordClass: *const fn (charClass: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordFaction: *const fn (faction: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_SetRecordScale: *const fn (scale: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetRecordBloodType: *const fn (bloodType: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordVampireState: *const fn (vampireState: bool) callconv(.C) void = &binding.ub_fn_bool;

pub export var libtes3mp_internal_SetRecordLevel: *const fn (level: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordMagicka: *const fn (magicka: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordFatigue: *const fn (fatigue: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var libtes3mp_internal_SetRecordSoulValue: *const fn (soulValue: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var libtes3mp_internal_SetRecordAIFight: *const fn (aiFight: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordAIFlee: *const fn (aiFlee: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordAIAlarm: *const fn (aiAlarm: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordAIServices: *const fn (aiServices: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var libtes3mp_internal_SetRecordSound: *const fn (sound: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordVolume: *const fn (volume: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetRecordMinRange: *const fn (minRange: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetRecordMaxRange: *const fn (maxRange: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetRecordOpenSound: *const fn (sound: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordCloseSound: *const fn (sound: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_SetRecordScriptText: *const fn (scriptText: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordIntegerVariable: *const fn (intVar: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordFloatVariable: *const fn (floatVar: f64) callconv(.C) void = &binding.ub_fn_f64;
pub export var libtes3mp_internal_SetRecordStringVariable: *const fn (stringVar: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_SetRecordIdByIndex: *const fn (index: c_uint, id: [*:0]const u8) callconv(.C) void = &binding.ub_fn_uint_str;
pub export var libtes3mp_internal_SetRecordEnchantmentIdByIndex: *const fn (index: c_uint, enchantmentId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_uint_str;

pub export var libtes3mp_internal_SetRecordEffectId: *const fn (effectId: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetRecordEffectAttribute: *const fn (attributeId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordEffectSkill: *const fn (skillId: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordEffectRangeType: *const fn (rangeType: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetRecordEffectArea: *const fn (area: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordEffectDuration: *const fn (duration: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordEffectMagnitudeMax: *const fn (magnitudeMax: c_int) callconv(.C) void = &binding.ub_fn_int;
pub export var libtes3mp_internal_SetRecordEffectMagnitudeMin: *const fn (magnitudeMin: c_int) callconv(.C) void = &binding.ub_fn_int;

pub export var libtes3mp_internal_SetRecordBodyPartType: *const fn (partType: c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var libtes3mp_internal_SetRecordBodyPartIdForMale: *const fn (partId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordBodyPartIdForFemale: *const fn (partId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;

pub export var libtes3mp_internal_SetRecordInventoryItemId: *const fn (itemId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_str;
pub export var libtes3mp_internal_SetRecordInventoryItemCount: *const fn (count: c_uint) callconv(.C) void = &binding.ub_fn_uint;

pub export var libtes3mp_internal_AddRecord: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_AddRecordEffect: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_AddRecordBodyPart: *const fn () callconv(.C) void = &binding.ub_fn;
pub export var libtes3mp_internal_AddRecordInventoryItem: *const fn () callconv(.C) void = &binding.ub_fn;

pub export var libtes3mp_internal_SendRecordDynamic: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// Instantiations

pub export fn libtes3mp_ClearRecords() callconv(.C) void {
    return libtes3mp_internal_ClearRecords();
}

pub export fn libtes3mp_GetRecordType() callconv(.C) c_ushort {
    return libtes3mp_internal_GetRecordType();
}
pub export fn libtes3mp_GetRecordCount() callconv(.C) c_uint {
    return libtes3mp_internal_GetRecordCount();
}
pub export fn libtes3mp_GetRecordEffectCount(recordIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetRecordEffectCount(recordIndex);
}

pub export fn libtes3mp_GetRecordId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetRecordId(index);
}
pub export fn libtes3mp_GetRecordBaseId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetRecordBaseId(index);
}

pub export fn libtes3mp_GetRecordSubtype(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordSubtype(index);
}
pub export fn libtes3mp_GetRecordName(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetRecordName(index);
}
pub export fn libtes3mp_GetRecordModel(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetRecordModel(index);
}
pub export fn libtes3mp_GetRecordIcon(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetRecordIcon(index);
}
pub export fn libtes3mp_GetRecordScript(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetRecordScript(index);
}
pub export fn libtes3mp_GetRecordEnchantmentId(index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetRecordEnchantmentId(index);
}
pub export fn libtes3mp_GetRecordEnchantmentCharge(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordEnchantmentCharge(index);
}

pub export fn libtes3mp_GetRecordAutoCalc(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordAutoCalc(index);
}
pub export fn libtes3mp_GetRecordCharge(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordCharge(index);
}
pub export fn libtes3mp_GetRecordCost(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordCost(index);
}
pub export fn libtes3mp_GetRecordFlags(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordFlags(index);
}
pub export fn libtes3mp_GetRecordValue(index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordValue(index);
}
pub export fn libtes3mp_GetRecordWeight(index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetRecordWeight(index);
}
pub export fn libtes3mp_GetRecordQuantity(index: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetRecordQuantity(index);
}

pub export fn libtes3mp_GetRecordEffectId(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetRecordEffectId(recordIndex, effectIndex);
}
pub export fn libtes3mp_GetRecordEffectAttribute(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordEffectAttribute(recordIndex, effectIndex);
}
pub export fn libtes3mp_GetRecordEffectSkill(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordEffectSkill(recordIndex, effectIndex);
}
pub export fn libtes3mp_GetRecordEffectRangeType(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_uint {
    return libtes3mp_internal_GetRecordEffectRangeType(recordIndex, effectIndex);
}
pub export fn libtes3mp_GetRecordEffectArea(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordEffectArea(recordIndex, effectIndex);
}
pub export fn libtes3mp_GetRecordEffectDuration(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordEffectDuration(recordIndex, effectIndex);
}
pub export fn libtes3mp_GetRecordEffectMagnitudeMax(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordEffectMagnitudeMax(recordIndex, effectIndex);
}
pub export fn libtes3mp_GetRecordEffectMagnitudeMin(recordIndex: c_uint, effectIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetRecordEffectMagnitudeMin(recordIndex, effectIndex);
}

pub export fn libtes3mp_SetRecordType(recordType: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordType(recordType);
}

pub export fn libtes3mp_SetRecordId(id: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordId(id);
}
pub export fn libtes3mp_SetRecordBaseId(baseId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordBaseId(baseId);
}
pub export fn libtes3mp_SetRecordInventoryBaseId(inventoryBaseId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordInventoryBaseId(inventoryBaseId);
}

pub export fn libtes3mp_SetRecordSubtype(subtype: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordSubtype(subtype);
}
pub export fn libtes3mp_SetRecordName(name: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordName(name);
}
pub export fn libtes3mp_SetRecordModel(model: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordModel(model);
}
pub export fn libtes3mp_SetRecordIcon(icon: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordIcon(icon);
}
pub export fn libtes3mp_SetRecordScript(script: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordScript(script);
}
pub export fn libtes3mp_SetRecordEnchantmentId(enchantmentId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordEnchantmentId(enchantmentId);
}
pub export fn libtes3mp_SetRecordEnchantmentCharge(enchantmentCharge: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordEnchantmentCharge(enchantmentCharge);
}

pub export fn libtes3mp_SetRecordAutoCalc(autoCalc: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordAutoCalc(autoCalc);
}
pub export fn libtes3mp_SetRecordCharge(charge: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordCharge(charge);
}
pub export fn libtes3mp_SetRecordCost(cost: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordCost(cost);
}
pub export fn libtes3mp_SetRecordFlags(flags: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordFlags(flags);
}
pub export fn libtes3mp_SetRecordValue(value: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordValue(value);
}
pub export fn libtes3mp_SetRecordWeight(weight: f64) callconv(.C) void {
    return libtes3mp_internal_SetRecordWeight(weight);
}
pub export fn libtes3mp_SetRecordQuality(quality: f64) callconv(.C) void {
    return libtes3mp_internal_SetRecordQuality(quality);
}
pub export fn libtes3mp_SetRecordUses(uses: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordUses(uses);
}
pub export fn libtes3mp_SetRecordTime(time: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordTime(time);
}
pub export fn libtes3mp_SetRecordRadius(radius: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordRadius(radius);
}
pub export fn libtes3mp_SetRecordColor(red: c_uint, green: c_uint, blue: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordColor(red, green, blue);
}

pub export fn libtes3mp_SetRecordArmorRating(armorRating: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordArmorRating(armorRating);
}
pub export fn libtes3mp_SetRecordHealth(health: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordHealth(health);
}

pub export fn libtes3mp_SetRecordDamageChop(minDamage: c_uint, maxDamage: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordDamageChop(minDamage, maxDamage);
}
pub export fn libtes3mp_SetRecordDamageSlash(minDamage: c_uint, maxDamage: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordDamageSlash(minDamage, maxDamage);
}
pub export fn libtes3mp_SetRecordDamageThrust(minDamage: c_uint, maxDamage: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordDamageThrust(minDamage, maxDamage);
}
pub export fn libtes3mp_SetRecordReach(reach: f64) callconv(.C) void {
    return libtes3mp_internal_SetRecordReach(reach);
}
pub export fn libtes3mp_SetRecordSpeed(speed: f64) callconv(.C) void {
    return libtes3mp_internal_SetRecordSpeed(speed);
}

pub export fn libtes3mp_SetRecordKeyState(keyState: bool) callconv(.C) void {
    return libtes3mp_internal_SetRecordKeyState(keyState);
}
pub export fn libtes3mp_SetRecordScrollState(scrollState: bool) callconv(.C) void {
    return libtes3mp_internal_SetRecordScrollState(scrollState);
}
pub export fn libtes3mp_SetRecordSkillId(skillId: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordSkillId(skillId);
}
pub export fn libtes3mp_SetRecordText(text: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordText(text);
}

pub export fn libtes3mp_SetRecordHair(hair: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordHair(hair);
}
pub export fn libtes3mp_SetRecordHead(head: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordHead(head);
}
pub export fn libtes3mp_SetRecordGender(gender: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordGender(gender);
}
pub export fn libtes3mp_SetRecordRace(race: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordRace(race);
}
pub export fn libtes3mp_SetRecordClass(charClass: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordClass(charClass);
}
pub export fn libtes3mp_SetRecordFaction(faction: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordFaction(faction);
}

pub export fn libtes3mp_SetRecordScale(scale: f64) callconv(.C) void {
    return libtes3mp_internal_SetRecordScale(scale);
}
pub export fn libtes3mp_SetRecordBloodType(bloodType: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordBloodType(bloodType);
}
pub export fn libtes3mp_SetRecordVampireState(vampireState: bool) callconv(.C) void {
    return libtes3mp_internal_SetRecordVampireState(vampireState);
}

pub export fn libtes3mp_SetRecordLevel(level: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordLevel(level);
}
pub export fn libtes3mp_SetRecordMagicka(magicka: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordMagicka(magicka);
}
pub export fn libtes3mp_SetRecordFatigue(fatigue: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordFatigue(fatigue);
}

pub export fn libtes3mp_SetRecordSoulValue(soulValue: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordSoulValue(soulValue);
}

pub export fn libtes3mp_SetRecordAIFight(aiFight: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordAIFight(aiFight);
}
pub export fn libtes3mp_SetRecordAIFlee(aiFlee: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordAIFlee(aiFlee);
}
pub export fn libtes3mp_SetRecordAIAlarm(aiAlarm: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordAIAlarm(aiAlarm);
}
pub export fn libtes3mp_SetRecordAIServices(aiServices: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordAIServices(aiServices);
}

pub export fn libtes3mp_SetRecordSound(sound: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordSound(sound);
}
pub export fn libtes3mp_SetRecordVolume(volume: f64) callconv(.C) void {
    return libtes3mp_internal_SetRecordVolume(volume);
}
pub export fn libtes3mp_SetRecordMinRange(minRange: f64) callconv(.C) void {
    return libtes3mp_internal_SetRecordMinRange(minRange);
}
pub export fn libtes3mp_SetRecordMaxRange(maxRange: f64) callconv(.C) void {
    return libtes3mp_internal_SetRecordMaxRange(maxRange);
}
pub export fn libtes3mp_SetRecordOpenSound(sound: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordOpenSound(sound);
}
pub export fn libtes3mp_SetRecordCloseSound(sound: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordCloseSound(sound);
}

pub export fn libtes3mp_SetRecordScriptText(scriptText: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordScriptText(scriptText);
}
pub export fn libtes3mp_SetRecordIntegerVariable(intVar: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordIntegerVariable(intVar);
}
pub export fn libtes3mp_SetRecordFloatVariable(floatVar: f64) callconv(.C) void {
    return libtes3mp_internal_SetRecordFloatVariable(floatVar);
}
pub export fn libtes3mp_SetRecordStringVariable(stringVar: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordStringVariable(stringVar);
}

pub export fn libtes3mp_SetRecordIdByIndex(index: c_uint, id: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordIdByIndex(index, id);
}
pub export fn libtes3mp_SetRecordEnchantmentIdByIndex(index: c_uint, enchantmentId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordEnchantmentIdByIndex(index, enchantmentId);
}

pub export fn libtes3mp_SetRecordEffectId(effectId: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordEffectId(effectId);
}
pub export fn libtes3mp_SetRecordEffectAttribute(attributeId: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordEffectAttribute(attributeId);
}
pub export fn libtes3mp_SetRecordEffectSkill(skillId: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordEffectSkill(skillId);
}
pub export fn libtes3mp_SetRecordEffectRangeType(rangeType: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordEffectRangeType(rangeType);
}
pub export fn libtes3mp_SetRecordEffectArea(area: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordEffectArea(area);
}
pub export fn libtes3mp_SetRecordEffectDuration(duration: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordEffectDuration(duration);
}
pub export fn libtes3mp_SetRecordEffectMagnitudeMax(magnitudeMax: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordEffectMagnitudeMax(magnitudeMax);
}
pub export fn libtes3mp_SetRecordEffectMagnitudeMin(magnitudeMin: c_int) callconv(.C) void {
    return libtes3mp_internal_SetRecordEffectMagnitudeMin(magnitudeMin);
}

pub export fn libtes3mp_SetRecordBodyPartType(partType: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordBodyPartType(partType);
}
pub export fn libtes3mp_SetRecordBodyPartIdForMale(partId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordBodyPartIdForMale(partId);
}
pub export fn libtes3mp_SetRecordBodyPartIdForFemale(partId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordBodyPartIdForFemale(partId);
}

pub export fn libtes3mp_SetRecordInventoryItemId(itemId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetRecordInventoryItemId(itemId);
}
pub export fn libtes3mp_SetRecordInventoryItemCount(count: c_uint) callconv(.C) void {
    return libtes3mp_internal_SetRecordInventoryItemCount(count);
}

pub export fn libtes3mp_AddRecord() callconv(.C) void {
    return libtes3mp_internal_AddRecord();
}
pub export fn libtes3mp_AddRecordEffect() callconv(.C) void {
    return libtes3mp_internal_AddRecordEffect();
}
pub export fn libtes3mp_AddRecordBodyPart() callconv(.C) void {
    return libtes3mp_internal_AddRecordBodyPart();
}
pub export fn libtes3mp_AddRecordInventoryItem() callconv(.C) void {
    return libtes3mp_internal_AddRecordInventoryItem();
}

pub export fn libtes3mp_SendRecordDynamic(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendRecordDynamic(pid, sendToOtherPlayers, skipAttachedPlayer);
}
