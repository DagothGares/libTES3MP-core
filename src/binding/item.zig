//! Raw bindings to the functions declared by TES3MP's Items.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_ClearInventoryChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Returns 19 in TES3MP 0.8.1
pub export var libtes3mp_internal_GetEquipmentSize: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var libtes3mp_internal_GetEquipmentChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetInventoryChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetInventoryChangesAction: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetInventoryChangesAction: *const fn (pid: c_ushort, action: u8) callconv(.C) void = &binding.ub_fn_ushort_u8;

pub export var libtes3mp_internal_EquipItem: *const fn (pid: c_ushort, slot: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64) callconv(.C) void = &binding.ub_fn_2ushort_str_uint_int_f64;
pub export var libtes3mp_internal_UnequipItem: *const fn (pid: c_ushort, slot: c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;

pub export var libtes3mp_internal_AddItemChange: *const fn (pid: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64, soul: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str_uint_int_f64_str;

pub export var libtes3mp_internal_HasItemEquipped: *const fn (pid: c_ushort, refId: [*:0]const u8) callconv(.C) bool = &binding.ub_fn_ushort_str;

pub export var libtes3mp_internal_GetEquipmentChangesSlot: *const fn (pid: c_ushort, changeIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetEquipmentItemRefId: *const fn (pid: c_ushort, slot: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_GetEquipmentItemCount: *const fn (pid: c_ushort, slot: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_GetEquipmentItemCharge: *const fn (pid: c_ushort, slot: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var libtes3mp_internal_GetEquipmentItemEnchantmentCharge: *const fn (pid: c_ushort, slot: c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;

pub export var libtes3mp_internal_GetInventoryItemRefId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetInventoryItemCount: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetInventoryItemCharge: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetInventoryItemEnchantmentCharge: *const fn (pid: c_ushort, index: c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetInventoryItemSoul: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;

pub export var libtes3mp_internal_GetUsedItemRefId: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetUsedItemCount: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetUsedItemCharge: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetUsedItemEnchantmentCharge: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetUsedItemSoul: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SendEquipment: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_SendInventoryChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var libtes3mp_internal_SendItemUse: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn libtes3mp_ClearInventoryChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearInventoryChanges(pid);
}

pub export fn libtes3mp_GetEquipmentSize() callconv(.C) c_int {
    return libtes3mp_internal_GetEquipmentSize();
}
pub export fn libtes3mp_GetEquipmentChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetEquipmentChangesSize(pid);
}
pub export fn libtes3mp_GetInventoryChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetInventoryChangesSize(pid);
}
pub export fn libtes3mp_GetInventoryChangesAction(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetInventoryChangesAction(pid);
}

pub export fn libtes3mp_SetInventoryChangesAction(pid: c_ushort, action: u8) callconv(.C) void {
    return libtes3mp_internal_SetInventoryChangesAction(pid, action);
}

pub export fn libtes3mp_EquipItem(pid: c_ushort, slot: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64) callconv(.C) void {
    return libtes3mp_internal_EquipItem(pid, slot, refId, count, charge, enchantmentCharge);
}
pub export fn libtes3mp_UnequipItem(pid: c_ushort, slot: c_ushort) callconv(.C) void {
    return libtes3mp_internal_UnequipItem(pid, slot);
}

pub export fn libtes3mp_AddItemChange(pid: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64, soul: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddItemChange(pid, refId, count, charge, enchantmentCharge, soul);
}

pub export fn libtes3mp_HasItemEquipped(pid: c_ushort, refId: [*:0]const u8) callconv(.C) bool {
    return libtes3mp_internal_HasItemEquipped(pid, refId);
}

pub export fn libtes3mp_GetEquipmentChangesSlot(pid: c_ushort, changeIndex: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetEquipmentChangesSlot(pid, changeIndex);
}
pub export fn libtes3mp_GetEquipmentItemRefId(pid: c_ushort, slot: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetEquipmentItemRefId(pid, slot);
}
pub export fn libtes3mp_GetEquipmentItemCount(pid: c_ushort, slot: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetEquipmentItemCount(pid, slot);
}
pub export fn libtes3mp_GetEquipmentItemCharge(pid: c_ushort, slot: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetEquipmentItemCharge(pid, slot);
}
pub export fn libtes3mp_GetEquipmentItemEnchantmentCharge(pid: c_ushort, slot: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetEquipmentItemEnchantmentCharge(pid, slot);
}

pub export fn libtes3mp_GetInventoryItemRefId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetInventoryItemRefId(pid, index);
}
pub export fn libtes3mp_GetInventoryItemCount(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetInventoryItemCount(pid, index);
}
pub export fn libtes3mp_GetInventoryItemCharge(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetInventoryItemCharge(pid, index);
}
pub export fn libtes3mp_GetInventoryItemEnchantmentCharge(pid: c_ushort, index: c_uint) callconv(.C) f64 {
    return libtes3mp_internal_GetInventoryItemEnchantmentCharge(pid, index);
}
pub export fn libtes3mp_GetInventoryItemSoul(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetInventoryItemSoul(pid, index);
}

pub export fn libtes3mp_GetUsedItemRefId(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetUsedItemRefId(pid);
}
pub export fn libtes3mp_GetUsedItemCount(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetUsedItemCount(pid);
}
pub export fn libtes3mp_GetUsedItemCharge(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetUsedItemCharge(pid);
}
pub export fn libtes3mp_GetUsedItemEnchantmentCharge(pid: c_ushort) callconv(.C) f64 {
    return libtes3mp_internal_GetUsedItemEnchantmentCharge(pid);
}
pub export fn libtes3mp_GetUsedItemSoul(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetUsedItemSoul(pid);
}

pub export fn libtes3mp_SendEquipment(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendEquipment(pid);
}
pub export fn libtes3mp_SendInventoryChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return libtes3mp_internal_SendInventoryChanges(pid, sendToOtherPlayers, skipAttachedPlayer);
}
pub export fn libtes3mp_SendItemUse(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendItemUse(pid);
}
