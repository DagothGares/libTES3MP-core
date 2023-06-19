//! Raw bindings to the functions declared by TES3MP's Mechanics.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigGetDrawState: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetSneakState: *const fn (c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;
pub export var zigJail: *const fn (c_ushort, c_int, bool, bool, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_2bool_2str;
pub export var zigResurrect: *const fn (c_ushort, c_uint) callconv(.C) void = &binding.ub_fn_ushort_uint;
pub export var zigGetMiscellaneousChangeType: *const fn (c_ushort) callconv(.C) u8 = &binding.ub_fn_ushort;

// AlliedPlayers functions
pub export var zigClearAlliedPlayersForPlayer: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigAddAlliedPlayerForPlayer: *const fn (c_ushort, c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;
pub export var zigSendAlliedPlayers: *const fn (c_ushort, bool) callconv(.C) void = &binding.ub_fn_ushort_bool;

// Mark functions
pub export var zigGetMarkCell: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigGetMarkPosX: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMarkPosY: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMarkPosZ: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMarkRotX: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMarkRotY: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigGetMarkRotZ: *const fn (c_ushort) callconv(.C) f64 = &binding.ub_fn_ushort;
pub export var zigSetMarkCell: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetMarkPos: *const fn (c_ushort, f64, f64, f64) callconv(.C) void = &binding.ub_fn_ushort_3f64;
pub export var zigSetMarkRot: *const fn (c_ushort, f64, f64, f64) callconv(.C) void = &binding.ub_fn_ushort_3f64;
pub export var zigSendMarkLocation: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// SelectedSpell functions
pub export var zigGetSelectedSpellId: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetSelectedSpellId: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSendSelectedSpell: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// PlayerKiller functions
pub export var zigDoesPlayerHavePlayerKiller: *const fn (c_ushort) callconv(.C) bool = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerPid: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerRefId: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerRefNum: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerMpNum: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigGetPlayerKillerName: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
