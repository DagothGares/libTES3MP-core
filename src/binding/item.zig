//! Raw bindings to the functions declared by TES3MP's Items.hpp file.

const binding = @import("../binding.zig");

pub export var zigClearInventoryChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Returns 19 in TES3MP 0.8.1
pub export var zigGetEquipmentSize: *const fn () callconv(.C) c_int = &binding.ub_fn;
pub export var zigGetEquipmentChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetInventoryChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetInventoryChangesAction: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var zigSetInventoryChangesAction: *const fn (pid: c_ushort, action: u8) callconv(.C) void = &binding.ub_fn_ushort_u8;

pub export var zigEquipItem: *const fn (pid: c_ushort, slot: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64) callconv(.C) void = &binding.ub_fn_2ushort_str_uint_int_f64;
pub export var zigUnequipItem: *const fn (pid: c_ushort, slot: c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;

pub export var zigAddItemChange: *const fn (pid: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64, soul: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str_uint_int_f64_str;

pub export var zigHasItemEquipped: *const fn (pid: c_ushort, refId: [*:0]const u8) callconv(.C) bool = &binding.ub_fn_ushort_str;

pub export var zigGetEquipmentChangesSlot: *const fn (pid: c_ushort, changeIndex: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetEquipmentItemRefId: *const fn (pid: c_ushort, slot: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_2ushort;
pub export var zigGetEquipmentItemCount: *const fn (pid: c_ushort, slot: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigGetEquipmentItemCharge: *const fn (pid: c_ushort, slot: c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigGetEquipmentItemEnchantmentCharge: *const fn (pid: c_ushort, slot: c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;

pub export var zigGetInventoryItemRefId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;
pub export var zigGetInventoryItemCount: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetInventoryItemCharge: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetInventoryItemEnchantmentCharge: *const fn (pid: c_ushort, index: c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_uint;
pub export var zigGetInventoryItemSoul: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;

pub export var zigGetUsedItemRefId: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetUsedItemCount: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetUsedItemCharge: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetUsedItemEnchantmentCharge: *const fn (pid: c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetUsedItemSoul: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;

pub export var zigSendEquipment: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigSendInventoryChanges: *const fn (pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigSendItemUse: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn impl_ClearInventoryChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearInventoryChanges, .{pid});
}

pub export fn impl_GetEquipmentSize() callconv(.C) c_int {
    return @call(.never_inline, zigGetEquipmentSize, .{});
}
pub export fn impl_GetEquipmentChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetEquipmentChangesSize, .{pid});
}
pub export fn impl_GetInventoryChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetInventoryChangesSize, .{pid});
}
pub export fn impl_GetInventoryChangesAction(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetInventoryChangesAction, .{pid});
}

pub export fn impl_SetInventoryChangesAction(pid: c_ushort, action: u8) callconv(.C) void {
    return @call(.never_inline, zigSetInventoryChangesAction, .{ pid, action });
}

pub export fn impl_EquipItem(pid: c_ushort, slot: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64) callconv(.C) void {
    return @call(.never_inline, zigEquipItem, .{ pid, slot, refId, count, charge, enchantmentCharge });
}
pub export fn impl_UnequipItem(pid: c_ushort, slot: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigUnequipItem, .{ pid, slot });
}

pub export fn impl_AddItemChange(pid: c_ushort, refId: [*:0]const u8, count: c_uint, charge: c_int, enchantmentCharge: f64, soul: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigAddItemChange, .{ pid, refId, count, charge, enchantmentCharge, soul });
}

pub export fn impl_HasItemEquipped(pid: c_ushort, refId: [*:0]const u8) callconv(.C) bool {
    return @call(.never_inline, zigHasItemEquipped, .{ pid, refId });
}

pub export fn impl_GetEquipmentChangesSlot(pid: c_ushort, changeIndex: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetEquipmentChangesSlot, .{ pid, changeIndex });
}
pub export fn impl_GetEquipmentItemRefId(pid: c_ushort, slot: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetEquipmentItemRefId, .{ pid, slot });
}
pub export fn impl_GetEquipmentItemCount(pid: c_ushort, slot: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetEquipmentItemCount, .{ pid, slot });
}
pub export fn impl_GetEquipmentItemCharge(pid: c_ushort, slot: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetEquipmentItemCharge, .{ pid, slot });
}
pub export fn impl_GetEquipmentItemEnchantmentCharge(pid: c_ushort, slot: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetEquipmentItemEnchantmentCharge, .{ pid, slot });
}

pub export fn impl_GetInventoryItemRefId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetInventoryItemRefId, .{ pid, index });
}
pub export fn impl_GetInventoryItemCount(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetInventoryItemCount, .{ pid, index });
}
pub export fn impl_GetInventoryItemCharge(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetInventoryItemCharge, .{ pid, index });
}
pub export fn impl_GetInventoryItemEnchantmentCharge(pid: c_ushort, index: c_uint) callconv(.C) f64 {
    return @call(.never_inline, zigGetInventoryItemEnchantmentCharge, .{ pid, index });
}
pub export fn impl_GetInventoryItemSoul(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetInventoryItemSoul, .{ pid, index });
}

pub export fn impl_GetUsedItemRefId(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetUsedItemRefId, .{pid});
}
pub export fn impl_GetUsedItemCount(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetUsedItemCount, .{pid});
}
pub export fn impl_GetUsedItemCharge(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetUsedItemCharge, .{pid});
}
pub export fn impl_GetUsedItemEnchantmentCharge(pid: c_ushort) callconv(.C) f64 {
    return @call(.never_inline, zigGetUsedItemEnchantmentCharge, .{pid});
}
pub export fn impl_GetUsedItemSoul(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetUsedItemSoul, .{pid});
}

pub export fn impl_SendEquipment(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendEquipment, .{pid});
}
pub export fn impl_SendInventoryChanges(pid: c_ushort, sendToOtherPlayers: bool, skipAttachedPlayer: bool) callconv(.C) void {
    return @call(.never_inline, zigSendInventoryChanges, .{ pid, sendToOtherPlayers, skipAttachedPlayer });
}
pub export fn impl_SendItemUse(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendItemUse, .{pid});
}