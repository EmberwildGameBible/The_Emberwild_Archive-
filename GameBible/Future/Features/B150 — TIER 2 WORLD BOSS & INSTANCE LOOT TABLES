----------------------------------------------------------------
-- B150 — TIER 2 WORLD BOSS & INSTANCE LOOT TABLES
--
-- This module wires up loot tables for:
--   • Shattered Verge world bosses (B147)
--   • Tier 2 dungeons (B148)
--   • Tier 2 raid: Crown of the Shattered Verge (B148)
--
-- These tables reference item/mat IDs defined in:
--   • B145–B149 (relic ascension, T2 items, mats, etc.)
--
-- NOTE:
--   • This is design-level data; plug it into your actual
--     loot system however you want (merge into LootTables,
--     or keep as T2-specific and import).
----------------------------------------------------------------

local T2Loot = {}

local function LootEntry(itemId, chance, minCount, maxCount)
    return {
        itemId   = itemId,
        chance   = chance,
        minCount = minCount or 1,
        maxCount = maxCount or minCount or 1,
    }
end

T2Loot.Tables = {}

----------------------------------------------------------------
-- 1. SHATTERED VERGE WORLD BOSSES (B147)
----------------------------------------------------------------

-- Rootbound Titan (Fragmented Canopy · root/guardian)
T2Loot.Tables["WB.RootboundTitan"] = {
    coin = { min = 900, max = 1400 },

    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 25, 35),
    },

    equipment = {
        -- Tank / Healer leaning
        LootEntry("ITEM_ROOTBOUND_BASTION_GREAVES",   0.16, 1, 1),
        LootEntry("ITEM_CROWN_GUARDIANS_AEGIS",       0.14, 1, 1),
        LootEntry("ITEM_DAWNSONG_CHOIR_MANTLE",       0.12, 1, 1),

        -- New thematic cloak (design stub)
        LootEntry("ITEM_VERGE_ROOTWARDEN_CLOAK",      0.10, 1, 1),
    },

    mats = {
        LootEntry("MAT_HEARTROOT_SAP_CLUSTER",        0.80, 2, 4),
        LootEntry("MAT_HEARTROOT_SAPLING",            0.30, 1, 1),
        LootEntry("MAT_SANCTUARY_ROOT_FRAGMENT",      0.40, 1, 3),
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.30, 1, 1),
    },

    ultra = {
        -- Cosmetic-only: Rootwarden stag mount, etc (design stubs)
        LootEntry("COSM_WARDEN_BASTION_MOUNT",        0.03, 1, 1),
        LootEntry("TITLE_TOKEN_VERGE_WARDEN",         0.04, 1, 1),
    },
}

-- Embermaw Cataclysm (Ember-Scored Chasm · fire/slag)
T2Loot.Tables["WB.EmbermawCataclysm"] = {
    coin = { min = 900, max = 1400 },

    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 25, 35),
    },

    equipment = {
        LootEntry("ITEM_SEISMIC_PLATE_SHOULDERS",     0.16, 1, 1),
        LootEntry("ITEM_GIANTS_CROSSING_GAUNTLETS",   0.16, 1, 1),
        LootEntry("ITEM_VERGE_RUPTURE_GREATSWORD",    0.14, 1, 1),

        -- New ember cloak (design stub)
        LootEntry("ITEM_EMBERMAW_SCALE_CLOAK",        0.10, 1, 1),
    },

    mats = {
        LootEntry("MAT_ASHEN_WIND_FRAGMENT",          0.85, 2, 5),
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.30, 1, 1),
    },

    ultra = {
        LootEntry("COSM_EMBERFORGED_WEAPON_ENCHANT",  0.03, 1, 1),
        LootEntry("TITLE_TOKEN_EMBERBOUND",           0.04, 1, 1),
    },
}

-- Glasswind Sentinel (Glasswind Steppe · storm/ice)
T2Loot.Tables["WB.GlasswindSentinel"] = {
    coin = { min = 900, max = 1400 },

    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 25, 35),
    },

    equipment = {
        LootEntry("ITEM_STORMSTRIDE_TRACKER_BOOTS",   0.16, 1, 1),
        LootEntry("ITEM_GLASSWIND_SCOPE_BAND",        0.16, 1, 1),
        LootEntry("ITEM_STARFALL_CONFLUENCE_HOOD",    0.14, 1, 1),

        -- New Glasswind cloak (design stub)
        LootEntry("COSM_SKYSTRIDER_CLOAK",            0.10, 1, 1),
    },

    mats = {
        LootEntry("MAT_BOREAL_TRAILCLOAK_ESSENCE",    0.80, 2, 4),
        LootEntry("MAT_AURORA_HYMN_FRAGMENT",         0.60, 1, 2),
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.30, 1, 1),
    },

    ultra = {
        LootEntry("MOUNT_GLASSWIND_SURFBOARD",        0.03, 1, 1),
        LootEntry("TITLE_TOKEN_SKYSTRIDER",           0.04, 1, 1),
    },
}

-- Umbral Confluence (Hollow Meridian · shadow/rift)
T2Loot.Tables["WB.UmbralConfluence"] = {
    coin = { min = 900, max = 1400 },

    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 25, 35),
    },

    equipment = {
        LootEntry("ITEM_UMBRAL_SPINE_VEST",           0.16, 1, 1),
        LootEntry("ITEM_RIFTGLASS_FOCUS",             0.14, 1, 1),
        LootEntry("ITEM_DAWNSONG_CHOIR_MANTLE",       0.12, 1, 1),

        -- Shadow ring (design stub)
        LootEntry("ITEM_UMBRAL_CONFLUENCE_BAND",      0.10, 1, 1),
    },

    mats = {
        LootEntry("MAT_WITCH_QUEENS_EYE_SHARD",       0.75, 1, 3),
        LootEntry("MAT_UMBRAL_SIGNET_FRACTURE",       0.75, 2, 5),
        LootEntry("MAT_SANCTUARY_ROOT_FRAGMENT",      0.50, 1, 3),
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.35, 1, 1),
    },

    ultra = {
        LootEntry("TITLE_TOKEN_MERIDIAN_CANTOR",      0.03, 1, 1),
        LootEntry("TOY_PORTABLE_AURORA_ORRERY",       0.03, 1, 1),
    },
}

----------------------------------------------------------------
-- 2. TIER 2 DUNGEON BOSSES (B148)
----------------------------------------------------------------
-- Veiled Spire of Convergence & Meridian Undercrypt
-- Focus: curated drops, T2 mats, Verge Marks.
----------------------------------------------------------------

-- VEILED SPIRE

T2Loot.Tables["Dungeon.VeiledSpire.ShardwardGate"] = {
    coin = { min = 400, max = 650 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 8, 12),
    },
    equipment = {
        LootEntry("ITEM_EMBERHEART_CRESTED_HELM",     0.15, 1, 1),
        LootEntry("ITEM_STORMSTRIDE_TRACKER_BOOTS",   0.15, 1, 1),
    },
    mats = {
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.10, 1, 1),
        LootEntry("MAT_ASHEN_WIND_FRAGMENT",          0.30, 1, 2),
        LootEntry("MAT_BOREAL_TRAILCLOAK_ESSENCE",    0.30, 1, 2),
    },
}

T2Loot.Tables["Dungeon.VeiledSpire.AscendantWarder"] = {
    coin = { min = 450, max = 700 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 8, 12),
    },
    equipment = {
        LootEntry("ITEM_STORMSTRIDE_TRACKER_BOOTS",   0.18, 1, 1),
        LootEntry("ITEM_GLASSWIND_SCOPE_BAND",        0.16, 1, 1),
    },
    mats = {
        LootEntry("MAT_BOREAL_TRAILCLOAK_ESSENCE",    0.35, 1, 2),
        LootEntry("MAT_AURORA_HYMN_FRAGMENT",         0.20, 1, 1),
    },
}

T2Loot.Tables["Dungeon.VeiledSpire.EyeOfTheSpire"] = {
    coin = { min = 500, max = 750 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 9, 13),
    },
    equipment = {
        LootEntry("ITEM_STARFALL_CONFLUENCE_HOOD",    0.18, 1, 1),
        LootEntry("ITEM_RIFTGLASS_FOCUS",             0.16, 1, 1),
    },
    mats = {
        LootEntry("MAT_WITCH_QUEENS_EYE_SHARD",       0.25, 1, 2),
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.12, 1, 1),
    },
}

T2Loot.Tables["Dungeon.VeiledSpire.SpireheartOverlord"] = {
    coin = { min = 550, max = 800 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 10, 15),
    },
    equipment = {
        LootEntry("ITEM_SEISMIC_PLATE_SHOULDERS",     0.18, 1, 1),
        LootEntry("ITEM_VERGE_RUPTURE_GREATSWORD",    0.16, 1, 1),
        LootEntry("ITEM_STARFALL_CONFLUENCE_HOOD",    0.14, 1, 1),
    },
    mats = {
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.16, 1, 1),
        LootEntry("MAT_ASHEN_WIND_FRAGMENT",          0.35, 1, 3),
        LootEntry("MAT_BOREAL_TRAILCLOAK_ESSENCE",    0.35, 1, 3),
    },
}

-- MERIDIAN UNDERCRYPT

T2Loot.Tables["Dungeon.MeridianUndercrypt.GloamwardenTriad"] = {
    coin = { min = 450, max = 700 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 8, 12),
    },
    equipment = {
        LootEntry("ITEM_NIGHTMARKET_FOOTPADS",        0.18, 1, 1),
        LootEntry("ITEM_SANCTUARY_HEARTBAND",         0.16, 1, 1),
    },
    mats = {
        LootEntry("MAT_HEARTROOT_SAP_CLUSTER",        0.30, 1, 2),
        LootEntry("MAT_UMBRAL_SIGNET_FRACTURE",       0.30, 1, 3),
    },
}

T2Loot.Tables["Dungeon.MeridianUndercrypt.EchoedExecutioner"] = {
    coin = { min = 450, max = 700 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 8, 12),
    },
    equipment = {
        LootEntry("ITEM_GIANTS_CROSSING_GAUNTLETS",   0.18, 1, 1),
        LootEntry("ITEM_UMBRAL_SPINE_VEST",           0.16, 1, 1),
    },
    mats = {
        LootEntry("MAT_WITCH_QUEENS_EYE_SHARD",       0.25, 1, 2),
        LootEntry("MAT_UMBRAL_SIGNET_FRACTURE",       0.35, 1, 3),
    },
}

T2Loot.Tables["Dungeon.MeridianUndercrypt.RiftlockedArchivist"] = {
    coin = { min = 500, max = 750 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 9, 13),
    },
    equipment = {
        LootEntry("ITEM_RIFTGLASS_FOCUS",             0.18, 1, 1),
        LootEntry("ITEM_STARFALL_CONFLUENCE_HOOD",    0.14, 1, 1),
    },
    mats = {
        LootEntry("MAT_WITCH_QUEENS_EYE_SHARD",       0.30, 1, 2),
        LootEntry("MAT_AURORA_HYMN_FRAGMENT",         0.25, 1, 2),
    },
}

T2Loot.Tables["Dungeon.MeridianUndercrypt.MeridianDevourer"] = {
    coin = { min = 550, max = 800 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 10, 15),
    },
    equipment = {
        LootEntry("ITEM_ROOTBOUND_BASTION_GREAVES",   0.16, 1, 1),
        LootEntry("ITEM_NIGHTMARKET_FOOTPADS",        0.16, 1, 1),
        LootEntry("ITEM_UMBRAL_SPINE_VEST",           0.14, 1, 1),
    },
    mats = {
        LootEntry("MAT_SANCTUARY_ROOT_FRAGMENT",      0.30, 1, 3),
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.16, 1, 1),
    },
}

----------------------------------------------------------------
-- 3. TIER 2 RAID: CROWN OF THE SHATTERED VERGE (B148)
----------------------------------------------------------------
-- Each boss gives a mix of:
--   • Gear tailored to its theme/role checks
--   • Core of Convergence chance
--   • Verge Marks
--   • A couple of hyper-rare cosmetic/feat hooks
----------------------------------------------------------------

-- Wing: Conduit Spires

T2Loot.Tables["Raid.Crown.TripleBeacon"] = {
    coin = { min = 800, max = 1200 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 20, 30),
    },
    equipment = {
        LootEntry("ITEM_EMBERHEART_CRESTED_HELM",     0.16, 1, 1),
        LootEntry("ITEM_STARFALL_CONFLUENCE_HOOD",    0.16, 1, 1),
        LootEntry("ITEM_STORMSTRIDE_TRACKER_BOOTS",   0.14, 1, 1),
    },
    mats = {
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.22, 1, 1),
        LootEntry("MAT_BOREAL_TRAILCLOAK_ESSENCE",    0.30, 1, 3),
        LootEntry("MAT_ASHEN_WIND_FRAGMENT",          0.30, 1, 3),
    },
    ultra = {
        LootEntry("COSM_BEACON_AURA_TOY",             0.02, 1, 1), -- design stub
    },
}

T2Loot.Tables["Raid.Crown.AuroraEngine"] = {
    coin = { min = 850, max = 1250 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 20, 30),
    },
    equipment = {
        LootEntry("ITEM_STARFALL_CONFLUENCE_HOOD",    0.16, 1, 1),
        LootEntry("ITEM_DAWNSONG_CHOIR_MANTLE",       0.16, 1, 1),
        LootEntry("ITEM_RIFTGLASS_FOCUS",             0.14, 1, 1),
    },
    mats = {
        LootEntry("MAT_AURORA_HYMN_FRAGMENT",         0.40, 1, 3),
        LootEntry("MAT_WITCH_QUEENS_EYE_SHARD",       0.25, 1, 2),
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.22, 1, 1),
    },
    ultra = {
        LootEntry("TOY_PORTABLE_AURORA_ORRERY",       0.03, 1, 1),
    },
}

-- Wing: Root and Hollow Court

T2Loot.Tables["Raid.Crown.RootflameCouncil"] = {
    coin = { min = 900, max = 1300 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 22, 32),
    },
    equipment = {
        LootEntry("ITEM_CROWN_GUARDIANS_AEGIS",       0.16, 1, 1),
        LootEntry("ITEM_SEISMIC_PLATE_SHOULDERS",     0.16, 1, 1),
        LootEntry("ITEM_DAWNSONG_CHOIR_MANTLE",       0.14, 1, 1),
    },
    mats = {
        LootEntry("MAT_HEARTROOT_SAP_CLUSTER",        0.35, 1, 3),
        LootEntry("MAT_ASHEN_WIND_FRAGMENT",          0.35, 1, 3),
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.25, 1, 1),
    },
    ultra = {
        LootEntry("TITLE_TOKEN_MERIDIAN_CANTOR",      0.02, 1, 1),
    },
}

T2Loot.Tables["Raid.Crown.HollowKingEdras"] = {
    coin = { min = 950, max = 1350 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 22, 32),
    },
    equipment = {
        LootEntry("ITEM_UMBRAL_SPINE_VEST",           0.16, 1, 1),
        LootEntry("ITEM_VERGE_RUPTURE_GREATSWORD",    0.16, 1, 1),
        LootEntry("ITEM_SANCTUARY_HEARTBAND",         0.14, 1, 1),
    },
    mats = {
        LootEntry("MAT_WITCH_QUEENS_EYE_SHARD",       0.35, 1, 3),
        LootEntry("MAT_UMBRAL_SIGNET_FRACTURE",       0.40, 1, 4),
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.25, 1, 1),
    },
    ultra = {
        LootEntry("COSM_HOLLOW_KING_CROWN",           0.02, 1, 1),
    },
}

-- Wing: Skybreak Apex

T2Loot.Tables["Raid.Crown.SkyseverSeraph"] = {
    coin = { min = 1000, max = 1400 },
    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 24, 34),
    },
    equipment = {
        LootEntry("ITEM_GLASSWIND_SCOPE_BAND",        0.16, 1, 1),
        LootEntry("ITEM_STORMSTRIDE_TRACKER_BOOTS",   0.16, 1, 1),
        LootEntry("ITEM_NIGHTMARKET_FOOTPADS",        0.14, 1, 1),
    },
    mats = {
        LootEntry("MAT_BOREAL_TRAILCLOAK_ESSENCE",    0.40, 1, 4),
        LootEntry("MAT_ASHEN_WIND_FRAGMENT",          0.30, 1, 3),
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.28, 1, 1),
    },
    ultra = {
        LootEntry("MOUNT_GLASSWIND_SURFBOARD",        0.02, 1, 1),
    },
}

-- Final boss: Heart of the Broken Crown
T2Loot.Tables["Raid.Crown.ConvergenceCore"] = {
    coin = { min = 1200, max = 1800 },

    currency = {
        LootEntry("CURR_VERGE_MARKS", 1.00, 30, 40),
    },

    equipment = {
        -- Spread across roles; this boss is where you finish your T2 gear spine.
        LootEntry("ITEM_CROWN_GUARDIANS_AEGIS",       0.12, 1, 1),
        LootEntry("ITEM_VERGE_RUPTURE_GREATSWORD",    0.12, 1, 1),
        LootEntry("ITEM_STORMSTRIDE_TRACKER_BOOTS",   0.12, 1, 1),
        LootEntry("ITEM_UMBRAL_SPINE_VEST",           0.12, 1, 1),
        LootEntry("ITEM_STARFALL_CONFLUENCE_HOOD",    0.12, 1, 1),
        LootEntry("ITEM_DAWNSONG_CHOIR_MANTLE",       0.12, 1, 1),
        LootEntry("ITEM_SANCTUARY_HEARTBAND",         0.12, 1, 1),
    },

    mats = {
        -- High Core chance, plus a mix of all T2 mats.
        LootEntry("MAT_CORE_OF_CONVERGENCE",          0.70, 1, 2),
        LootEntry("MAT_HEARTROOT_SAP_CLUSTER",        0.40, 1, 3),
        LootEntry("MAT_ASHEN_WIND_FRAGMENT",          0.40, 1, 3),
        LootEntry("MAT_BOREAL_TRAILCLOAK_ESSENCE",    0.40, 1, 3),
        LootEntry("MAT_WITCH_QUEENS_EYE_SHARD",       0.40, 1, 3),
        LootEntry("MAT_AURORA_HYMN_FRAGMENT",         0.40, 1, 2),
        LootEntry("MAT_SANCTUARY_ROOT_FRAGMENT",      0.40, 1, 3),
    },

    ultra = {
        -- Hyper-rare cosmetics / meta-progression
        LootEntry("TITLE_TOKEN_VERGE_PARAGON",        0.02, 1, 1),
        LootEntry("COSM_CONVERGENCE_MYTHIC_AURA",     0.02, 1, 1),
    },
}

----------------------------------------------------------------
-- 4. NOTES
----------------------------------------------------------------
-- • You can merge T2Loot.Tables into your global LootTables:
--      for id, tbl in pairs(T2Loot.Tables) do
--          LootTables[id] = tbl
--      end
--
-- • Chances above are per-drop weights; how many rolls each
--   boss makes (e.g. 2–4 equipment entries, 1–2 mats, etc.)
--   is up to your loot system.
--
-- • Currency and coin values are tuned assuming T2 endgame:
--      - World bosses slightly above dungeons.
--      - Raid bosses highest, with the final boss spiking.
--
-- • Use these as a backbone and keep adding items as you build
--   more T2 gear; just keep the same structure.
----------------------------------------------------------------

return T2Loot
