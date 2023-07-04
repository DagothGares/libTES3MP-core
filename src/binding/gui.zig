//! Raw bindings to the functions declared by TES3MP's GUI.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_MessageBox: *const fn (pid: c_ushort, id: c_int, label: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_int_str;
pub export var libtes3mp_internal_CustomMessageBox: *const fn (pid: c_ushort, id: c_int, label: [*:0]const u8, buttons: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_int_2str;
pub export var libtes3mp_internal_InputDialog: *const fn (pid: c_ushort, id: c_int, label: [*:0]const u8, note: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_int_2str;
pub export var libtes3mp_internal_PasswordDialog: *const fn (pid: c_ushort, id: c_int, label: [*:0]const u8, note: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_int_2str;
pub export var libtes3mp_internal_ListBox: *const fn (pid: c_ushort, id: c_int, label: [*:0]const u8, items: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_int_2str;

pub export var libtes3mp_internal_ClearQuickKeyChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetQuickKeyChangesSize: *const fn (pid: c_ushort) callconv(.C) c_uint = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_GetQuickKeySlot: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetQuickKeyType: *const fn (pid: c_ushort, index: c_uint) callconv(.C) c_int = &binding.ub_fn_ushort_uint;
pub export var libtes3mp_internal_GetQuickKeyItemId: *const fn (pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort_uint;

pub export var libtes3mp_internal_AddQuickKey: *const fn (pid: c_ushort, slot: c_ushort, keyType: c_int, itemId: [*:0]const u8) callconv(.C) void = &binding.ub_fn_2ushort_int_str;

pub export var libtes3mp_internal_SendQuickKeyChanges: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetMapVisibility: *const fn (targetPid: c_ushort, affectedPid: c_ushort, state: c_ushort) callconv(.C) void = &binding.ub_fn_3ushort;
pub export var libtes3mp_internal_SetMapVisibilityAll: *const fn (targetPid: c_ushort, state: c_ushort) callconv(.C) void = &binding.ub_fn_2ushort;

pub export fn libtes3mp_MessageBox(pid: c_ushort, id: c_int, label: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_MessageBox(pid, id, label);
}
pub export fn libtes3mp_CustomMessageBox(pid: c_ushort, id: c_int, label: [*:0]const u8, buttons: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_CustomMessageBox(pid, id, label, buttons);
}
pub export fn libtes3mp_InputDialog(pid: c_ushort, id: c_int, label: [*:0]const u8, note: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_InputDialog(pid, id, label, note);
}
pub export fn libtes3mp_PasswordDialog(pid: c_ushort, id: c_int, label: [*:0]const u8, note: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_PasswordDialog(pid, id, label, note);
}
pub export fn libtes3mp_ListBox(pid: c_ushort, id: c_int, label: [*:0]const u8, items: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_ListBox(pid, id, label, items);
}

pub export fn libtes3mp_ClearQuickKeyChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_ClearQuickKeyChanges(pid);
}

pub export fn libtes3mp_GetQuickKeyChangesSize(pid: c_ushort) callconv(.C) c_uint {
    return libtes3mp_internal_GetQuickKeyChangesSize(pid);
}

pub export fn libtes3mp_GetQuickKeySlot(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetQuickKeySlot(pid, index);
}
pub export fn libtes3mp_GetQuickKeyType(pid: c_ushort, index: c_uint) callconv(.C) c_int {
    return libtes3mp_internal_GetQuickKeyType(pid, index);
}
pub export fn libtes3mp_GetQuickKeyItemId(pid: c_ushort, index: c_uint) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetQuickKeyItemId(pid, index);
}

pub export fn libtes3mp_AddQuickKey(pid: c_ushort, slot: c_ushort, keyType: c_int, itemId: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_AddQuickKey(pid, slot, keyType, itemId);
}

pub export fn libtes3mp_SendQuickKeyChanges(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendQuickKeyChanges(pid);
}

pub export fn libtes3mp_SetMapVisibility(targetPid: c_ushort, affectedPid: c_ushort, state: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SetMapVisibility(targetPid, affectedPid, state);
}
pub export fn libtes3mp_SetMapVisibilityAll(targetPid: c_ushort, state: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SetMapVisibilityAll(targetPid, state);
}
