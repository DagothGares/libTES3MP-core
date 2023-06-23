//! Raw bindings to the functions declared by TES3MP's CharClass.hpp file.

const binding = @import("../binding.zig");

const c_str = binding.c_str;

pub export var zigGetDefaultClass: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetDefaultClass: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
// NOTE: This actually returns c_int, but the C++ function uses string::empty() which returns bool
pub export var zigIsClassDefault: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetClassName: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetClassName: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigGetClassDesc: *const fn (c_ushort) callconv(.C) c_str = &binding.ub_fn_ushort;
pub export var zigSetClassDesc: *const fn (c_ushort, c_str) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSendClass: *const fn (c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

// Class misc functions
pub export var zigGetClassMajorAttribute: *const fn (c_ushort, u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var zigSetClassMajorAttribute: *const fn (c_ushort, u8, c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;
pub export var zigGetClassSpecialization: *const fn (c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigSetClassSpecialization: *const fn (c_ushort, c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigGetClassMajorSkill: *const fn (c_ushort, u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var zigSetClassMajorSkill: *const fn (c_ushort, u8, c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;
pub export var zigGetClassMinorSkill: *const fn (c_ushort, u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var zigSetClassMinorSkill: *const fn (c_ushort, u8, c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;

pub fn impl_GetDefaultClass(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetDefaultClass, .{pid});
}
pub fn impl_SetDefaultClass(pid: c_ushort, id: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetDefaultClass, .{ pid, id });
}
pub fn impl_IsClassDefault(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigIsClassDefault, .{pid});
}
pub fn impl_GetClassName(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetClassName, .{pid});
}
pub fn impl_SetClassName(pid: c_ushort, name: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetClassName, .{ pid, name });
}
pub fn impl_GetClassDesc(pid: c_ushort) callconv(.C) c_str {
    return @call(.never_inline, zigGetClassDesc, .{pid});
}
pub fn impl_SetClassDesc(pid: c_ushort, desc: c_str) callconv(.C) void {
    return @call(.never_inline, zigSetClassDesc, .{ pid, desc });
}
pub fn impl_SendClass(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendClass, .{pid});
}
pub fn impl_GetClassMajorAttribute(pid: c_ushort, slot: u8) callconv(.C) c_int {
    return @call(.never_inline, zigGetClassMajorAttribute, .{ pid, slot });
}
pub fn impl_SetClassMajorAttribute(pid: c_ushort, slot: u8, attrId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetClassMajorAttribute, .{ pid, slot, attrId });
}
pub fn impl_GetClassSpecialization(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetClassSpecialization, .{pid});
}
pub fn impl_SetClassSpecialization(pid: c_ushort, spec: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetClassSpecialization, .{ pid, spec });
}
pub fn impl_GetClassMajorSkill(pid: c_ushort, slot: u8) callconv(.C) c_int {
    return @call(.never_inline, zigGetClassMajorSkill, .{ pid, slot });
}
pub fn impl_SetClassMajorSkill(pid: c_ushort, slot: u8, skillId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetClassMajorSkill, .{ pid, slot, skillId });
}
pub fn impl_GetClassMinorSkill(pid: c_ushort, slot: u8) callconv(.C) c_int {
    return @call(.never_inline, zigGetClassMinorSkill, .{ pid, slot });
}
pub fn impl_SetClassMinorSkill(pid: c_ushort, slot: u8, skillId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetClassMinorSkill, .{ pid, slot, skillId });
}
