const std = @import("std");
const builtin = @import("builtin");

var default_allocator = switch (builtin.mode) {
    .ReleaseFast, .ReleaseSmall, .ReleaseSafe => switch (builtin.os.tag) {
        .windows => std.heap.HeapAllocator.init(),
        else => if (builtin.link_libc)
            null
        else
            std.heap.GeneralPurposeAllocator(.{}){},
    },
    .Debug => std.heap.GeneralPurposeAllocator(.{}){},
};
pub const allocator = switch (builtin.mode) {
    .ReleaseFast, .ReleaseSmall, .ReleaseSafe => switch (builtin.os.tag) {
        .windows => default_allocator.allocator(),
        else => if (builtin.link_libc)
            std.heap.c_allocator
        else
            default_allocator.allocator(),
    },
    .Debug => default_allocator.allocator(),
};

const binding = @import("binding.zig");
const event = @import("Event.zig");
const load = @import("load.zig");

const Event = event.Event;
const Status = event.Status;

const c_str = binding.c_str;

fn showInitialized(status: Status) void {
    if (@intFromEnum(status) & @intFromEnum(Status.Default) != 0) {
        binding.server.zigLogMessage(1, "libTES3MP-core: Initialized.");
    }
}

/// Frees all callback pointers, and closes and releases all libraries.
/// Handler status is ignored here, as the callbacks MUST be freed.
fn unbindAll(_: Status, _: bool) void {
    // TODO: narrow down why unbind() causes a segfault in safe builds on Windows
    inline for (@typeInfo(Events).Struct.decls) |decl| {
        @field(Events, decl.name).unbind();
    }

    load.unloadLibraries();

    binding.server.zigLogMessage(
        1,
        "libTES3MP-core: Freed all callbacks; closed all library handles.",
    );
}

fn unbindAll_Crash(_: Status, _: c_str) void {
    return unbindAll(undefined, undefined);
}

pub const Events = struct {
    pub const OnServerInitEvent = Event(fn () void, "OnServerInit", .Void, load.init, showInitialized);
    pub const OnServerPostInitEvent = Event(fn () void, "OnServerPostInit", .Void, null, null);
    pub const OnServerExitEvent = Event(fn (bool) void, "OnServerExit", .Bool, null, unbindAll);

    // Hilariously, this does not execute during a lua crash, so it's actually useless as an event.
    // I still treat it as a real one, however, so that things will still work as intended if this
    // gets fixed in the future.
    pub const OnServerScriptCrashEvent = Event(fn (c_str) void, "OnServerScriptCrash", .String, null, unbindAll_Crash);

    pub const OnPlayerConnectEvent = Event(fn (c_ushort) void, "OnPlayerConnect", .UnsignedShort, null, null);
    pub const OnPlayerDisconnectEvent = Event(fn (c_ushort) void, "OnPlayerDisconnect", .UnsignedShort, null, null);
    pub const OnPlayerDeathEvent = Event(fn (c_ushort) void, "OnPlayerDeath", .UnsignedShort, null, null);
    pub const OnPlayerResurrectEvent = Event(fn (c_ushort) void, "OnPlayerResurrect", .UnsignedShort, null, null);
    pub const OnPlayerCellChangeEvent = Event(fn (c_ushort) void, "OnPlayerCellChange", .UnsignedShort, null, null);
    pub const OnPlayerAttributeEvent = Event(fn (c_ushort) void, "OnPlayerAttribute", .UnsignedShort, null, null);
    pub const OnPlayerSkillEvent = Event(fn (c_ushort) void, "OnPlayerSkill", .UnsignedShort, null, null);
    pub const OnPlayerLevelEvent = Event(fn (c_ushort) void, "OnPlayerLevel", .UnsignedShort, null, null);
    pub const OnPlayerBountyEvent = Event(fn (c_ushort) void, "OnPlayerBounty", .UnsignedShort, null, null);
    pub const OnPlayerReputationEvent = Event(fn (c_ushort) void, "OnPlayerReputation", .UnsignedShort, null, null);
    pub const OnPlayerEquipmentEvent = Event(fn (c_ushort) void, "OnPlayerEquipment", .UnsignedShort, null, null);
    pub const OnPlayerInventoryEvent = Event(fn (c_ushort) void, "OnPlayerInventory", .UnsignedShort, null, null);
    pub const OnPlayerJournalEvent = Event(fn (c_ushort) void, "OnPlayerJournal", .UnsignedShort, null, null);
    pub const OnPlayerFactionEvent = Event(fn (c_ushort) void, "OnPlayerFaction", .UnsignedShort, null, null);
    pub const OnPlayerShapeshiftEvent = Event(fn (c_ushort) void, "OnPlayerShapeshift", .UnsignedShort, null, null);
    pub const OnPlayerSpellbookEvent = Event(fn (c_ushort) void, "OnPlayerSpellbook", .UnsignedShort, null, null);
    pub const OnPlayerSpellsActiveEvent = Event(fn (c_ushort) void, "OnPlayerSpellsActive", .UnsignedShort, null, null);
    pub const OnPlayerCooldownsEvent = Event(fn (c_ushort) void, "OnPlayerCooldowns", .UnsignedShort, null, null);
    pub const OnPlayerQuickKeysEvent = Event(fn (c_ushort) void, "OnPlayerQuickKeys", .UnsignedShort, null, null);
    pub const OnPlayerTopicEvent = Event(fn (c_ushort) void, "OnPlayerTopic", .UnsignedShort, null, null);
    pub const OnPlayerDispositionEvent = Event(fn (c_ushort) void, "OnPlayerDisposition", .UnsignedShort, null, null);
    pub const OnPlayerBookEvent = Event(fn (c_ushort) void, "OnPlayerBook", .UnsignedShort, null, null);
    pub const OnPlayerItemUseEvent = Event(fn (c_ushort) void, "OnPlayerItemUse", .UnsignedShort, null, null);
    pub const OnPlayerMiscellaneousEvent = Event(fn (c_ushort) void, "OnPlayerMiscellaneous", .UnsignedShort, null, null);
    pub const OnPlayerInputEvent = Event(fn (c_ushort) void, "OnPlayerInput", .UnsignedShort, null, null);
    pub const OnPlayerRestEvent = Event(fn (c_ushort) void, "OnPlayerRest", .UnsignedShort, null, null);
    pub const OnPlayerSendMessageEvent = Event(fn (c_ushort, c_str) void, "OnPlayerSendMessage", .UnsignedShort_String, null, null);
    pub const OnPlayerEndCharGenEvent = Event(fn (c_ushort) void, "OnPlayerEndCharGen", .UnsignedShort, null, null);

    pub const OnCellLoadEvent = Event(fn (c_ushort, c_str) void, "OnCellLoad", .UnsignedShort_String, null, null);
    pub const OnCellUnloadEvent = Event(fn (c_ushort, c_str) void, "OnCellUnload", .UnsignedShort_String, null, null);
    pub const OnCellDeletionEvent = Event(fn (c_str) void, "OnCellDeletion", .String, null, null);

    pub const OnRecordDynamicEvent = Event(fn (c_ushort) void, "OnRecordDynamic", .UnsignedShort, null, null);
    pub const OnConsoleCommandEvent = Event(fn (c_ushort, c_str) void, "OnConsoleCommand", .UnsignedShort_String, null, null);
    pub const OnContainerEvent = Event(fn (c_ushort, c_str) void, "OnContainer", .UnsignedShort_String, null, null);
    pub const OnDoorStateEvent = Event(fn (c_ushort, c_str) void, "OnDoorState", .UnsignedShort_String, null, null);
    pub const OnVideoPlayEvent = Event(fn (c_ushort, c_str) void, "OnVideoPlay", .UnsignedShort_String, null, null);
    pub const OnGUIActionEvent = Event(fn (c_ushort, c_int, c_str) void, "OnGUIAction", .UnsignedShort_Int_String, null, null);
    pub const OnMpNumIncrementEvent = Event(fn (c_int) void, "OnMpNumIncrement", .Int, null, null);
    pub const OnRequestDataFileListEvent = Event(fn () void, "OnRequestDataFileList", .Void, null, null);

    pub const OnObjectActivateEvent = Event(fn (c_ushort, c_str) void, "OnObjectActivate", .UnsignedShort_String, null, null);
    pub const OnObjectHitEvent = Event(fn (c_ushort, c_str) void, "OnObjectHit", .UnsignedShort_String, null, null);
    pub const OnObjectPlaceEvent = Event(fn (c_ushort, c_str) void, "OnObjectPlace", .UnsignedShort_String, null, null);
    pub const OnObjectSpawnEvent = Event(fn (c_ushort, c_str) void, "OnObjectSpawn", .UnsignedShort_String, null, null);
    pub const OnObjectDeleteEvent = Event(fn (c_ushort, c_str) void, "OnObjectDelete", .UnsignedShort_String, null, null);
    pub const OnObjectLockEvent = Event(fn (c_ushort, c_str) void, "OnObjectLock", .UnsignedShort_String, null, null);
    pub const OnObjectDialogueChoiceEvent = Event(fn (c_ushort, c_str) void, "OnObjectDialogueChoice", .UnsignedShort_String, null, null);
    pub const OnObjectMiscellaneousEvent = Event(fn (c_ushort, c_str) void, "OnObjectMiscellaneous", .UnsignedShort_String, null, null);
    pub const OnObjectRestockEvent = Event(fn (c_ushort, c_str) void, "OnObjectRestock", .UnsignedShort_String, null, null);
    pub const OnObjectScaleEvent = Event(fn (c_ushort, c_str) void, "OnObjectScale", .UnsignedShort_String, null, null);
    pub const OnObjectSoundEvent = Event(fn (c_ushort, c_str) void, "OnObjectSound", .UnsignedShort_String, null, null);
    pub const OnObjectTrapEvent = Event(fn (c_ushort, c_str) void, "OnObjectTrap", .UnsignedShort_String, null, null);

    pub const OnActorListEvent = Event(fn (c_ushort, c_str) void, "OnActorList", .UnsignedShort_String, null, null);
    pub const OnActorAIEvent = Event(fn (c_ushort, c_str) void, "OnActorAI", .UnsignedShort_String, null, null);
    pub const OnActorDeathEvent = Event(fn (c_ushort, c_str) void, "OnActorDeath", .UnsignedShort_String, null, null);
    pub const OnActorSpellsActiveEvent = Event(fn (c_ushort, c_str) void, "OnActorSpellsActive", .UnsignedShort_String, null, null);
    pub const OnActorCellChangeEvent = Event(fn (c_ushort, c_str) void, "OnActorCellChange", .UnsignedShort_String, null, null);
    pub const OnActorTestEvent = Event(fn (c_ushort, c_str) void, "OnActorTest", .UnsignedShort_String, null, null);

    pub const OnWorldKillCountEvent = Event(fn (c_ushort) void, "OnWorldKillCount", .UnsignedShort, null, null);
    pub const OnWorldMapEvent = Event(fn (c_ushort) void, "OnWorldMap", .UnsignedShort, null, null);
    pub const OnWorldWeatherEvent = Event(fn (c_ushort) void, "OnWorldWeather", .UnsignedShort, null, null);

    pub const OnClientScriptLocalEvent = Event(fn (c_ushort, c_str) void, "OnClientScriptLocal", .UnsignedShort_String, null, null);
    pub const OnClientScriptGlobalEvent = Event(fn (c_ushort) void, "OnClientScriptGlobal", .UnsignedShort, null, null);
};

// std.testing.refAllDeclsRecursive can't be used here, because Zig won't execute the recursive
// call, since we're not in a test. I'm not sure if that could be considered a bug.
comptime {
    std.testing.refAllDecls(binding);
    std.testing.refAllDecls(binding.actors);
    std.testing.refAllDecls(binding.books);
    std.testing.refAllDecls(binding.cells);
    std.testing.refAllDecls(binding.chat);
    std.testing.refAllDecls(binding.class);
    std.testing.refAllDecls(binding.default);
    std.testing.refAllDecls(binding.deprecated);
    std.testing.refAllDecls(binding.dialogue);
    std.testing.refAllDecls(binding.factions);
    std.testing.refAllDecls(binding.gui);
    std.testing.refAllDecls(binding.items);
    std.testing.refAllDecls(binding.mechanics);
    std.testing.refAllDecls(binding.miscellaneous);
    std.testing.refAllDecls(binding.objects);
    std.testing.refAllDecls(binding.positions);
    std.testing.refAllDecls(binding.quests);
    std.testing.refAllDecls(binding.records_dynamic);
    std.testing.refAllDecls(binding.server);
    std.testing.refAllDecls(binding.settings);
    std.testing.refAllDecls(binding.shapeshift);
    std.testing.refAllDecls(binding.spells);
    std.testing.refAllDecls(binding.stats);
    std.testing.refAllDecls(binding.timer);
    std.testing.refAllDecls(binding.worldstate);

    for (@typeInfo(Events).Struct.decls) |decl| {
        std.testing.refAllDecls(@field(Events, decl.name));
    }
}
