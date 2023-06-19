//! Raw bindings for the functions declared by TES3MP's Quests.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigClearJournalChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetJournalChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigSendJournalChanges: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
pub export var zigGetJournalItemQuest: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigGetJournalItemIndex: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetJournalItemType: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetJournalItemActorRefId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigAddJournalEntry: *const fn (c_ushort, c_str, c_uint, c_str) callconv(.C) void = &binding.ub_fn_ushort_str_uint_str;
pub export var zigAddJournalEntryWithTimestamp: *const fn (c_ushort, c_str, c_uint, c_str, c_uint, c_uint, c_uint) callconv(.C) void = &binding.ub_fn_ushort_str_uint_str_3uint;
pub export var zigAddJournalIndex: *const fn (c_ushort, c_str, c_uint) callconv(.C) void = &binding.ub_fn_ushort_str_uint;
pub export var zigGetReputation: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigSetReputation: *const fn (c_ushort, c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigSendReputation: *const fn (c_ushort, bool, bool) callconv(.C) void = &binding.ub_fn_ushort_2bool;
