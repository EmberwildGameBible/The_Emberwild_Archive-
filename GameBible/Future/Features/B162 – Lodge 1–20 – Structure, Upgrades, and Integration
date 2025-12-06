# B162 – Greatwood Cooking Recipe Compendium (Tier 1–3)

---

## 0. PURPOSE & SCOPE

This chapter is the **complete cooking reference** for **Greatwood 1–20**.

It exists to:

- Define all **core recipes** a player can learn in Greatwood:
  - Snacks (short, punchy buffs)
  - Meals (solo long-duration buffs)
  - Feasts (group-wide buffs)
- Tie recipes directly to:
  - **Ingredient atlas** (B161)
  - **Hunts & loops** (B153–B160, especially B159)
- Establish:
  - **Tiers** (1–3) aligned to player bands (A–D).
  - Standard **mechanical patterns** (durations, stacking rules, categories).

This file is **design-facing**:

- It describes **what recipes exist** and **what they do conceptually**.
- Numeric tuning (exact buff values, durations, etc.) live in:
  - Core profession balance tables.
- But each recipe includes:
  - Intended use case.
  - Relative power level.
  - Band & Tier expectations.

---

## 1. COOKING SYSTEM – DESIGN RULES (GREATWOOD 1–20)

### 1.1 Tiers & Player Bands

Cooking tiers are roughly mapped to character level bands:

- **Tier 1 – Novice Recipes**
  - Intended for **Band A → early Band B** (levels 1–7).
  - Very simple inputs, small buffs.
- **Tier 2 – Apprentice Recipes**
  - Intended for **Band B–C** (levels 8–14).
  - Introduces Hunt-tied ingredients.
  - Moderate buffs tuned for early Hunts.
- **Tier 3 – Journeyman Recipes**
  - Intended for **Band C–D** (levels 15–20).
  - Heavier use of Hunt loot.
  - Strong buffs, often with conditions / tradeoffs.

Unlock levels are suggestions. Data tables can adjust.

---

### 1.2 Buff Categories & Stacking

For Greatwood 1–20, cooking uses **three main buff categories**:

1. **Meal Buff** – Solo, long-duration.
   - Only **one** Meal buff can be active at a time.
   - Replaced by eating another Meal.
2. **Snack Buff** – Solo, short-duration.
   - Only **one** Snack buff can be active at a time.
   - Intended for targeted moments (e.g., pre-boss).
3. **Feast Buff** – Group, long-duration.
   - Affects all party members who “consume” the feast.
   - Only **one Feast buff** can be active on a player at a time.

Rules:

- A player can have:
  - **1 Meal** + **1 Snack** + **1 Feast** buff simultaneously.
- If a recipe intends to ignore these rules (rare), it is flagged as:
  - `special_stack = true` and must be handled manually.

---

### 1.3 Recipe Structure (Design Notation)

Each recipe entry is:

- **ID** – Stable internal string.
- **Display Name**
- **Tier & Bands**
- **Origin & Theme**
- **Inputs** (required ingredients)
- **Effects** (conceptual)
- **UI Tags** and **Recommended Content**
- **Flavor Text**

Optional: Pseudo-Lua data snippet for implementation reference.

---

## 2. TIER 1 – NOVICE RECIPES (LEVELS 1–7, BAND A → EARLY B)

Tier 1 is about:

- Teaching players:
  - “Food exists.”
  - “Food is cheap, helpful, and simple.”
- Using mostly:
  - `forest_root_veg`, `stringy_game_meat`, `boar_belly_strip`, `softleaf_herb`, simple fungi/berries.

### 2.1 Meals (Tier 1)

---

#### 2.1.1 `meal_basic_stag_roast` – Basic Stag Roast

- **Tier:** 1
- **Bands:** A–B
- **Origin:** General Greatwood; stag drops.
- **Type:** Meal
- **Inputs:**
  - 1x `stag_haunch` *or* `young_stag_cut`
  - 1x `forest_root_veg`
  - 1x `softleaf_herb`
- **Effects (Intention):**
  - Small, long-duration **health regen**.
  - Tiny **stamina** boost (or equivalent).
- **Use Case:**
  - Baseline food for new hunters.
  - Good enough for minor Hunts and early pockets.
- **UI Tags:**
  - `["meal", "regen", "early", "stag", "greatwood"]`
- **Flavor Text:**
  - “There’s nothing ‘basic’ about a stag roast when it means you lived to eat it.”

_Pseudo-data:_
```lua
RecipeDefs["meal_basic_stag_roast"] = {
    tier = 1,
    bands = { min = "A", max = "B" },
    type = "meal",

    inputs = {
        { itemId = "stag_haunch", quantity = 1, orItemId = "young_stag_cut" },
        { itemId = "forest_root_veg", quantity = 1 },
        { itemId = "softleaf_herb", quantity = 1 },
    },

    effects = {
        { type = "regen_flat", value = "small", duration = "long" },
        { type = "stamina_max_mult", value = "very_small" },
    },
}
2.1.2 meal_boar_root_hotpot – Boar-Root Hotpot
Tier: 1

Bands: A–B

Origin: General boar pockets.

Type: Meal

Inputs:

1x boar_shank

2x forest_root_veg

Optional: mossveil_cap (improves quality if present)

Effects:

Modest health regen.

Slight max HP or mitigation bump (tiny).

Use Case:

“Hearty pot” for low-level dungeon runs or longer pockets.

UI Tags:

["meal", "hearty", "boar", "early"]

Flavor Text:

“Tastes like having time to sit down for once.”

2.1.3 meal_simple_game_stew – Simple Game Stew
Tier: 1

Bands: A–B

Origin: Works with any game scraps.

Type: Meal

Inputs:

2x stringy_game_meat

1x forest_root_veg

1x any basic herb: softleaf_herb or brightcap_herb

Effects:

Modest regen.

Very slight attack power or damage buff.

Use Case:

Cheap, flexible, “anything in the pot” stew.

UI Tags:

["meal", "cheap", "generic", "early"]

Flavor Text:

“Throw it in and keep stirring. If it moves, cook it more.”

2.2 Snacks (Tier 1)
Short, punchy buffs.

2.2.1 snack_brambleberry_handful – Handful of Brambleberries
Tier: 1

Bands: A–B

Type: Snack

Inputs:

3x brambleberry

Effects:

Tiny, short stamina regen.

Very small focus boost for a short duration.

Use Case:

Between pulls, on-the-move snack.

UI Tags:

["snack", "stamina", "focus", "foraging"]

Flavor Text:

“Sticky fingers, better aim.”

2.2.2 snack_roasted_moonfall_shavings – Roasted Moonfall Shavings
Tier: 1 (but rare)

Bands: A–C

Inputs:

1x moonfall_nut (yields multiple servings)

Effects:

Short burst of energy / movement speed.

Followed by a mild crash (minor short debuff).

Use Case:

Sprint moments, repositioning, “we need to get over there now.”

UI Tags:

["snack", "movement", "burst", "risky"]

Flavor Text:

“You feel like you can run forever—right up until you can’t.”

2.3 Feasts (Tier 1)
True feasts are mostly Tier 2+, but one early option exists.

2.3.1 feast_campfire_potluck – Campfire Potluck
Tier: 1

Bands: A–B

Type: Feast

Inputs:

Any combination of:

stringy_game_meat x3

forest_root_veg x3

2x random herb (Softleaf/Brightcap)

Effects:

Party-wide:

Very small regen.

Very small stamina or morale buff.

Use Case:

Low-tier group buff for early shared Hunts or dungeon runs.

UI Tags:

["feast", "party", "early"]

Flavor Text:

“Who brought this? Doesn’t matter, it’s warm.”

3. TIER 2 – APPRENTICE RECIPES (LEVELS 8–14, BAND B–C)
Tier 2 is where Hunts really show up in cooking.

Uses:

howler_flank, stag_haunch, boar_shank, wardstone_bear_plate shavings, hollowroot_sporecap, black_sap_nodule, etc.

Many recipes were introduced in B159; here they’re fully detailed.

3.1 Meals (Tier 2)
3.1.1 meal_elders_supper – Elder’s Supper
Tier: 2

Bands: B–C

Origin: Elder Hollow Stag (B154), Elder Hollow Glade.

Type: Meal

Inputs:

1x stag_haunch

1x forest_root_veg

1x softleaf_herb

Optional: elderbloom_flower (upgrades stew quality)

Effects:

Solid long-duration regen.

Small stamina increase.

Slight resistance vs beasts (tiny).

Use Case:

Generic “good food” for most Band B–C Hunts.

UI Tags:

["meal", "regen", "stag", "elder", "midband"]

Flavor Text:

“You eat this when you want the forest to know you’re not just passing through.”

3.1.2 meal_gw_hunters_stew – Greatwood Hunter’s Stew
Tier: 2

Bands: B–C

Origin: Greatwood Howler (B158), Howler pockets.

Type: Meal

Inputs:

1x howler_flank

1x wildroot_tuber

1x forest_marrow_herb

Effects:

Moderate health regen.

Small bleed resistance or faster bleed decay.

Use Case:

Ideal for:

Howler Hunt itself.

Any content with frequent bleeds.

UI Tags:

["meal", "bleed_resist", "howler", "hunt"]

Flavor Text:

“You can feel it thickening your blood just enough to keep it inside.”

3.1.3 meal_alpha_hunters_stew – Alpha Hunter’s Stew
Tier: 2 (Top end)

Bands: B–C

Origin: Greatwood Howler; rare prime cut.

Type: Meal

Inputs:

1x howler_flank_prime

1x wildroot_tuber

1x brambleberry

Effects:

Strong regen for Tier 2.

Notable stamina boost.

Good bleed mitigation.

Use Case:

Long, attrition-heavy fights (Howler, Matron, Devourer).

UI Tags:

["meal", "premium", "bleed_resist", "stamina"]

Flavor Text:

“The pack eats first. Tonight, you’re the pack.”

3.1.4 meal_hollowroot_stew – Hollowroot Stew
Tier: 2

Bands: B–C (edges into C–D if tuned strong)

Origin: Hollowroot Nest pockets.

Type: Meal

Inputs:

1x stringy_game_meat or tainted_game_meat

1x hollowroot_sporecap

1x mire_fungus

Effects (Intent):

Mixed:

Mild damage increase (especially vs Hollowroot/fungal targets).

Mild self-DoT (representing fungal risk).

Use Case:

For players who want more DPS and are confident in healing.

UI Tags:

["meal", "offense", "risky", "hollowroot"]

Flavor Text:

“You taste the infection, and it tastes you back.”

3.1.5 meal_blacksap_hotpot – Black-Sap Hotpot
Tier: 2

Bands: C–D leaning (but accessible late Band B with risk)

Origin: Black-Sap Grove; Devourer.

Type: Meal

Inputs:

1x stringy_game_meat

1x black_sap_nodule

1x bitterroot_herb (implicit from B159; could be new Greatwood herb)

Effects (Intent):

Strong offensive buff:

Increased damage.

Bonus vs corrupted enemies.

Adds a low corruption DoT to the player.

Use Case:

High-risk, high-reward pre-Hunt meal.

UI Tags:

["meal", "offense", "corruption", "risky"]

Flavor Text:

“You’re not sure if you’re hotter or the stew is.”

3.1.6 meal_stonehide_skillet – Stonehide Skillet
Tier: 2

Bands: B–C

Origin: Ward-Bear; Warden’s Glade.

Type: Meal

Inputs:

1x boar_belly_strip

1x wardstone_crust_flake (shaved)

1x rootcoil_bulb

Effects:

Short-medium duration damage reduction vs basic physical hits.

Minor reflect vs low-tier melee.

Possible side-effect:

Slight increase in incoming ward/arcane damage (tuning lever).

Use Case:

Trash waves, minor Hunts, content with lots of small physical hits.

UI Tags:

["meal", "defense", "reflect", "ward"]

Flavor Text:

“Tastes like chewing a shield, but you’ll live longer.”

3.2 Snacks (Tier 2)
3.2.1 snack_spiced_root_skewer – Spiced Root Skewers
Tier: 2

Bands: B–C

Inputs:

1x wildroot_tuber

1x rootcoil_bulb

1x thornpod_seed (sprinkled)

Effects:

Short attack speed / casting speed increase.

Small, brief burn DoT on the eater (minor).

Use Case:

Openers on Hunts, burst windows.

UI Tags:

["snack", "burst", "offense", "spicy"]

Flavor Text:

“Hot going in, hotter when the fight starts.”

3.2.2 snack_predator_mint_chew – Predator Mint Chew
Tier: 2

Bands: B–C

Inputs:

2x predator_mint

1x brambleberry (for binding)

Effects:

Short-duration perception / awareness buff:

Slight boost to dodge or reaction-type buffs.

Tiny reduction to fear/stagger duration.

Use Case:

Greatwood Howler Hunt, any content with sudden ambush / howls.

UI Tags:

["snack", "awareness", "anti_fear", "howler"]

Flavor Text:

“The world sharpens into shapes you don’t always like.”

3.2.3 snack_softleaf_wrap – Softleaf Wrap
Tier: 2

Bands: A–C

Inputs:

1x softleaf_herb

1x sliver of any cooked meat (leftover flagged as cooked_meat_generic)

Effects:

Small, quick regen burst.

Very small resist vs nature/poison for a short duration.

Use Case:

Between pulls in Matron/Devourer pockets, minor spore/corruption coverage.

UI Tags:

["snack", "regen", "nature_resist"]

Flavor Text:

“Tastes like medicine. Works like medicine.”

3.3 Feasts (Tier 2)
3.3.1 feast_hunters_bone_broth – Hunter’s Bone Broth (Feast Version)
Tier: 2

Bands: B–C

Origin: recipe_scroll_hunters_bone_broth.

Type: Feast

Inputs:

3x marrow_bone_piece or forest_marrow_bone

2x stag_hide_strip (boiled for gelatin)

2x forest_root_veg

2x softleaf_herb

Effects:

Party-wide:

Moderate regen.

Slight max HP boost.

Use Case:

All-purpose group feast for Hunts.

UI Tags:

["feast", "party", "regen", "hp"]

Flavor Text:

“If a Lodge doesn’t smell like this at least once a week, something’s wrong.”

3.3.2 feast_hollowroot_field_stew – Hollowroot Field Stew
Tier: 2

Bands: B–C

Inputs:

2x stringy_game_meat

2x mossveil_cap

2x forest_root_veg

1x hollowroot_sporecap (low dose)

Effects:

Party-wide:

Small damage increase.

Very slight self-DoT / risk mechanic.

Use Case:

For groups who want a touch of risk in exchange for DPS.

UI Tags:

["feast", "offense", "risky", "hollowroot"]

Flavor Text:

“You all agree not to talk about the tingle in your teeth.”

4. TIER 3 – JOURNEYMAN RECIPES (LEVELS 15–20, BAND C–D)
Tier 3 is about:

High-stakes Hunts:

Hollowroot Matron, Black-Sap Devourer, Ward-Bear, late iterations of Stag/Howler.

Strong buffs with thematic costs or gating:

Some require Lodge project progress or multiple Hunt completions.

4.1 Meals (Tier 3)
4.1.1 meal_wardbear_ironstew – Wardbear Ironstew
Tier: 3

Bands: C–D

Origin: Ward-Bear, Warden’s Glade.

Type: Meal

Inputs:

1x boar_shank or stag_haunch

1x wardstone_bear_plate (shavings)

1x ironroot_veg

1x forest_marrow_herb

Effects (Intention):

Significant physical damage reduction.

Notable ward/arcane damage reduction.

Slight movement speed penalty (“heavy stew”).

Use Case:

Ward-Bear; any content with heavy physical bursts, early Wardstone dungeons.

UI Tags:

["meal", "defense", "ward", "high_tier"]

Flavor Text:

“You don’t so much eat it as negotiate with it.”

4.1.2 meal_purified_sap_stew – Purified Sap Stew
Tier: 3

Bands: C–D

Origin: Black-Sap Devourer.

Type: Meal

Inputs:

1x blacksap_resin_clot

2x purifier_bloom

1x forest_root_veg

Effects:

On consumption:

Removes multiple corruption stacks.

Duration:

Grants corruption resistance and a small regen effect.

Use Case:

Devourer Hunt; pockets with heavy corruption DoTs.

UI Tags:

["meal", "corruption_resist", "cleanse", "high_tier"]

Flavor Text:

“You’re pretty sure this is what mercy tastes like.”

4.1.3 meal_matron_detox_feast_solo – Matron Detox Bowl (Solo Version)
NOTE: The group feast version is in Feasts; this is a scaled-down solo variant using the same logic.

Tier: 3

Bands: C–D

Inputs:

1x matron_spore_cluster

1x dampcap

1x forest_veg_bundle (abstracted as a mixed veg item)

Effects:

Immediately removes some Spore Sickness stacks from the eater.

Grants a short detox regen and small spore resistance.

Use Case:

Solo players or smaller groups who can’t manage full feasts.

UI Tags:

["meal", "spore_resist", "detox"]

Flavor Text:

“Nothing that smells this wrong should help this much.”

4.1.4 meal_nightwatchers_stew – Nightwatcher’s Stew (New high-tier generic)
Tier: 3

Bands: C–D

Origin: Greatwood general; synergy with predator & ward biomes.

Inputs:

1x howler_flank or stag_haunch

1x shadowroot_tuber

1x predator_mint

1x brightcap_herb

Effects:

Moderate regen.

Moderate awareness / dodge / reaction buff.

Slight nightvision / telegraph clarity (design interpretation).

Use Case:

Any Hunt with heavy telegraphs and night/low-light variants.

UI Tags:

["meal", "awareness", "night", "generic_high"]

Flavor Text:

“For when the worst things don’t attack at noon.”

4.2 Snacks (Tier 3)
4.2.1 snack_sap_shot – Sap Shot
Tier: 3

Bands: C–D

Inputs:

1x black_sap_nodule

1x brambleberry (to cut the taste)

Effects:

Very short but huge damage spike.

Immediately applies a stack of corruption (self).

Use Case:

Last-phase burn, DPS checks, “push now or wipe.”

UI Tags:

["snack", "burst", "corruption", "risky"]

Flavor Text:

“The worst part is wanting another one.”

4.2.2 snack_ward_crust_chips – Ward Crust Chips
Tier: 3

Bands: C–D

Inputs:

1x wardstone_crust_flake

1x thornpod_seed (for crunch)

Effects:

Short ward/arcane resistance spike.

Slight chance to reflect minor spells.

Use Case:

Bursty ward/arcane phases, ward-themed Hunts/dungeons.

UI Tags:

["snack", "ward_resist", "reflect"]

Flavor Text:

“It’s like chewing gravel and ducking lightning at the same time.”

4.2.3 snack_sporeveil_bite – Sporeveil Bite
Tier: 3

Bands: C–D

Inputs:

1x mossveil_cap

1x spore_drift_filaments

Effects:

Brief Spore Sickness immunity window (or drastically reduced gain).

Slight visual distortion / hallucination flavor (cosmetic).

Use Case:

Spore-heavy Matron phases.

UI Tags:

["snack", "spore_resist", "immunity", "matron"]

Flavor Text:

“The world goes soft around the edges, but the spores don’t stick.”

4.3 Feasts (Tier 3)
4.3.1 feast_matron_detox_feast – Matron Detox Feast
Tier: 3

Bands: C–D

Origin: Hollowroot Matron; B159.

Type: Feast

Inputs:

2x matron_spore_cluster

3x dampcap

2x forest_veg_bundle

Effects (Party-wide):

Immediately removes multiple Spore Sickness stacks from all party members.

Strong regen for a moderate duration.

Notable spore resistance for the feast duration.

Use Case:

Matron Hunts.

Any spore-heavy dungeon/raid content.

UI Tags:

["feast", "detox", "spore_resist", "matron"]

Flavor Text:

“If this is what victory tastes like, you can see why the Lodge keeps going back.”

4.3.2 feast_wardbear_bastion – Ward-Bear’s Bastion Feast
Tier: 3

Bands: C–D

Origin: Ward-Bear.

Type: Feast

Inputs:

2x boar_shank

2x ironroot_veg

1x wardstone_bear_plate (ground)

2x forest_marrow_herb

Effects (Party-wide):

Significant physical damage reduction.

Moderate ward/arcane resistance.

Small movement penalty (heavier, sluggish).

Use Case:

Ward-Bear and any heavy incoming damage fights.

UI Tags:

["feast", "defense", "wardbear", "high_tier"]

Flavor Text:

“After this, if you’re still standing, you’ll owe the cook.”

4.3.3 feast_gw_game_stew – Greatwood Game Feast
Tier: 3

Bands: C–D

Origin: recipe_scroll_gw_game_stew.

Type: Feast

Inputs:

A mix of:

stag_haunch, boar_shank, howler_flank

forest_root_veg

2x brightcap_herb

1x moss_silk_mycelium (thickener)

Effects (Party):

Balanced:

Moderate regen.

Medium stamina boost.

Very small damage bump.

Use Case:

Well-rounded feast when you don’t know what’s coming.

UI Tags:

["feast", "balanced", "greatwood"]

Flavor Text:

“Everything that tried to eat you, in one pot.”

5. RECIPE UNLOCKS & HUNT HOOKS
Each major Hunt is associated with a cluster of recipes.

5.1 Elder Hollow Stag – Unlock Summary
First Kill Unlocks:

meal_elders_supper

feast_hunters_bone_broth (if scroll obtained)

Optional via Scrolls:

meal_basic_stag_roast gets improved quality when cooked by higher-tier Cooks.

Lodge Project Synergy:

“Honor the Elder” may give:

+1 yield when cooking stag recipes in Lodge.

5.2 Greatwood Howler – Unlock Summary
First Kill:

meal_gw_hunters_stew

Subsequent Kills + Scroll:

meal_alpha_hunters_stew

Pocket Foraging:

predator_mint & wildroot_tuber spawn more frequently after completing the Hunt.

5.3 Ward-Bear – Unlock Summary
First Kill:

meal_stonehide_skillet

Lodge Ward Project Threshold:

Unlock meal_wardbear_ironstew

Unlock feast_wardbear_bastion

Wardstone Biome Shift:

More ironroot_veg and glowward_moss spawns near Warden’s Glade.

5.4 Black-Sap Devourer – Unlock Summary
First Kill:

meal_blacksap_hotpot

Hunt + Purifier-related Lodge Project:

meal_purified_sap_stew

snack_sap_shot

Biome Changes:

More purifier_bloom nodes.

5.5 Hollowroot Matron – Unlock Summary
First Kill:

meal_hollowroot_stew (if not already learned via scroll)

Containment Project Tier 2:

meal_matron_detox_feast_solo

feast_matron_detox_feast

Fungal Foraging:

Increased dampcap, mycelium_web, and spore_drift_filaments yields.

6. UI / UX NOTES FOR COOKING IN GREATWOOD
6.1 Recommendation System
In cooking UI:

Each recipe should list:

Recommended Hunts:

e.g. “Recommended for: Hollowroot Matron, Fungal Pockets”

Buff Category:

Meal, Snack, Feast.

Primary Benefit Icons:

Heart (regen), Shield (defense), Sword (offense), Leaf (resist), Eye (awareness).

Example for meal_gw_hunters_stew:

Icons: Heart + Blood Drop (bleed).

Text:

“Good against: bleeding, long fights with lots of small hits.”

6.2 Context Tips
When entering a Hunt pocket:

Hint window may pop:

“You are entering Hollowroot Nest. Consider consuming:

Matron Detox Feast (if available)

Softleaf Wraps

Anti-Spore Tincture (Alchemy)”

Cooking recipes from B162 should be first in line for these suggestions.

7. SUMMARY
B162 pulls together:

The core Greatwood recipes:

Early novice meals.

Hunt-tied Tier 2 dishes.

High-impact Tier 3 meals & feasts.

It concretizes the loops defined in:

B159 (Hunts & Profession Loops).

B161 (Ingredient Atlas).

Once implemented, the player experience should be:

Early: “Food exists and helps.”

Mid: “I should bring the right food to the right Hunt.”

Late Greatwood: “Our lodge’s Hunt cuisine is part of how we beat this forest.”

When in doubt while designing new content in Greatwood:

If there’s a new threat, there should probably be a new pot on the fire.
