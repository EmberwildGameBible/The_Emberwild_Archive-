# 53 – Advanced Cooking 10–20: Signature Lodge Dishes

## Purpose

Define a set of **higher-tier Greatwood Cooking recipes** (Cooking skill ~10–20, character levels ~10–20) that feel like true Lodge “signature dishes.” These should:

- Use **rarer ingredients** from the Greatwood taxonomy (51)
- Build cleanly on the early recipe patterns from (52)
- Provide **meaningful, themed buffs** for serious content:
  - Signature Hunts
  - Hollowroot Warren / dungeons
  - Night-only hunts
  - Corruption-adjacent pockets
- Feel **memorable and flavorful**, not just “+X% generic buff”

This is a **design doc**, not implementation. Numbers are “intent” and should be tuned later.

---

## Design Principles

1. **Identity first, numbers second**  
   These are iconic meals. Names, lore, ingredients, and unlock methods should stick in the player’s head.

2. **Rarer ingredients, sharper hooks**  
   Recipes lean heavily on:
   - `elder_stag_meat`, `dire_wolf_flank`, `ward_bear_haunch`, `greatwood_howler_rib`, `ragged_king_shank`, `shadow_stag_loin`
   - High-end herbs & fungi: `whisperfern`, `smokebloom_petals`, `ashcurl`, `embertruffle`, `red_vein_morel`
   - Liquids & reductions: `bone_broth_thick`, `emberleaf_oil`, `glowcap_reduction`, `black_sap_reduction`, `hollowroot_tonic_base`
   - Specialty ingredients to be defined in **55 – Specialty Ingredients from Hunts, Bosses, and Events** (prefixed `spec_ingr_...`)

3. **Synergy with hunts, dungeons, and professions**  
   - Many recipes **require** ingredients from:
     - Signature Hunts (B117–B120)
     - Hollowroot Warren
     - Greatwood event pockets
   - Some recipes expect you to also engage with Professions (woodworking/smoking, foraging, alchemy).

4. **Tiered power curve (10–20)**  
   - **Advanced Tier 1 (10–12):** Upgraded survival / hunt comfort foods
   - **Advanced Tier 2 (12–15):** Proper Lodge signatures tied to elites & mini-bosses
   - **Advanced Tier 3 (15–18):** Big party feasts / run-enabling foods
   - **Advanced Tier 4 (18–20):** Corruption & boss-aligned “edge” dishes

5. **Distinct roles**  
   No two advanced recipes should feel interchangeable. Each:
   - Has a clear **role** (`night_hunt`, `dungeon_prep`, `travel_long`, `festival`, `corruption_resist`, etc.)
   - Has a distinctive **ingredient silhouette** (players can recognize it by reading the recipe).

6. **Cohesion with 51 & 52**  
   - All ingredients reference the canonical IDs from **51** or the `spec_ingr_` pattern from **55**.
   - Early dishes from **52** remain valid; these advanced dishes are **sidegrades / specializations**, not pure replacements.

---

## Recipe Schema (Advanced Tier)

Same baseline schema as 52, with a few extra fields:

- **id** – `recipe_<theme>_...`
- **display_name**
- **tier** – `adv_t1`, `adv_t2`, `adv_t3`, `adv_t4`
- **required_cooking_rank** – roughly 10–20
- **expected_player_level_band** – `10–13`, `13–16`, `16–20`
- **role_tags** – `night_hunt`, `dungeon_prep`, `travel_long`, `festival`, `corruption_resist`, `social_buff`, etc.
- **ingredients** – `{ ingredient_id, quantity }`
- **base_servings**
- **effects** – design intent only
  - HP / stamina / max HP / max stamina
  - Damage / crit / precision
  - Resists (cold / fire / corruption)
  - Utility (stealth, detection, vision, skill hooks)
- **duration_seconds**
- **source**
  - Lodge reputation tier
  - Specific Hunt completion
  - Dungeon clear, event chain, vendor with reputation
- **notes**

Implementation will mirror this as a Lua data module.

---

## Tier Overview

### Advanced Tier 1 (Rank 10–12, Levels 10–13)

“Upgunned” versions of the early recipes, leaning into rare ingredients and longer buffs.

### Advanced Tier 2 (Rank 12–15, Levels 12–15)

Region-defining Lodge dishes tied tightly to elites, mini-bosses, and special node types.

### Advanced Tier 3 (Rank 15–18, Levels 14–18)

Big feasts for groups, often with party-wide buffs and long durations.  
Feel like preparation rituals for serious runs.

### Advanced Tier 4 (Rank 18–20, Levels 17–20)

High-risk, high-reward meals that play with corruption, vision, and boss encounters.  
These point directly at Greatwood’s end-of-slice content.

---

## ADVANCED TIER 1 (Rank 10–12)

### 1. Elder Hunter’s Bone Broth

- **ID:** `recipe_elder_hunter_bone_broth`  
- **Tier:** `adv_t1`  
- **Required Cooking Rank:** 10  
- **Expected Player Level:** 10–13  
- **Role Tags:** `dungeon_prep`, `hp_max`, `regen_long`  
- **Ingredients:**
  - `bone_broth_thick` ×1  
  - `stag_bone_shank` ×1  
  - `bitterpine_needle` ×1  
  - `mossy_tongue` ×1  
- **Base Servings:** 4  
- **Effects (Intent):**
  - Moderate flat HP heal  
  - **Max HP increase** (small but meaningful)  
  - Long, slow HP regen (30+ minutes)  
- **Source:**  
  - Learned from a veteran hunter NPC after completing a mid-tier hunt chain (non-signature).  
- **Notes:**
  - This is the “default pre-dungeon soup” for organized groups.  
  - Gently teaches that **bone_broth_thick** is more powerful than `forest_stock_light`.

---

### 2. Smokebloom Ashpot Stew

- **ID:** `recipe_smokebloom_ashpot_stew`  
- **Tier:** `adv_t1`  
- **Required Cooking Rank:** 11  
- **Expected Player Level:** 10–14  
- **Role Tags:** `res_fire`, `burn_scar_content`, `camp_hearty`  
- **Ingredients:**
  - `boar_meat_raw` ×1  
  - `smokebloom_petals` ×1  
  - `ashcurl` ×1  
  - `stonepotato` ×1  
  - `forest_stock_light` ×1  
- **Base Servings:** 3  
- **Effects (Intent):**
  - Good HP regen  
  - **Fire Resistance** buff  
  - Minor bonus vs. fire-themed status effects (burn duration reduction, etc.)  
- **Source:**  
  - Recipe reward from a small quest chain in a burn-scarred sub-region.  
- **Notes:**
  - Prime food for burn-scar hunts and wildfire-adjacent content.

---

### 3. Walnut-Crusted Dire Chili

- **ID:** `recipe_walnut_crusted_dire_chili`  
- **Tier:** `adv_t1`  
- **Required Cooking Rank:** 12  
- **Expected Player Level:** 11–14  
- **Role Tags:** `damage_boost`, `stamina_regen`, `elite_hunt`  
- **Ingredients:**
  - `dire_wolf_flank` ×1  
  - `emberleaf` ×1  
  - `greatwood_walnut` ×2  
  - `lodge_salt_mix` ×1  
  - `rendered_boar_fat` ×1  
- **Base Servings:** 3  
- **Effects (Intent):**
  - Moderate stamina regen  
  - Small physical damage / crit boost  
  - Short-to-medium duration (15–20 minutes)  
- **Source:**  
  - Granted after first Dire Wolf elite kill + turn-in at the Lodge.  
- **Notes:**
  - “Aggressive” food. The taste text should lean into spicy, smoky, and wild.

---

## ADVANCED TIER 2 (Rank 12–15)

### 4. Elder Stag Crown Roast

- **ID:** `recipe_elder_stag_crown_roast`  
- **Tier:** `adv_t2`  
- **Required Cooking Rank:** 13  
- **Expected Player Level:** 12–15  
- **Role Tags:** `lodge_signature`, `hp_max`, `prestige`  
- **Ingredients:**
  - `elder_stag_meat` ×1  
  - `emberhazel_nut` ×1  
  - `whisperfern` ×1  
  - `bone_broth_thick` ×1  
  - `smoked_salt_flakes` ×1  
- **Base Servings:** 4  
- **Effects (Intent):**
  - Significant **Max HP** increase  
  - Medium HP regen over a long duration (30+ minutes)  
  - Minor bleed / physical mitigation buff  
- **Source:**  
  - Requires completion of the Elder Stag Hunt chain; recipe granted as a Lodge ceremony reward.  
- **Notes:**
  - This is a **prestige dish**; players should associate it with Elder Stag trophies and Lodge social events.

---

### 5. Ward-Bear Hearth Haunch

- **ID:** `recipe_ward_bear_hearth_haunch`  
- **Tier:** `adv_t2`  
- **Required Cooking Rank:** 14  
- **Expected Player Level:** 13–16  
- **Role Tags:** `tank_food`, `dungeon_prep`, `hp_max`, `res_knockdown`  
- **Ingredients:**
  - `ward_bear_haunch` ×1  
  - `ironbark_taproot` ×1  
  - `mossy_tongue` ×1  
  - `bone_broth_thick` ×1  
  - `simple_herb_bundle` ×1  
- **Base Servings:** 4  
- **Effects (Intent):**
  - Large Max HP increase  
  - HP regen  
  - Minor resistance to stuns / knockdowns / forced movement  
- **Source:**  
  - Recipe awarded after defeating the Ward-Bear mini-boss and bringing back a specific trophy.  
- **Notes:**
  - “If you’re holding the front line, you eat this.”  
  - Paired visually with big, roaring hearth art.

---

### 6. Hollowroot Burrow Pie

- **ID:** `recipe_hollowroot_burrow_pie`  
- **Tier:** `adv_t2`  
- **Required Cooking Rank:** 14  
- **Expected Player Level:** 13–16  
- **Role Tags:** `dungeon_prep`, `res_corruption`, `hollowroot_content`  
- **Ingredients:**
  - `hollowroot_serpent_fillet` ×1  
  - `hollowroot_core_chunk` ×1  
  - `glowcap` ×1  
  - `ground_barley_flour` ×1  
  - `forest_stock_light` ×1  
- **Base Servings:** 3  
- **Effects (Intent):**
  - Solid HP regen  
  - **Corruption Resistance** buff (Tier 1–2)  
  - Small boost to perception / detection (slightly better at spotting traps / hidden enemies)  
- **Source:**  
  - Reward from completing key Hollowroot Warren quests (non-boss-critical).  
- **Notes:**
  - Clearly branded as the “eat this before going underground” pie.

---

### 7. Smokebloom Lodge Rib Rack

- **ID:** `recipe_smokebloom_lodge_rib_rack`  
- **Tier:** `adv_t2`  
- **Required Cooking Rank:** 15  
- **Expected Player Level:** 14–17  
- **Role Tags:** `lodge_signature`, `group_buff`, `damage_boost`  
- **Ingredients:**
  - `greatwood_howler_rib` ×1  
  - `smokebloom_petals` ×1  
  - `emberleaf_oil` ×1  
  - `ashwater_brine` ×1  
  - `lodge_salt_mix` ×1  
- **Base Servings:** 4–5  
- **Effects (Intent):**
  - Party-wide moderate damage buff  
  - Minor stamina regen  
  - Medium duration (20–25 minutes)  
- **Source:**  
  - Cooked only after completing the Greatwood Howler Signature Hunt and obtaining a special token / certification.  
- **Notes:**
  - This is an **early Hunt Board group feast**, clearly associated with the Howler.

---

## ADVANCED TIER 3 (Rank 15–18)

### 8. Feast of the First Hunt

- **ID:** `recipe_feast_of_the_first_hunt`  
- **Tier:** `adv_t3`  
- **Required Cooking Rank:** 16  
- **Expected Player Level:** 15–18  
- **Role Tags:** `party_feast`, `hp_max`, `stamina_max`, `festival`  
- **Ingredients:**
  - `elder_stag_meat` ×1  
  - `boar_meat_raw` ×1  
  - `forest_fowl_raw` ×1  
  - `stonepotato` ×2  
  - `emberroot_tuber` ×1  
  - `simple_herb_bundle` ×1  
  - `bone_broth_thick` ×1  
- **Base Servings:** 6–8  
- **Effects (Intent):**
  - Party-wide Max HP increase  
  - Small Max stamina increase  
  - HP & stamina regen  
  - Long duration (30–40 minutes)  
- **Source:**  
  - Awarded at Lodge reputation threshold (mid Greatwood rep), plus maybe required to host a small social event.  
- **Notes:**
  - This is the big “gather everyone around the Ember Pot” meal.

---

### 9. Wardstone Watch Supper

- **ID:** `recipe_wardstone_watch_supper`  
- **Tier:** `adv_t3`  
- **Required Cooking Rank:** 17  
- **Expected Player Level:** 15–18  
- **Role Tags:** `night_watch`, `res_corruption`, `res_cold`, `long_watch_buff`  
- **Ingredients:**
  - `wardstone_lamprey_strip` ×1  
  - `wardstone_bracket` ×1  
  - `whisperfern` ×1  
  - `emberroot_tuber` ×1  
  - `forest_stock_light` ×1  
- **Base Servings:** 4  
- **Effects (Intent):**
  - Mixed Cold + Corruption Resistance  
  - Slight boost to detection / perception (seeing trouble at night from a bit farther)  
  - HP regen suitable for long watch duty  
- **Source:**  
  - Granted by Ward teams after a Wardstone defense event chain.  
- **Notes:**
  - Theme: “food for people who have to stand on the wall all night and not die.”

---

### 10. Embertruffle & Red Vein Banquet

- **ID:** `recipe_embertruffle_red_vein_banquet`  
- **Tier:** `adv_t3`  
- **Required Cooking Rank:** 17  
- **Expected Player Level:** 16–19  
- **Role Tags:** `lodge_signature`, `luxury`, `skill_focus`  
- **Ingredients:**
  - `embertruffle` ×1  
  - `red_vein_morel` ×1  
  - `river_trout_fillet` ×1  
  - `hollowvine_grapes` ×1  
  - `emberleaf_oil` ×1  
- **Base Servings:** 4  
- **Effects (Intent):**
  - Small buffs to **multiple skills** (Cooking, Hunting, maybe Woodworking)  
  - Minor HP & stamina regen  
  - Medium duration (20–25 minutes)  
- **Source:**  
  - High Lodge reputation; may require bringing one of each rare mushroom/fungus as a “proof” before the recipe is taught.  
- **Notes:**
  - Very “fancy.” Great candidate for achievement / cosmetic tie-ins.

---

### 11. Greatwood Howler Hunter’s Board

- **ID:** `recipe_greatwood_howler_hunters_board`  
- **Tier:** `adv_t3`  
- **Required Cooking Rank:** 18  
- **Expected Player Level:** 16–19  
- **Role Tags:** `party_feast`, `damage_boost`, `elite_hunt`  
- **Ingredients:**
  - `greatwood_howler_rib` ×1  
  - `lean_wolf_flank` ×1  
  - `smoked_game_trimmings` ×1  
  - `brightreach_berries` ×1  
  - `smoked_salt_flakes` ×1  
- **Base Servings:** 5–6  
- **Effects (Intent):**
  - Stronger physical damage / crit buff than the Smokebloom Rib Rack  
  - Slightly shorter duration (20–25 minutes)  
  - Modest stamina regen  
- **Source:**  
  - Requires multiple completions of the Howler Signature Hunt or associated Contract thresholds.  
- **Notes:**
  - Positioned as the “serious hunt board” feast for high-level Greatwood hunts.

---

## ADVANCED TIER 4 (Rank 18–20)

### 12. Nightglass Shadow Stew

- **ID:** `recipe_nightglass_shadow_stew`  
- **Tier:** `adv_t4`  
- **Required Cooking Rank:** 18  
- **Expected Player Level:** 17–20  
- **Role Tags:** `stealth`, `res_corruption`, `side_effects_mild`  
- **Ingredients:**
  - `shadow_stag_loin` ×1  
  - `nightglass_berries` ×2  
  - `lowlight_clover` ×1  
  - `forest_stock_light` ×1  
- **Base Servings:** 3  
- **Effects (Intent):**
  - Moderate Corruption Resistance  
  - Minor buff to stealth / reduced enemy detection range  
  - Occasional small side-effect: brief visual “shadow trail” VFX or slight disorientation if consumed repeatedly  
- **Source:**  
  - Tied to thin-ward stealth hunt chain.  
- **Notes:**
  - This is the “I am going sneaking where wardlights flicker” food.

---

### 13. Black-Sap Purge Pot

- **ID:** `recipe_black_sap_purge_pot`  
- **Tier:** `adv_t4`  
- **Required Cooking Rank:** 19  
- **Expected Player Level:** 18–20  
- **Role Tags:** `corruption_resist_strong`, `risk_reward`, `boss_prep`  
- **Ingredients:**
  - `black_sap_gland_meat` ×1  
  - `black_sap_nodule` ×1  
  - `black_sap_reduction` ×1  
  - `whisperfern` ×1  
  - `glowcap_reduction` ×1  
- **Base Servings:** 3  
- **Effects (Intent):**
  - **Strong Corruption Resistance** for a limited time (shorter than Hollowroot stew, but more powerful)  
  - Minor HP regen  
  - Chance to inflict a temporary, mild debuff when the buff wears off (e.g. short nausea / vision shimmer)  
- **Source:**  
  - Learned only after completing the **Black-Sap Devourer Signature Hunt** and turning in a special lodge research quest.  
- **Notes:**
  - Tightly associated with the Black-Sap storyline.  
  - Messaging makes it clear: you’re eating the enemy to adapt to its poison.

---

### 14. Ragged King Victory Feast

- **ID:** `recipe_ragged_king_victory_feast`  
- **Tier:** `adv_t4`  
- **Required Cooking Rank:** 20  
- **Expected Player Level:** 19–20  
- **Role Tags:** `end_of_region`, `party_feast`, `prestige`, `all_rounder`  
- **Ingredients:**
  - `ragged_king_shank` ×1  
  - `ragged_king_bone_shard` ×1  
  - `embertruffle` ×1  
  - `shadowpool_koi_slice` ×1  
  - `hollowroot_resin` ×1  
  - `bone_broth_thick` ×1  
- **Base Servings:** 6–8  
- **Effects (Intent):**
  - Party-wide **Max HP** and **Max stamina** increase  
  - Modest physical damage boost  
  - Modest Corruption Resistance  
  - Long duration (40–45 minutes)  
- **Source:**  
  - Unlocked after defeating the **Ragged King** Signature Hunt and resolving its associated choice/questline.  
- **Notes:**
  - This is **the** capstone feast for Greatwood 1–20.  
  - May be required for some prestige achievements or lodge decorations.

---

### 15. Hollowroot Dream Chowder

- **ID:** `recipe_hollowroot_dream_chowder`  
- **Tier:** `adv_t4`  
- **Required Cooking Rank:** 19  
- **Expected Player Level:** 18–20  
- **Role Tags:** `dungeon_prep`, `vision`, `res_corruption`, `weird`  
- **Ingredients:**
  - `pale_cavefish_fillet` ×1  
  - `hollowroot_resin` ×1  
  - `glowcap` ×1  
  - `riverreed_rhizome` ×1  
  - `forest_stock_light` ×1  
- **Base Servings:** 3  
- **Effects (Intent):**
  - Moderate HP regen  
  - Corruption Resistance  
  - **Enhanced vision** in dark / subterranean spaces (subtle glow edge highlighting, trap visibility)  
  - When the effect ends, brief “echo” visual flickers from recent combat, just for flavor  
- **Source:**  
  - Higher-tier Hollowroot Warren dungeon quest reward.  
- **Notes:**
  - One of the more **visually distinctive** foods, and a strong signal that the player is entering deep-dungeon territory.

---

### 16. Ashen Ridge Overland Ration (Greatwood Variant)

- **ID:** `recipe_ashen_ridge_overland_ration_gw`  
- **Tier:** `adv_t4`  
- **Required Cooking Rank:** 18  
- **Expected Player Level:** 17–20  
- **Role Tags:** `travel_long`, `bridge_to_next_region`  
- **Ingredients:**
  - `ashen_beast_cut` ×1  
  - `ashwater_brine` ×1  
  - `honeybrick_ration_slab` ×1  
  - `greatwood_walnut` ×1  
- **Base Servings:** 4  
- **Effects (Intent):**
  - Long-duration stamina regen  
  - Minor HP regen  
  - Slight res_fire / res_cold blend  
- **Source:**  
  - Recipe granted as part of a story beat that points the player toward Ashen Ridge.  
- **Notes:**
  - Bridge food: hints that other regions will have their own rations / specialties.

---

## Unlock & Distribution Summary

- **Trainers / Lodge Cooks**
  - Teach a couple of early Advanced Tier 1 recipes as the player reaches Cooking 10+.
- **Hunt Board & Signature Hunts**
  - Elder Stag, Ward-Bear, Greatwood Howler, Black-Sap Devourer, Ragged King each unlock at least one iconic dish.
- **Hollowroot Warren / Dungeons**
  - Provide Hollowroot-centric recipes (Burrow Pie, Dream Chowder).
- **Events & Wardstone Defense**
  - Feed into Wardstone Watch Supper and related “watch” foods.
- **Reputation Tiers**
  - Gate the big feasts (Feast of the First Hunt, Embertruffle Banquet, Victory Feast) behind Lodge rep milestones.

---

## Next Actions

1. **Numeric Tuning Pass**
   - Convert each “Effects (Intent)” into exact stats, values, and durations.
   - Ensure advanced food doesn’t make alchemy or other professions irrelevant.

2. **Implementation**
   - Create a `CookingRecipes_Greatwood_Advanced.lua` (or similar) data file mirroring this doc.
   - Link ingredient IDs to the taxonomy from **51** and specialty ingredients from **55**.

3. **Quest & Content Hookup**
   - For each recipe, define:
     - Exact quest or hunt requirement
     - Required reputation, if any
     - Which NPC teaches / rewards it

4. **Visual & Audio**
   - Make sure each major feast / signature dish has:
     - Unique plate / platter models
     - Distinct icons
     - Subtle VFX or SFX when consumed (especially corruption / vision foods).

With this, Greatwood Cooking 10–20 becomes a full-blown **systemic layer** that sits on top of the 1–10 grid, strongly tied into Hunts, Hollowroot, wardlines, and Lodge life.
