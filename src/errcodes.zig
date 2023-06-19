const std = @import("std");
const builtin = @import("builtin");

const windows = std.os.windows;
const linux = std.os.linux;

pub const codes = switch (builtin.os.tag) {
    .windows => enum(c_int) {
        OutOfMemory = windows.E_OUTOFMEMORY,
    },
    .linux => enum(c_int) {
        OutOfMemory = linux.E.NOMEM,
    },
    else => @compileError("NYI/invalid target"),
};
