## Greatwood 1–20

---

## 0. Purpose & Scope

This file defines the **loot and drop ecosystem** for **Greatwood 1–20**.

It exists to answer:

- What drops **where**?
- At **what frequency**?
- How does loot support:
  - Professions (Forester, Cook, Woodworker, Alchemist).
  - Hunts, Dungeons, Events.
  - Lodge economy, tokens, vendors.
  - Player power curve and identity (sets, rares, trophies).

This file is:

- The **canonical loot spec** for Greatwood 1–20.
- The design **source of truth** for:
  - Loot tables.
  - Drop logic.
  - Numeric targets.
  - Implementation patterns in Roblox Lua.

Other files it depends on / feeds into:

- `51 – Greatwood Ingredient Taxonomy`
- `52 – Greatwood Early Cooking Recipe Grid`
- `53 – Advanced Cooking – Signature Lodge Dishes`
- `54 – Profession Tools and Gear Sets (Forester, Cook, Woodworker)`
- `55 – Specialty Ingredients from Hunts, Bosses, and Events`
- `57 – Profession Combo Recipes`
- `58 – Alchemy Stub – Hunter Tonics, Balms, and Brews`
- `61 – Greatwood Hunt Board and Deeds System`
- `65 – Hollowroot Warren Dungeon`
- `B127 – Greatwood Gear Set I (Lvl 15 Rare)`

---

## 1. Design Pillars

Loot in Emberwild (especially early Greatwood) is:

- **Slow** – deliberate, Classic-WoW-like pacing.
- **Rewarding** – when something drops, it *matters*.
- **Predictable-but-exciting** – you know *where* to go, but not *exactly* what you’ll get.
- **Grounded** – wolves drop meat and hides, not random swords.
- **Integrated** – loot ties into Lodge, professions, Hunts, events, and token vendors.

Key principles:

1. **No Diablo-style spray**

   - Mobs do not vomit 6–15 items.
   - Most kills drop:
     - Coin.
     - 0–2 items.
   - Rare drops are rare, not background noise.

2. **Hunts and Dungeons are the spine**

   - Normal mobs = baseline income + ingredients.
   - Hunts/Dungeons = primary source of:
     - Rare gear.
     - Named sets.
     - Specialty reagents.
     - Tokens.

3. **Professions matter**

   - Meat, hides, herbs, woods, and reagents are **first-class loot**.
   - A “good run” might be:
     - No new gear…
     - But new ingredients enabling powerful recipes.

4. **Token-based bad luck protection**

   - Long-form Hunts and Dungeons drop **tokens**.
   - Tokens convert into:
     - Set pieces.
     - Profession unlocks.
     - Lodge cosmetics (later tiers).

5. **Clean implementation path**

   - All loot is defined as **data tables**.
   - A single `LootService` rolls and awards loot.
   - Greatwood 1–20 tables live in:
     - `Creatures_Greatwood.lua`
     - `Containers_Greatwood.lua`
     - `WorldDrop_Greatwood.lua`

---

## 2. Loot Sources Overview

Loot in Greatwood 1–20 comes from:

1. **Creatures**
   - Critters (world flavor).
   - Ambient beasts (wolves, boars, stags, etc.).
   - Humanoids (bandits, cultists).
   - Elites (“silver” mobs).
   - Rare elites (named Hunts, mini-bosses).

2. **Nodes**
   - Forest resources:
     - Wood (forestry nodes).
     - Herbs (gathering).
     - Mushrooms, roots, and special fungi.
   - Fishing spots (future).
   - Mining (delayed to later regions).

3. **Containers**
   - Chests:
     - World chests.
     - Dungeon chests.
     - Secret caches.
   - Hunt caches:
     - Reward containers for completing Hunt Deeds (61).

4. **Events and Quests**
   - Dynamic events (62).
   - Quest rewards (56, 60, 61, 65).
   - Lodge story beats.

5. **Vendors & Economy**
   - Lodge vendors:
     - Base profession supplies.
     - Token-based vendors.
   - Token sinks:
     - Hunt tokens → set pieces.
     - Reputation ranks → special items.

---

## 3. Rarity Tiers & Drop Buckets

### 3.1 Rarity Tiers (Greatwood 1–20)

Standardized tiers:

- **Common (White)**  
  - Baseline gear.
  - Ingredients, commodity trade goods.
- **Uncommon (Green)**  
  - “Real upgrades” early; main progression gear band.
- **Rare (Blue)**  
  - Named items and stronger stat packages.
  - Early iconic pieces; low drop rate.
- **Epic (Purple)**  
  - Almost absent at 1–20; may appear as:
    - One-off quest rewards.
    - Extremely rare Hunt trophy items.

### 3.2 Buckets

We treat loot as coming out of **buckets**, not raw item lists:

- Buckets by **item type**:
  - `gear_white_any`
  - `gear_green_any`
  - `gear_rare_any`
  - `weapon_any`, `armor_cloth_any`, etc.
- Buckets by **context**:
  - `worlddrop_any` (resolves via banded tables).
  - `hunt_trophy_generic`
  - `spec_ingr_*` for specialty ingredients.
- Buckets by **set**:
  - `set_heartroot_*`
  - `set_gnarlbear_*`
  - `set_dawnweaver_*`

Implementation detail:

- Loot tables reference buckets like `"gear_green_any"`.
- A resolver maps bucket → **actual item id** based on:
  - Level band.
  - Creature type.
  - Player class/role (optional future extension).

---

## 4. Global Loot Rules (Greatwood 1–20)

### 4.1 Global Targets

Design targets per player:

- **Per hour** (mixed solo/group play):
  - Coin:
    - 1–10: ~30–70.
    - 11–20: ~80–150.
  - Gear:
    - White: 3–8 usable pieces/hour.
    - Green: 0.5–2/hour.
    - Rare: ~0.1–0.35/hour (1 rare per 3–10 hours depending on content).
  - Recipes / Profession unlocks:
    - 0.2–0.5/hour.
  - “Interesting” (trophies, reagents, tokens):
    - 1–3 per *Hunt/Dungeon*.

### 4.2 Per-Mob Expectations

Per kill expectations for common mobs:

- Critters:
  - Basically no value.
- Ambient beasts:
  - Ingredient heavy; low gear.
- Humanoids:
  - Higher coin, higher gear, fewer ingredients.
- Elites:
  - Mini-Hunt experience.
- Named Hunts:
  - Strong loot packages, tokens, set pieces.

### 4.3 Player Experience Goals

- Killing 5–10 mobs should often yield:
  - Some coins.
  - Several ingredients.
  - Occasional white/green gear.
- Doing a Hunt should feel like:
  - A real shot at:
    - Rare gear.
    - Named set progress.
    - Unique reagents.
    - Tokens leading to guaranteed rewards.

---

## 5. Ingredient Distribution (High-Level Map)

Ingredients are primarily defined in:

- `51 – Greatwood Ingredient Taxonomy`
- `55 – Specialty Ingredients from Hunts, Bosses, and Events`

This section defines *how* we inject them into loot.

### 5.1 Ingredient Bands

We define ingredient bands by **rarity and usage**:

1. **Common ingredients**
   - Generic meat, hides, bones, basic herbs.
   - Drop off many creatures/nodes.
2. **Uncommon ingredients**
   - Slightly rarer herbs, organs, and woods:
     - Used for stronger food/tonics.
3. **Specialty ingredients**
   - From Hunts, bosses, rare nodes:
     - `spec_ingr_*`.
   - Gate unique recipes and Lodge dishes.

### 5.2 Creature–Ingredient Mapping

- **Ambient beasts**
  - Always yield at least 1 common ingredient (meat, hide, bone).
  - Moderate chance at uncommon organs.
- **Humanoids**
  - Lower ingredient yield.
  - Higher coin and gear.
- **Hunts**
  - Guaranteed specialty reagents (subject to pity logic).
  - Multiple meat/hide organs.

### 5.3 Node–Ingredient Mapping

Nodes defined in 51 map to:

- Wood nodes:
  - Yield common woods, chance for `rare_wood_*`.
- Herb patches:
  - Yield basic herbs + small chance at `rare_herb_*`.
- Mushrooms / fungi:
  - Largely used in cooking / alchemy cross-recipes.

Nodes *don’t* use the same schema as creatures, but they follow similar patterns:

- `guaranteed` yields.
- One or more `rolls` buckets for:
  - Extra herbs.
  - Rare botanicals.
  - Worlddrop reagents.

---

## 6. Loot Table Schema (Implementation-Oriented)

We use a simple schema that maps almost 1:1 into Roblox Lua.

### 6.1 Core Schema

Conceptually:

```lua
LootTables_Creatures["id"] = {
    level_range = { min = 1, max = 20 }, -- Optional

    coin = { min = 1, max = 5, chance = 0.6 },

    guaranteed = {
        { item = "generic_meat_raw", min = 1, max = 1, chance = 0.75 },
        -- ...
    },

    rolls = {
        {
            name  = "gear_roll",
            rolls = 1,
            entries = {
                { item = "gear_white_any", weight = 40,  min = 1, max = 1 },
                { item = "gear_green_any", weight = 3,   min = 1, max = 1 },
                { item = "nothing",        weight = 957, min = 0, max = 0 },
            }
        },

        {
            name           = "example_group",
            rolls          = 1,
            chanceOverride = 0.30, -- optional
            entries = {
                { item = "some_item", weight = 1, min = 1, max = 1 },
                { item = "nothing",   weight = 3, min = 0, max = 0 },
            }
        }
    }
}
Field meanings:

coin – separate roll for currency.

guaranteed – checked once each; they can still have a chance.

rolls – one or more named groups:

rolls (int) – how many times to pick from entries.

entries – weighted entries.

chanceOverride – optional group-level chance (for “only 30% of kills even roll on this bucket”).

6.2 Shared Buckets
To avoid duplication, we reference buckets:

gear_white_any

gear_green_any

gear_rare_any

worlddrop_any

These map into banded world drop tables and class-appropriate loot.

6.3 Containers & Nodes
Containers use almost identical schema:

lua
Copy code
LootTables_Containers["id"] = {
    base_rolls = 1,
    coin = { min = 3, max = 15, chance = 0.8 },

    rolls = {
        {
            name           = "core",
            rolls          = 1,
            entries        = { ... },
            chanceOverride = 0.7, -- optional
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
Nodes often only use guaranteed and simple rolls buckets.

7. Creature Archetypes (Design + Schema)
This section defines default archetype templates. Numeric tuning is in §14.

Archetypes:

Critter / Trash critter.

Ambient beast.

Humanoid bandit/cultist.

Elite (“silver”).

Rare elite / Hunt target.

7.1 Critter / Trash Critter
Purpose: world flavor, not real farm.

Loot:

Almost no coin.

Fluff scraps (rarely).

No gear, no world drops.

Template:

lua
Copy code
LootTables_Creatures["gw_critter_template"] = {
    coin = { min = 0, max = 1, chance = 0.10 },

    guaranteed = {
        -- usually empty, or tiny fluff chance
    },

    rolls = {
        {
            name  = "fluff",
            rolls = 1,
            entries = {
                { item = "critter_fur_scrap", weight = 5,  min = 1, max = 1 },
                { item = "critter_bone_chip",weight = 3,  min = 1, max = 1 },
                { item = "nothing",          weight = 92, min = 0, max = 0 },
            }
        }
    }
}
7.2 Ambient Beast
Wolves, boars, basic corrupted animals.

Lean heavily into:

Meat.

Hides.

Bones and organs.

Template:

lua
Copy code
LootTables_Creatures["gw_ambient_beast_template"] = {
    level_range = { min = 3, max = 18 },

    coin = { min = 1, max = 6, chance = 0.55 },

    guaranteed = {
        { item = "generic_meat_raw", min = 1, max = 1, chance = 0.75 },
    },

    rolls = {
        {
            name  = "beast_secondary",
            rolls = 1,
            entries = {
                { item = "beast_bone_shard", weight = 25, min = 1, max = 1 },
                { item = "beast_hide_strip", weight = 25, min = 1, max = 1 },
                { item = "nothing",          weight = 50, min = 0, max = 0 },
            }
        },

        {
            name  = "gear_roll",
            rolls = 1,
            entries = {
                { item = "gear_white_any", weight = 40,  min = 1, max = 1 },
                { item = "gear_green_any", weight = 3,   min = 1, max = 1 },
                { item = "nothing",        weight = 957, min = 0, max = 0 },
            }
        },

        {
            name  = "worlddrop_hook",
            rolls = 1,
            entries = {
                { item = "worlddrop_any", weight = 1,   min = 1, max = 1 },
                { item = "nothing",       weight = 999, min = 0, max = 0 },
            }
        }
    }
}
7.3 Humanoid Bandits / Cultists
Bandits, cultists, lodge traitors, etc.

Focus on:

Coin.

Gear.

Trash tokens for flavor.

Template:

lua
Copy code
LootTables_Creatures["gw_bandit_template"] = {
    level_range = { min = 6, max = 20 },

    coin = { min = 3, max = 14, chance = 0.85 },

    guaranteed = {
        { item = "bandit_token_trash", min = 1, max = 1, chance = 0.60 },
    },

    rolls = {
        {
            name  = "gear_core",
            rolls = 1,
            entries = {
                { item = "gear_white_any", weight = 350, min = 1, max = 1 },
                { item = "gear_green_any", weight = 40,  min = 1, max = 1 },
                { item = "nothing",        weight = 610, min = 0, max = 0 },
            }
        },

        {
            name  = "worlddrop_hook",
            rolls = 1,
            entries = {
                { item = "worlddrop_any", weight = 3,   min = 1, max = 1 },
                { item = "nothing",       weight = 997, min = 0, max = 0 },
            }
        }
    }
}
7.4 Elite (“Silver”) Mobs
Tougher mobs that require small groups or careful play.

Mini-Hunt style rewards.

Template:

lua
Copy code
LootTables_Creatures["gw_elite_template"] = {
    level_range = { min = 8, max = 20 },

    coin = { min = 10, max = 28, chance = 1.0 },

    guaranteed = {
        { item = "elite_crafting_piece", min = 1, max = 1, chance = 1.0 },
        { item = "elite_meat_or_hide",   min = 1, max = 2, chance = 0.80 },
    },

    rolls = {
        {
            name  = "gear_roll",
            rolls = 1,
            entries = {
                { item = "gear_green_any", weight = 300, min = 1, max = 1 },
                { item = "gear_white_any", weight = 200, min = 1, max = 1 },
                { item = "nothing",        weight = 500, min = 0, max = 0 },
            }
        },

        {
            name  = "rare_roll",
            rolls = 1,
            entries = {
                { item = "gear_rare_any", weight = 30,  min = 1, max = 1 },
                { item = "nothing",       weight = 970, min = 0, max = 0 },
            }
        }
    }
}
7.5 Rare Elites / Named Hunts Baseline
Named Hunts get their own tables, but share a baseline:

lua
Copy code
LootTables_Creatures["gw_hunt_named_baseline"] = {
    coin = { min = 18, max = 40, chance = 1.0 },

    guaranteed = {
        { item = "hunt_trophy_generic", min = 1, max = 1, chance = 1.0 },
        { item = "hunt_meat_primary",   min = 2, max = 4, chance = 1.0 },
        { item = "hunt_organ_special",  min = 1, max = 1, chance = 0.60 },
    },

    rolls = {
        {
            name  = "gear_roll",
            rolls = 1,
            entries = {
                { item = "gear_green_any", weight = 400, min = 1, max = 1 },
                { item = "gear_rare_any",  weight = 80,  min = 1, max = 1 },
                { item = "nothing",        weight = 520, min = 0, max = 0 },
            }
        }
    }
}
Named set drops + tokens for each Hunt are layered in §13.

8. Hunts & Rare Elites (Conceptual Mapping)
This section is mostly conceptual; exact tables for named sets live in §13.

Greatwood level 10–20 Hunts include, for example:

Black-Sap Devourer.

Elder Hollow Stag.

Ward-Bear.

Greatwood Howler.

Shadow Under the Wardstone.

Each Hunt:

Uses gw_hunt_named_baseline as a starting point.

Adds:

Named trophies (hunt_trophy_*).

Specialty reagents (spec_ingr_*).

Tokens (gw_token_*).

Set drops (set_heartroot_*, set_gnarlbear_*, set_dawnweaver_*).

9. Dungeons & World Boss Loot Structure
Main dungeon in this band:

Hollowroot Warren (65).

Dungeon loot structure:

Trash mobs:

Use gw_ambient_beast_template / gw_bandit_template with slightly higher coin + gear.

Mini-bosses:

Use gw_elite_template with dungeon-specific reagents.

Bosses:

Use:

gw_hunt_named_baseline-like baselines.

Dungeon-only:

Rare gear.

Trophies.

Tokens.

Set drops (see §13).

Dungeon chests:

Use container tables in:

LootTables_Containers["hrw_chest_*"].

Pull from:

Dungeon-specific gear.

World drop band tables.

Tokens.

Profession ingredients for 52/53/57/58.

10. Professions & Ingredients Integration
High-level linkages:

Forester

Wood nodes across Greatwood produce:

Common woods.

Rare woods (low chance).

Occasional worlddrop reagents used in 54/57.

Cook

Creatures supply:

Meat (common).

Special meats/organs (from Hunts).

Containers and Lodge vendors provide:

Spices.

Oils.

Exotic ingredients (later).

Woodworker

Uses wood nodes + animal parts (antlers, bones).

Alchemy

Uses herbs, mushrooms, and specialty reagents.

Heavily tied to Hunts and events (55, 58).

Loot tables always ensure:

At least some profession value from active play.

Hunts and Dungeons dropping distinct reagents so they feel worth repeating.

11. Lodge Economy & Tokens (1–20 Hooks)
Tokens:

Hunt tokens:

gw_token_heartroot_hunt

gw_token_gnarlbear_warden

gw_token_dawnweaver

Dungeon tokens:

gw_token_hollowroot_depths (example).

Used for:

Early Lodge vendor redemptions:

Random set rolls (3 tokens).

Choose-a-slot (6 tokens).

Long-term:

Cosmetic items.

Profession recipes.

Trophies.

This file defines drop rates and conversion math (§14), not full vendor UI. Vendor stock lives in separate Lodge vendor files (B84/B101 etc).

12. Player Progression & Loot Feel per Band
Level bands:

1–5:

Mostly white gear.

First greens from quests/Hunts.

Professions introduced.

6–10:

Stable stream of greens from:

Humanoids.

Early Hunts.

Rare chance at blue items.

11–15:

More structured Hunts.

Introduction of Level 15 Rare sets (B127).

First tokens with real meaning.

16–20:

Hollowroot Warren.

Stronger Hunts and rare elites.

Set completion becomes realistic goal.

The rest of this file makes the above real via drop tables, numeric tuning, and code patterns.

13. Named Level 15 Rare Sets – Drop Mapping (Greatwood 1–20)
This section binds the abstract loot rules in this file to the concrete Level 15 Rare sets defined in B127 – Greatwood Gear Set I (Lvl 15 Rare).

It answers:

“Where does each piece of these sets actually drop in Greatwood?”

We focus on three sets:

Heartroot Hunter – AGI/STA leather skirmisher.

Gnarlbear Warden – STR/STA frontline bruiser/tank.

Dawnweaver – INT/SPI caster/healer.

Each set has:

A primary loop (specific Hunts/Dungeons).

Secondary sources (Hunt caches, world drops).

Token backup via Lodge vendors.

13.1 Principles for Named Set Drops
Above baseline loot

Set pieces live in dedicated buckets (Hunts, Dungeons, caches).

They are not drawn from generic green/blue tables.

Session progress

For 2–3 hours of focused Hunt/Dungeon play at level ~15:

Group sees ~1–3 set pieces.

Individual player gets ~0–2 pieces depending on loot rules.

Weekend completion

Over a “Greatwood weekend”:

A focused player can reasonably complete one full set for their main role.

Tokens as safety

Hunt and Dungeon bosses drop tokens.

Tokens → vendor conversion ensures:

Progress even when direct drops are unlucky.

Bind rules

Level 15 Rare sets are Bind on Pickup in Tier 1.

13.2 Heartroot Hunter Set – Drop Mapping
Fantasy:
Swift hunter who lives in the Greatwood canopy, specializing in mobility and precision.

Pieces (B127):

Heartroot Hunter’s Hood (Head, Leather)

Heartroot Hunter’s Jerkin (Chest, Leather)

Heartroot Hunter’s Legwraps (Legs, Leather)

Heartroot Hunter’s Treads (Feet, Leather)

Hunter’s Heartroot Band (Ring)

13.2.1 Primary Sources
Black-Sap Devourer Hunt

Focus: Hood, Treads, Band.

lua
Copy code
LootTables_Creatures["hunt_black_sap_devourer"] = {
    coin = { min = 25, max = 45, chance = 1.0 },

    guaranteed = {
        { item = "hunt_trophy_black_sap_devourer",  min = 1, max = 1, chance = 1.0 },
        { item = "spec_ingr_black_sap_seed_nodule", min = 1, max = 1, chance = 0.80 },
        { item = "generic_meat_raw",                min = 2, max = 4, chance = 1.0 },
    },

    rolls = {
        {
            name  = "gear_roll",
            rolls = 1,
            entries = {
                { item = "gear_green_any", weight = 400, min = 1, max = 1 },
                { item = "gear_rare_any",  weight = 80,  min = 1, max = 1 },
                { item = "nothing",        weight = 520, min = 0, max = 0 },
            }
        },

        {
            name           = "heartroot_hunter_primary",
            rolls          = 1,
            chanceOverride = 0.28,
            entries = {
                { item = "set_heartroot_hood",   weight = 35, min = 1, max = 1 },
                { item = "set_heartroot_treads", weight = 35, min = 1, max = 1 },
                { item = "set_heartroot_band",   weight = 30, min = 1, max = 1 },
            }
        },

        {
            name           = "heartroot_token",
            rolls          = 1,
            chanceOverride = 0.40,
            entries = {
                { item = "gw_token_heartroot_hunt", weight = 1, min = 1, max = 1 },
            }
        }
    }
}
Elder Hollow Stag Hunt

Focus: Jerkin, Legwraps.

lua
Copy code
LootTables_Creatures["hunt_elder_hollow_stag"] = {
    coin = { min = 25, max = 45, chance = 1.0 },

    guaranteed = {
        { item = "hunt_trophy_elder_hollow_stag", min = 1, max = 1, chance = 1.0 },
        { item = "spec_ingr_elder_stag_marrow",   min = 1, max = 1, chance = 0.75 },
        { item = "generic_meat_raw",              min = 2, max = 4, chance = 1.0 },
    },

    rolls = {
        {
            name           = "heartroot_hunter_core_armor",
            rolls          = 1,
            chanceOverride = 0.30,
            entries = {
                { item = "set_heartroot_jerkin",   weight = 55, min = 1, max = 1 },
                { item = "set_heartroot_legwraps", weight = 45, min = 1, max = 1 },
            }
        },

        {
            name           = "heartroot_token",
            rolls          = 1,
            chanceOverride = 0.25,
            entries = {
                { item = "gw_token_heartroot_hunt", weight = 1, min = 1, max = 1 },
            }
        }
    }
}
Hollowroot Warren Boss

Any mid/late boss:

lua
Copy code
LootTables_Creatures["hrw_boss_2"] = {
    -- baseline dungeon loot...

    rolls = {
        {
            name           = "heartroot_hunter_any_piece",
            rolls          = 1,
            chanceOverride = 0.20,
            entries = {
                { item = "set_heartroot_hood",     weight = 20, min = 1, max = 1 },
                { item = "set_heartroot_jerkin",   weight = 20, min = 1, max = 1 },
                { item = "set_heartroot_legwraps", weight = 20, min = 1, max = 1 },
                { item = "set_heartroot_treads",   weight = 20, min = 1, max = 1 },
                { item = "set_heartroot_band",     weight = 20, min = 1, max = 1 },
            }
        }
    }
}
13.2.2 Secondary Sources
Agility-oriented Hunt Caches

lua
Copy code
LootTables_Containers["gw_hunt_cache_t2_agile"] = {
    base_rolls = 1,

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
World Drop Fallback

lua
Copy code
WorldDropTables["gw_worlddrop_armor_agi_15"] = {
    level_range = { min = 14, max = 20 },

    entries = {
        -- normal AGI rare armor...

        { item = "set_heartroot_treads", weight = 1 },
        { item = "set_heartroot_band",   weight = 1 },
    }
}
13.3 Gnarlbear Warden Set – Drop Mapping
Fantasy:
The unstoppable bark-plated frontliner of Greatwood.

Pieces (B127):

Gnarlbear Warden Helm (Head)

Gnarlbear Warden Chestguard (Chest)

Gnarlbear Warden Legplates (Legs)

Gnarlbear Warden Sabatons (Feet)

13.3.1 Primary Sources
Ward-Bear Hunt

lua
Copy code
LootTables_Creatures["hunt_ward_bear"] = {
    coin = { min = 25, max = 50, chance = 1.0 },

    guaranteed = {
        { item = "hunt_trophy_ward_bear",    min = 1, max = 1, chance = 1.0 },
        { item = "spec_ingr_ward_bear_claw", min = 1, max = 1, chance = 0.80 },
    },

    rolls = {
        {
            name           = "gnarlbear_warden_core",
            rolls          = 1,
            chanceOverride = 0.32,
            entries = {
                { item = "set_gnarlbear_helm",       weight = 55, min = 1, max = 1 },
                { item = "set_gnarlbear_chestguard", weight = 45, min = 1, max = 1 },
            }
        },

        {
            name           = "gnarlbear_token",
            rolls          = 1,
            chanceOverride = 0.40,
            entries = {
                { item = "gw_token_gnarlbear_warden", weight = 1, min = 1, max = 1 },
            }
        }
    }
}
Hollowroot Warren Final Boss

lua
Copy code
LootTables_Creatures["hrw_final_boss"] = {
    -- standard dungeon loot baseline...

    rolls = {
        {
            name           = "gnarlbear_warden_legs_feet",
            rolls          = 1,
            chanceOverride = 0.30,
            entries = {
                { item = "set_gnarlbear_legplates", weight = 60, min = 1, max = 1 },
                { item = "set_gnarlbear_sabatons",  weight = 40, min = 1, max = 1 },
            }
        },

        {
            name           = "gnarlbear_token",
            rolls          = 1,
            chanceOverride = 0.35,
            entries = {
                { item = "gw_token_gnarlbear_warden", weight = 1, min = 1, max = 1 },
            }
        }
    }
}
13.3.2 Secondary Sources
Frontline Hunt Caches

lua
Copy code
LootTables_Containers["gw_hunt_cache_t2_frontline"] = {
    base_rolls = 1,

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
World Drop Fallback

lua
Copy code
WorldDropTables["gw_worlddrop_armor_str_15"] = {
    level_range = { min = 14, max = 20 },

    entries = {
        -- normal STR rare armor...

        { item = "set_gnarlbear_helm",      weight = 1 },
        { item = "set_gnarlbear_legplates", weight = 1 },
    }
}
13.4 Dawnweaver Set – Drop Mapping
Fantasy:
Lodge mystic wrapped in dawn mist and wardlight – hybrid healer/caster.

Pieces (B127):

Dawnweaver’s Hood (Head)

Dawnweaver’s Robe (Chest)

Dawnweaver’s Legwraps (Legs)

Dawnweaver’s Sandals (Feet)

Dawnweaver’s Focus Band (Ring/Trinket)

13.4.1 Primary Sources
Shadow Under the Wardstone Hunt

lua
Copy code
LootTables_Creatures["hunt_shadow_wardstone"] = {
    coin = { min = 25, max = 50, chance = 1.0 },

    guaranteed = {
        { item = "hunt_trophy_shadow_wardstone", min = 1, max = 1, chance = 1.0 },
        { item = "spec_ingr_wardstone_heart",    min = 1, max = 1, chance = 0.80 },
    },

    rolls = {
        {
            name           = "dawnweaver_main",
            rolls          = 1,
            chanceOverride = 0.30,
            entries = {
                { item = "set_dawnweaver_robe",       weight = 40, min = 1, max = 1 },
                { item = "set_dawnweaver_hood",       weight = 30, min = 1, max = 1 },
                { item = "set_dawnweaver_focus_band", weight = 30, min = 1, max = 1 },
            }
        },

        {
            name           = "dawnweaver_token",
            rolls          = 1,
            chanceOverride = 0.40,
            entries = {
                { item = "gw_token_dawnweaver", weight = 1, min = 1, max = 1 },
            }
        }
    }
}
Greatwood Howler Hunt

lua
Copy code
LootTables_Creatures["hunt_greatwood_howler"] = {
    coin = { min = 25, max = 45, chance = 1.0 },

    guaranteed = {
        { item = "hunt_trophy_greatwood_howler", min = 1, max = 1, chance = 1.0 },
        { item = "spec_ingr_howler_moonshard",   min = 1, max = 1, chance = 0.75 },
    },

    rolls = {
        {
            name           = "dawnweaver_mobility",
            rolls          = 1,
            chanceOverride = 0.28,
            entries = {
                { item = "set_dawnweaver_legwraps", weight = 55, min = 1, max = 1 },
                { item = "set_dawnweaver_sandals",  weight = 45, min = 1, max = 1 },
            }
        },

        {
            name           = "dawnweaver_token",
            rolls          = 1,
            chanceOverride = 0.30,
            entries = {
                { item = "gw_token_dawnweaver", weight = 1, min = 1, max = 1 },
            }
        }
    }
}
Hollowroot Warren Caster Boss

lua
Copy code
LootTables_Creatures["hrw_caster_mini_boss"] = {
    rolls = {
        {
            name           = "dawnweaver_any",
            rolls          = 1,
            chanceOverride = 0.18,
            entries = {
                { item = "set_dawnweaver_hood",       weight = 24, min = 1, max = 1 },
                { item = "set_dawnweaver_robe",       weight = 24, min = 1, max = 1 },
                { item = "set_dawnweaver_legwraps",   weight = 24, min = 1, max = 1 },
                { item = "set_dawnweaver_sandals",    weight = 24, min = 1, max = 1 },
                { item = "set_dawnweaver_focus_band", weight = 4,  min = 1, max = 1 },
            }
        }
    }
}
13.4.2 Secondary Sources
Caster Hunt Caches

lua
Copy code
LootTables_Containers["gw_hunt_cache_t2_caster"] = {
    base_rolls = 1,

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
World Drop Fallback

lua
Copy code
WorldDropTables["gw_worlddrop_armor_int_15"] = {
    level_range = { min = 14, max = 20 },

    entries = {
        -- normal INT/SPI rare armor...

        { item = "set_dawnweaver_focus_band", weight = 1 },
        { item = "set_dawnweaver_sandals",    weight = 1 },
    }
}
13.5 Set Drop Tuning Summary
Once wired:

Per level-15 Hunt kill (group):

~28–32% chance for one set piece.

~25–40% chance per player for a token.

Per Hollowroot Warren clear:

~1–2 set pieces across the group.

Extra chances from Dungeon chests.

Per player, 2–3 hour focused session:

~1–3 meaningful set rolls via drops.

~1–3 tokens to bank.

Over 4–6 focused hours:

3–4 set pieces realistically:

With tokens as safety valve.

14. Numeric Tuning – Greatwood 1–20 Drop Rates & Expectations
This appendix turns the above into concrete numeric targets.

14.1 Per-Hour Targets (Per Player)
Restated:

Coin:

1–10: ~30–70.

11–20: ~80–150.

Gear:

1–10:

White: 4–8/hour.

Green: 0.5–1.5/hour.

Rare: 0.1–0.2/hour.

11–20:

White: 3–6/hour.

Green: 1–2/hour.

Rare: 0.2–0.35/hour.

Recipes:

0.2–0.5/hour.

Interesting items (tokens, trophies, reagents):

~1–3 per Hunt/Dungeon.

These are tuned primarily through:

Weights on gear_* entries.

chance values on coin and token buckets.

Soft pity rules.

14.2 Archetype Templates (Numeric View)
The templates in §7 are already tuned with weights. Key interpretations:

Ambient beast template

Gear: ~4% white, ~0.3% green per kill.

Worlddrop: ~0.1% band hook via worlddrop_hook.

Bandit template

Gear: ~35% white, ~4% green, ~0.3% rare hook.

Elite template

~30% chance at green, ~3% chance at rare.

Hunt baseline

Single group roll: ~40% green, ~8% rare (per kill).

Simulation (see §15.8) validates that these converge towards the per-hour targets.

14.3 Banded World Drop Tables
Bands:

A: 1–5

B: 6–10

C: 11–15

D: 16–20

Example (Band C armor) already shown; weapon tables follow same pattern.

A helper chooses band:

lua
Copy code
WorldDropBandByLevel = function(level)
    if level <= 5 then
        return "A"
    elseif level <= 10 then
        return "B"
    elseif level <= 15 then
        return "C"
    else
        return "D"
    end
end
Then worlddrop_any resolves by:

Determining band from monster level.

Picking from gw_worlddrop_band_<BAND>_armor or weapon tables.

14.4 Bad Luck Protection – Numeric Rules
14.4.1 Specialty Reagents
Base chance: 15–25% per Hunt kill.

Pity:

After 5 misses → double chance.

After 10 misses → triple chance.

Reset on first success.

14.4.2 Tokens
Base chance: 25–40% per Hunt completion.

Pity:

After 5 completions with 0 tokens:

Next completion = 100% token.

14.4.3 Named Set Pieces
No direct pity in Tier 1.

Safety is via tokens:

3 tokens → random roll.

6 tokens → choose-a-slot.

14.5 Token → Vendor Conversion
Example (Heartroot):

3 gw_token_heartroot_hunt → one random Heartroot piece.

6 gw_token_heartroot_hunt → pick a specific Heartroot slot.

Similar vendors exist for Gnarlbear and Dawnweaver.

14.6 Sanity Check Example (Hunt Grind)
Assumptions:

3 Hunts per hour.

Each Hunt:

30% group chance for set piece.

30% chance per player for token.

Rough expectation:

~0.3–0.6 set pieces/hour per player (depending on loot distribution).

~0.9 tokens/hour.

In 4 hours:

~3–4 tokens → 1 random set piece guaranteed.

~1–2 pieces from direct drops.

So 4–6 hours → 3–4 pieces, consistent with our goals.

15. Loot Implementation – Greatwood 1–20 (Roblox Lua)
This appendix is the direct implementation blueprint.

15.1 Architecture Overview
Server-only:

ServerScriptService/LootService.lua

ReplicatedStorage/LootTables/Creatures_Greatwood.lua

ReplicatedStorage/LootTables/Containers_Greatwood.lua

ReplicatedStorage/LootTables/WorldDrop_Greatwood.lua

ReplicatedStorage/LootTables/Shared_Utils.lua

Design rules:

Data-only modules in ReplicatedStorage/LootTables.

LootService:

Resolves tables.

Rolls loot.

Awards loot via inventory/currency services.

15.2 Creature Loot Table Structure (Module)
Example:

lua
Copy code
-- ReplicatedStorage/LootTables/Creatures_Greatwood.lua
local Creatures = {}

-- Templates (from §7 / §14)
Creatures["gw_ambient_beast_template"] = {
    levelRange = { min = 3, max = 18 },

    coin = { min = 1, max = 6, chance = 0.55 },

    guaranteed = {
        { item = "generic_meat_raw", min = 1, max = 1, chance = 0.75 },
    },

    rolls = {
        {
            name  = "beast_secondary",
            rolls = 1,
            entries = {
                { item = "beast_bone_shard", weight = 25, min = 1, max = 1 },
                { item = "beast_hide_strip", weight = 25, min = 1, max = 1 },
                { item = "nothing",          weight = 50, min = 0, max = 0 },
            }
        },
        {
            name  = "gear_roll",
            rolls = 1,
            entries = {
                { item = "gear_white_any", weight = 40,  min = 1, max = 1 },
                { item = "gear_green_any", weight = 3,   min = 1, max = 1 },
                { item = "nothing",        weight = 957, min = 0, max = 0 },
            }
        },
        {
            name  = "worlddrop_hook",
            rolls = 1,
            entries = {
                { item = "worlddrop_any", weight = 1,   min = 1, max = 1 },
                { item = "nothing",       weight = 999, min = 0, max = 0 },
            }
        }
    }
}

Creatures["gw_wolf_basic"] = {
    profile = "gw_ambient_beast_template",
    overrides = {
        coin = { min = 1, max = 7, chance = 0.60 },
    }
}

-- Bandit template from §7
Creatures["gw_bandit_template"] = {
    levelRange = { min = 6, max = 20 },

    coin = { min = 3, max = 14, chance = 0.85 },

    guaranteed = {
        { item = "bandit_token_trash", min = 1, max = 1, chance = 0.60 },
    },

    rolls = {
        {
            name  = "gear_core",
            rolls = 1,
            entries = {
                { item = "gear_white_any", weight = 350, min = 1, max = 1 },
                { item = "gear_green_any", weight = 40,  min = 1, max = 1 },
                { item = "nothing",        weight = 610, min = 0, max = 0 },
            }
        },
        {
            name  = "worlddrop_hook",
            rolls = 1,
            entries = {
                { item = "worlddrop_any", weight = 3,   min = 1, max = 1 },
                { item = "nothing",       weight = 997, min = 0, max = 0 },
            }
        }
    }
}

Creatures["gw_bandit_footpad"] = {
    profile = "gw_bandit_template",
}

-- Hunt bosses get full explicit definitions like in §13:
-- Creatures["hunt_black_sap_devourer"] = { ... }

return Creatures
15.3 Shared Loot Utilities
lua
Copy code
-- ReplicatedStorage/LootTables/Shared_Utils.lua
local Utils = {}
local rng = Random.new()

function Utils.pickWeighted(entries)
    local total = 0
    for _, entry in ipairs(entries) do
        total += entry.weight or 0
    end
    if total <= 0 then
        return nil
    end

    local roll = rng:NextNumber() * total
    local cumulative = 0

    for _, entry in ipairs(entries) do
        cumulative += (entry.weight or 0)
        if roll <= cumulative then
            return entry
        end
    end

    return entries[#entries]
end

function Utils.rollChance(chance)
    if chance <= 0 then
        return false
    end
    if chance >= 1 then
        return true
    end
    return rng:NextNumber() <= chance
end

function Utils.rollInt(minVal, maxVal)
    if minVal == nil or maxVal == nil then
        return 0
    end
    if maxVal < minVal then
        minVal, maxVal = maxVal, minVal
    end
    return rng:NextInteger(minVal, maxVal)
end

return Utils
15.4 LootService – Creature Rolling
lua
Copy code
-- ServerScriptService/LootService.lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local CreatureTables  = require(ReplicatedStorage.LootTables.Creatures_Greatwood)
local ContainerTables = require(ReplicatedStorage.LootTables.Containers_Greatwood)
local WorldDropTables = require(ReplicatedStorage.LootTables.WorldDrop_Greatwood)
local LootUtils       = require(ReplicatedStorage.LootTables.Shared_Utils)

local LootService = {}

local function resolveWorldDrop(level, itemKey)
    if itemKey ~= "worlddrop_any" then
        return itemKey
    end

    local band
    if level <= 5 then
        band = "A"
    elseif level <= 10 then
        band = "B"
    elseif level <= 15 then
        band = "C"
    else
        band = "D"
    end

    local bandTable = WorldDropTables["gw_worlddrop_band_" .. band .. "_armor"]
    if not bandTable or not bandTable.entries then
        return nil
    end

    local picked = LootUtils.pickWeighted(bandTable.entries)
    return picked and picked.item or nil
end

local function applyOverrides(baseProfile, overrides)
    if not overrides then
        return baseProfile
    end

    local combined = {}

    for k, v in pairs(baseProfile) do
        combined[k] = v
    end

    for k, v in pairs(overrides) do
        combined[k] = v
    end

    return combined
end

local function addLoot(result, itemId, amount)
    if not itemId or itemId == "nothing" then
        return
    end
    if amount <= 0 then
        return
    end

    result[itemId] = (result[itemId] or 0) + amount
end

function LootService.RollCreatureLoot(creatureId, level, context)
    context = context or {}
    level = level or 1

    local creatureDef = CreatureTables[creatureId]
    if not creatureDef then
        warn("[LootService] No creature loot def for:", creatureId)
        return {}
    end

    local profileName = creatureDef.profile or creatureId
    local baseProfile = CreatureTables[profileName]

    local profile
    if baseProfile then
        profile = applyOverrides(baseProfile, creatureDef.overrides)
    else
        profile = creatureDef
    end

    local result = {}

    -- coin
    if profile.coin and LootUtils.rollChance(profile.coin.chance or 0) then
        local amount = LootUtils.rollInt(profile.coin.min or 0, profile.coin.max or 0)
        addLoot(result, "coin", amount)
    end

    -- guaranteed
    if profile.guaranteed then
        for _, entry in ipairs(profile.guaranteed) do
            if LootUtils.rollChance(entry.chance or 0) then
                local amount = LootUtils.rollInt(entry.min or 1, entry.max or 1)
                addLoot(result, entry.item, amount)
            end
        end
    end

    -- rolls
    if profile.rolls then
        for _, rollDef in ipairs(profile.rolls) do
            local rolls = rollDef.rolls or 1

            for _ = 1, rolls do
                local groupChance = rollDef.chanceOverride
                if groupChance and not LootUtils.rollChance(groupChance) then
                    continue
                end

                local picked = LootUtils.pickWeighted(rollDef.entries or {})
                if picked then
                    local itemId = picked.item
                    local amount = LootUtils.rollInt(picked.min or 1, picked.max or picked.min or 1)

                    if itemId == "worlddrop_any" then
                        itemId = resolveWorldDrop(level, itemId)
                    end

                    addLoot(result, itemId, amount)
                end
            end
        end
    end

    return result
end

function LootService.AwardLootToPlayer(player, lootDict)
    if not player or not lootDict then
        return
    end

    for itemId, amount in pairs(lootDict) do
        if itemId == "coin" then
            -- CurrencyService.Add(player, amount)
        else
            -- InventoryService.AddItem(player, itemId, amount)
        end
    end
end

function LootService.DebugSimulateKills(creatureId, level, numKills)
    level = level or 15
    numKills = numKills or 1000

    local tally = {}

    for _ = 1, numKills do
        local loot = LootService.RollCreatureLoot(creatureId, level, nil)
        for itemId, amount in pairs(loot) do
            tally[itemId] = (tally[itemId] or 0) + amount
        end
    end

    print("=== Loot Simulation:", creatureId, "(" .. numKills .. " kills ) ===")
    for itemId, amount in pairs(tally) do
        local perKill = amount / numKills
        print(string.format("%-40s total=%6d  perKill=%.4f", itemId, amount, perKill))
    end
end

return LootService
15.5 Pity State (Concept)
As in §14.4, use a per-player structure:

Keys:

huntId

reagentMisses

tokenMisses

Logic:

On each eligible roll, update counters.

Compute effective chance = base chance × multiplier.

Implementation plugs into Hunt-specific reward handlers, not generic mobs.

15.6 How B151 Is Used
Designers:

Tune tables and weights here.

Add new Hunts/sets by copying the patterns in §13.

Engineers:

Implement LootService and data modules.

Hook enemy death and container opening into RollCreatureLoot / container variants.

Future regions:

Reuse:

LootService.

Shared_Utils.

Provide new regional tables:

Creatures_<Region>.lua

Containers_<Region>.lua

WorldDrop_<Region>.lua

This makes Greatwood 1–20 loot:

Slow and rewarding.

Predictable enough to plan around.

Deeply tied into Hunts, professions, and the Lodge.
