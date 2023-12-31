const std = @import("std");
const builtin = @import("builtin");

pub const actor = @import("binding/actor.zig");
pub const book = @import("binding/book.zig");
pub const cell = @import("binding/cell.zig");
pub const chat = @import("binding/chat.zig");
pub const class = @import("binding/class.zig");
pub const dialogue = @import("binding/dialogue.zig");
pub const faction = @import("binding/faction.zig");
pub const gui = @import("binding/gui.zig");
pub const item = @import("binding/item.zig");
pub const mechanic = @import("binding/mechanic.zig");
pub const miscellaneous = @import("binding/miscellaneous.zig");
pub const object = @import("binding/object.zig");
pub const position = @import("binding/position.zig");
pub const quest = @import("binding/quest.zig");
pub const record_dynamic = @import("binding/record_dynamic.zig");
pub const server = @import("binding/server.zig");
pub const setting = @import("binding/setting.zig");
pub const shapeshift = @import("binding/shapeshift.zig");
pub const spell = @import("binding/spell.zig");
pub const stat = @import("binding/stat.zig");
pub const timer = @import("binding/timer.zig");
pub const worldstate = @import("binding/worldstate.zig");

/// Do not use functions from this file. Deprecated functions are only included to appease TES3MP.
pub const deprecated = @import("binding/deprecated.zig");
/// Don't use functions from this file unless you know what you're doing.
pub const default = @import("binding/default.zig");

// The prefix used for variables intended to hold TES3MP-supplied function pointers.
// Why the hell does TES3MP complain if this is a constant instead of a variable?
pub export var prefix: [19]u8 = "libtes3mp_internal_".*;

pub const ForeignFunction = opaque {};
// std.builtin.vaList is broken on Windows x86_64
pub const va_list = switch (builtin.os.tag) {
    .windows => std.os.windows.va_list,
    else => std.builtin.VaList,
};

// TODO: determine if there's a way to automate making these
pub fn ub_fn() callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_str(_: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2str(_: [*:0]const u8, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_bool(_: bool) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2bool(_: bool, _: bool) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_u8(_: u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort(_: c_ushort) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2ushort(_: c_ushort, _: c_ushort) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_3ushort(_: c_ushort, _: c_ushort, _: c_ushort) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_uint(_: c_uint) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2uint(_: c_uint, _: c_uint) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_3uint(_: c_uint, _: c_uint, _: c_uint) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_uint_ushort(_: c_uint, _: c_ushort) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_int(_: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2int(_: c_int, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_f64(_: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2f64(_: f64, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_3f64(_: f64, _: f64, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_str_uint_int_f64(_: c_ushort, _: [*:0]const u8, _: c_uint, _: c_int, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2str_bool(_: [*:0]const u8, _: [*:0]const u8, _: bool) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_int_3f64_int(_: c_int, _: f64, _: f64, _: f64, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_str(_: c_ushort, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_uint(_: c_ushort, _: c_uint) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_2bool(_: c_ushort, _: bool, _: bool) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_2int(_: c_ushort, _: c_int, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_u8(_: c_ushort, _: u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_u8_int(_: c_ushort, _: u8, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_int(_: c_ushort, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_str_2bool(_: c_ushort, _: [*:0]const u8, _: bool, _: bool) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_str_2int_bool(_: c_ushort, _: [*:0]const u8, _: c_int, _: c_int, _: bool) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_int_str(_: c_ushort, _: c_int, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_int_2str(_: c_ushort, _: c_int, _: [*:0]const u8, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2ushort_int_str(_: c_ushort, _: c_ushort, _: c_int, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_str_uint_int_f64_str(_: c_ushort, _: [*:0]const u8, _: c_uint, _: c_int, _: f64, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2ushort_str_uint_int_f64(_: c_ushort, _: c_ushort, _: [*:0]const u8, _: c_uint, _: c_int, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_bool(_: c_ushort, _: bool) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_2f64(_: c_ushort, _: f64, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_3f64(_: c_ushort, _: f64, _: f64, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_int_2bool_2str(_: c_ushort, _: c_int, _: bool, _: bool, _: [*:0]const u8, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_uint_int(_: c_ushort, _: c_uint, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_str_2f64(_: [*:0]const u8, _: f64, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2int_uint(_: c_int, _: c_int, _: c_uint) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_int_f64(_: c_int, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2uint_int(_: c_uint, _: c_uint, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_str_uint_str(_: c_ushort, _: [*:0]const u8, _: c_uint, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_str_uint_str_3uint(_: c_ushort, _: [*:0]const u8, _: c_uint, _: [*:0]const u8, _: c_uint, _: c_uint, _: c_uint) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_str_uint(_: c_ushort, _: [*:0]const u8, _: c_uint) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_uint_str(_: c_uint, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_str_f64(_: [*:0]const u8, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_f64(_: c_ushort, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_2str(_: c_ushort, _: [*:0]const u8, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_2str_bool(_: c_ushort, _: [*:0]const u8, _: [*:0]const u8, _: bool) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_str_uint_f64(_: c_ushort, _: [*:0]const u8, _: c_uint, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_2uint(_: c_ushort, _: c_uint, _: c_uint) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2ushort_int(_: c_ushort, _: c_ushort, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_ushort_int_3f64_int(_: c_ushort, _: c_int, _: f64, _: f64, _: f64, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2ushort_f64(_: c_ushort, _: c_ushort, _: f64) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_str_int(_: [*:0]const u8, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_2int_str(_: c_int, _: c_int, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_str_int_uint(_: [*:0]const u8, _: c_int, _: c_uint) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_fptrva_int(_: *const ForeignFunction, _: c_int) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_fptrva_int_str_va(_: *const ForeignFunction, _: c_int, _: [*:0]const u8, _: ?va_list) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_fptrva_str_char_str(_: *const ForeignFunction, _: [*:0]const u8, _: c_char, _: [*:0]const u8) callconv(.C) noreturn {
    unreachable;
}
pub fn ub_fn_str_va(_: [*:0]const u8, _: ?va_list) callconv(.C) noreturn {
    unreachable;
}
