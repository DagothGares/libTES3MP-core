//! Raw bindings to the functions declared by TES3MP's Factions.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigGetFactionId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigSetFactionId: *const fn (c_str) callconv(.C) void = &binding.ub_fn_str;
pub export var zigGetFactionRank: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigSetFactionRank: *const fn (c_uint) callconv(.C) void = &binding.ub_fn_uint;
pub export var zigGetFactionExpulsionState: *const fn (c_ushort, c_uint) callconv(.C) bool = &binding.ub_fn_ushort_uint;
pub export var zigSetFactionExpulsionState: *const fn (bool) callconv(.C) void = &binding.ub_fn_bool;
pub export var zigGetFactionReputation: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigSetFactionReputation: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigAddFaction: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// FactionChanges functions
pub export var zigClearFactionChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetFactionChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetFactionChangesAction: *const fn (c_ushort) callconv(.C) u8 = &binding.ub_fn_ushort;
pub export var zigSetFactionChangesAction: *const fn (c_ushort, u8) callconv(.C) void = &binding.ub_fn_ushort_u8;
pub export var zigSendFactionChanges: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
