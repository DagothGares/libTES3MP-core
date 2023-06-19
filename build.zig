const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const lib = b.addSharedLibrary(.{
        .name = "libTES3MP-core",
        .root_source_file = .{ .path = "src/main.zig" },
        .target = target,
        .optimize = optimize,
    });

    switch (optimize) {
        .ReleaseFast, .ReleaseSmall => lib.strip = true,
        else => {},
    }

    b.installArtifact(lib);
}
