Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 52 – Greatwood Early Cooking Recipe Grid (Skill 1–10)

## Purpose

Define the **core cooking experience for Greatwood 1–10**, built directly on the ingredient taxonomy from 51.

This spec answers:

- What can a player cook in the first region?
- How do these recipes **feel** (hearty, risky, travel-friendly, lodge-special)?
- How do buffs scale from “barely cooking” to “solid lodge chef” within 1–10?
- How does the Cookbook UI organize and surface this in a way that feels coherent?

This is a **design reference** doc.  
Implementation will live in a future Lua module (e.g. `CookingRecipes_Greatwood.lua`) that mirrors these IDs and fields.

---

## Design Pillars

1. **Food is meaningful, not spam**
   - Dishes have solid duration / impact for early game.
   - Eating something matters; there should not be 20 meaningless +2 HP snacks.

2. **Low friction, clear patterns**
   - New players should quickly learn:
     - “Stews = safety + sustain”
     - “Roasts = bigger spikes”
     - “Rations = long but mild”
     - “Sweets = bursty comfort”
     - “Brews = weird side buffs / resistances”

3. **Region identity**
   - Greatwood food tastes like:
     - Game meat, roots, mushrooms, smoky lodge kitchens, river fish
   - Early dishes should already nod at:
     - Hollowroot weirdness
     - Burn scar ash-flavor
     - Wardstone-adjacent protection themes

4. **Hooks into future systems**
   - Recipes reference:
     - Ingredient IDs from 51
     - Signature hunt drops (elder stag, ward-bear, Black-Sap Devourer, etc.)
     - Future alchemy lines (Hollowroot brews, Black Sap cleanses, etc.)

---

## Player Flow & Progression (Cooking Skill 1–10)

Rough structure:

- **Skill 1–2: Campfire Basics**
  - Raw → cooked basics using common meats & pantry
  - Simple stews, roasted meats, basic rations
  - Unlock via starter quests + default knowledge

- **Skill 3–5: Lodge Comforts**
  - Lodge-only recipes: stews, pies, better rations
  - Introduce mushrooms, herbs, basic broths
  - Unlock via lodge Cookbook pages / quests

- **Skill 6–8: Specialist Paths**
  - More focused food:
    - Hearty defensive stews
    - Sprint/travel food
    - Fire/corruption resistance dishes
  - Requires uncommon / rare ingredients

- **Skill 9–10: Early Signature Dishes**
  - Use hunt drops & rarer ingredients:
    - Elder stag, ward-bear haunch, embertruffle, etc.
  - Long durations, bigger stat packages
  - Some may require lodge hearth/station, not campfire

Exact “skill numbers” are flexible; they’re here to show **relative gating**.

---

## Recipe Schema

Each recipe is defined with:

- **recipe_id** – canonical internal ID  
- **display_name** – player-facing name  
- **tier** – rough skill tier / unlock band within 1–10  
- **station** – where it can be prepared:
  - `campfire_basic`, `lodge_hearth`, `lodge_oven`, `field_prep`
- **category** – UI + functional group:
  - `stew`, `soup`, `roast`, `grill`, `ration`, `sweet`, `brew`
- **ingredients_core** – exact required ingredients (by ID from 51)  
- **ingredients_flex** – tag-based or flex slots:
  - e.g. “any common meat”, “any herb with `cook_core`”
- **output_item_id** – cooked item ID (for later item data)  
- **effects** – high-level buff intent
  - `hp_flat`, `hp_regen`, `hp_max`, `stamina_regen`, `stamina_max`, `res_fire`, `res_corruption`, `move_speed`, etc.
- **duration_profile** – rough duration band:
  - `very_short`, `short`, `medium`, `long`, `travel_long`
- **notes** – flavor + design notes

Implementation detail:  
In Lua, this becomes a table keyed by `recipe_id`, with nested fields mirroring the above.

---

## Category Overview (Greatwood 1–10)

We split early recipes into five main categories:

1. **Soups & Stews** – safety, sustain, lodge staples  
2. **Roasts & Grills** – bigger up-front stats, shorter durations  
3. **Rations & Trail Food** – lower power, long-lasting, travel  
4. **Sweets & Comfort** – bursty, short/medium buffs  
5. **Brews & Tonics** – odd buffs, resistances, niche tech

---

## 1. Soups & Stews

### 1.1 – Hunter’s Bone Broth

- **recipe_id:** `gw_hunters_bone_broth`
- **display_name:** Hunter’s Bone Broth
- **tier:** 1
- **station:** `campfire_basic` or `lodge_hearth`
- **category:** `stew`
- **ingredients_core:**
  - `bone_broth_thick` or `forest_stock_light`
  - `stringy_game_meat` or `deer_meat_raw`
  - `mossy_tongue`
- **ingredients_flex:**
  - Optional: `stonepotato` or `white_ember_turnip`
- **output_item_id:** `food_hunters_bone_broth`
- **effects:**
  - `hp_regen_small`
  - `hp_flat_small`
- **duration_profile:** `medium`
- **notes:**
  - First “real” stew new players learn.
  - Should be cheap and forgiving; slightly better when cooked at a lodge hearth.

---

### 1.2 – Greatwood Game Stew

- **recipe_id:** `gw_greatwood_game_stew`
- **display_name:** Greatwood Game Stew
- **tier:** 2
- **station:** `lodge_hearth`
- **category:** `stew`
- **ingredients_core:**
  - `deer_meat_raw`
  - `stonepotato`
  - `mossy_tongue`
  - `simple_herb_bundle`
- **ingredients_flex:**
  - Optional extra meat: `boar_meat_raw` or `forest_fowl_raw`
- **output_item_id:** `food_greatwood_game_stew`
- **effects:**
  - `hp_regen_medium`
  - `hp_max_small`
- **duration_profile:** `medium`
- **notes:**
  - Feels like the “default lodge dinner.”
  - Becoming available should feel like a step up from campfire cooking.

---

### 1.3 – Boar & Emberroot Pot

- **recipe_id:** `gw_boar_emberroot_pot`
- **display_name:** Boar & Emberroot Pot
- **tier:** 3
- **station:** `lodge_hearth`
- **category:** `stew`
- **ingredients_core:**
  - `boar_meat_raw`
  - `emberroot_tuber`
  - `bitterpine_needle`
  - `forest_stock_light`
- **ingredients_flex:**
  - Optional: `smokebloom_petals` for extra flavor and a little more power
- **output_item_id:** `food_boar_emberroot_pot`
- **effects:**
  - `hp_regen_medium`
  - `res_cold_small`
  - Slight `stamina_regen_small`
- **duration_profile:** `medium`
- **notes:**
  - Slightly more complex; introduces Emberroot as a warming ingredient.
  - Good everyday choice for colder pockets of Greatwood.

---

### 1.4 – River Hare Chowder

- **recipe_id:** `gw_river_hare_chowder`
- **display_name:** River Hare Chowder
- **tier:** 3
- **station:** `lodge_hearth`
- **category:** `soup`
- **ingredients_core:**
  - `river_hare_meat`
  - `river_trout_fillet`
  - `riverreed_rhizome`
  - `bone_broth_thick`
- **ingredients_flex:**
  - Optional: `brightreach_berries` for subtle sweetness and sprint nuance
- **output_item_id:** `food_river_hare_chowder`
- **effects:**
  - `hp_regen_small`
  - `stamina_regen_medium`
- **duration_profile:** `medium`
- **notes:**
  - This is the “I run along rivers and fish between fights” reward dish.
  - Should feel more stamina-focused than the pure meat stews.

---

### 1.5 – Glowcap Stag Stew

- **recipe_id:** `gw_glowcap_stag_stew`
- **display_name:** Glowcap Stag Stew
- **tier:** 4
- **station:** `lodge_hearth`
- **category:** `stew`
- **ingredients_core:**
  - `deer_meat_raw` or `young_stag_cut`
  - `glowcap`
  - `stonepotato`
  - `river_herb_infusion`
- **ingredients_flex:**
  - Optional: `lowlight_clover` for slightly more “luck/crit” tilt
- **output_item_id:** `food_glowcap_stag_stew`
- **effects:**
  - `hp_regen_medium`
  - `res_corruption_small`
- **duration_profile:** `medium`
- **notes:**
  - First introduction to “food as very light corruption resistance.”  
  - Should be common enough that players can reasonably keep this up if they invest a bit.

---

### 1.6 – Ward-Bear Hearth Feast

- **recipe_id:** `gw_ward_bear_hearth_feast`
- **display_name:** Ward-Bear Hearth Feast
- **tier:** 7–8
- **station:** `lodge_hearth` only
- **category:** `stew`
- **ingredients_core:**
  - `ward_bear_haunch`
  - `white_ember_turnip`
  - `bone_broth_thick`
  - `wandersage_bundle`
- **ingredients_flex:**
  - Optional: `embertruffle` for upgraded version (later tier)
- **output_item_id:** `food_ward_bear_hearth_feast`
- **effects:**
  - `hp_max_medium`
  - `hp_regen_medium`
  - Mild `res_corruption_small`
- **duration_profile:** `long`
- **notes:**
  - Feels like a reward for finishing a Ward-Bear style hunt.
  - Requires lodge hearth; cannot be made on a roadside fire.

---

### 1.7 – Ashstream Patrol Stew

- **recipe_id:** `gw_ashstream_patrol_stew`
- **display_name:** Ashstream Patrol Stew
- **tier:** 5
- **station:** `campfire_basic` or `lodge_hearth`
- **category:** `stew`
- **ingredients_core:**
  - `ashstream_carp_fillet`
  - `ashcurl`
  - `emberroot_tuber`
  - `forest_stock_light`
- **ingredients_flex:**
  - Optional: `ashwater_brine` to replace stock for stronger fire resist
- **output_item_id:** `food_ashstream_patrol_stew`
- **effects:**
  - `res_fire_small`
  - `hp_regen_small`
- **duration_profile:** `medium`
- **notes:**
  - Introduces interplay between burn scar ingredients and fire resistance.
  - Early counterplay for wildfire-themed mobs.

---

## 2. Roasts & Grills

### 2.1 – Simple Forest Fowl Roast

- **recipe_id:** `gw_simple_forest_fowl_roast`
- **display_name:** Simple Forest Fowl Roast
- **tier:** 1
- **station:** `campfire_basic`
- **category:** `roast`
- **ingredients_core:**
  - `forest_fowl_raw`
  - `simple_herb_bundle`
- **ingredients_flex:**
  - Optional: `lodge_salt_mix`
- **output_item_id:** `food_simple_forest_fowl_roast`
- **effects:**
  - `hp_flat_small`
- **duration_profile:** `short`
- **notes:**
  - First “I cooked it instead of eating raw” recipe.
  - Just better than eating the raw bird; simple and common.

---

### 2.2 – Blackfeather Grouse Skillet

- **recipe_id:** `gw_blackfeather_grouse_skillet`
- **display_name:** Blackfeather Grouse Skillet
- **tier:** 3
- **station:** `lodge_hearth` or `lodge_oven`
- **category:** `roast`
- **ingredients_core:**
  - `blackfeather_grouse_meat`
  - `smokebloom_petals`
  - `emberleaf_oil`
- **ingredients_flex:**
  - Optional: `smoked_salt_flakes`
- **output_item_id:** `food_blackfeather_grouse_skillet`
- **effects:**
  - `hp_flat_medium`
  - Very small `crit_chance_small`
- **duration_profile:** `short`
- **notes:**
  - Early “showoff” dish – more punch than sustain.
  - Ties into smoky lodge flavor.

---

### 2.3 – Dire Wolf Trail Skewers

- **recipe_id:** `gw_dire_wolf_trail_skewers`
- **display_name:** Dire Wolf Trail Skewers
- **tier:** 5–6
- **station:** `campfire_basic`
- **category:** `grill`
- **ingredients_core:**
  - `dire_wolf_flank`
  - `thornmint`
- **ingredients_flex:**
  - Optional: `brightreach_berries` for a slightly more “zippy” profile
- **output_item_id:** `food_dire_wolf_trail_skewers`
- **effects:**
  - `stamina_max_small`
  - `move_speed_small`
- **duration_profile:** `short`
- **notes:**
  - Aggressive travel / skirmish food.  
  - Short but punchy bonuses that encourage movement-heavy play.

---

### 2.4 – Elder Stag Crown Roast

- **recipe_id:** `gw_elder_stag_crown_roast`
- **display_name:** Elder Stag Crown Roast
- **tier:** 8–9
- **station:** `lodge_oven`
- **category:** `roast`
- **ingredients_core:**
  - `elder_stag_meat`
  - `hollowvine_grapes`
  - `wandersage_bundle`
- **ingredients_flex:**
  - Optional: `emberhazel_nut` for high-end variant
- **output_item_id:** `food_elder_stag_crown_roast`
- **effects:**
  - `hp_max_medium`
  - `stamina_regen_small`
- **duration_profile:** `long`
- **notes:**
  - Prestige dish; should require both a hunt and lodge access.
  - Might be tied to a small quest chain to unlock the recipe.

---

### 2.5 – Ashen Beast Ember Roast

- **recipe_id:** `gw_ashen_beast_ember_roast`
- **display_name:** Ashen Beast Ember Roast
- **tier:** 9–10
- **station:** `lodge_hearth`
- **category:** `roast`
- **ingredients_core:**
  - `ashen_beast_cut`
  - `ashwater_brine`
  - `emberleaf`
- **ingredients_flex:**
  - Optional: `embertruffle` for top-tier version
- **output_item_id:** `food_ashen_beast_ember_roast`
- **effects:**
  - `hp_flat_large`
  - `res_fire_medium`
- **duration_profile:** `medium`
- **notes:**
  - Late Greatwood early “raid-adjacent” dish.
  - Sets expectations for future region-specific high-resist foods.

---

## 3. Rations & Trail Food

### 3.1 – Hunter’s Jerky

- **recipe_id:** `gw_hunters_jerky`
- **display_name:** Hunter’s Jerky
- **tier:** 2
- **station:** `campfire_basic` or `lodge_hearth`
- **category:** `ration`
- **ingredients_core:**
  - `lean_wolf_flank` or `boar_meat_raw`
  - `ashwater_brine`
- **ingredients_flex:**
  - Optional: `simple_herb_bundle`
- **output_item_id:** `food_hunters_jerky`
- **effects:**
  - `hp_regen_very_small`
  - Mild `stamina_regen_small`
- **duration_profile:** `travel_long`
- **notes:**
  - Designed to be stacked in inventory for long runs.
  - Power is low, but duration is long; essentially background sustain.

---

### 3.2 – Smoked Game Pack

- **recipe_id:** `gw_smoked_game_pack`
- **display_name:** Smoked Game Pack
- **tier:** 3
- **station:** `lodge_hearth` (smoker)
- **category:** `ration`
- **ingredients_core:**
  - `smoked_game_trimmings`
  - `smoked_salt_flakes`
- **ingredients_flex:**
  - Optional: any `meat` tagged as `cook_core` for small upgrades
- **output_item_id:** `food_smoked_game_pack`
- **effects:**
  - `hp_regen_small`
- **duration_profile:** `travel_long`
- **notes:**
  - Slightly stronger, but lodge-gated.
  - Makes use of secondary by-products from lodge kitchens.

---

### 3.3 – Honeybrick Trail Bars

- **recipe_id:** `gw_honeybrick_trail_bars`
- **display_name:** Honeybrick Trail Bars
- **tier:** 4
- **station:** `lodge_hearth` or `lodge_oven`
- **category:** `ration`
- **ingredients_core:**
  - `honeybrick_ration_slab`
  - `greatwood_walnut`
  - `ground_barley_flour`
- **ingredients_flex:**
  - Optional: `brightreach_berries`
- **output_item_id:** `food_honeybrick_trail_bars`
- **effects:**
  - `stamina_regen_small`
  - Very mild `hp_regen_very_small`
- **duration_profile:** `travel_long`
- **notes:**
  - The “I always carry some of these” standard for explorers.
  - Slightly more expensive, but good for non-stop movement.

---

### 3.4 – Pickled River Cuts

- **recipe_id:** `gw_pickled_river_cuts`
- **display_name:** Pickled River Cuts
- **tier:** 4
- **station:** `lodge_hearth`
- **category:** `ration`
- **ingredients_core:**
  - `river_trout_fillet`
  - `pickling_brine_base`
- **ingredients_flex:**
  - Optional: `thornmint` or `bitterpine_needle`
- **output_item_id:** `food_pickled_river_cuts`
- **effects:**
  - `hp_regen_small`
  - Slight `res_disease_poison_small`
- **duration_profile:** `long`
- **notes:**
  - Travel-friendly fish prep.  
  - Bakes in a mild disease/poison resist that will matter more later.

---

### 3.5 – Brightreach Trail Mix

- **recipe_id:** `gw_brightreach_trail_mix`
- **display_name:** Brightreach Trail Mix
- **tier:** 3
- **station:** `field_prep` or `lodge_hearth`
- **category:** `ration`
- **ingredients_core:**
  - `brightreach_berries`
  - `greatwood_walnut`
- **ingredients_flex:**
  - Optional: small scrap of any cooked meat (e.g. leftover `stringy_game_meat`)
- **output_item_id:** `food_brightreach_trail_mix`
- **effects:**
  - Small `move_speed_small`
  - Very small `stamina_regen_small`
- **duration_profile:** `short` to `medium`
- **notes:**
  - Lightweight, easy-to-make field snack.  
  - Gives a “light on your feet” vibe for low-level explorers.

---

## 4. Sweets & Comfort Foods

### 4.1 – Orchardwild Hand Pie

- **recipe_id:** `gw_orchardwild_hand_pie`
- **display_name:** Orchardwild Hand Pie
- **tier:** 3
- **station:** `lodge_oven`
- **category:** `sweet`
- **ingredients_core:**
  - `orchardwild_apple`
  - `ground_barley_flour`
  - `rendered_boar_fat`
- **ingredients_flex:**
  - Optional: `honeybrick_ration_slab` for a sweeter version
- **output_item_id:** `food_orchardwild_hand_pie`
- **effects:**
  - `hp_flat_small`
  - Tiny `morale_flavor` style buff for flavor text (cosmetic)
- **duration_profile:** `short`
- **notes:**
  - Low power, high flavor identity.  
  - This is a “home” food; good for lodge social spaces.

---

### 4.2 – Sweet Bramble Mash

- **recipe_id:** `gw_sweet_bramble_mash`
- **display_name:** Sweet Bramble Mash
- **tier:** 4
- **station:** `lodge_hearth`
- **category:** `sweet`
- **ingredients_core:**
  - `sweet_bramble_root`
  - `honeybrick_ration_slab`
  - `lodge_salt_mix`
- **ingredients_flex:**
  - Optional: `smoked_salt_flakes` for sweet/salty variant
- **output_item_id:** `food_sweet_bramble_mash`
- **effects:**
  - `hp_flat_small`
  - Small `stamina_regen_small`
- **duration_profile:** `medium`
- **notes:**
  - Serves as a side dish or small comfort reward.  
  - Can be used in multi-course feasts later.

---

### 4.3 – Emberhazel Nut Brittle

- **recipe_id:** `gw_emberhazel_nut_brittle`
- **display_name:** Emberhazel Nut Brittle
- **tier:** 6
- **station:** `lodge_oven`
- **category:** `sweet`
- **ingredients_core:**
  - `emberhazel_nut`
  - `honeybrick_ration_slab`
- **ingredients_flex:**
  - Optional: pinch of `simple_herb_bundle` for herb-crusted variant
- **output_item_id:** `food_emberhazel_nut_brittle`
- **effects:**
  - `stamina_max_small`
  - Tiny `crit_chance_very_small`
- **duration_profile:** `medium`
- **notes:**
  - Luxury snack; more expensive but more punchy than generic sweets.

---

### 4.4 – Nightglass Tart

- **recipe_id:** `gw_nightglass_tart`
- **display_name:** Nightglass Tart
- **tier:** 7
- **station:** `lodge_oven`
- **category:** `sweet`
- **ingredients_core:**
  - `nightglass_berries`
  - `ground_barley_flour`
- **ingredients_flex:**
  - Optional: `simple_herb_bundle` for aromatic variant
- **output_item_id:** `food_nightglass_tart`
- **effects:**
  - Very small `res_corruption_small`
  - Very brief `perception_small` (tiny detection tweak)
- **duration_profile:** `short`
- **notes:**
  - Early “spooky” dessert linked to ward-thin areas.  
  - Should be rare enough that it feels special to make.

---

## 5. Brews & Tonics

### 5.1 – Bitterpine Tea

- **recipe_id:** `gw_bitterpine_tea`
- **display_name:** Bitterpine Tea
- **tier:** 2
- **station:** `campfire_basic` or `lodge_hearth`
- **category:** `brew`
- **ingredients_core:**
  - `bitterpine_needle`
  - `river_herb_infusion`
- **ingredients_flex:**
  - Optional: `wandersage_bundle`
- **output_item_id:** `brew_bitterpine_tea`
- **effects:**
  - `stamina_regen_small`
- **duration_profile:** `medium`
- **notes:**
  - First simple drink recipe; trains players to pay attention to liquids.

---

### 5.2 – Glowcap Tonic

- **recipe_id:** `gw_glowcap_tonic`
- **display_name:** Glowcap Tonic
- **tier:** 4
- **station:** `lodge_hearth`
- **category:** `brew`
- **ingredients_core:**
  - `glowcap_reduction`
  - `hollowroot_tonic_base`
- **ingredients_flex:**
  - Optional: `lowlight_clover`
- **output_item_id:** `brew_glowcap_tonic`
- **effects:**
  - `res_corruption_small`
  - Very light `vision_in_darkness_flavor` (UI/FX only)
- **duration_profile:** `medium`
- **notes:**
  - Bridge between cooking and early alchemy.

---

### 5.3 – Ashcurl Firebroth

- **recipe_id:** `gw_ashcurl_firebroth`
- **display_name:** Ashcurl Firebroth
- **tier:** 5–6
- **station:** `lodge_hearth`
- **category:** `brew`
- **ingredients_core:**
  - `ashcurl`
  - `ashwater_brine`
- **ingredients_flex:**
  - Optional: `emberleaf`
- **output_item_id:** `brew_ashcurl_firebroth`
- **effects:**
  - `res_fire_medium`
  - Tiny `hp_regen_very_small`
- **duration_profile:** `medium`
- **notes:**
  - Paired with burn-scar content and wildfire threats.  
  - Should be noticeably stronger vs fire than Ashstream stews.

---

### 5.4 – Whisperfern Infusion

- **recipe_id:** `gw_whisperfern_infusion`
- **display_name:** Whisperfern Infusion
- **tier:** 7–8
- **station:** `lodge_hearth`
- **category:** `brew`
- **ingredients_core:**
  - `whisperfern`
  - `river_herb_infusion`
- **ingredients_flex:**
  - Optional: `glowcap` for stronger corruption-leaning effects
- **output_item_id:** `brew_whisperfern_infusion`
- **effects:**
  - `res_corruption_medium` (shorter duration)
- **duration_profile:** `short` to `medium`
- **notes:**
  - Stronger, riskier brew for places where corruption is serious.
  - Can layer with food for compound defenses.

---

### 5.5 – Black Sap Purge (Risk Recipe)

- **recipe_id:** `gw_black_sap_purge`
- **display_name:** Black Sap Purge
- **tier:** 9–10
- **station:** `lodge_hearth` only
- **category:** `brew`
- **ingredients_core:**
  - `black_sap_reduction`
  - `whisperfern`
  - `hollowroot_resin`
- **ingredients_flex:**
  - None; strict recipe
- **output_item_id:** `brew_black_sap_purge`
- **effects:**
  - Strong `res_corruption_medium`
  - Immediate small self-debuff (e.g. reduced move_speed or minor HP drain) for balance
- **duration_profile:** `medium`
- **notes:**
  - This is a high-risk, high-reward brew.  
  - Ties into Black-Sap Devourer / Hollowroot / corruption loops.
  - Requires narrative explanation from lodge alchemists.

---

## Integration Notes

### UI & Cookbook

- Use categories for UI tabs:
  - `Soups & Stews`, `Roasts & Grills`, `Rations`, `Sweets`, `Brews`
- Each recipe displays:
  - Required ingredients (with icons)
  - Station (campfire / hearth / oven)
  - Short text hint of effect (“Hearty stew, medium health regen over time”)

### Data Layer

- Recipes should reference:
  - Ingredient IDs from 51 only (for Greatwood 1–20)
- Buff details live in:
  - A shared buff/effect data module, not hard-coded per recipe doc

### Future Hooks

- **53 – Advanced Greatwood Cooking (Skill 10–20)**:
  - extend this grid with:
    - multi-course feasts
    - lodge banquets
    - more corruption/fire/frost counterplay
- **58 – Intro Alchemy**:
  - picks up from the same ingredient pool: herbs, mushrooms, monster parts, liquids

---

## Summary

This file gives Greatwood 1–10:

- A clear, themed set of recipes
- Direct integration with the ingredient taxonomy (51)
- A foundation for:
  - lodge identity,
  - profession progression,
  - and future advanced cooking / alchemy.

