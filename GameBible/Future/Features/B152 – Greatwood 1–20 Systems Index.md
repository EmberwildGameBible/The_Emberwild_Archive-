# B152 — Greatwood Containers & Hunt Caches (1–20)

---

## 0. Purpose & Scope

This file defines **all container-based loot** for Greatwood 1–20:

- World chests (low, medium, high tier).
- Dungeon chests (Hollowroot Warren).
- Secret stashes and Lodge supply crates.
- **Hunt caches** from the Greatwood Hunt Board (61).

It is the canonical spec backing:

- `LootTables_Containers_Greatwood.lua`
- The container half of `LootService` (opening chests, caches, crates).
- B151’s **Hunt token + set piece** distribution (for Heartroot, Gnarlbear, Dawnweaver).

B151 focused on **creatures** and global drop rules.  
B152 focuses on **containers** and how they:

- Reinforce progression.
- Deliver Hunt cache rewards.
- Provide token and set-piece backup for bad luck on boss drops.

---

## 1. Design Pillars for Containers

1. **Containers are “moments,” not slot machines**

   - Opening a chest or Hunt cache should feel *special*.
   - Early game: a chest is memorable, not spam.

2. **Containers lean into context**

   - World chests → exploration & secrets.
   - Dungeon chests → mid-run “breather” rewards.
   - Hunt caches → structured Hunt progression and tokens.

3. **No pure chest farming**

   - Spawn logic (elsewhere) prevents infinite chest loops.
   - Chest contents are tuned to be meaningful but not abusable.

4. **Tokens and sets live here too**

   - Dungeon and Hunt caches are a major delivery mechanism for:
     - Hunt tokens (`gw_token_*`).
     - Set pieces (Heartroot, Gnarlbear, Dawnweaver).

---

## 2. Container Types in Greatwood 1–20

We define the following container archetypes:

1. **World Chests**
   - T1: Rustic Satchel / Small Chest (lvl 3–10 zones).
   - T2: Greatwood Cache / Warden’s Strongbox (lvl 10–20 zones).
2. **Dungeon Chests (Hollowroot Warren)**
   - HRW Side Alcove Chests (mid wings).
   - HRW Final Reward Chest.
3. **Hunt Caches**
   - `Hunt Cache T1` – early Hunts.
   - `Hunt Cache T2 – Agile` – AGI/DEX-leaning (Heartroot).
   - `Hunt Cache T2 – Frontline` – STR/STA-leaning (Gnarlbear).
   - `Hunt Cache T2 – Caster` – INT/SPI-leaning (Dawnweaver).
4. **Lodge Supply Crates**
   - Low, medium, high tier crates granted from Lodge dailies / story beats.

Each type has:

- Coin curve appropriate to the level band.
- Mixture of:
  - Gear buckets (`gear_*`).
  - Ingredients (profession fuel).
  - Tokens (for Hunts/Dungeons).
  - Rare world drop hooks (`worlddrop_any`).

---

## 3. Container Schema (Implementation-Oriented)

We reuse a schema compatible with B151:

```lua
LootTables_Containers["id"] = {
    levelRange = { min = 1, max = 20 }, -- optional

    base_rolls = 1, -- how many times to run all roll groups (usually 1)

    coin = { min = 3, max = 15, chance = 0.8 },

    guaranteed = {
        { item = "common_food_bundle", min = 1, max = 1, chance = 0.60 },
        -- ...
    },

    rolls = {
        {
            name           = "core",
            rolls          = 1,
            chanceOverride = 0.8, -- optional group-level chance
            entries = {
                { item = "gear_green_any", weight = 25, min = 1, max = 1 },
                { item = "gear_white_any", weight = 60, min = 1, max = 1 },
                { item = "nothing",        weight = 15, min = 0, max = 0 },
            }
        },
        {
            name           = "worlddrop_hook",
            rolls          = 1,
            entries = {
                { item = "worlddrop_any", weight = 1,   min = 1, max = 1 },
                { item = "nothing",       weight = 999, min = 0, max = 0 },
            }
        }
    },

    tokens = {
        {
            name   = "hunt_token",
            item   = "gw_token_heartroot_hunt",
            chance = 0.25,
        }
    }
}
Notes:

base_rolls is used for multi-open chests (rare; usually 1).

tokens is a separate collection because tokens are per-player rewards in many cases (Hunt caches), not group-shared.

4. World Chests – Greatwood
4.1 Rustic Satchel / Small Chest (T1 World Chest)
Level: 3–10.
Purpose: early “wow, free stuff” moments.

lua
Copy code
LootTables_Containers["gw_world_chest_t1"] = {
    levelRange = { min = 3, max = 10 },
    base_rolls = 1,

    coin = { min = 4, max = 12, chance = 0.85 },

    guaranteed = {
        { item = "common_food_bundle", min = 1, max = 1, chance = 0.60 }, -- bread, jerky, etc.
    },

    rolls = {
        {
            name           = "core_gear_or_ingr",
            rolls          = 1,
            chanceOverride = 0.90,
            entries = {
                { item = "gear_white_any",         weight = 60, min = 1, max = 1 },
                { item = "gear_green_any",         weight = 15, min = 1, max = 1 },
                { item = "basic_profession_kit",   weight = 10, min = 1, max = 1 }, -- small mix of herbs/meats/woods
                { item = "nothing",                weight = 15, min = 0, max = 0 },
            }
        },

        {
            name  = "worlddrop_hook",
            rolls = 1,
            entries = {
                { item = "worlddrop_any", weight = 2,   min = 1, max = 1 }, -- very tiny chance at band A/B worlddrops
                { item = "nothing",       weight = 998, min = 0, max = 0 },
            }
        }
    }
}
4.2 Greatwood Cache / Warden’s Strongbox (T2 World Chest)
Level: 10–20.
Purpose: exploration reward for mid-map and hidden spots.

lua
Copy code
LootTables_Containers["gw_world_chest_t2"] = {
    levelRange = { min = 10, max = 20 },
    base_rolls = 1,

    coin = { min = 10, max = 30, chance = 0.95 },

    guaranteed = {
        { item = "common_food_bundle",     min = 1, max = 1, chance = 0.70 },
        { item = "midtier_prof_bundle",    min = 1, max = 1, chance = 0.50 }, -- mixed herbs/meats/woods
    },

    rolls = {
        {
            name           = "gear_roll",
            rolls          = 1,
            chanceOverride = 0.95,
            entries = {
                { item = "gear_green_any", weight = 45, min = 1, max = 1 },
                { item = "gear_white_any", weight = 25, min = 1, max = 1 },
                { item = "gear_rare_any",  weight = 5,  min = 1, max = 1 },
                { item = "nothing",        weight = 25, min = 0, max = 0 },
            }
        },

        {
            name  = "worlddrop_hook",
            rolls = 1,
            entries = {
                { item = "worlddrop_any", weight = 5,   min = 1, max = 1 }, -- higher chance vs T1
                { item = "nothing",       weight = 995, min = 0, max = 0 },
            }
        }
    }
}
5. Dungeon Chests – Hollowroot Warren
5.1 HRW Side Chests
These appear in wings/alcoves and are one-per-run type rewards.

lua
Copy code
LootTables_Containers["hrw_side_chest"] = {
    levelRange = { min = 13, max = 20 },
    base_rolls = 1,

    coin = { min = 15, max = 40, chance = 1.0 },

    guaranteed = {
        { item = "dungeon_food_bundle", min = 1, max = 1, chance = 0.80 },
        { item = "hrw_profession_cache",min = 1, max = 1, chance = 0.70 }, -- better herbs/fungi
    },

    rolls = {
        {
            name           = "gear_roll",
            rolls          = 1,
            chanceOverride = 1.0,
            entries = {
                { item = "gear_green_any", weight = 60, min = 1, max = 1 },
                { item = "gear_rare_any",  weight = 15, min = 1, max = 1 },
                { item = "gear_white_any", weight = 15, min = 1, max = 1 },
                { item = "nothing",        weight = 10, min = 0, max = 0 },
            }
        },

        {
            name  = "worlddrop_hook",
            rolls = 1,
            entries = {
                { item = "worlddrop_any", weight = 8,   min = 1, max = 1 },
                { item = "nothing",       weight = 992, min = 0, max = 0 },
            }
        }
    },

    tokens = {
        {
            name   = "dungeon_token",
            item   = "gw_token_hollowroot_depths",
            chance = 0.40,
        }
    }
}
5.2 HRW Final Chest
End-of-dungeon reward; plays heavily into set progression and tokens.

lua
Copy code
LootTables_Containers["hrw_final_chest"] = {
    levelRange = { min = 15, max = 20 },
    base_rolls = 1,

    coin = { min = 30, max = 80, chance = 1.0 },

    guaranteed = {
        { item = "dungeon_food_bundle",   min = 1, max = 1, chance = 1.0 },
        { item = "hrw_profession_cache",  min = 1, max = 1, chance = 1.0 },
    },

    rolls = {
        {
            name           = "rare_or_set_roll",
            rolls          = 2, -- 2 shots per chest for the *group*
            chanceOverride = 1.0,
            entries = {
                { item = "gear_rare_any",          weight = 40, min = 1, max = 1 },
                { item = "set_heartroot_any",      weight = 25, min = 1, max = 1 },
                { item = "set_gnarlbear_any",      weight = 25, min = 1, max = 1 },
                { item = "set_dawnweaver_any",     weight = 25, min = 1, max = 1 },
                { item = "gear_green_any",         weight = 60, min = 1, max = 1 },
                { item = "nothing",                weight = 50, min = 0, max = 0 },
            }
        },

        {
            name  = "worlddrop_hook",
            rolls = 1,
            entries = {
                { item = "worlddrop_any", weight = 10,   min = 1, max = 1 },
                { item = "nothing",       weight = 990,  min = 0, max = 0 },
            }
        }
    },

    tokens = {
        {
            name   = "dungeon_token",
            item   = "gw_token_hollowroot_depths",
            chance = 0.70,
        }
    }
}
Note:

set_heartroot_any, set_gnarlbear_any, set_dawnweaver_any are resolver buckets:

Implementation maps them to the appropriate set tables from B151 §13 when rolled.

6. Hunt Caches – Greatwood Hunt Board
Hunt caches are per-player reward containers granted when turning in Hunt Deeds at the Lodge (61).

There are:

T1 – generic early caches.

T2 – role-skewed caches linked to the Level 15 sets.

6.1 Hunt Cache T1 – Generic
For early Hunts (level ~8–12) before set pieces.

lua
Copy code
LootTables_Containers["gw_hunt_cache_t1_generic"] = {
    levelRange = { min = 8, max = 14 },
    base_rolls = 1,

    coin = { min = 8, max = 20, chance = 1.0 },

    guaranteed = {
        { item = "hunt_food_bundle",    min = 1, max = 1, chance = 1.0 },
        { item = "hunt_profession_bundle", min = 1, max = 1, chance = 0.80 },
    },

    rolls = {
        {
            name           = "gear_roll",
            rolls          = 1,
            chanceOverride = 0.90,
            entries = {
                { item = "gear_green_any", weight = 40, min = 1, max = 1 },
                { item = "gear_white_any", weight = 25, min = 1, max = 1 },
                { item = "gear_rare_any",  weight = 5,  min = 1, max = 1 },
                { item = "nothing",        weight = 30, min = 0, max = 0 },
            }
        }
    },

    tokens = {
        {
            name   = "generic_hunt_token",
            item   = "gw_token_hunt_generic",
            chance = 0.20,
        }
    }
}
6.2 Hunt Cache T2 – Agile (Heartroot Skew)
Matches B151 §13.2 secondary source.

lua
Copy code
LootTables_Containers["gw_hunt_cache_t2_agile"] = {
    levelRange = { min = 12, max = 20 },
    base_rolls = 1,

    coin = { min = 12, max = 28, chance = 1.0 },

    guaranteed = {
        { item = "hunt_food_bundle",         min = 1, max = 1, chance = 1.0 },
        { item = "hunt_profession_bundle",   min = 1, max = 1, chance = 0.90 },
    },

    rolls = {
        {
            name           = "rare_set_roll_heartroot",
            rolls          = 1,
            chanceOverride = 0.35,
            entries = {
                { item = "set_heartroot_hood",     weight = 22, min = 1, max = 1 },
                { item = "set_heartroot_jerkin",   weight = 22, min = 1, max = 1 },
                { item = "set_heartroot_legwraps", weight = 22, min = 1, max = 1 },
                { item = "set_heartroot_treads",   weight = 22, min = 1, max = 1 },
                { item = "set_heartroot_band",     weight = 12, min = 1, max = 1 },
            }
        },

        {
            name           = "backup_gear_roll",
            rolls          = 1,
            chanceOverride = 0.80,
            entries = {
                { item = "gear_green_any", weight = 40, min = 1, max = 1 },
                { item = "gear_white_any", weight = 30, min = 1, max = 1 },
                { item = "gear_rare_any",  weight = 6,  min = 1, max = 1 },
                { item = "nothing",        weight = 24, min = 0, max = 0 },
            }
        }
    },

    tokens = {
        {
            name   = "heartroot_token_bonus",
            item   = "gw_token_heartroot_hunt",
            chance = 0.20,
        }
    }
}
6.3 Hunt Cache T2 – Frontline (Gnarlbear Skew)
lua
Copy code
LootTables_Containers["gw_hunt_cache_t2_frontline"] = {
    levelRange = { min = 12, max = 20 },
    base_rolls = 1,

    coin = { min = 12, max = 28, chance = 1.0 },

    guaranteed = {
        { item = "hunt_food_bundle",         min = 1, max = 1, chance = 1.0 },
        { item = "hunt_profession_bundle",   min = 1, max = 1, chance = 0.90 },
    },

    rolls = {
        {
            name           = "rare_set_roll_gnarlbear",
            rolls          = 1,
            chanceOverride = 0.30,
            entries = {
                { item = "set_gnarlbear_helm",       weight = 25, min = 1, max = 1 },
                { item = "set_gnarlbear_chestguard", weight = 25, min = 1, max = 1 },
                { item = "set_gnarlbear_legplates",  weight = 25, min = 1, max = 1 },
                { item = "set_gnarlbear_sabatons",   weight = 25, min = 1, max = 1 },
            }
        },

        {
            name           = "backup_gear_roll",
            rolls          = 1,
            chanceOverride = 0.80,
            entries = {
                { item = "gear_green_any", weight = 40, min = 1, max = 1 },
                { item = "gear_white_any", weight = 30, min = 1, max = 1 },
                { item = "gear_rare_any",  weight = 6,  min = 1, max = 1 },
                { item = "nothing",        weight = 24, min = 0, max = 0 },
            }
        }
    },

    tokens = {
        {
            name   = "gnarlbear_token_bonus",
            item   = "gw_token_gnarlbear_warden",
            chance = 0.20,
        }
    }
}
6.4 Hunt Cache T2 – Caster (Dawnweaver Skew)
lua
Copy code
LootTables_Containers["gw_hunt_cache_t2_caster"] = {
    levelRange = { min = 12, max = 20 },
    base_rolls = 1,

    coin = { min = 12, max = 28, chance = 1.0 },

    guaranteed = {
        { item = "hunt_food_bundle",         min = 1, max = 1, chance = 1.0 },
        { item = "hunt_profession_bundle",   min = 1, max = 1, chance = 0.90 },
    },

    rolls = {
        {
            name           = "rare_set_roll_dawnweaver",
            rolls          = 1,
            chanceOverride = 0.32,
            entries = {
                { item = "set_dawnweaver_hood",       weight = 22, min = 1, max = 1 },
                { item = "set_dawnweaver_robe",       weight = 22, min = 1, max = 1 },
                { item = "set_dawnweaver_legwraps",   weight = 22, min = 1, max = 1 },
                { item = "set_dawnweaver_sandals",    weight = 22, min = 1, max = 1 },
                { item = "set_dawnweaver_focus_band", weight = 12, min = 1, max = 1 },
            }
        },

        {
            name           = "backup_gear_roll",
            rolls          = 1,
            chanceOverride = 0.80,
            entries = {
                { item = "gear_green_any", weight = 40, min = 1, max = 1 },
                { item = "gear_white_any", weight = 30, min = 1, max = 1 },
                { item = "gear_rare_any",  weight = 6,  min = 1, max = 1 },
                { item = "nothing",        weight = 24, min = 0, max = 0 },
            }
        }
    },

    tokens = {
        {
            name   = "dawnweaver_token_bonus",
            item   = "gw_token_dawnweaver",
            chance = 0.20,
        }
    }
}
7. Lodge Supply Crates
These are given as quest rewards, Lodge dailies, or story beats, separate from Hunts.

7.1 Lodge Supply Crate – Basic
lua
Copy code
LootTables_Containers["gw_lodge_crate_basic"] = {
    levelRange = { min = 5, max = 12 },
    base_rolls = 1,

    coin = { min = 6, max = 16, chance = 1.0 },

    guaranteed = {
        { item = "lodge_food_bundle",      min = 1, max = 1, chance = 1.0 },
        { item = "lodge_profession_bundle",min = 1, max = 1, chance = 0.90 },
    },

    rolls = {
        {
            name           = "gear_roll",
            rolls          = 1,
            chanceOverride = 0.70,
            entries = {
                { item = "gear_green_any", weight = 25, min = 1, max = 1 },
                { item = "gear_white_any", weight = 40, min = 1, max = 1 },
                { item = "nothing",        weight = 35, min = 0, max = 0 },
            }
        }
    }
}
You can define medium/high variants by bumping coin, profession bundles, and gear weights, but the pattern remains the same.

8. Numeric Expectations – Containers
High-level sanity:

World chests

A level 10–20 player hitting ~1–2 T2 chests per hour:

~1–3 green items/hour from chests.

Occasional rare or minor set support.

Dungeon chests

One HRW run:

1–3 greens + 1–2 rares from side chests.

1–3 strong items (rares+sets) from final chest.

Hunt caches

Turning in 1–3 Hunt Deeds per session:

~1 extra green per cache.

~0.3–0.35 chance per cache of set piece at T2.

20% chance at an extra Hunt-token.

This keeps containers aligned with B151’s per-hour targets, but slanted toward spiky, memorable rewards.

9. Containers_Greatwood.lua – Module Blueprint
All of the above translates into a single data module:

lua
Copy code
-- ReplicatedStorage/LootTables/Containers_Greatwood.lua
local Containers = {}

Containers["gw_world_chest_t1"]          = { ... } -- as defined above
Containers["gw_world_chest_t2"]          = { ... }
Containers["hrw_side_chest"]             = { ... }
Containers["hrw_final_chest"]            = { ... }
Containers["gw_hunt_cache_t1_generic"]   = { ... }
Containers["gw_hunt_cache_t2_agile"]     = { ... }
Containers["gw_hunt_cache_t2_frontline"] = { ... }
Containers["gw_hunt_cache_t2_caster"]    = { ... }
Containers["gw_lodge_crate_basic"]       = { ... }

return Containers
LootService will then have a companion function:

lua
Copy code
-- pseudo-signature
LootService.RollContainerLoot(containerId, level, context)
Which uses the same pattern as RollCreatureLoot from B151.

10. How B152 Connects to B151
Hunt caches here are the container half of B151’s set/token logic.

Dungeon chests reinforce:

B151’s rare and set pacing.

World chests and Lodge crates:

Fill in the “exploration” and “quest” loot band without breaking the core drops-per-hour goals.

Together:

B151 + B152 = full Greatwood 1–20 loot story:

Creatures.

Containers.

Hunts.

Dungeons.

Tokens & sets.

Implementation path in Roblox.
