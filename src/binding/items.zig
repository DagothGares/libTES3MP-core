//! Raw bindings to the functions declared by TES3MP's Items.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

// InventoryChanges functions
pub export var zigClearInventoryChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetEquipmentChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetInventoryChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetInventoryChangesAction: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigSetInventoryChangesAction: *const fn (c_ushort, u8) callconv(.C) void = &binding.ub_fn_ushort_u8;
pub export var zigAddItemChange: *const fn (c_ushort, c_str, c_uint, c_int, f64, c_str) callconv(.C) void = &binding.ub_fn_ushort_str_uint_int_f64_str;
pub export var zigGetEquipmentChangesSlot: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigSendInventoryChanges: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;

// Equipment functions
pub export var zigGetEquipmentItemRefId: *const fn (c_ushort, c_ushort) callconv(.C) c_str = &binding.ub_fn_2ushort;
pub export var zigGetEquipmentItemCount: *const fn (c_ushort, c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigGetEquipmentItemCharge: *const fn (c_ushort, c_ushort) callconv(.C) c_int = &binding.ub_fn_2ushort;
pub export var zigGetEquipmentItemEnchantmentCharge: *const fn (c_ushort, c_ushort) callconv(.C) f64 = &binding.ub_fn_2ushort;
pub export var zigEquipItem: *const fn (c_ushort, c_ushort, c_str, c_uint, c_int, f64) callconv(.C) void = &binding.ub_fn_2ushort_str_uint_int_f64;
pub export var zigUnequipItem: *const fn (c_ushort, c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;
pub export var zigHasItemEquipped: *const fn (c_ushort, c_str) callconv(.C) bool = &binding.ub_fn_ushort_str;
pub export var zigSendEquipment: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Inventory functions
pub export var zigGetInventoryItemRefId: *const fn (c_ushort, c_ushort) callconv(.C) c_str = &binding.ub_fn_2ushort;
pub export var zigGetInventoryItemCount: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetInventoryItemCharge: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetInventoryItemEnchantmentCharge: *const fn (c_ushort, c_uint) callconv(.C) f64 = &binding.ub_fn_ushort_uint;
pub export var zigGetInventoryItemSoul: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;

// Use functions
pub export var zigGetUsedItemRefId: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigGetUsedItemCount: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetUsedItemCharge: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetUsedItemEnchantmentCharge: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetUsedItemSoul: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSendItemUse: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Misc functions
pub export var zigGetEquipmentSize: *const fn () callconv(.C) c_int = &binding.ub_fn; // Returns 19 in TES3MP 0.8.1
