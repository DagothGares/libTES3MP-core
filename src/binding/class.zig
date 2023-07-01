//! Raw bindings to the functions declared by TES3MP's CharClass.hpp file.

const binding = @import("../binding.zig");

pub export var zigGetDefaultClass: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetClassName: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetClassDesc: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var zigGetClassMajorAttribute: *const fn (pid: c_ushort, slot: u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var zigGetClassSpecialization: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var zigGetClassMajorSkill: *const fn (pid: c_ushort, slot: u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var zigGetClassMinorSkill: *const fn (pid: c_ushort, slot: u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var zigIsClassDefault: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;

pub export var zigSetDefaultClass: *const fn (pid: c_ushort, id: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetClassName: *const fn (pid: c_ushort, name: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetClassDesc: *const fn (pid: c_ushort, desc: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var zigSetClassMajorAttribute: *const fn (pid: c_ushort, slot: u8, attrId: c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;
pub export var zigSetClassSpecialization: *const fn (pid: c_ushort, spec: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var zigSetClassMajorSkill: *const fn (pid: c_ushort, slot: u8, skillId: c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;
pub export var zigSetClassMinorSkill: *const fn (pid: c_ushort, slot: u8, skillId: c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;

pub export var zigSendClass: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn impl_GetDefaultClass(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetDefaultClass, .{pid});
}
pub export fn impl_GetClassName(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetClassName, .{pid});
}
pub export fn impl_GetClassDesc(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return @call(.never_inline, zigGetClassDesc, .{pid});
}
pub export fn impl_GetClassMajorAttribute(pid: c_ushort, slot: u8) callconv(.C) c_int {
    return @call(.never_inline, zigGetClassMajorAttribute, .{ pid, slot });
}
pub export fn impl_GetClassSpecialization(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigGetClassSpecialization, .{pid});
}
pub export fn impl_GetClassMajorSkill(pid: c_ushort, slot: u8) callconv(.C) c_int {
    return @call(.never_inline, zigGetClassMajorSkill, .{ pid, slot });
}
pub export fn impl_GetClassMinorSkill(pid: c_ushort, slot: u8) callconv(.C) c_int {
    return @call(.never_inline, zigGetClassMinorSkill, .{ pid, slot });
}
pub export fn impl_IsClassDefault(pid: c_ushort) callconv(.C) c_int {
    return @call(.never_inline, zigIsClassDefault, .{pid});
}

pub export fn impl_SetDefaultClass(pid: c_ushort, id: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetDefaultClass, .{ pid, id });
}
pub export fn impl_SetClassName(pid: c_ushort, name: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetClassName, .{ pid, name });
}
pub export fn impl_SetClassDesc(pid: c_ushort, desc: [*:0]const u8) callconv(.C) void {
    return @call(.never_inline, zigSetClassDesc, .{ pid, desc });
}
pub export fn impl_SetClassMajorAttribute(pid: c_ushort, slot: u8, attrId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetClassMajorAttribute, .{ pid, slot, attrId });
}
pub export fn impl_SetClassSpecialization(pid: c_ushort, spec: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetClassSpecialization, .{ pid, spec });
}
pub export fn impl_SetClassMajorSkill(pid: c_ushort, slot: u8, skillId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetClassMajorSkill, .{ pid, slot, skillId });
}
pub export fn impl_SetClassMinorSkill(pid: c_ushort, slot: u8, skillId: c_int) callconv(.C) void {
    return @call(.never_inline, zigSetClassMinorSkill, .{ pid, slot, skillId });
}

pub export fn impl_SendClass(pid: c_ushort) callconv(.C) void {
    return @call(.never_inline, zigSendClass, .{pid});
}
