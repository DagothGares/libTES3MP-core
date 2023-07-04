//! Raw bindings to the functions declared by TES3MP's CharClass.hpp file.

const binding = @import("../binding.zig");

pub export var libtes3mp_internal_GetDefaultClass: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetClassName: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetClassDesc: *const fn (pid: c_ushort) callconv(.C) ?[*:0]const u8 = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetClassMajorAttribute: *const fn (pid: c_ushort, slot: u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var libtes3mp_internal_GetClassSpecialization: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;
pub export var libtes3mp_internal_GetClassMajorSkill: *const fn (pid: c_ushort, slot: u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var libtes3mp_internal_GetClassMinorSkill: *const fn (pid: c_ushort, slot: u8) callconv(.C) c_int = &binding.ub_fn_ushort_u8;
pub export var libtes3mp_internal_IsClassDefault: *const fn (pid: c_ushort) callconv(.C) c_int = &binding.ub_fn_ushort;

pub export var libtes3mp_internal_SetDefaultClass: *const fn (pid: c_ushort, id: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetClassName: *const fn (pid: c_ushort, name: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetClassDesc: *const fn (pid: c_ushort, desc: [*:0]const u8) callconv(.C) void = &binding.ub_fn_ushort_str;
pub export var libtes3mp_internal_SetClassMajorAttribute: *const fn (pid: c_ushort, slot: u8, attrId: c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;
pub export var libtes3mp_internal_SetClassSpecialization: *const fn (pid: c_ushort, spec: c_int) callconv(.C) void = &binding.ub_fn_ushort_int;
pub export var libtes3mp_internal_SetClassMajorSkill: *const fn (pid: c_ushort, slot: u8, skillId: c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;
pub export var libtes3mp_internal_SetClassMinorSkill: *const fn (pid: c_ushort, slot: u8, skillId: c_int) callconv(.C) void = &binding.ub_fn_ushort_u8_int;

pub export var libtes3mp_internal_SendClass: *const fn (pid: c_ushort) callconv(.C) void = &binding.ub_fn_ushort;

pub export fn libtes3mp_GetDefaultClass(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetDefaultClass(pid);
}
pub export fn libtes3mp_GetClassName(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetClassName(pid);
}
pub export fn libtes3mp_GetClassDesc(pid: c_ushort) callconv(.C) ?[*:0]const u8 {
    return libtes3mp_internal_GetClassDesc(pid);
}
pub export fn libtes3mp_GetClassMajorAttribute(pid: c_ushort, slot: u8) callconv(.C) c_int {
    return libtes3mp_internal_GetClassMajorAttribute(pid, slot);
}
pub export fn libtes3mp_GetClassSpecialization(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_GetClassSpecialization(pid);
}
pub export fn libtes3mp_GetClassMajorSkill(pid: c_ushort, slot: u8) callconv(.C) c_int {
    return libtes3mp_internal_GetClassMajorSkill(pid, slot);
}
pub export fn libtes3mp_GetClassMinorSkill(pid: c_ushort, slot: u8) callconv(.C) c_int {
    return libtes3mp_internal_GetClassMinorSkill(pid, slot);
}
pub export fn libtes3mp_IsClassDefault(pid: c_ushort) callconv(.C) c_int {
    return libtes3mp_internal_IsClassDefault(pid);
}

pub export fn libtes3mp_SetDefaultClass(pid: c_ushort, id: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetDefaultClass(pid, id);
}
pub export fn libtes3mp_SetClassName(pid: c_ushort, name: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetClassName(pid, name);
}
pub export fn libtes3mp_SetClassDesc(pid: c_ushort, desc: [*:0]const u8) callconv(.C) void {
    return libtes3mp_internal_SetClassDesc(pid, desc);
}
pub export fn libtes3mp_SetClassMajorAttribute(pid: c_ushort, slot: u8, attrId: c_int) callconv(.C) void {
    return libtes3mp_internal_SetClassMajorAttribute(pid, slot, attrId);
}
pub export fn libtes3mp_SetClassSpecialization(pid: c_ushort, spec: c_int) callconv(.C) void {
    return libtes3mp_internal_SetClassSpecialization(pid, spec);
}
pub export fn libtes3mp_SetClassMajorSkill(pid: c_ushort, slot: u8, skillId: c_int) callconv(.C) void {
    return libtes3mp_internal_SetClassMajorSkill(pid, slot, skillId);
}
pub export fn libtes3mp_SetClassMinorSkill(pid: c_ushort, slot: u8, skillId: c_int) callconv(.C) void {
    return libtes3mp_internal_SetClassMinorSkill(pid, slot, skillId);
}

pub export fn libtes3mp_SendClass(pid: c_ushort) callconv(.C) void {
    return libtes3mp_internal_SendClass(pid);
}
