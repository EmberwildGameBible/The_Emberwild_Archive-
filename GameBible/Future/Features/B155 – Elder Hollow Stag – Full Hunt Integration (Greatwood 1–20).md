Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B155 – Greatwood Creature Loot Tables (Lua Implementation)

---

## 0. Purpose & Relationship to B151

This file is the **concrete Lua implementation** of the Greatwood creature loot spec defined in:

- **B151 – Greatwood Loot & Drop System (1–20)**

B151 is the **design+balance doc** (philosophy, bands, rarity, families).  
B155 is the **data module** that an actual game server can consume.

In practice:

- Designers tune B151 (how many rolls, which families, how rare, etc.).
- This file mirrors that logic as **Lua tables**:
  - Loot buckets (what can drop).
  - Family defaults (stags, boars, howlers, Hollowroot beasts, bandits, ward entities).
  - Per-creature overrides (young stag vs ridge stag, alpha howler, etc.).

This module is meant to be referenced from a separate resolver (e.g. `ResolveLoot_Greatwood.lua`) and from boss/Hunt reward modules (e.g. `HuntRewards_Greatwood.lua`).

---

## 1. Greatwood Creature Loot Tables (Lua Module)

> Note: this is written to be drop-in compatible with Roblox / LuaU, but it also serves as **canonical reference data** for Greatwood 1–20 drops.

```lua
--[[
    LootTables_Creatures_Greatwood.lua

    Greatwood 1–20 creature loot tables.

    This module provides:
      - Per-creature loot specs (M.creatures)
      - Per-family defaults (M.families)
      - Weighted loot buckets (M.buckets)

    It is intentionally DATA-ONLY.
    All logic for rolling loot should live in a resolver, e.g.:

        local GW = require(path.to.LootTables_Creatures_Greatwood)
        local result = ResolveLoot_Greatwood(ctx, GW)

    Bands:
      A = level  1–5
      B = level  6–10
      C = level 11–15
      D = level 16–20

    Tiers:
      "NORMAL", "TOUGH", "RARE", "ELITE", "MINIBOSS", "BOSS"

    See B151 – Greatwood Loot & Drop System (1–20) for philosophy and tuning notes.
]]

local M = {}

----------------------------------------------------------------
-- Helper: We keep band labels consistent everywhere.
----------------------------------------------------------------

M.BANDS = { "A", "B", "C", "D" }

----------------------------------------------------------------
-- BUCKETS
--
-- Buckets are shared weighted tables that multiple creatures
-- can reference. Each entry can specify:
--   - item  = itemId string
--   - weight = relative weight
--   - min, max = stack count (defaults to 1,1)
--   - coin = { min, max } instead of item, to drop coin
--
-- One roll from a bucket chooses EXACTLY ONE entry by weight.
----------------------------------------------------------------

M.buckets = {

    ----------------------------------------------------------------
    -- CORE CREATURE FAMILIES
    ----------------------------------------------------------------

    -- Stag / Deer meat focus
    CREATURE_STAG_MEAT = {
        entries = {
            { item = "stag_haunch",          weight = 10, min = 1, max = 1 },
            { item = "young_stag_cut",      weight = 7,  min = 1, max = 2 },
            { item = "stringy_game_meat",   weight = 5,  min = 1, max = 2 },
        }
    },

    CREATURE_STAG_BONUS = {
        entries = {
            { item = "stag_hide_strip",     weight = 10, min = 1, max = 1 },
            { item = "clean_bone_shard",    weight = 8,  min = 1, max = 2 },
            { item = "antler_fragment",     weight = 5,  min = 1, max = 1 },
            { item = "sapstained_antler",   weight = 2,  min = 1, max = 1 },
        }
    },

    -- Boar meat + fat + bones
    CREATURE_BOAR_MEAT = {
        entries = {
            { item = "boar_shank",          weight = 9,  min = 1, max = 2 },
            { item = "boar_belly_strip",    weight = 7,  min = 1, max = 2 },
            { item = "stringy_game_meat",   weight = 4,  min = 1, max = 2 },
        }
    },

    CREATURE_BOAR_FAT_BONE = {
        entries = {
            { item = "fat_render_chunk",    weight = 8,  min = 1, max = 2 },
            { item = "marrow_bone_piece",   weight = 6,  min = 1, max = 2 },
            { item = "boar_hide_patch",     weight = 5,  min = 1, max = 1 },
            { coin = { min = 0, max = 4 },  weight = 6 },
        }
    },

    -- Howlers / Wolves
    CREATURE_HOWLER_DEFAULT = {
        entries = {
            { item = "howler_flank",        weight = 8,  min = 1, max = 1 },
            { item = "howler_rib_meat",     weight = 6,  min = 1, max = 2 },
            { item = "howler_pelt_tuft",    weight = 7,  min = 1, max = 1 },
            { item = "fang_chip",           weight = 5,  min = 1, max = 2 },
            { item = "clean_bone_shard",    weight = 4,  min = 1, max = 2 },
        }
    },

    CREATURE_HOWLER_TROPHY = {
        entries = {
            { item = "warded_howler_tooth", weight = 3,  min = 1, max = 1 },
            { item = "howler_pelt_strip",   weight = 6,  min = 1, max = 1 },
            { coin = { min = 1, max = 6 },  weight = 5 },
        }
    },

    -- Hollowroot / corrupted beasts
    CREATURE_HOLLOWROOT_DEFAULT = {
        entries = {
            { item = "tainted_game_meat",       weight = 8,  min = 1, max = 1 },
            { item = "hollowroot_core_chunk",   weight = 5,  min = 1, max = 1 },
            { item = "hollowroot_resin",        weight = 4,  min = 1, max = 2 },
            { item = "black_sap_nodule",        weight = 2,  min = 1, max = 1 },
        }
    },

    CREATURE_HOLLOWROOT_FUNGAL = {
        entries = {
            { item = "hollowroot_sporecap",    weight = 8,  min = 1, max = 2 },
            { item = "mire_fungus",            weight = 5,  min = 1, max = 2 },
            { item = "dampcap",                weight = 4,  min = 1, max = 2 },
            { item = "black_sap_growth",       weight = 2,  min = 1, max = 1 },
        }
    },

    -- Bandits / Poachers / Humanoids
    CREATURE_BANDIT_HUMANOID = {
        entries = {
            { item = "scrap_leather_strap",    weight = 8,  min = 1, max = 2 },
            { item = "scavenged_iron_shard",   weight = 7,  min = 1, max = 3 },
            { item = "bandit_token",           weight = 5,  min = 1, max = 1 },
            { coin = { min = 2, max = 8 },     weight = 10 },
        }
    },

    CREATURE_POACHER_SPECIAL = {
        entries = {
            { item = "poacher_trap_gear",      weight = 7,  min = 1, max = 1 },
            { item = "poached_pelt_bundle",    weight = 5,  min = 1, max = 1 },
            { item = "poacher_field_notes",    weight = 3,  min = 1, max = 1 },
            { item = "trinket_hunters_token_minor", weight = 2, min = 1, max = 1 },
        }
    },

    -- Ward / Shadow entities
    CREATURE_WARD_ENTITY = {
        entries = {
            { item = "wardstone_bracket",      weight = 8,  min = 1, max = 1 },
            { item = "wardstone_crust_flake",  weight = 6,  min = 1, max = 2 },
            { item = "spectral_mote_faint",    weight = 5,  min = 1, max = 2 },
            { item = "shadow_essence_flicker", weight = 3,  min = 1, max = 1 },
        }
    },

    CREATURE_WARD_TROPHY = {
        entries = {
            { item = "warded_charm_cracked",   weight = 4,  min = 1, max = 1 },
            { coin = { min = 3, max = 9 },     weight = 6 },
        }
    },

    ----------------------------------------------------------------
    -- WORLD / RARE / HUNT-RELATED BUCKETS
    ----------------------------------------------------------------

    GW_WORLD_UNCOMMON = {
        entries = {
            { item = "recipe_scroll_hunters_bone_broth",     weight = 6,  min = 1, max = 1 },
            { item = "recipe_scroll_gw_game_stew",           weight = 6,  min = 1, max = 1 },
            { item = "alchemy_note_whisperfern_draught",     weight = 5,  min = 1, max = 1 },
            { item = "trinket_hunters_token_minor",          weight = 4,  min = 1, max = 1 },
            { item = "lore_scrap_poachers_route",            weight = 3,  min = 1, max = 1 },
        }
    },

    GW_WORLD_RARE = {
        entries = {
            { item = "recipe_scroll_hollowroot_stew",        weight = 4,  min = 1, max = 1 },
            { item = "recipe_scroll_boar_fat_feast",         weight = 4,  min = 1, max = 1 },
            { item = "trinket_warded_charm_cracked",         weight = 3,  min = 1, max = 1 },
            { item = "trinket_hunters_token_greater",        weight = 2,  min = 1, max = 1 },
            { item = "lore_scrap_greatwood_legend",          weight = 2,  min = 1, max = 1 },
        }
    },

    GW_WORLD_RELIC_TOUCH = {
        entries = {
            { item = "relic_splinter_woodheart",             weight = 3,  min = 1, max = 1 },
            { item = "relic_splinter_sapbound_antler",       weight = 2,  min = 1, max = 1 },
            { item = "relic_dust_faded_ward",                weight = 2,  min = 1, max = 1 },
        }
    },
}

----------------------------------------------------------------
-- FAMILY DEFAULTS
----------------------------------------------------------------

M.families = {

    STAG_FAMILY = {
        tier = "NORMAL",
        coin = { min = 0, max = 3, chance = 0.40 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 0 },
            B = { primary_rolls = 1, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 1 },
            D = { primary_rolls = 2, secondary_rolls = 1 },
        },

        buckets = {
            primary   = "CREATURE_STAG_MEAT",
            secondary = "CREATURE_STAG_BONUS",
        },

        world_drop = {
            chance = 0.0005,
            table  = "GW_WORLD_UNCOMMON",
        },
    },

    BOAR_FAMILY = {
        tier = "NORMAL",
        coin = { min = 1, max = 4, chance = 0.50 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 0 },
            B = { primary_rolls = 1, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 1 },
            D = { primary_rolls = 2, secondary_rolls = 1 },
        },

        buckets = {
            primary   = "CREATURE_BOAR_MEAT",
            secondary = "CREATURE_BOAR_FAT_BONE",
        },

        world_drop = {
            chance = 0.0007,
            table  = "GW_WORLD_UNCOMMON",
        },
    },

    HOWLER_FAMILY = {
        tier = "NORMAL",
        coin = { min = 1, max = 6, chance = 0.70 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 0 },
            B = { primary_rolls = 1, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 1 },
            D = { primary_rolls = 2, secondary_rolls = 1 },
        },

        buckets = {
            primary   = "CREATURE_HOWLER_DEFAULT",
            secondary = "CREATURE_HOWLER_TROPHY",
        },

        world_drop = {
            chance = 0.0010,
            table  = "GW_WORLD_UNCOMMON",
        },
    },

    HOLLOWROOT_BEAST_FAMILY = {
        tier = "NORMAL",
        coin = { min = 0, max = 4, chance = 0.40 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 0 },
            B = { primary_rolls = 1, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 1 },
            D = { primary_rolls = 2, secondary_rolls = 1 },
        },

        buckets = {
            primary   = "CREATURE_HOLLOWROOT_DEFAULT",
            secondary = "CREATURE_HOLLOWROOT_FUNGAL",
        },

        world_drop = {
            chance = 0.0012,
            table  = "GW_WORLD_RARE",
        },
    },

    BANDIT_FAMILY = {
        tier = "NORMAL",
        coin = { min = 2, max = 8, chance = 0.85 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 0 },
            B = { primary_rolls = 1, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 1 },
            D = { primary_rolls = 2, secondary_rolls = 2 },
        },

        buckets = {
            primary   = "CREATURE_BANDIT_HUMANOID",
            secondary = "GW_WORLD_UNCOMMON",
        },

        world_drop = {
            chance = 0.0015,
            table  = "GW_WORLD_RARE",
        },
    },

    POACHER_FAMILY = {
        tier = "RARE",
        coin = { min = 4, max = 10, chance = 0.90 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 1 },
            B = { primary_rolls = 2, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 2 },
            D = { primary_rolls = 3, secondary_rolls = 2 },
        },

        buckets = {
            primary   = "CREATURE_BANDIT_HUMANOID",
            secondary = "CREATURE_POACHER_SPECIAL",
        },

        world_drop = {
            chance = 0.0020,
            table  = "GW_WORLD_RARE",
        },
    },

    WARD_ENTITY_FAMILY = {
        tier = "RARE",
        coin = { min = 3, max = 9, chance = 0.60 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 1 },
            B = { primary_rolls = 2, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 2 },
            D = { primary_rolls = 3, secondary_rolls = 2 },
        },

        buckets = {
            primary   = "CREATURE_WARD_ENTITY",
            secondary = "CREATURE_WARD_TROPHY",
        },

        world_drop = {
            chance = 0.0025,
            table  = "GW_WORLD_RELIC_TOUCH",
        },
    },
}

----------------------------------------------------------------
-- CREATURE-SPECIFIC ENTRIES
----------------------------------------------------------------

M.creatures = {

    -- STAGS / DEER
    gw_stag = {
        family = "STAG_FAMILY",
        level_range = { min = 3, max = 10 },
        tier = "NORMAL",
    },

    gw_young_stag = {
        family = "STAG_FAMILY",
        level_range = { min = 1, max = 7 },
        tier = "NORMAL",

        coin = { min = 0, max = 2, chance = 0.30 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 0 },
            B = { primary_rolls = 1, secondary_rolls = 0 },
            C = { primary_rolls = 1, secondary_rolls = 1 },
            D = { primary_rolls = 1, secondary_rolls = 1 },
        },
    },

    gw_ridge_stag = {
        family = "STAG_FAMILY",
        level_range = { min = 8, max = 16 },
        tier = "TOUGH",

        coin = { min = 1, max = 5, chance = 0.60 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 1 },
            B = { primary_rolls = 1, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 1 },
            D = { primary_rolls = 2, secondary_rolls = 2 },
        },

        world_drop = {
            chance = 0.0010,
            table  = "GW_WORLD_UNCOMMON",
        },
    },

    -- BOARS
    gw_boar = {
        family = "BOAR_FAMILY",
        level_range = { min = 4, max = 12 },
        tier = "NORMAL",
    },

    gw_mire_boar = {
        family = "BOAR_FAMILY",
        level_range = { min = 6, max = 15 },
        tier = "TOUGH",

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 0 },
            B = { primary_rolls = 2, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 1 },
            D = { primary_rolls = 2, secondary_rolls = 2 },
        },
    },

    -- HOWLERS / WOLVES
    gw_howler = {
        family = "HOWLER_FAMILY",
        level_range = { min = 5, max = 14 },
        tier = "NORMAL",
    },

    gw_alpha_howler = {
        family = "HOWLER_FAMILY",
        level_range = { min = 10, max = 20 },
        tier = "RARE",

        coin = { min = 2, max = 8, chance = 0.80 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 1 },
            B = { primary_rolls = 2, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 2 },
            D = { primary_rolls = 3, secondary_rolls = 2 },
        },

        world_drop = {
            chance = 0.0020,
            table  = "GW_WORLD_RARE",
        },
    },

    -- HOLLOWROOT / CORRUPTED BEASTS
    gw_hollowroot_beast = {
        family = "HOLLOWROOT_BEAST_FAMILY",
        level_range = { min = 8, max = 18 },
        tier = "TOUGH",
    },

    gw_hollowroot_stag = {
        family = "HOLLOWROOT_BEAST_FAMILY",
        level_range = { min = 10, max = 20 },
        tier = "RARE",

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 1 },
            B = { primary_rolls = 2, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 2 },
            D = { primary_rolls = 3, secondary_rolls = 2 },
        },
    },

    -- BANDITS / POACHERS
    gw_bandit_scout = {
        family = "BANDIT_FAMILY",
        level_range = { min = 4, max = 12 },
        tier = "NORMAL",

        coin = { min = 2, max = 6, chance = 0.90 },
    },

    gw_bandit_brute = {
        family = "BANDIT_FAMILY",
        level_range = { min = 8, max = 18 },
        tier = "TOUGH",

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 1 },
            B = { primary_rolls = 2, secondary_rolls = 1 },
            C = { primary_rolls = 2, secondary_rolls = 2 },
            D = { primary_rolls = 3, secondary_rolls = 2 },
        },
    },

    gw_poacher_stalker = {
        family = "POACHER_FAMILY",
        level_range = { min = 8, max = 18 },
        tier = "RARE",
    },

    -- WARD / SHADOW ENTITIES
    gw_ward_wisp = {
        family = "WARD_ENTITY_FAMILY",
        level_range = { min = 10, max = 20 },
        tier = "RARE",

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 1 },
            B = { primary_rolls = 1, secondary_rolls = 2 },
            C = { primary_rolls = 2, secondary_rolls = 2 },
            D = { primary_rolls = 2, secondary_rolls = 3 },
        },
    },

    gw_ward_guardian = {
        family = "WARD_ENTITY_FAMILY",
        level_range = { min = 14, max = 20 },
        tier = "ELITE",

        coin = { min = 4, max = 10, chance = 0.70 },

        bands = {
            A = { primary_rolls = 1, secondary_rolls = 2 },
            B = { primary_rolls = 2, secondary_rolls = 2 },
            C = { primary_rolls = 3, secondary_rolls = 2 },
            D = { primary_rolls = 3, secondary_rolls = 3 },
        },

        world_drop = {
            chance = 0.0040,
            table  = "GW_WORLD_RELIC_TOUCH",
        },
    },

    -- Signature Hunt trash hooks

    gw_blacksap_beastling = {
        family = "HOLLOWROOT_BEAST_FAMILY",
        level_range = { min = 12, max = 18 },
        tier = "NORMAL",

        buckets = {
            primary   = "CREATURE_HOLLOWROOT_DEFAULT",
            secondary = "CREATURE_HOLLOWROOT_FUNGAL",
            per_band = {
                C = { secondary = "CREATURE_HOLLOWROOT_FUNGAL" },
                D = { secondary = "CREATURE_HOLLOWROOT_FUNGAL" },
            }
        },
    },

    gw_matron_corrupted_stag = {
        family = "HOLLOWROOT_BEAST_FAMILY",
        level_range = { min = 13, max = 20 },
        tier = "TOUGH",
    },
}

----------------------------------------------------------------
-- Optional: data validation helper
----------------------------------------------------------------

function M.debugValidate()
    local missing = {}
    local function ensureBucket(name)
        if not M.buckets[name] then
            missing[name] = true
        end
    end

    for id, spec in pairs(M.creatures) do
        if spec.buckets then
            if spec.buckets.primary then ensureBucket(spec.buckets.primary) end
            if spec.buckets.secondary then ensureBucket(spec.buckets.secondary) end
            if spec.buckets.per_band then
                for _, override in pairs(spec.buckets.per_band) do
                    if override.primary then ensureBucket(override.primary) end
                    if override.secondary then ensureBucket(override.secondary) end
                end
            end
        end

        if spec.family then
            if not M.families[spec.family] then
                warn(("[LootTables_Greatwood] Creature '%s' references unknown family '%s'"):format(id, spec.family))
            end
        end
    end

    for name in pairs(missing) do
        warn("[LootTables_Greatwood] Missing bucket definition: " .. name)
    end
end

return M
