const std = @import("std");
const builtin = @import("builtin");

var default_allocator = switch (builtin.mode) {
    .ReleaseFast, .ReleaseSmall, .ReleaseSafe => switch (builtin.os) {
        .windows => std.heap.HeapAllocator.init(),
        .linux => if (builtin.link_libc)
            void
        else
            std.heap.GeneralPurposeAllocator(.{}){},
    },
    .Debug => std.heap.GeneralPurposeAllocator(.{}){},
};
var allocator = switch (builtin.mode) {
    .ReleaseFast, .ReleaseSmall, .ReleaseSafe => switch (builtin.os) {
        .windows => default_allocator.allocator(),
        .linux => if (builtin.link_libc)
            std.heap.c_allocator
        else
            default_allocator.allocator(),
    },
    .Debug => default_allocator.allocator(),
};

const binding = @import("binding.zig");
const event = @import("Event.zig");

const Event = event.Event;
const Status = event.Status;

const c_str = binding.c_str;

fn showInitialized(status: Status) void {
    if (status.default) {
        binding.server.zigLogMessage(1, "libTES3MP-core: Initialized.");
    }
}

/// Deinitializes the event allocator, freeing all bound callbacks.
/// Handler status is ignored here, as the callbacks MUST be freed.
fn unbindAll(_: Status, _: bool) void {
    event.event_allocator.deinit();

    binding.server.zigLogMessage(1, "libTES3MP-core: Freed all callbacks.");
}

pub const OnServerInitEvent = Event(fn () void, "OnServerInit", .Void, showInitialized);
pub const OnServerPostInitEvent = Event(fn () void, "OnServerPostInit", .Void, null);
pub const OnServerExitEvent = Event(fn (bool) void, "OnServerExit", .Bool, unbindAll);

// Hilariously, this does not execute during a lua crash, so it's actually useless as an event.
pub const OnServerScriptCrashEvent = Event(fn (c_str) void, "OnServerScriptCrash", .String, unbindAll);
//export fn OnServerScriptCrash(_: c_str) void {}

pub const OnPlayerConnectEvent = Event(fn (c_ushort) void, "OnPlayerConnect", .UnsignedShort, null);
pub const OnPlayerDisconnectEvent = Event(fn (c_ushort) void, "OnPlayerDisconnect", .UnsignedShort, null);
pub const OnPlayerDeathEvent = Event(fn (c_ushort) void, "OnPlayerDeath", .UnsignedShort, null);
pub const OnPlayerResurrectEvent = Event(fn (c_ushort) void, "OnPlayerResurrect", .UnsignedShort, null);
pub const OnPlayerCellChangeEvent = Event(fn (c_ushort) void, "OnPlayerCellChange", .UnsignedShort, null);
pub const OnPlayerAttributeEvent = Event(fn (c_ushort) void, "OnPlayerAttribute", .UnsignedShort, null);
pub const OnPlayerSkillEvent = Event(fn (c_ushort) void, "OnPlayerSkill", .UnsignedShort, null);
pub const OnPlayerLevelEvent = Event(fn (c_ushort) void, "OnPlayerLevel", .UnsignedShort, null);
pub const OnPlayerBountyEvent = Event(fn (c_ushort) void, "OnPlayerBounty", .UnsignedShort, null);
pub const OnPlayerReputationEvent = Event(fn (c_ushort) void, "OnPlayerReputation", .UnsignedShort, null);
pub const OnPlayerEquipmentEvent = Event(fn (c_ushort) void, "OnPlayerEquipment", .UnsignedShort, null);
pub const OnPlayerInventoryEvent = Event(fn (c_ushort) void, "OnPlayerInventory", .UnsignedShort, null);
pub const OnPlayerJournalEvent = Event(fn (c_ushort) void, "OnPlayerJournal", .UnsignedShort, null);
pub const OnPlayerFactionEvent = Event(fn (c_ushort) void, "OnPlayerFaction", .UnsignedShort, null);
pub const OnPlayerShapeshiftEvent = Event(fn (c_ushort) void, "OnPlayerShapeshift", .UnsignedShort, null);
pub const OnPlayerSpellbookEvent = Event(fn (c_ushort) void, "OnPlayerSpellbook", .UnsignedShort, null);
pub const OnPlayerSpellsActiveEvent = Event(fn (c_ushort) void, "OnPlayerSpellsActive", .UnsignedShort, null);
pub const OnPlayerCooldownsEvent = Event(fn (c_ushort) void, "OnPlayerCooldowns", .UnsignedShort, null);
pub const OnPlayerQuickKeysEvent = Event(fn (c_ushort) void, "OnPlayerQuickKeys", .UnsignedShort, null);
pub const OnPlayerTopicEvent = Event(fn (c_ushort) void, "OnPlayerTopic", .UnsignedShort, null);
pub const OnPlayerDispositionEvent = Event(fn (c_ushort) void, "OnPlayerDisposition", .UnsignedShort, null);
pub const OnPlayerBookEvent = Event(fn (c_ushort) void, "OnPlayerBook", .UnsignedShort, null);
pub const OnPlayerItemUseEvent = Event(fn (c_ushort) void, "OnPlayerItemUse", .UnsignedShort, null);
pub const OnPlayerMiscellaneousEvent = Event(fn (c_ushort) void, "OnPlayerMiscellaneous", .UnsignedShort, null);
pub const OnPlayerInputEvent = Event(fn (c_ushort) void, "OnPlayerInput", .UnsignedShort, null);
pub const OnPlayerRestEvent = Event(fn (c_ushort) void, "OnPlayerRest", .UnsignedShort, null);
pub const OnPlayerSendMessageEvent = Event(fn (c_ushort, c_str) void, "OnPlayerSendMessage", .UnsignedShort_String, null);
pub const OnPlayerEndCharGenEvent = Event(fn (c_ushort) void, "OnPlayerEndCharGen", .UnsignedShort, null);

pub const OnCellLoadEvent = Event(fn (c_ushort, c_str) void, "OnCellLoad", .UnsignedShort_String, null);
pub const OnCellUnloadEvent = Event(fn (c_ushort, c_str) void, "OnCellUnload", .UnsignedShort_String, null);
pub const OnCellDeletionEvent = Event(fn (c_str) void, "OnCellDeletion", .String, null);

pub const OnRecordDynamicEvent = Event(fn (c_ushort) void, "OnRecordDynamic", .UnsignedShort, null);
pub const OnConsoleCommandEvent = Event(fn (c_ushort, c_str) void, "OnConsoleCommand", .UnsignedShort_String, null);
pub const OnContainerEvent = Event(fn (c_ushort, c_str) void, "OnContainer", .UnsignedShort_String, null);
pub const OnDoorStateEvent = Event(fn (c_ushort, c_str) void, "OnDoorState", .UnsignedShort_String, null);
pub const OnVideoPlayEvent = Event(fn (c_ushort, c_str) void, "OnVideoPlay", .UnsignedShort_String, null);
pub const OnGUIActionEvent = Event(fn (c_ushort, c_int, c_str) void, "OnGUIAction", .UnsignedShort_Int_String, null);
pub const OnMpNumIncrementEvent = Event(fn (c_int) void, "OnMpNumIncrement", .Int, null);
pub const OnRequestDataFileListEvent = Event(fn () void, "OnRequestDataFileList", .Void, null);

pub const OnObjectActivateEvent = Event(fn (c_ushort, c_str) void, "OnObjectActivate", .UnsignedShort_String, null);
pub const OnObjectHitEvent = Event(fn (c_ushort, c_str) void, "OnObjectHit", .UnsignedShort_String, null);
pub const OnObjectPlaceEvent = Event(fn (c_ushort, c_str) void, "OnObjectPlace", .UnsignedShort_String, null);
pub const OnObjectSpawnEvent = Event(fn (c_ushort, c_str) void, "OnObjectSpawn", .UnsignedShort_String, null);
pub const OnObjectDeleteEvent = Event(fn (c_ushort, c_str) void, "OnObjectDelete", .UnsignedShort_String, null);
pub const OnObjectLockEvent = Event(fn (c_ushort, c_str) void, "OnObjectLock", .UnsignedShort_String, null);
pub const OnObjectDialogueChoiceEvent = Event(fn (c_ushort, c_str) void, "OnObjectDialogueChoice", .UnsignedShort_String, null);
pub const OnObjectMiscellaneousEvent = Event(fn (c_ushort, c_str) void, "OnObjectMiscellaneous", .UnsignedShort_String, null);
pub const OnObjectRestockEvent = Event(fn (c_ushort, c_str) void, "OnObjectRestock", .UnsignedShort_String, null);
pub const OnObjectScaleEvent = Event(fn (c_ushort, c_str) void, "OnObjectScale", .UnsignedShort_String, null);
pub const OnObjectSoundEvent = Event(fn (c_ushort, c_str) void, "OnObjectSound", .UnsignedShort_String, null);
pub const OnObjectTrapEvent = Event(fn (c_ushort, c_str) void, "OnObjectTrap", .UnsignedShort_String, null);

pub const OnActorListEvent = Event(fn (c_ushort, c_str) void, "OnActorList", .UnsignedShort_String, null);
pub const OnActorAIEvent = Event(fn (c_ushort, c_str) void, "OnActorList", .UnsignedShort_String, null);
pub const OnActorDeathEvent = Event(fn (c_ushort, c_str) void, "OnActorDeath", .UnsignedShort_String, null);
pub const OnActorSpellsActiveEvent = Event(fn (c_ushort, c_str) void, "OnActorSpellsActive", .UnsignedShort_String, null);
pub const OnActorCellChangeEvent = Event(fn (c_ushort, c_str) void, "OnActorCellChange", .UnsignedShort_String, null);
pub const OnActorTestEvent = Event(fn (c_ushort, c_str) void, "OnActorTest", .UnsignedShort_String, null);

pub const OnWorldKillCountEvent = Event(fn (c_ushort) void, "OnWorldKillCount", .UnsignedShort, null);
pub const OnWorldMapEvent = Event(fn (c_ushort) void, "OnWorldMap", .UnsignedShort, null);
pub const OnWorldWeatherEvent = Event(fn (c_ushort) void, "OnWorldWeather", .UnsignedShort, null);

pub const OnClientScriptLocalEvent = Event(fn (c_ushort, c_str) void, "OnClientScriptLocal", .UnsignedShort_String, null);
pub const OnClientScriptGlobalEvent = Event(fn (c_ushort) void, "OnClientScriptGlobal", .UnsignedShort, null);

// std.testing.refAllDeclsRecursive can't be used here, because Zig won't execute the recursive
// call, since we're not in a test. I'm not sure if that could be considered a bug.
comptime {
    _ = binding.prefix;
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

    std.testing.refAllDecls(OnServerInitEvent);
    std.testing.refAllDecls(OnServerPostInitEvent);
    std.testing.refAllDecls(OnServerExitEvent);
    std.testing.refAllDecls(OnServerScriptCrashEvent);

    std.testing.refAllDecls(OnPlayerConnectEvent);
    std.testing.refAllDecls(OnPlayerDisconnectEvent);
    std.testing.refAllDecls(OnPlayerDeathEvent);
    std.testing.refAllDecls(OnPlayerResurrectEvent);
    std.testing.refAllDecls(OnPlayerCellChangeEvent);
    std.testing.refAllDecls(OnPlayerAttributeEvent);
    std.testing.refAllDecls(OnPlayerSkillEvent);
    std.testing.refAllDecls(OnPlayerLevelEvent);
    std.testing.refAllDecls(OnPlayerBountyEvent);
    std.testing.refAllDecls(OnPlayerReputationEvent);
    std.testing.refAllDecls(OnPlayerEquipmentEvent);
    std.testing.refAllDecls(OnPlayerInventoryEvent);
    std.testing.refAllDecls(OnPlayerJournalEvent);
    std.testing.refAllDecls(OnPlayerFactionEvent);
    std.testing.refAllDecls(OnPlayerShapeshiftEvent);
    std.testing.refAllDecls(OnPlayerSpellbookEvent);
    std.testing.refAllDecls(OnPlayerSpellsActiveEvent);
    std.testing.refAllDecls(OnPlayerCooldownsEvent);
    std.testing.refAllDecls(OnPlayerQuickKeysEvent);
    std.testing.refAllDecls(OnPlayerTopicEvent);
    std.testing.refAllDecls(OnPlayerDispositionEvent);
    std.testing.refAllDecls(OnPlayerBookEvent);
    std.testing.refAllDecls(OnPlayerItemUseEvent);
    std.testing.refAllDecls(OnPlayerMiscellaneousEvent);
    std.testing.refAllDecls(OnPlayerInputEvent);
    std.testing.refAllDecls(OnPlayerRestEvent);
    std.testing.refAllDecls(OnPlayerSendMessageEvent);
    std.testing.refAllDecls(OnPlayerEndCharGenEvent);

    std.testing.refAllDecls(OnCellLoadEvent);
    std.testing.refAllDecls(OnCellUnloadEvent);
    std.testing.refAllDecls(OnCellDeletionEvent);

    std.testing.refAllDecls(OnRecordDynamicEvent);
    std.testing.refAllDecls(OnConsoleCommandEvent);
    std.testing.refAllDecls(OnContainerEvent);
    std.testing.refAllDecls(OnDoorStateEvent);
    std.testing.refAllDecls(OnVideoPlayEvent);
    std.testing.refAllDecls(OnGUIActionEvent);

    std.testing.refAllDecls(OnObjectActivateEvent);
    std.testing.refAllDecls(OnObjectHitEvent);
    std.testing.refAllDecls(OnObjectPlaceEvent);
    std.testing.refAllDecls(OnObjectSpawnEvent);
    std.testing.refAllDecls(OnObjectDeleteEvent);
    std.testing.refAllDecls(OnObjectLockEvent);
    std.testing.refAllDecls(OnObjectDialogueChoiceEvent);
    std.testing.refAllDecls(OnObjectMiscellaneousEvent);
    std.testing.refAllDecls(OnObjectRestockEvent);
    std.testing.refAllDecls(OnObjectScaleEvent);
    std.testing.refAllDecls(OnObjectSoundEvent);
    std.testing.refAllDecls(OnObjectTrapEvent);
    std.testing.refAllDecls(OnMpNumIncrementEvent);
    std.testing.refAllDecls(OnRequestDataFileListEvent);

    std.testing.refAllDecls(OnObjectActivateEvent);
    std.testing.refAllDecls(OnObjectHitEvent);
    std.testing.refAllDecls(OnObjectPlaceEvent);
    std.testing.refAllDecls(OnObjectSpawnEvent);
    std.testing.refAllDecls(OnObjectDeleteEvent);
    std.testing.refAllDecls(OnObjectLockEvent);
    std.testing.refAllDecls(OnObjectDialogueChoiceEvent);
    std.testing.refAllDecls(OnObjectMiscellaneousEvent);
    std.testing.refAllDecls(OnObjectRestockEvent);
    std.testing.refAllDecls(OnObjectScaleEvent);
    std.testing.refAllDecls(OnObjectSoundEvent);
    std.testing.refAllDecls(OnObjectTrapEvent);

    std.testing.refAllDecls(OnActorListEvent);
    std.testing.refAllDecls(OnActorAIEvent);
    std.testing.refAllDecls(OnActorDeathEvent);
    std.testing.refAllDecls(OnActorSpellsActiveEvent);
    std.testing.refAllDecls(OnActorCellChangeEvent);
    std.testing.refAllDecls(OnActorTestEvent);

    std.testing.refAllDecls(OnWorldKillCountEvent);
    std.testing.refAllDecls(OnWorldMapEvent);
    std.testing.refAllDecls(OnWorldWeatherEvent);

    std.testing.refAllDecls(OnClientScriptLocalEvent);
    std.testing.refAllDecls(OnClientScriptGlobalEvent);
}
