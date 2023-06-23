//! Raw bindings to the functions declared by TES3MP's GUI.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigMessageBox: *const fn (c_ushort, c_int, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_str;
pub export var zigCustomMessageBox: *const fn (c_ushort, c_int, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_2str;
pub export var zigInputDialog: *const fn (c_ushort, c_int, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_2str;
pub export var zigPasswordDialog: *const fn (c_ushort, c_int, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_2str;
pub export var zigListBox: *const fn (c_ushort, c_int, c_str, c_str) callconv(.C) void = &binding.ub_fn_ushort_int_2str;

// GUI quickKey functions
pub export var zigClearQuickKeyChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;
pub export var zigGetQuickKeyChangesSize: *const fn (c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;
pub export var zigAddQuickKey: *const fn (c_ushort, c_ushort, c_int, c_str) callconv(.C) void = &binding.ub_fn_2ushort_int_str;
pub export var zigGetQuickKeySlot: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetQuickKeyType: *const fn (c_ushort, c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var zigGetQuickKeyItemId: *const fn (c_ushort, c_uint) callconv(.C) c_str = &binding.ub_fn_ushort_uint;
pub export var zigSendQuickKeyChanges: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// GUI misc functions (nonfunctional)
pub export var zigSetMapVisibility: *const fn (c_ushort, c_ushort, c_ushort) callconv(.C) void = &binding.ub_fn_3ushort;
pub export var zigSetMapVisibilityAll: *const fn (c_ushort, c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;

pub export fn impl_MessageBox(pid: c_ushort, id: c_int, label: c_str) callconv(.C) void {
    return @call(.never_inline, zigMessageBox, .{ pid, id, label });
}
pub export fn impl_CustomMessageBox(
    pid: c_ushort,
    id: c_int,
    label: c_str,
    buttons: c_str,
) callconv(.C) void {
    return @call(.never_inline, zigCustomMessageBox, .{ pid, id, label, buttons });
}
pub export fn impl_InputDialog(
    pid: c_ushort,
    id: c_int,
    label: c_str,
    note: c_str,
) callconv(.C) void {
    return @call(.never_inline, zigInputDialog, .{ pid, id, label, note });
}
pub export fn impl_PasswordDialog(
    pid: c_ushort,
    id: c_int,
    label: c_str,
    note: c_str,
) callconv(.C) void {
    return @call(.never_inline, zigPasswordDialog, .{ pid, id, label, note });
}
pub export fn impl_ListBox(
    pid: c_ushort,
    id: c_int,
    label: c_str,
    items: c_str,
) callconv(.C) void {
    return @call(.never_inline, zigListBox, .{ pid, id, label, items });
}
pub export fn impl_ClearQuickKeyChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigClearQuickKeyChanges, .{pid});
}
pub export fn impl_GetQuickKeyChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return @call(.never_inline, zigGetQuickKeyChangesSize, .{pid});
}
pub export fn impl_AddQuickKey(
    pid: c_ushort,
    slot: c_ushort,
    quickKeyType: c_int,
    itemId: c_str,
) callconv(.C) void {
    return @call(.never_inline, zigAddQuickKey, .{ pid, slot, quickKeyType, itemId });
}
pub export fn impl_GetQuickKeySlot(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetQuickKeySlot, .{ pid, index });
}
pub export fn impl_GetQuickKeyType(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return @call(.never_inline, zigGetQuickKeyType, .{ pid, index });
}
pub export fn impl_GetQuickKeyItemId(pid: c_ushort, index: c_uint) callconv(.C) c_str {
    return @call(.never_inline, zigGetQuickKeyItemId, .{ pid, index });
}
pub export fn impl_SendQuickKeyChanges(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendQuickKeyChanges, .{pid});
}
pub export fn impl_SetMapVisibility(
    pid: c_ushort,
    affectedPid: c_ushort,
    state: c_ushort,
) callconv(.C) void {
    return @call(.never_inline, zigSetMapVisibility, .{ pid, affectedPid, state });
}
pub export fn impl_SetMapVisibilityAll(pid: c_ushort, state: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSetMapVisibilityAll, .{ pid, state });
}
