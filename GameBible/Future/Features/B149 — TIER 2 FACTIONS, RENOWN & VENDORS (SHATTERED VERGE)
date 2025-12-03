----------------------------------------------------------------
-- B149 — TIER 2 FACTIONS, RENOWN & VENDORS (SHATTERED VERGE)
--
-- This module defines the Tier 2 faction layer that sits on top
-- of:
--   • Shattered Verge (B147)
--   • T2 Dungeons/Raid (B148)
--   • Relic Ascension (B145–B146)
--
-- It provides:
--   • 4 Verge-themed factions.
--   • Renown (standing) tracks per faction.
--   • Activities that grant rep (dungeons, storms, bosses, etc.).
--   • Vendor inventories that hand out:
--       - T2 stat gear
--       - Relic Ascension mats
--       - Cosmetics / toys / housing
--       - Profession recipes
--
-- This is data-only; it plugs into your shared Faction/Renown
-- system and Vendor/Loot systems.
----------------------------------------------------------------

local T2Factions = {}

----------------------------------------------------------------
-- 1. RENOWN SYSTEM (GENERIC STRUCTURE)
----------------------------------------------------------------
-- This assumes a generic renown/standing system elsewhere.
-- Here we define the rank ladders and XP numbers at a design
-- level (can be tweaked by your renown module).
----------------------------------------------------------------

T2Factions.RenownRanks = {
    -- Template:
    -- { id = "RANK_NAME", label = "Display Name", required = total_renown_points }

    {
        id       = "T2_RENOWN_NEUTRAL",
        label    = "Neutral",
        required = 0,
    },
    {
        id       = "T2_RENOWN_STEADFAST",
        label    = "Steadfast",
        required = 1000,
    },
    {
        id       = "T2_RENOWN_TRUSTED",
        label    = "Trusted",
        required = 3000,
    },
    {
        id       = "T2_RENOWN_HONORED",
        label    = "Honored",
        required = 6000,
    },
    {
        id       = "T2_RENOWN_REVERED",
        label    = "Revered",
        required = 10000,
    },
    {
        id       = "T2_RENOWN_EXALTED",
        label    = "Exalted",
        required = 15000,
    },
}

----------------------------------------------------------------
-- 2. FACTIONS OVERVIEW
----------------------------------------------------------------
-- Each faction:
--   • Is centered in a Shattered Verge subzone.
--   • Has distinct identity and gameplay loop.
--   • Feeds specific roles and Relic Ascension paths.
----------------------------------------------------------------

T2Factions.Factions = {

    ----------------------------------------------------------------
    -- 2.1 WARDENS OF THE BROKEN VERGE (Tank / Healer / Guardians)
    ----------------------------------------------------------------
    WARDENS_OF_BROKEN_VERGE = {
        id        = "FACTION_WARDENS_BROKEN_VERGE",
        name      = "Wardens of the Broken Verge",
        subzoneId = "SV_FRAGMENTED_CANOPY",
        description = [[
A coalition of Heartroot wardens, Frostmarch veterans, and Citadel survivors
tasked with one job: keep the Verge from tearing itself—and the rest of
Emberwild—apart. They build platforms, anchor roots, and stand in front of
anything that wants to knock the world over.]],

        primaryAudience = { "TANK", "HEALER" },

        renownRanks = T2Factions.RenownRanks,

        -- How players gain renown with this faction.
        renownSources = {
            worldEvents = {
                -- Rootbound Storm (B147)
                { id = "EVENT_ROOTBOUND_STORM",   baseValue = 200 },
            },
            worldBosses = {
                { id = "WB_ROOTBOUND_TITAN",      baseValue = 400 },
            },
            dungeons = {
                { id = "DUNGEON_VEILED_SPIRE",    baseValue = 150 },
            },
            quests = {
                { id = "Q_WARDENS_DAILY_RESCUE",  baseValue = 100 },
                { id = "Q_WARDENS_WEEKLY_ANCHOR", baseValue = 400 },
            },
        },

        vendors = {
            {
                id       = "VENDOR_WARDEN_QUARTERMASTER",
                name     = "Quartermaster Liala Thornwatch",
                location = "Fragmented Canopy Warden Camp",
                inventory = {
                    ----------------------------------------------------------------
                    -- Rank-gated offerings
                    ----------------------------------------------------------------

                    -- Steadfast (early T2 tanks/healers)
                    {
                        itemId      = "ITEM_ROOTBOUND_BASTION_GREAVES",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 80 } },
                        minRenownId = "T2_RENOWN_STEADFAST",
                        notes       = "Tank-heavy legs from B148, available as targeted purchase.",
                    },
                    {
                        itemId      = "ITEM_SANCTUARY_HEARTBAND",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 80 } },
                        minRenownId = "T2_RENOWN_STEADFAST",
                        notes       = "Healer ring (B148) for early securing of regen.",
                    },

                    -- Trusted (T2 mats + recipes)
                    {
                        itemId      = "MAT_HEARTROOT_SAP_CLUSTER",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 40 } },
                        minRenownId = "T2_RENOWN_TRUSTED",
                        notes       = "Small repeatable purchase, weekly-limited by vendor logic.",
                    },
                    {
                        itemId      = "RECIPE_HEARTROOT_WARD_POTION",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 120 } },
                        minRenownId = "T2_RENOWN_TRUSTED",
                        notes       = "Alchemy recipe: creates a T2 tank/healer defensive potion.",
                    },

                    -- Honored (bigger items)
                    {
                        itemId      = "ITEM_CROWN_GUARDIANS_AEGIS",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 180 } },
                        minRenownId = "T2_RENOWN_HONORED",
                        notes       = "Strong T2 shield from B148, purchasable with marks.",
                    },
                    {
                        itemId      = "ITEM_DAWNSONG_CHOIR_MANTLE",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 180 } },
                        minRenownId = "T2_RENOWN_HONORED",
                        notes       = "Healer mantle for raid-focused support",
                    },

                    -- Revered (Ascension support)
                    {
                        itemId      = "MAT_HEARTROOT_SAPLING",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 120 } },
                        minRenownId = "T2_RENOWN_REVERED",
                        notes       = "Extra Sapling for Heartroot Reliquary ascension attempts.",
                    },
                    {
                        itemId      = "MAT_SANCTUARY_ROOT_FRAGMENT",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 90 } },
                        minRenownId = "T2_RENOWN_REVERED",
                        notes       = "Supports Seed of Sanctuary path and future grove cosmetics.",
                    },

                    -- Exalted (cosmetics / titles / toys)
                    {
                        itemId      = "COSM_WARDEN_BASTION_MOUNT",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 300 } },
                        minRenownId = "T2_RENOWN_EXALTED",
                        notes       = "Large Heartroot stag/elk mount with Convergence scars.",
                    },
                    {
                        itemId      = "TOY_WARDENS_PORTABLE_BARRIER",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 200 } },
                        minRenownId = "T2_RENOWN_EXALTED",
                        notes       = "Toys: temporary cosmetic barrier dome with no gameplay effect.",
                    },
                    {
                        itemId      = "TITLE_TOKEN_VERGE_WARDEN",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 150 } },
                        minRenownId = "T2_RENOWN_EXALTED",
                        notes       = "Unlocks the title 'Warden of the Verge'.",
                    },
                },
            },
        },
    },

    ----------------------------------------------------------------
    -- 2.2 SKYSTRIDER CONCORD (Ranged DPS / Mobility)
    ----------------------------------------------------------------
    SKYSTRIDER_CONCORD = {
        id        = "FACTION_SKYSTRIDER_CONCORD",
        name      = "Skystrider Concord",
        subzoneId = "SV_GLASSWIND_STEPPE",
        description = [[
A loose alliance of hunters, pathfinders, and glass-surfers who treat the Verge
less like a disaster and more like a challenge. They map updrafts, mark safe
ledge routes, and compete to see who can ride the Glasswind the longest.]],

        primaryAudience = { "RANGED_DPS", "AGILITY" },

        renownRanks = T2Factions.RenownRanks,

        renownSources = {
            worldEvents = {
                { id = "EVENT_GLASSWIND_MAELSTROM", baseValue = 200 },
            },
            worldBosses = {
                { id = "WB_GLASSWIND_SENTINEL",     baseValue = 400 },
            },
            dungeons = {
                { id = "DUNGEON_VEILED_SPIRE",      baseValue = 150 },
            },
            quests = {
                { id = "Q_SKYSTRIDER_DAILY_RACE",   baseValue = 100 },
                { id = "Q_SKYSTRIDER_WEEKLY_MAP",   baseValue = 400 },
            },
        },

        vendors = {
            {
                id       = "VENDOR_SKYSTRIDER_OUTRIDER",
                name     = "Outrider Talam Glassstride",
                location = "Glasswind Steppe Skycamp",
                inventory = {
                    -- Steadfast
                    {
                        itemId      = "ITEM_STORMSTRIDE_TRACKER_BOOTS",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 80 } },
                        minRenownId = "T2_RENOWN_STEADFAST",
                        notes       = "Strong AGI ranged boots (B148).",
                    },
                    {
                        itemId      = "ITEM_GLASSWIND_SCOPE_BAND",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 80 } },
                        minRenownId = "T2_RENOWN_STEADFAST",
                        notes       = "Crit-focused ring for ranged.",
                    },

                    -- Trusted
                    {
                        itemId      = "MAT_BOREAL_TRAILCLOAK_ESSENCE",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 40 } },
                        minRenownId = "T2_RENOWN_TRUSTED",
                        notes       = "Supports Skyshatter ascension reagents and cosmetics.",
                    },
                    {
                        itemId      = "RECIPE_GLASSWIND_ARROWS",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 120 } },
                        minRenownId = "T2_RENOWN_TRUSTED",
                        notes       = "Fletching/Engineering recipe: T2 arrows with minor slow.",
                    },

                    -- Honored
                    {
                        itemId      = "COSM_SKYSTRIDER_CLOAK",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 120 } },
                        minRenownId = "T2_RENOWN_HONORED",
                        notes       = "Cloak cosmetic with Glasswind shimmer effect.",
                    },
                    {
                        itemId      = "ITEM_STARFALL_CONFLUENCE_HOOD",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 160 } },
                        minRenownId = "T2_RENOWN_HONORED",
                        notes       = "Caster hood, thematically tied to sky and aurora.",
                    },

                    -- Revered
                    {
                        itemId      = "MAT_ASHEN_WIND_FRAGMENT",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 60 } },
                        minRenownId = "T2_RENOWN_REVERED",
                        notes       = "Extra access to Ashen Wind Fragments.",
                    },
                    {
                        itemId      = "MOUNT_GLASSWIND_SURFBOARD",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 260 } },
                        minRenownId = "T2_RENOWN_REVERED",
                        notes       = "Hoverboard-style mount that 'surfs' Glasswind.",
                    },

                    -- Exalted
                    {
                        itemId      = "TITLE_TOKEN_SKYSTRIDER",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 150 } },
                        minRenownId = "T2_RENOWN_EXALTED",
                        notes       = "Unlocks the title 'Skystrider'.",
                    },
                    {
                        itemId      = "TOY_SKYSTRIDER_SIGNAL_FLARE",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 120 } },
                        minRenownId = "T2_RENOWN_EXALTED",
                        notes       = "Fires a harmless sky-tearing flare visible across the Verge.",
                    },
                },
            },
        },
    },

    ----------------------------------------------------------------
    -- 2.3 EMBERBOUND CARTEL (STR DPS / Crafters / Relic-Smiths)
    ----------------------------------------------------------------
    EMBERBOUND_CARTEL = {
        id        = "FACTION_EMBERBOUND_CARTEL",
        name      = "Emberbound Cartel",
        subzoneId = "SV_EMBER_SCAR",
        description = [[
Smelters, relic-smiths, and opportunists who saw the Convergence as a once-in-
a-lifetime forge. They drag slagforged parts and ley-infused ore out of the Scar,
refuse to apologize for their prices, and somehow still find time to fund the war
effort... at a profit.]],

        primaryAudience = { "MELEE_DPS", "CRAFTER" },

        renownRanks = T2Factions.RenownRanks,

        renownSources = {
            worldEvents = {
                { id = "EVENT_ASHEN_CYCLONE",      baseValue = 200 },
            },
            worldBosses = {
                { id = "WB_EMBERMAW_CATACLYSM",    baseValue = 400 },
            },
            dungeons = {
                { id = "DUNGEON_VEILED_SPIRE",     baseValue = 150 },
                { id = "DUNGEON_MERIDIAN_UNDERCRYPT", baseValue = 100 },
            },
            quests = {
                { id = "Q_EMBERBOUND_DAILY_FORGE", baseValue = 100 },
                { id = "Q_EMBERBOUND_WEEKLY_HAUL", baseValue = 400 },
            },
        },

        vendors = {
            {
                id       = "VENDOR_EMBERBOUND_FACTORMAN",
                name     = "Factorman Krez Emberbound",
                location = "Ember-Scored Chasm Forgecamp",
                inventory = {
                    -- Steadfast
                    {
                        itemId      = "ITEM_SEISMIC_PLATE_SHOULDERS",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 90 } },
                        minRenownId = "T2_RENOWN_STEADFAST",
                        notes       = "Heavy shoulders for STR melee (B148).",
                    },
                    {
                        itemId      = "ITEM_GIANTS_CROSSING_GAUNTLETS",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 90 } },
                        minRenownId = "T2_RENOWN_STEADFAST",
                        notes       = "Gap-closer synergy gauntlets.",
                    },

                    -- Trusted (crafting)
                    {
                        itemId      = "RECIPE_VERGE_RUPTURE_GREATSWORD",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 200 } },
                        minRenownId = "T2_RENOWN_TRUSTED",
                        notes       = "Blacksmith pattern to craft Verge-Rupture Greatsword; mats include Core shards.",
                    },
                    {
                        itemId      = "RECIPE_SLAGFORGED_PLATE_UPGRADE",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 140 } },
                        minRenownId = "T2_RENOWN_TRUSTED",
                        notes       = "Lets you upgrade certain heavy armor appearances/stat bumps.",
                    },

                    -- Honored (mats + cosmetics)
                    {
                        itemId      = "MAT_ASHEN_WIND_FRAGMENT",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 60 } },
                        minRenownId = "T2_RENOWN_HONORED",
                        notes       = "Faster path to Ashen mats for T2 relics.",
                    },
                    {
                        itemId      = "COSM_EMBERFORGED_WEAPON_ENCHANT",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 180 } },
                        minRenownId = "T2_RENOWN_HONORED",
                        notes       = "Purely visual weapon glow: ember sparks and molten edges.",
                    },

                    -- Revered (Core-lite, professions)
                    {
                        itemId      = "ITEM_VERGE_RUPTURE_GREATSWORD",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 220 } },
                        minRenownId = "T2_RENOWN_REVERED",
                        notes       = "Direct purchase for players unlucky with drops.",
                    },
                    {
                        itemId      = "RECIPE_CONVERGENCE_REFINER",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 200 } },
                        minRenownId = "T2_RENOWN_REVERED",
                        notes       = "Engineering device that breaks extra mats into smaller components.",
                    },

                    -- Exalted
                    {
                        itemId      = "TITLE_TOKEN_EMBERBOUND",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 150 } },
                        minRenownId = "T2_RENOWN_EXALTED",
                        notes       = "Title: 'Emberbound Factor'.",
                    },
                    {
                        itemId      = "TOY_PORTABLE_MICROFORGE",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 180 } },
                        minRenownId = "T2_RENOWN_EXALTED",
                        notes       = "Drops a little anvil/forge that others can /anvil emote on.",
                    },
                },
            },
        },
    },

    ----------------------------------------------------------------
    -- 2.4 CHOIR OF THE MERIDIAN (Casters / Healers / Lore)
    ----------------------------------------------------------------
    CHOIR_OF_MERIDIAN = {
        id        = "FACTION_CHOIR_OF_MERIDIAN",
        name      = "Choir of the Meridian",
        subzoneId = "SV_HOLLOW_MERIDIAN",
        description = [[
A mixed order of rift-scribes, dusk chanters, and Dawnsong adepts who study the
precise line where one thing becomes another: life to death, light to shadow,
forest to hollow. They believe the Verge can be taught to sing in harmony
instead of howling itself apart.]],

        primaryAudience = { "CASTER_DPS", "HEALER", "LORE" },

        renownRanks = T2Factions.RenownRanks,

        renownSources = {
            worldEvents = {
                { id = "EVENT_UMBRAL_INVERSION",   baseValue = 220 },
            },
            worldBosses = {
                { id = "WB_UMBRAL_CONFLUENCE",     baseValue = 420 },
            },
            dungeons = {
                { id = "DUNGEON_MERIDIAN_UNDERCRYPT", baseValue = 170 },
            },
            quests = {
                { id = "Q_CHOIR_DAILY_HYMN",       baseValue = 100 },
                { id = "Q_CHOIR_WEEKLY_RESONANCE", baseValue = 400 },
            },
        },

        vendors = {
            {
                id       = "VENDOR_CHOIR_CANTOR",
                name     = "Cantor Serin of the Meridian",
                location = "Hollow Meridian Choir Encampment",
                inventory = {
                    -- Steadfast
                    {
                        itemId      = "ITEM_RIFTGLASS_FOCUS",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 90 } },
                        minRenownId = "T2_RENOWN_STEADFAST",
                        notes       = "Caster off-hand (B148).",
                    },
                    {
                        itemId      = "ITEM_SANCTUARY_HEARTBAND",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 90 } },
                        minRenownId = "T2_RENOWN_STEADFAST",
                        notes       = "Healer regen ring option.",
                    },

                    -- Trusted
                    {
                        itemId      = "MAT_WITCH_QUEENS_EYE_SHARD",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 60 } },
                        minRenownId = "T2_RENOWN_TRUSTED",
                        notes       = "Supports Nightveil and high-end caster relic crafting.",
                    },
                    {
                        itemId      = "MAT_AURORA_HYMN_FRAGMENT",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 60 } },
                        minRenownId = "T2_RENOWN_TRUSTED",
                        notes       = "Supports Dawnsong/Heartroot ascension and cosmetics.",
                    },

                    -- Honored (glyphs / spells / cosmetics)
                    {
                        itemId      = "GLYPH_RIFT_ECHO",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 140 } },
                        minRenownId = "T2_RENOWN_HONORED",
                        notes       = "Cosmetic spell glyph: adds subtle echo trail to certain spells.",
                    },
                    {
                        itemId      = "ITEM_DAWNSONG_CHOIR_MANTLE",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 180 } },
                        minRenownId = "T2_RENOWN_HONORED",
                        notes       = "Healer shoulders from B148.",
                    },

                    -- Revered (lore + mats)
                    {
                        itemId      = "BOOK_SONGS_OF_THE_MERIDIAN",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 90 } },
                        minRenownId = "T2_RENOWN_REVERED",
                        notes       = "In-game lore book with extended Dawnsong / Reliquary lore.",
                    },
                    {
                        itemId      = "MAT_SANCTUARY_ROOT_FRAGMENT",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 75 } },
                        minRenownId = "T2_RENOWN_REVERED",
                        notes       = "Extra Sanctuary roots for Heartroot path.",
                    },

                    -- Exalted (titles / toys)
                    {
                        itemId      = "TITLE_TOKEN_MERIDIAN_CANTOR",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 150 } },
                        minRenownId = "T2_RENOWN_EXALTED",
                        notes       = "Title: 'Cantor of the Meridian'.",
                    },
                    {
                        itemId      = "TOY_PORTABLE_AURORA_ORRERY",
                        cost        = { { currency = "CURR_VERGE_MARKS", amount = 160 } },
                        minRenownId = "T2_RENOWN_EXALTED",
                        notes       = "Summons a small rotating aurora globe, purely cosmetic.",
                    },
                },
            },
        },
    },

}

----------------------------------------------------------------
-- 3. CURRENCY (VERGE MARKS)
----------------------------------------------------------------
-- Simple wrapper describing the T2 universal currency used by
-- these factions; actual currency system lives elsewhere.
----------------------------------------------------------------

T2Factions.Currency = {
    id          = "CURR_VERGE_MARKS",
    name        = "Marks of the Verge",
    description = "Currency minted by Verge operatives and factions, exchanged for gear, reagents, and favors.",
    sources     = {
        dungeons = {
            { id = "DUNGEON_VEILED_SPIRE",          min = 20, max = 30 },
            { id = "DUNGEON_MERIDIAN_UNDERCRYPT",   min = 20, max = 30 },
        },
        raids = {
            { id = "RAID_CROWN_OF_SHATTERED_VERGE", min = 40, max = 60 },
        },
        worldEvents = {
            { id = "EVENT_ROOTBOUND_STORM",         min = 15, max = 25 },
            { id = "EVENT_ASHEN_CYCLONE",           min = 15, max = 25 },
            { id = "EVENT_GLASSWIND_MAELSTROM",     min = 15, max = 25 },
            { id = "EVENT_UMBRAL_INVERSION",        min = 18, max = 28 },
        },
        worldBosses = {
            { id = "WB_ROOTBOUND_TITAN",            min = 25, max = 35 },
            { id = "WB_EMBERMAW_CATACLYSM",         min = 25, max = 35 },
            { id = "WB_GLASSWIND_SENTINEL",         min = 25, max = 35 },
            { id = "WB_UMBRAL_CONFLUENCE",          min = 25, max = 35 },
        },
        quests = {
            { id = "Q_WARDENS_DAILY_RESCUE",        amount = 10 },
            { id = "Q_SKYSTRIDER_DAILY_RACE",       amount = 10 },
            { id = "Q_EMBERBOUND_DAILY_FORGE",      amount = 10 },
            { id = "Q_CHOIR_DAILY_HYMN",            amount = 10 },
            { id = "Q_WARDENS_WEEKLY_ANCHOR",       amount = 40 },
            { id = "Q_SKYSTRIDER_WEEKLY_MAP",       amount = 40 },
            { id = "Q_EMBERBOUND_WEEKLY_HAUL",      amount = 40 },
            { id = "Q_CHOIR_WEEKLY_RESONANCE",      amount = 40 },
        },
    },
}

----------------------------------------------------------------
-- 4. HOOKS / IMPLEMENTATION NOTES
----------------------------------------------------------------
-- • Plug T2Factions.Factions into your global Faction system:
--      GameData.Factions["FACTION_WARDENS_BROKEN_VERGE"] = ...
--   and so on.
--
-- • Renown system:
--      - On event completion / boss kill / quest turn-in,
--        award renown to each relevant faction based on
--        renownSources definitions.
--
-- • Vendors:
--      - Use vendors[].inventory with minRenownId checks
--        + Currency CURR_VERGE_MARKS cost.
--      - Titles/items like TITLE_TOKEN_* should plug into
--        your title/unlock systems.
--
-- • All items referenced here should exist in item DB:
--      - Many come from B147/B148.
--      - New ones (recipes, cosmetics, toys) can be stubbed
--        as simple items with effect descriptions.
--
-- • This layer gives:
--      - Long-term grind for T2 players.
--      - Deterministic access to key mats for Relic Ascension.
--      - Identity + social goals (mounts, toys, titles).
----------------------------------------------------------------

return T2Factions
