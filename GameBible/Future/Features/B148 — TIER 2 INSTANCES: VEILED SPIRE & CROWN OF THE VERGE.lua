----------------------------------------------------------------
-- B148 — TIER 2 INSTANCES: VEILED SPIRE & CROWN OF THE VERGE
--
-- This module defines the Tier 2 instance structure that sits
-- on top of the Shattered Verge (B147) and Relic Ascension (B145–146):
--
--   • Two Tier 2 5-player dungeons.
--   • One Tier 2 10–20 player raid.
--   • A small but concrete set of T2 items that drop there.
--
-- NOTE:
--   • This is structure + items, not full boss scripts.
--   • LootTables[...] entries are string keys you can wire
--     into your existing loot system.
----------------------------------------------------------------

local Tier2Instances = {}

----------------------------------------------------------------
-- 1. DUNGEONS (TIER 2 · 5-PLAYER)
----------------------------------------------------------------

Tier2Instances.Dungeons = {

    ----------------------------------------------------------------
    -- 1.1 VEILED SPIRE OF CONVERGENCE
    ----------------------------------------------------------------
    {
        id        = "DUNGEON_VEILED_SPIRE",
        name      = "Veiled Spire of Convergence",
        tier      = 2,
        levelReq  = 60,
        location  = "SV_CONVERGENCE_SCAR",
        minPlayers = 5,
        maxPlayers = 5,

        flavor = [[
A vertical spire of stone and riftglass rising from the center of the Convergence Scar. 
Each floor leans harder into a different element: root, ember, frost, and hollow sky,
all swirling around a core of pure convergence.]],

        bosses = {
            {
                id       = "BOSS_SPIRE_SHARDWARD_GATE",
                name     = "Shardward Gate",
                order    = 1,
                roleHint = "tank_check + add_control",
                description = [[
A living gate of riftglass shards and runes that rearranges itself between phases. 
Players must intercept shatter-lines and interrupt shard forges while surviving 
cleaves and crystal storms.]],

                lootTable = "Dungeon.VeiledSpire.ShardwardGate",
            },

            {
                id       = "BOSS_SPIRE_ASCENDANT_WARDER",
                name     = "Ascendant Warder",
                order    = 2,
                roleHint = "positional + soak",
                description = [[
A Convergence-touched warden that drags platforms closer or further from the core. 
Players dance between safe rings, soaking convergent blasts and avoiding being 
punted into the Scar.]],

                lootTable = "Dungeon.VeiledSpire.AscendantWarder",
            },

            {
                id       = "BOSS_SPIRE_EYE",
                name     = "Eye of the Spire",
                order    = 3,
                roleHint = "line_of_sight + burst",
                description = [[
A massive, rotating rift eye that fires beams along fixed lanes. Players must use 
moving pillars as line-of-sight while bursting down exposed facets of the Eye.]],

                lootTable = "Dungeon.VeiledSpire.EyeOfTheSpire",
            },

            {
                id       = "BOSS_SPIRE_OVERLORD",
                name     = "Spireheart Overlord",
                order    = 4,
                roleHint = "full_group_check",
                description = [[
A Convergence-aligned warlord wielding both plate and spell. Cycles through 
root/ember/frost/shadow phases, testing tanks, healers, and DPS with tightly-tuned 
damage checks and interrupts.]],

                lootTable = "Dungeon.VeiledSpire.SpireheartOverlord",
            },
        },
    },

    ----------------------------------------------------------------
    -- 1.2 MERIDIAN UNDERCRYPT
    ----------------------------------------------------------------
    {
        id        = "DUNGEON_MERIDIAN_UNDERCRYPT",
        name      = "Meridian Undercrypt",
        tier      = 2,
        levelReq  = 60,
        location  = "SV_HOLLOW_MERIDIAN",
        minPlayers = 5,
        maxPlayers = 5,

        flavor = [[
A buried archive and execution hall half-swallowed by rifts. Corridors loop back 
on themselves, and echoes of old trials drift between broken cells.]],

        bosses = {
            {
                id       = "BOSS_UNDERCRYPT_GLOAMWARDEN_TRIAD",
                name     = "Gloamwarden Triad",
                order    = 1,
                roleHint = "multi_target + priority_kill",
                description = [[
Three wardens bound to root, ember, and shadow respectively. Players must juggle 
overlapping auras: kill orders change how the encounter ends and which buffs 
the final phase carries.]],

                lootTable = "Dungeon.MeridianUndercrypt.GloamwardenTriad",
            },

            {
                id       = "BOSS_UNDERCRYPT_ECHOED_EXECUTIONER",
                name     = "Echoed Executioner",
                order    = 2,
                roleHint = "execution_marks + movement",
                description = [[
An executioner whose axe remembers every swing. Marks players with echoes of 
past executions; standing in the wrong places at the wrong times chains 
those echoes together.]],

                lootTable = "Dungeon.MeridianUndercrypt.EchoedExecutioner",
            },

            {
                id       = "BOSS_UNDERCRYPT_RIFTLOCKED_ARCHIVIST",
                name     = "Rift-locked Archivist",
                order    = 3,
                roleHint = "interrupt + add_control",
                description = [[
A librarian fused to their shelves by riftstone. Summons tomes that rewrite 
mechanics mid-fight: pulling players across the room, inverting healing, 
or spawning shadow copies.]],

                lootTable = "Dungeon.MeridianUndercrypt.RiftlockedArchivist",
            },

            {
                id       = "BOSS_UNDERCRYPT_MERIDIAN_DEVOURER",
                name     = "Devourer at the Meridian",
                order    = 4,
                roleHint = "burn + survival",
                description = [[
A mass of teeth and eyes in the floor crack, trying to swallow the entire hall.
Players must break tether anchors, manage stacking debuffs, and burn the core 
before the arena is consumed.]],

                lootTable = "Dungeon.MeridianUndercrypt.MeridianDevourer",
            },
        },
    },

}

----------------------------------------------------------------
-- 2. RAID (TIER 2 · 10–20 PLAYER)
----------------------------------------------------------------

Tier2Instances.Raids = {

    ----------------------------------------------------------------
    -- 2.1 CROWN OF THE SHATTERED VERGE
    ----------------------------------------------------------------
    {
        id        = "RAID_CROWN_OF_SHATTERED_VERGE",
        name      = "Crown of the Shattered Verge",
        tier      = 2,
        levelReq  = 60,
        location  = "Above Shattered Verge (Sky Fortress)",
        minPlayers = 10,
        maxPlayers = 20,

        flavor = [[
A floating ring-fortress anchored above the Convergence Scar, built from fragments 
of the Citadel, sky-islands, and broken leyline focus towers. This is where the 
strongest currents of convergence are channeled and (barely) contained.]],

        wings = {
            {
                id   = "WING_CONDUIT_SPIRES",
                name = "Conduit Spires",
                bosses = {
                    {
                        id       = "BOSS_CROWN_TRIPLE_BEACON",
                        name     = "The Triple Beacon",
                        order    = 1,
                        roleHint = "multi_boss + split_groups",
                        description = [[
Three massive convergence beacons around the ring, each aligned to root, ember, 
or frost. Groups split to handle them in parallel, swapping debuffs and passing 
a shared overload bar between platforms.]],

                        lootTable = "Raid.Crown.TripleBeacon",
                    },
                    {
                        id       = "BOSS_CROWN_AURORA_ENGINE",
                        name     = "Aurora Engine",
                        order    = 2,
                        roleHint = "movement + cleanse",
                        description = [[
A rotating engine that channels aurora through mirror arrays. Players reposition 
mirrors, cleanse stacking lightburn, and handle periodic 'dark inversions' where 
only those in shadow can act normally.]],

                        lootTable = "Raid.Crown.AuroraEngine",
                    },
                },
            },

            {
                id   = "WING_ROOT_AND_HOLLOW",
                name = "Root and Hollow Court",
                bosses = {
                    {
                        id       = "BOSS_CROWN_ROOTFLAME_COUNCIL",
                        name     = "Rootflame Council",
                        order    = 3,
                        roleHint = "council + add_heavy",
                        description = [[
A council of three: a Heartroot speaker, an Ember gale-priest, and a Hollow 
arbiter. Each killed member strengthens the remaining two in different ways, 
changing the fight’s pacing and damage patterns.]],

                        lootTable = "Raid.Crown.RootflameCouncil",
                    },
                    {
                        id       = "BOSS_CROWN_HOLLOW_KING",
                        name     = "Hollow-King Edras",
                        order    = 4,
                        roleHint = "single_target + environment",
                        description = [[
A former Citadel commander refusing to let go of power. Uses echoes of raid 
members against them, and cracks the ring itself, forcing careful movement as 
sections fall away.]],

                        lootTable = "Raid.Crown.HollowKingEdras",
                    },
                },
            },

            {
                id   = "WING_SKYBREAK",
                name = "Skybreak Apex",
                bosses = {
                    {
                        id       = "BOSS_CROWN_SKYSEVER_SERAPH",
                        name     = "Skysever Seraph",
                        order    = 5,
                        roleHint = "air_phases + platform_control",
                        description = [[
A winged convergence seraph that alternates between platform perches and full 
flight. Players ride updrafts, control when and where it lands, and manage add 
waves on isolated spires.]],

                        lootTable = "Raid.Crown.SkyseverSeraph",
                    },
                    {
                        id       = "BOSS_CROWN_CONVERGENCE_CORE",
                        name     = "Heart of the Broken Crown",
                        order    = 6,
                        roleHint = "finale_all_roles",
                        description = [[
The raid’s final boss: a convergence core that cycles rapidly between elements, 
manifesting avatars of earlier bosses and forcing players to juggle mechanics 
they thought they’d mastered already.]],

                        lootTable = "Raid.Crown.ConvergenceCore",
                    },
                },
            },
        },
    },

}

----------------------------------------------------------------
-- 3. TIER 2 ITEMS (SELECT HIGHLIGHTS)
--
-- These are concrete example T2 items dropped in the above
-- instances. They are tuned to sit ~10–15% above T1 Rares and
-- slightly under or around Ascended relic power, depending on slot.
--
-- NOTE:
--   • This is not meant to be a complete item list; it's a solid
--     spine of identity pieces per role that you can expand from.
----------------------------------------------------------------

Tier2Instances.Items = {

    ----------------------------------------------------------------
    -- 3.1 TANK-Focused T2 ITEMS (HEAVY)
    ----------------------------------------------------------------

    EMBERHEART_CRESTED_HELM = {
        id        = "ITEM_EMBERHEART_CRESTED_HELM",
        name      = "Emberheart Crested Helm",
        tier      = 2,
        levelReq  = 60,
        slot      = "HEAD",
        armorType = "HEAVY",
        quality   = "EPIC",
        roleTags  = { "TANK" },

        stats = {
            strength = 34,
            stamina  = 60,
            armor    = 260,
            blockChance = 2,   -- %
        },

        passive = {
            id = "PASSIVE_EMBER_HELM_BRACING",
            description = "Blocking a heavy hit grants 2% additional damage reduction for 6 sec, stacking up to 3 times.",
        },

        source = {
            instances = { "DUNGEON_VEILED_SPIRE" },
            bosses    = { "BOSS_SPIRE_SHARDWARD_GATE", "BOSS_SPIRE_ASCENDANT_WARDER" },
        },
    },

    ROOTBOUND_BASTION_GREAVES = {
        id        = "ITEM_ROOTBOUND_BASTION_GREAVES",
        name      = "Rootbound Bastion Greaves",
        tier      = 2,
        levelReq  = 60,
        slot      = "LEGS",
        armorType = "HEAVY",
        quality   = "EPIC",
        roleTags  = { "TANK" },

        stats = {
            strength = 36,
            stamina  = 64,
            armor    = 280,
        },

        passive = {
            id = "PASSIVE_ROOTBOUND_PRESENCE",
            description = "While you remain stationary for 3 sec, gain 3% additional armor and 3% increased threat generation. Buff lingers 3 sec after moving.",
        },

        source = {
            instances = { "DUNGEON_MERIDIAN_UNDERCRYPT" },
            bosses    = { "BOSS_UNDERCRYPT_MERIDIAN_DEVOURER" },
        },
    },

    CROWN_GUARDIANS_AEGIS = {
        id        = "ITEM_CROWN_GUARDIANS_AEGIS",
        name      = "Crown Guardian's Aegis",
        tier      = 2,
        levelReq  = 60,
        slot      = "SHIELD",
        armorType = "HEAVY",
        quality   = "EPIC",
        roleTags  = { "TANK" },

        stats = {
            strength    = 30,
            stamina     = 72,
            armor       = 320,
            blockChance = 3,
            blockValue  = 40,
        },

        passive = {
            id = "PASSIVE_CROWN_LINEHOLD",
            description = "When you block three attacks within 8 sec, gain a 10% damage reduction buff for 6 sec. This cannot occur more than once every 20 sec.",
        },

        source = {
            instances = { "RAID_CROWN_OF_SHATTERED_VERGE" },
            bosses    = { "BOSS_CROWN_ROOTFLAME_COUNCIL", "BOSS_CROWN_HOLLOW_KING" },
        },
    },

    ----------------------------------------------------------------
    -- 3.2 STR MELEE DPS (HEAVY / 2H)
    ----------------------------------------------------------------

    SEISMIC_PLATE_SHOULDERS = {
        id        = "ITEM_SEISMIC_PLATE_SHOULDERS",
        name      = "Seismic Plate Shoulders",
        tier      = 2,
        levelReq  = 60,
        slot      = "SHOULDERS",
        armorType = "HEAVY",
        quality   = "EPIC",
        roleTags  = { "MELEE_DPS" },

        stats = {
            strength = 44,
            stamina  = 34,
            armor    = 220,
            critPct  = 2,
        },

        passive = {
            id = "PASSIVE_SEISMIC_IMPACT",
            description = "Your heavy melee finishers have a small chance to create a minor shockwave, dealing low damage to nearby enemies.",
        },

        source = {
            instances = { "DUNGEON_VEILED_SPIRE" },
            bosses    = { "BOSS_SPIRE_OVERLORD" },
        },
    },

    GIANTS_CROSSING_GAUNTLETS = {
        id        = "ITEM_GIANTS_CROSSING_GAUNTLETS",
        name      = "Giant's Crossing Gauntlets",
        tier      = 2,
        levelReq  = 60,
        slot      = "HANDS",
        armorType = "HEAVY",
        quality   = "EPIC",
        roleTags  = { "MELEE_DPS" },

        stats = {
            strength = 40,
            stamina  = 30,
            armor    = 200,
            hitPct   = 1,
        },

        passive = {
            id = "PASSIVE_GIANT_STEP",
            description = "After using a gap-closer ability, your next melee strike within 4 sec deals 8% increased damage.",
        },

        source = {
            instances = { "DUNGEON_MERIDIAN_UNDERCRYPT" },
            bosses    = { "BOSS_UNDERCRYPT_ECHOED_EXECUTIONER" },
        },
    },

    VERGE_RUPTURE_GREATSWORD = {
        id        = "ITEM_VERGE_RUPTURE_GREATSWORD",
        name      = "Verge-Rupture Greatsword",
        tier      = 2,
        levelReq  = 60,
        slot      = "WEAPON_2H",
        armorType = "NONE",
        quality   = "EPIC",
        roleTags  = { "MELEE_DPS" },

        stats = {
            strength = 54,
            stamina  = 40,
            attackPower = 130,
            critPct     = 3,
        },

        passive = {
            id = "PASSIVE_VERGE_FRACTURE",
            description = "Critical strikes against a single target have a chance to open a small rift under them, dealing additional shadow damage over 6 sec.",
        },

        source = {
            instances = { "RAID_CROWN_OF_SHATTERED_VERGE" },
            bosses    = { "BOSS_CROWN_SKYSEVER_SERAPH", "BOSS_CROWN_CONVERGENCE_CORE" },
        },
    },

    ----------------------------------------------------------------
    -- 3.3 AGI RANGED DPS (LEATHER/MAIL)
    ----------------------------------------------------------------

    STORMSTRIDE_TRACKER_BOOTS = {
        id        = "ITEM_STORMSTRIDE_TRACKER_BOOTS",
        name      = "Stormstride Tracker's Boots",
        tier      = 2,
        levelReq  = 60,
        slot      = "FEET",
        armorType = "LEATHER",
        quality   = "EPIC",
        roleTags  = { "RANGED_DPS", "AGILITY" },

        stats = {
            agility  = 40,
            stamina  = 32,
            armor    = 140,
            hitPct   = 1,
        },

        passive = {
            id = "PASSIVE_STORMSTRIDE",
            description = "While moving, gain 3% increased ranged attack power, up to 6 stacks. Effect fades 3 sec after stopping.",
        },

        source = {
            instances = { "DUNGEON_VEILED_SPIRE" },
            bosses    = { "BOSS_SPIRE_ASCENDANT_WARDER", "BOSS_SPIRE_EYE" },
        },
    },

    GLASSWIND_SCOPE_BAND = {
        id        = "ITEM_GLASSWIND_SCOPE_BAND",
        name      = "Glasswind Scope-Band",
        tier      = 2,
        levelReq  = 60,
        slot      = "FINGER",
        armorType = "NONE",
        quality   = "EPIC",
        roleTags  = { "RANGED_DPS", "AGILITY" },

        stats = {
            agility  = 28,
            stamina  = 20,
            critPct  = 2,
        },

        passive = {
            id = "PASSIVE_GLASSWIND_FOCUS",
            description = "Standing still for 2 sec grants 4% increased ranged crit chance until you move.",
        },

        source = {
            instances = { "RAID_CROWN_OF_SHATTERED_VERGE" },
            bosses    = { "BOSS_CROWN_AURORA_ENGINE", "BOSS_CROWN_TRIPLE_BEACON" },
        },
    },

    ----------------------------------------------------------------
    -- 3.4 AGI MELEE DPS (LEATHER)
    ----------------------------------------------------------------

    NIGHTMARKET_FOOTPADS = {
        id        = "ITEM_NIGHTMARKET_FOOTPADS",
        name      = "Nightmarket Footpads",
        tier      = 2,
        levelReq  = 60,
        slot      = "FEET",
        armorType = "LEATHER",
        quality   = "EPIC",
        roleTags  = { "MELEE_DPS", "AGILITY" },

        stats = {
            agility = 38,
            stamina = 30,
            armor   = 140,
            critPct = 1,
        },

        passive = {
            id = "PASSIVE_NIGHTMARKET_GETAWAY",
            description = "Killing an enemy that grants XP/loot grants 25% movement speed for 4 sec. Does not stack with Slip Through Shadows but can refresh its duration.",
        },

        source = {
            instances = { "DUNGEON_MERIDIAN_UNDERCRYPT" },
            bosses    = { "BOSS_UNDERCRYPT_GLOAMWARDEN_TRIAD", "BOSS_UNDERCRYPT_MERIDIAN_DEVOURER" },
        },
    },

    UMBRAL_SPINE_VEST = {
        id        = "ITEM_UMBRAL_SPINE_VEST",
        name      = "Umbral Spine Vest",
        tier      = 2,
        levelReq  = 60,
        slot      = "CHEST",
        armorType = "LEATHER",
        quality   = "EPIC",
        roleTags  = { "MELEE_DPS", "AGILITY" },

        stats = {
            agility = 46,
            stamina = 34,
            armor   = 190,
            critPct = 2,
        },

        passive = {
            id = "PASSIVE_UMBRAL_STRIKE",
            description = "Your first attack from stealth against a target deals 6% increased damage. If the target dies within 5 sec, gain a small heal-over-time.",
        },

        source = {
            instances = { "RAID_CROWN_OF_SHATTERED_VERGE" },
            bosses    = { "BOSS_CROWN_HOLLOW_KING", "BOSS_CROWN_SKYSEVER_SERAPH" },
        },
    },

    ----------------------------------------------------------------
    -- 3.5 CASTER DPS (CLOTH / OFF-HAND)
    ----------------------------------------------------------------

    STARFALL_CONFLUENCE_HOOD = {
        id        = "ITEM_STARFALL_CONFLUENCE_HOOD",
        name      = "Starfall Confluence Hood",
        tier      = 2,
        levelReq  = 60,
        slot      = "HEAD",
        armorType = "CLOTH",
        quality   = "EPIC",
        roleTags  = { "CASTER_DPS" },

        stats = {
            intellect  = 48,
            spirit     = 26,
            stamina    = 24,
            spellPower = 44,
            critPct    = 2,
        },

        passive = {
            id = "PASSIVE_STARFALL_OVERTUNE",
            description = "When you critically hit with a direct damage spell, gain 1% spell haste for 8 sec, stacking up to 3 times.",
        },

        source = {
            instances = { "DUNGEON_VEILED_SPIRE" },
            bosses    = { "BOSS_SPIRE_EYE", "BOSS_SPIRE_OVERLORD" },
        },
    },

    RIFTGLASS_FOCUS = {
        id        = "ITEM_RIFTGLASS_FOCUS",
        name      = "Riftglass Focus",
        tier      = 2,
        levelReq  = 60,
        slot      = "OFF_HAND",
        armorType = "NONE",
        quality   = "EPIC",
        roleTags  = { "CASTER_DPS" },

        stats = {
            intellect  = 32,
            spirit     = 20,
            stamina    = 20,
            spellPower = 38,
        },

        passive = {
            id = "PASSIVE_RIFTGLASS_ECHO",
            description = "Spells that deal damage over time have a small chance to duplicate their next tick instantly.",
        },

        source = {
            instances = { "DUNGEON_MERIDIAN_UNDERCRYPT" },
            bosses    = { "BOSS_UNDERCRYPT_RIFTLOCKED_ARCHIVIST" },
        },
    },

    ----------------------------------------------------------------
    -- 3.6 HEALER (CLOTH / JEWELRY)
    ----------------------------------------------------------------

    DAWNSONG_CHOIR_MANTLE = {
        id        = "ITEM_DAWNSONG_CHOIR_MANTLE",
        name      = "Dawnsong Choir Mantle",
        tier      = 2,
        levelReq  = 60,
        slot      = "SHOULDERS",
        armorType = "CLOTH",
        quality   = "EPIC",
        roleTags  = { "HEALER" },

        stats = {
            intellect  = 42,
            spirit     = 32,
            stamina    = 26,
            spellPower = 36,
            healingPct = 2,
        },

        passive = {
            id = "PASSIVE_CHOIR_REPRISE",
            description = "Every time you complete a cast-time heal on three different allies within 5 sec, a minor echo heal pulses from you to nearby allies.",
        },

        source = {
            instances = { "RAID_CROWN_OF_SHATTERED_VERGE" },
            bosses    = { "BOSS_CROWN_ROOTFLAME_COUNCIL", "BOSS_CROWN_AURORA_ENGINE" },
        },
    },

    SANCTUARY_HEARTBAND = {
        id        = "ITEM_SANCTUARY_HEARTBAND",
        name      = "Sanctuary Heartband",
        tier      = 2,
        levelReq  = 60,
        slot      = "FINGER",
        armorType = "NONE",
        quality   = "EPIC",
        roleTags  = { "HEALER" },

        stats = {
            intellect = 28,
            spirit    = 24,
            stamina   = 20,
            mp5       = 8,
        },

        passive = {
            id = "PASSIVE_SANCTUARY_BREATH",
            description = "While your health is above 80%, your healing-over-time effects heal an additional 3% over their duration.",
        },

        source = {
            instances = { "DUNGEON_MERIDIAN_UNDERCRYPT", "RAID_CROWN_OF_SHATTERED_VERGE" },
            bosses    = { "BOSS_UNDERCRYPT_GLOAMWARDEN_TRIAD", "BOSS_CROWN_CONVERGENCE_CORE" },
        },
    },

}

----------------------------------------------------------------
-- 4. HOOKS / IMPLEMENTATION NOTES
----------------------------------------------------------------
-- • Plug Dungeons and Raids into your main instance registry.
-- • For each boss.lootTable, define a LootTables[...] entry in
--   your existing loot system using the item IDs above plus
--   mats from B147.
-- • These items are meant to:
--      - Bridge between T1 sets and Ascended relics.
--      - Reinforce class fantasies without overshadowing relics.
-- • You can expand Tier2Instances.Items with more slots, or use
--   these as templates for stat budgets and passives.
----------------------------------------------------------------

return Tier2Instances
