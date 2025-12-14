----------------------------------------------------------------
-- B147 — SHATTERED VERGE (TIER 2 OVERWORLD ZONE)
--
-- This module defines the Tier 2 open-world zone that lives
-- on top of your existing Lv 60 endgame: the Shattered Verge.
--
-- It is designed to:
--   • Be Lv 60-only, Tier 2 difficulty.
--   • Justify Core of Convergence + all the T2 mats we added.
--   • Provide new enemies, events, and identity-heavy content.
--   • Feed Tier 2 Relic Ascension + future T2 dungeons/raids.
----------------------------------------------------------------

local ShatteredVerge = {}

----------------------------------------------------------------
-- 1. ZONE OVERVIEW
----------------------------------------------------------------
-- Concept:
--   The Shattered Verge is the wound where the Citadel of
--   Convergence bled into the world instead of staying sealed.
--   Sky, root, flame, frost, and shadow all overlap here.
--
-- Level Range:
--   • Level 60 only
--   • Intended for Tier 2-geared characters (Ascended relics,
--     T1 sets, T2 dungeon/raid gear).
--
-- Access:
--   • Requires completion of the Citadel of Convergence story.
--   • Requires a "Convergence Attunement" key item.
----------------------------------------------------------------

ShatteredVerge.Zone = {
    id          = "ZONE_SHATTERED_VERGE",
    name        = "Shattered Verge",
    tier        = 2,
    levelRange  = { min = 60, max = 60 },

    entryRequirements = {
        quests = {
            "Q_CITADEL_STORY_COMPLETE", -- placeholder main raid story quest
        },
        items = {
            { id = "KEY_CONVERGENCE_ATTUNEMENT", count = 1 },
        },
    },

    -- Subzones are wedges of the zone, each leaning on one of
    -- your core elements: root, ember, frost, shadow/sky.
    subzones = {
        {
            id   = "SV_FRAGMENTED_CANOPY",
            name = "Fragmented Canopy",
            flavor = [[
A forest cliff where Greatwood tried to keep growing even as the sky broke. Roots hang into nothing, and islands of earth drift at impossible angles. Aurora light bleeds through cracks overhead.]],
        },
        {
            id   = "SV_EMBER_SCAR",
            name = "Ember-Scored Chasm",
            flavor = [[
The ground is split into knife-thin islands of rock hanging above slow rivers of molten stone. Ashen vents belch Convergence fire that ignores the usual rules of heat and distance.]],
        },
        {
            id   = "SV_GLASSWIND_STEPPE",
            name = "Glasswind Steppe",
            flavor = [[
A wide plain of frost-fused sand and shattered ice. The wind sounds like chimes when it blows, and footprints linger as glowing fractures instead of indentations.]],
        },
        {
            id   = "SV_HOLLOW_MERIDIAN",
            name = "Hollow Meridian",
            flavor = [[
A line where shadows refuse to follow the sun. Cracked pillars, half-formed buildings, and rifts that show pieces of Greatwood, Ashen Ridge, and Duskhollow all at once.]],
        },
        {
            id   = "SV_CONVERGENCE_SCAR",
            name = "Convergence Scar",
            flavor = [[
The central wound: a crater where raw Convergence energy wells up in pulses. This is where Convergence Storms form, and where the fiercest elites and world bosses appear.]],
        },
    },
}

----------------------------------------------------------------
-- 2. ENEMY FAMILIES & CREATURE IDENTITY
----------------------------------------------------------------
-- Each subzone has 2–3 core "families" with multiple variants.
-- This is where a lot of the fun identity comes from: names,
-- roles, and signature behaviors.
----------------------------------------------------------------

ShatteredVerge.EnemyFamilies = {

    ----------------------------------------------------------------
    -- 2.1 FRAGMENTED CANOPY (ROOT / SKY)
    ----------------------------------------------------------------
    SV_RIFTSTALKER_BEASTS = {
        subzone = "SV_FRAGMENTED_CANOPY",
        name    = "Riftstalker Beasts",
        description = [[
Beasts that were pulled halfway into the sky when the canopy fractured. Limbs and tails trail aurora light; their movements bend gravity for a heartbeat before landing.]],
        archetypes = {
            {
                id   = "SV_RIFTSTALKER_PROWLER",
                role = "skirmisher",
                notes = "Fast pounce, short root, bonus damage vs moving targets.",
            },
            {
                id   = "SV_RIFTSTALKER_ALPHA",
                role = "elite",
                notes = "Summons smaller rift shards, applies a stacking bleed if not kited.",
            },
        },
    },

    SV_CANOPY_WISPS = {
        subzone = "SV_FRAGMENTED_CANOPY",
        name    = "Canopy Wisps",
        description = [[
Spirit lights that slipped between Greatwood and the Convergence sky. Not quite friendly, not fully hostile, but very willing to burn careless players.]],
        archetypes = {
            {
                id   = "SV_CANOPY_WISP",
                role = "caster",
                notes = "Chain lightning-style arc that jumps between players standing on the same floating platform.",
            },
            {
                id   = "SV_CANOPY_WISP_BOUND",
                role = "support",
                notes = "Follows beasts and grants them shield pulses unless interrupted.",
            },
        },
    },

    SV_FALLEN_ISLET_WARDENS = {
        subzone = "SV_FRAGMENTED_CANOPY",
        name    = "Fallen Islet Wardens",
        description = [[
Heartroot wardens who refused to abandon the floating chunks of forest. Half their body is bark; the other half is scars from the fall.]],
        archetypes = {
            {
                id   = "SV_ISLET_WARDEN",
                role = "mini_boss",
                notes = "Tanky defender, places root-walls that block projectiles but can be used by players for line-of-sight.",
            },
        },
    },

    ----------------------------------------------------------------
    -- 2.2 EMBER-SCORED CHASM (FIRE / METAL)
    ----------------------------------------------------------------
    SV_SLAGFORGED_CONSTRUCTS = {
        subzone = "SV_EMBER_SCAR",
        name    = "Slagforged Constructs",
        description = [[
Abandoned forge constructs from Ashen Ridge that caught Convergence flame instead of cooling. Their cores leak slow rivers of metal.]],
        archetypes = {
            {
                id   = "SV_SLAGFORGED_SENTINEL",
                role = "tank",
                notes = "High armor; gains stacking damage reduction while standing in molten pools.",
            },
            {
                id   = "SV_SLAGFORGED_BOMBARIER",
                role = "caster",
                notes = "Lobs arcing slag bombs that leave persistent burning patches.",
            },
        },
    },

    SV_EMBER_GALE_CULT = {
        subzone = "SV_EMBER_SCAR",
        name    = "Embergale Fanatics",
        description = [[
Fire-mad cultists who believe the Convergence flame is the purest test of worth. They build shrines on crumbling rock and dare the world to knock them down.]],
        archetypes = {
            {
                id   = "SV_EMBERGALE_ZEALOT",
                role = "melee",
                notes = "Gains haste as their own health drops; dangerous in packs.",
            },
            {
                id   = "SV_EMBERGALE_CHANNELER",
                role = "support_caster",
                notes = "Channels onto vents to trigger flame jets and knockbacks.",
            },
        },
    },

    ----------------------------------------------------------------
    -- 2.3 GLASSWIND STEPPE (FROST / GLASS / WIND)
    ----------------------------------------------------------------
    SV_GLASSWIND_ELEMENTALS = {
        subzone = "SV_GLASSWIND_STEPPE",
        name    = "Glasswind Elementals",
        description = [[
Shards of frozen sand and ice given shape by the convergence of storm and glacier. Their bodies ring like chimes when struck.]],
        archetypes = {
            {
                id   = "SV_GLASSWIND_SHARDLING",
                role = "swarm",
                notes = "Low HP, but leave cutting wind trails that damage and slow.",
            },
            {
                id   = "SV_GLASSWIND_COLOSSUS",
                role = "elite",
                notes = "Creates rotating walls of razor hail; players must find safe gaps.",
            },
        },
    },

    SV_STEPPESKY_RIDERS = {
        subzone = "SV_GLASSWIND_STEPPE",
        name    = "Steppeskies",
        description = [[
Riders who learned to surf the Glasswind on broken slabs of ice and stone. Part bandit, part pilgrim, powered more by bad ideas than magic.]],
        archetypes = {
            {
                id   = "SV_STEPPESKY_RAIDER",
                role = "ranged",
                notes = "Fires arcing shots from moving platforms; punishes static players.",
            },
            {
                id   = "SV_STEPPESKY_CAPTAIN",
                role = "mini_boss",
                notes = "Marks players with a 'gust' debuff, knocking them off ledges if not dispelled.",
            },
        },
    },

    ----------------------------------------------------------------
    -- 2.4 HOLLOW MERIDIAN (SHADOW / RIFT)
    ----------------------------------------------------------------
    SV_MERIDIAN_ECHOES = {
        subzone = "SV_HOLLOW_MERIDIAN",
        name    = "Meridian Echoes",
        description = [[
Echoes of people who died while crossing from one part of Emberwild to another at the exact moment the Convergence tore the path in half.]],
        archetypes = {
            {
                id   = "SV_MERIDIAN_ECHO",
                role = "caster",
                notes = "Casts shadow lines that travel along the ground's cracks.",
            },
            {
                id   = "SV_MERIDIAN_BOUND",
                role = "support",
                notes = "Links allies with damage-sharing tethers; can also link players.",
            },
        },
    },

    SV_RIFTBOUND_WATCHERS = {
        subzone = "SV_HOLLOW_MERIDIAN",
        name    = "Riftbound Watchers",
        description = [[
Fragments of watchers from Duskhollow and the Citadel merged with riftstone. They stare across realities and do not like what they see.]],
        archetypes = {
            {
                id   = "SV_RIFTBOUND_WATCHER",
                role = "elite",
                notes = "Uses gaze mechanics: line-of-sight cones that must be broken or cleansed.",
            },
        },
    },

    ----------------------------------------------------------------
    -- 2.5 CONVERGENCE SCAR (CENTER)
    ----------------------------------------------------------------
    SV_CONVERGENCE_AVATARS = {
        subzone = "SV_CONVERGENCE_SCAR",
        name    = "Convergence Avatars",
        description = [[
Temporary bodies formed when too many elemental currents collide. They burn out quickly but violently.]],
        archetypes = {
            {
                id   = "SV_CONVERGENCE_AVATAR_MINOR",
                role = "event_add",
                notes = "Spawns during Convergence Storms; cycles elemental resistances.",
            },
        },
    },

}

----------------------------------------------------------------
-- 3. WORLD BOSSES (T2 OPEN WORLD TARGETS)
----------------------------------------------------------------
-- Each of these is a big anchor encounter with weekly lockouts
-- and strong rewards: Core of Convergence, T2 mats, cosmetics.
----------------------------------------------------------------

ShatteredVerge.WorldBosses = {

    {
        id        = "WB_ROOTBOUND_TITAN",
        name      = "Rootbound Titan of the Verge",
        subzone   = "SV_FRAGMENTED_CANOPY",
        level     = 60,
        roleHint  = "tank_check + positional",
        flavor    = [[
A massive Heartroot colossus held together by Convergence light. It drags entire floating islets closer to itself when enraged.]],
        lootTable = "WB.RootboundTitan",
    },

    {
        id        = "WB_EMBERMAW_CATACLYSM",
        name      = "Embermaw Cataclysm",
        subzone   = "SV_EMBER_SCAR",
        level     = 60,
        roleHint  = "fire_avoidance + add_control",
        flavor    = [[
A drake-like creature whose throat glows with pure Convergence fire. Every breath redraws the lava flows beneath it.]],
        lootTable = "WB.EmbermawCataclysm",
    },

    {
        id        = "WB_GLASSWIND_SENTINEL",
        name      = "Glasswind Sentinel",
        subzone   = "SV_GLASSWIND_STEPPE",
        level     = 60,
        roleHint  = "movement + line_of_sight",
        flavor    = [[
A towering construct of ice-glass and storm. It sculpts the wind into blades and uses the sky as a pressure plate.]],
        lootTable = "WB.GlasswindSentinel",
    },

    {
        id        = "WB_UMBRAL_CONFLUENCE",
        name      = "Umbral Confluence",
        subzone   = "SV_HOLLOW_MERIDIAN",
        level     = 60,
        roleHint  = "coordination + debuff_dance",
        flavor    = [[
A mass of overlapping shadows that remembers every spell ever cast in Duskhollow, and tries to cast them all at once.]],
        lootTable = "WB.UmbralConfluence",
    },

}

----------------------------------------------------------------
-- 4. CONVERGENCE STORMS (WORLD EVENTS)
----------------------------------------------------------------
-- "Convergence Storms" are timed zone events that:
--   • Spawn in the Convergence Scar and bleed into one subzone.
--   • Scale with the number of participants.
--   • Drop Core of Convergence and T2 mats.
--
-- Players see:
--   • Broadcast: "A Convergence Storm gathers over the Verge."
--   • Visual: sky darkens/brightens with the storm's element.
----------------------------------------------------------------

ShatteredVerge.WorldEvents = {

    {
        id       = "EVENT_ROOTBOUND_STORM",
        name     = "Rootbound Convergence",
        type     = "convergence_storm",
        element  = "ROOT",
        description = [[
Roots tear out of the ground and hang in midair, forming twisting platforms and cages. Heartroot energy pulses from the Scar into the Fragmented Canopy.]],
        phases = {
            {
                id   = "PHASE_TANGLES",
                goal = "Destroy root-nodes before they fully cage allied NPCs.",
            },
            {
                id   = "PHASE_GROVEHEART",
                goal = "Defeat a Groveheart Avatar that cycles DR vs melee/ranged/spells.",
            },
        },
        rewards = {
            mats = {
                { id = "MAT_HEARTROOT_SAP_CLUSTER", countRange = {1, 3} },
                { id = "MAT_HEARTROOT_SAPLING",      countRange = {0, 1} },
            },
            rare = {
                { id = "MAT_CORE_OF_CONVERGENCE",    chance = 0.20, countRange = {1,1} },
            },
        },
    },

    {
        id       = "EVENT_ASHEN_CYCLONE",
        name     = "Ashen Cyclone",
        type     = "convergence_storm",
        element  = "FIRE",
        description = [[
A rotating wall of ash and slag sweeps from the Ember-Scored Chasm across the Verge, igniting vents and summoning slagforged elites.]],
        phases = {
            {
                id   = "PHASE_VENT_CONTROL",
                goal = "Close unstable vents while dodging rotating ash walls.",
            },
            {
                id   = "PHASE_CYCLONE_CORE",
                goal = "Defeat a Cyclone Core elemental that splits into smaller copies at health thresholds.",
            },
        },
        rewards = {
            mats = {
                { id = "MAT_ASHEN_WIND_FRAGMENT", countRange = {2, 5} },
            },
            rare = {
                { id = "MAT_CORE_OF_CONVERGENCE",   chance = 0.20, countRange = {1,1} },
            },
        },
    },

    {
        id       = "EVENT_GLASSWIND_MAELSTROM",
        name     = "Glasswind Maelstrom",
        type     = "convergence_storm",
        element  = "FROST",
        description = [[
The Glasswind Steppe becomes a storm of cutting hail and mirrored ice. Footing is treacherous, and shadows reflect wrong in the broken glass.]],
        phases = {
            {
                id   = "PHASE_SHATTER_RINGS",
                goal = "Stand on safe plates to shatter incoming rings of glass before they crush NPCs.",
            },
            {
                id   = "PHASE_MAELSTROM_EYE",
                goal = "Defeat the Maelstrom Eye while using reflected spells to break its shields.",
            },
        },
        rewards = {
            mats = {
                { id = "MAT_BOREAL_TRAILCLOAK_ESSENCE", countRange = {1, 3} },
                { id = "MAT_AURORA_HYMN_FRAGMENT",      countRange = {1, 2} },
            },
            rare = {
                { id = "MAT_CORE_OF_CONVERGENCE",       chance = 0.20, countRange = {1,1} },
            },
        },
    },

    {
        id       = "EVENT_UMBRAL_INVERSION",
        name     = "Umbral Inversion",
        type     = "convergence_storm",
        element  = "SHADOW",
        description = [[
Shadows peel off the ground and climb the air. Light sources flicker and sometimes invert, creating safe 'dark' zones and dangerous 'bright' zones.]],
        phases = {
            {
                id   = "PHASE_LIGHT_DANCE",
                goal = "Stand in correct shadow/light pairs when the Inversion pulses hit.",
            },
            {
                id   = "PHASE_RIFT_CHOIR",
                goal = "Defeat a Rift Choir that gains power from overlapping player debuffs.",
            },
        },
        rewards = {
            mats = {
                { id = "MAT_WITCH_QUEENS_EYE_SHARD",  countRange = {1, 2} },
                { id = "MAT_UMBRAL_SIGNET_FRACTURE",  countRange = {2, 5} },
                { id = "MAT_SANCTUARY_ROOT_FRAGMENT", countRange = {1, 3} },
            },
            rare = {
                { id = "MAT_CORE_OF_CONVERGENCE",     chance = 0.25, countRange = {1,1} },
            },
        },
    },

}

----------------------------------------------------------------
-- 5. T2 MATERIALS INDEX (DROP SOURCES IN SHATTERED VERGE)
----------------------------------------------------------------
-- These are the materials referenced in T2 ascension and
-- earlier chapters, now anchored in zone content.
----------------------------------------------------------------

ShatteredVerge.Materials = {

    MAT_BOREAL_TRAILCLOAK_ESSENCE = {
        id   = "MAT_BOREAL_TRAILCLOAK_ESSENCE",
        name = "Boreal Trailcloak Essence",
        tier = 2,
        description = "Lingering frostwind caught in fabric fibers and then torn free by the Glasswind.",
        dropsFrom = {
            events = { "EVENT_GLASSWIND_MAELSTROM" },
            enemies = { "SV_GLASSWIND_ELEMENTALS", "SV_STEPPESKY_RIDERS" },
        },
        usedFor = {
            "SKYSHATTER_HUNTBOW ascension reagents",
            "Glasswind-themed armor dyes and cloak cosmetics",
        },
    },

    MAT_ASHEN_WIND_FRAGMENT = {
        id   = "MAT_ASHEN_WIND_FRAGMENT",
        name = "Ashen Wind Fragment",
        tier = 2,
        description = "Ash fused with Convergence wind, sharp enough to cut stone.",
        dropsFrom = {
            events = { "EVENT_ASHEN_CYCLONE" },
            enemies = { "SV_SLAGFORGED_CONSTRUCTS", "SV_EMBER_GALE_CULT" },
        },
        usedFor = {
            "SKYSHATTER_HUNTBOW ascension reagents",
            "Cosmetic effects for Ashen weapons",
        },
    },

    MAT_WITCH_QUEENS_EYE_SHARD = {
        id   = "MAT_WITCH_QUEENS_EYE_SHARD",
        name = "Witch-Queen's Eye Shard",
        tier = 2,
        description = "A splinter of the Eye that remembers too much.",
        dropsFrom = {
            events = { "EVENT_UMBRAL_INVERSION" },
            enemies = { "SV_MERIDIAN_ECHOES", "SV_RIFTBOUND_WATCHERS" },
            worldBosses = { "WB_UMBRAL_CONFLUENCE" },
        },
        usedFor = {
            "NIGHTVEIL_PROWLER ascension reagents",
            "High-end caster trinkets and talismans",
        },
    },

    MAT_UMBRAL_SIGNET_FRACTURE = {
        id   = "MAT_UMBRAL_SIGNET_FRACTURE",
        name = "Umbral Signet Fracture",
        tier = 2,
        description = "Broken rings from Duskhollow nobles whose names were erased in the Convergence.",
        dropsFrom = {
            events = { "EVENT_UMBRAL_INVERSION" },
            enemies = { "SV_MERIDIAN_ECHOES" },
        },
        usedFor = {
            "NIGHTVEIL_PROWLER ascension reagents",
            "Shadow-themed jewelry and rings",
        },
    },

    MAT_HEARTROOT_SAP_CLUSTER = {
        id   = "MAT_HEARTROOT_SAP_CLUSTER",
        name = "Heartroot Sap Cluster",
        tier = 2,
        description = "Crystallized sap from roots pulled through the Convergence Scar.",
        dropsFrom = {
            events = { "EVENT_ROOTBOUND_STORM" },
            enemies = { "SV_FALLEN_ISLET_WARDENS" },
            worldBosses = { "WB_ROOTBOUND_TITAN" },
        },
        usedFor = {
            "DAWNSONG_COVENANT ascension reagents",
            "HEARTROOT_RELIQUARY ascension reagents",
        },
    },

    MAT_HEARTROOT_SAPLING = {
        id   = "MAT_HEARTROOT_SAPLING",
        name = "Heartroot Sapling",
        tier = 2,
        description = "A tiny, stubborn sapling that keeps growing toward wherever 'home' is now.",
        dropsFrom = {
            events = { "EVENT_ROOTBOUND_STORM" },
        },
        usedFor = {
            "HEARTROOT_RELIQUARY ascension (Seed of Sanctuary path)",
            "Special grove-building cosmetics in hubs",
        },
    },

    MAT_AURORA_HYMN_FRAGMENT = {
        id   = "MAT_AURORA_HYMN_FRAGMENT",
        name = "Aurora Hymn Fragment",
        tier = 2,
        description = "Frozen sound taken from a sung prayer beneath an unmoving aurora.",
        dropsFrom = {
            events = { "EVENT_GLASSWIND_MAELSTROM" },
            enemies = { "SV_CANOPY_WISPS", "SV_GLASSWIND_ELEMENTALS" },
        },
        usedFor = {
            "DAWNSONG_COVENANT ascension reagents",
            "Caster and healer cosmetics linked to aurora visuals",
        },
    },

    MAT_SANCTUARY_ROOT_FRAGMENT = {
        id   = "MAT_SANCTUARY_ROOT_FRAGMENT",
        name = "Sanctuary Root Fragment",
        tier = 2,
        description = "A root that remembers where safety used to be, and is trying to rebuild it.",
        dropsFrom = {
            events = { "EVENT_UMBRAL_INVERSION", "EVENT_ROOTBOUND_STORM" },
        },
        usedFor = {
            "HEARTROOT_RELIQUARY ascension (Seed of Sanctuary path)",
        },
    },

    MAT_CORE_OF_CONVERGENCE = {
        id   = "MAT_CORE_OF_CONVERGENCE",
        name = "Core of Convergence",
        tier = 2,
        description = "A solidified shard of the exact point where Emberwild’s ley-lines cross and argue.",
        dropsFrom = {
            raid = { "Raid.Citadel.ConvergenceHeart" }, -- B142
            worldEvents = {
                "EVENT_ROOTBOUND_STORM",
                "EVENT_ASHEN_CYCLONE",
                "EVENT_GLASSWIND_MAELSTROM",
                "EVENT_UMBRAL_INVERSION",
            },
            worldBosses = {
                "WB_ROOTBOUND_TITAN",
                "WB_EMBERMAW_CATACLYSM",
                "WB_GLASSWIND_SENTINEL",
                "WB_UMBRAL_CONFLUENCE",
            },
        },
        usedFor = {
            "All T2 Relic Ascensions (B145, B146)",
            "Future Tier 2 dungeon/raid attunements",
        },
    },

}

----------------------------------------------------------------
-- 6. HOOKS / NOTES
----------------------------------------------------------------
-- Implementation notes:
--
--  • ShatteredVerge.Zone should be registered into your main
--    zone registry after this module is required.
--
--  • EnemyFamilies/WorldBosses/WorldEvents/Materials can be
--    merged into global tables (Zones, EnemyFamilies, etc.),
--    or this module can remain standalone as:
--       GameData.ShatteredVerge = require("B147_ShatteredVerge")
--
--  • Loot tables referenced (WB.*, EVENT.*) should be defined
--    in your existing loot table system, using the item and
--    mat IDs given here.
--
--  • Convergence Storm scheduling can be:
--       - Always one active somewhere in the Verge.
--       - Large announce + map icons when they spawn.
--       - Weekly quests: "Complete any 2 Storms", etc.
--
--  • This zone is the primary open-world source of Tier 2 mats
--    and a big chunk of Core of Convergence, tying it tightly
--    into the Relic Ascension system from B145/B146.
----------------------------------------------------------------

return ShatteredVerge
