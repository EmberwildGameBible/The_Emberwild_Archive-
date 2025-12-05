# 54 – Greatwood Profession Tools & Gear Sets (1–20)

## Purpose

Define the **profession tool and gear layer** for Greatwood 1–20, focused on:

- Hunters (tracking, butchery, specialty drops)
- Cooks (campfire → lodge chef progression)
- Alchemists (field kit → lodge crucible)
- Foragers / Woodworkers (ingredients, trophies, lodge fixtures)

This file connects:

- Ingredients (51)
- Cooking (52–53)
- Specialty ingredients (55)
- Intro Alchemy (58)
- Lodge / Hunts structure (B115–B121, 56, 64, 85, 86)

This is a **design reference** doc, not code.  
Implementation lives in future Lua tables like:

- `ProfessionTools_Greatwood.lua`
- `ProfessionSets_Greatwood.lua`

---

## Design Pillars

1. **Tools change how you play, not just numbers**
   - Profession gear should affect:
     - What you find,
     - How much you get,
     - How forgiving the systems feel.
   - Numbers matter, but the fantasy is “with the right kit, I can do more”.

2. **Everything loops back to the Lodge**
   - Tools and sets:
     - Come from Lodge quests, Hunts, contracts, and vendors.
     - Feed Lodge feasts, Ember Pot, trophies and decor.

3. **Greatwood as the “profession school”**
   - 1–20 teaches:
     - “How to hunt properly”
     - “How to make food that matters”
     - “How to brew things that aren’t just poison”
   - Later regions build on these patterns.

4. **Soft class-agnostic design**
   - Any combat build can also be “the Cook” or “the Ward Alchemist” for the group.
   - Professions are **roles**, not combat classes.

---

## Profession Roles in Greatwood 1–20

For this band we assume four main profession roles:

1. **Hunter / Tracker**
   - Tracks beasts, optimizes butchery, yields more/better ingredients.
2. **Cook / Lodge Chef**
   - Turns ingredients into powerful food and feasts (52–53).
3. **Alchemist / Ward-Tonic Maker**
   - Crafts brews, tonics, oils (58).
4. **Forager / Woodworker**
   - Harvests plants, mushrooms, wood; crafts basic lodge fixtures & trophies.

Others (fisher, tailor, smith) can appear later, but Greatwood’s **core loop** is these four.

---

## Progression Bands (Profession Skill 1–20)

Each profession has three broad tool/gear bands:

- **Tier 1 – Field Basics (Skill 1–6)**
  - Simple, cheap tools.
  - Mostly quality-of-life and low-risk training wheels.

- **Tier 2 – Lodge-Grade Kits (Skill 7–13)**
  - Profession starts to feel “real”.
  - Tools interact with Hunts, wardlines, fire-scar pockets, Hollowroot.

- **Tier 3 – Signature Sets (Skill 14–20)**
  - Tied to Hunts, bosses, and Lodge questlines.
  - Tools strongly interact with specialties (55), feasts (53), and advanced brews (58).

---

## Tool Schema

Every profession tool / gear piece uses this schema:

- **item_id** – canonical ID (e.g. `tool_hunter_skinning_knife_t1`)
- **display_name** – player-facing name
- **profession_role** – `hunter`, `cook`, `alchemist`, `forager`
- **tier** – `1`, `2`, or `3`
- **slot** – where it goes:
  - `main_tool`, `offhand_tool`, `belt`, `apron`, `satchel`, `pack`, `trinket`
- **source** – where it comes from:
  - `starter`, `lodge_vendor`, `hunt_reward`, `contract`, `dungeon`, `festival`, `questline`
- **effects_core** – what it actually does (intent tags):
  - e.g. `butchery_yield_bonus`, `cook_quality_bonus`, `brew_potency_bonus`, `gather_chance_rare`, `specialty_drop_chance`
- **effects_side** – secondary flavor / quirks
  - e.g. `lodge_rep_bonus_small`, `repair_cost_reduction_small`, `social_flavor`
- **notes** – short design/narrative notes

Implementation detail:  
Gear stats and exact %s live in a separate balancing layer; this doc defines the roles and hooks.

---

## 1. Hunter / Tracker Kits

### 1.1 Tier 1 – Field Hunter’s Kit

#### Tool: Plain Hunter’s Skinning Knife

- **item_id:** `tool_hunter_skinning_knife_t1`
- **display_name:** Plain Hunter’s Skinning Knife
- **profession_role:** `hunter`
- **tier:** 1
- **slot:** `main_tool`
- **source:** Starter / Lodge vendor (cheap)
- **effects_core:**
  - Small `butchery_speed_bonus_small`
  - Small `butchery_yield_bonus_small` on basic meats:
    - `deer_meat_raw`, `boar_meat_raw`, `forest_fowl_raw`, `stringy_game_meat`
- **effects_side:**
  - None (this is the baseline)
- **notes:**
  - First tool that teaches “harvest properly instead of looting a generic bag of meat”.

#### Tool: Hunter’s Field Satchel

- **item_id:** `tool_hunter_field_satchel_t1`
- **display_name:** Hunter’s Field Satchel
- **profession_role:** `hunter`
- **tier:** 1
- **slot:** `satchel`
- **source:** Lodge vendor / early quest
- **effects_core:**
  - Small increase to stack size for **meats** and basic `monster_part` ingredients.
- **effects_side:**
  - Minor reduction in spoilage timers if you use a spoilage mechanic.
- **notes:**
  - Makes “I did a big hunt” feel logistically smoother.

---

### 1.2 Tier 2 – Lodge Hunter’s Kit

#### Tool: Lodge Carving Knife

- **item_id:** `tool_hunter_carving_knife_t2`
- **display_name:** Lodge Carving Knife
- **profession_role:** `hunter`
- **tier:** 2
- **slot:** `main_tool`
- **source:** Lodge questline “First Circle Carver” / mid-game Hunts
- **effects_core:**
  - Moderate `butchery_yield_bonus` for:
    - `young_stag_cut`, `elder_stag_meat`, `blackfeather_grouse_meat`, `river_hare_meat`, `dire_wolf_flank`, `ward_bear_haunch`
  - Small `specialty_drop_chance_small` on:
    - `spec_ingr_elder_stag_marrow`
    - `spec_ingr_ward_bear_gelatin`
- **effects_side:**
  - Slight `lodge_rep_bonus_small` when turning in hunted materials.
- **notes:**
  - Soft requirement to feel like you’re getting proper value out of Hunts.

#### Tool: Greatwood Track-Cord

- **item_id:** `tool_hunter_track_cord_t2`
- **display_name:** Greatwood Track-Cord
- **profession_role:** `hunter`
- **tier:** 2
- **slot:** `belt`
- **source:** Contract rewards (B115–B116)
- **effects_core:**
  - Mild `track_node_detection_small` for game trails and beast dens.
  - Slightly higher chance to find nodes that drop `lean_wolf_flank`, `river_fox_ribs`.
- **effects_side:**
  - Cosmetic: adds trail-mark icons to world map and minimap.
- **notes:**
  - Encourages you to actually *follow* trails instead of just killing whatever aggroes.

---

### 1.3 Tier 3 – Signature Hunter Sets

#### Tool: Howler’s Spur Knife

- **item_id:** `tool_hunter_howler_spur_knife_t3`
- **display_name:** Howler’s Spur Knife
- **profession_role:** `hunter`
- **tier:** 3
- **slot:** `main_tool`
- **source:** Signature Hunt – Greatwood Howler (B119)
- **effects_core:**
  - Higher `specialty_drop_chance` for:
    - `spec_ingr_howler_throat_bundle`
    - `spec_ingr_howler_ear_fragment`
  - Moderate `butchery_speed_bonus` specifically on wolf / Howler-type creatures.
- **effects_side:**
  - Small `move_speed_small` buff for a short time after a successful butchery.
- **notes:**
  - Ideal for the player who is “the Howler expert” in a group.

#### Tool: Ragged King Trophy Harness

- **item_id:** `tool_hunter_ragged_king_harness_t3`
- **display_name:** Ragged King Trophy Harness
- **profession_role:** `hunter`
- **tier:** 3
- **slot:** `belt` or `pack`
- **source:** Signature Hunt – Ragged King (B120)
- **effects_core:**
  - Small global `specialty_drop_chance_small` on any **signature Hunt** creature.
  - Tiny `res_corruption_small` when carrying:
    - `spec_ingr_ragged_king_bone_shard`
    - `spec_ingr_ragged_king_shank`
- **effects_side:**
  - Cosmetic: shows extra trophy straps and dangling charms on character model.
- **notes:**
  - Designed to tie all Hunts together as a profession loop.

---

## 2. Cook / Lodge Chef Kits

### 2.1 Tier 1 – Camp Cook’s Starter Set

#### Tool: Plain Camp Cookpot

- **item_id:** `tool_cook_plain_camp_pot_t1`
- **display_name:** Plain Camp Cookpot
- **profession_role:** `cook`
- **tier:** 1
- **slot:** `main_tool`
- **source:** Starter / early Lodge vendor
- **effects_core:**
  - Allows creation of Tier 1 stews/soups from 52 at `campfire_basic`.
  - Slight reduction in ingredient waste (if you implement failures).
- **effects_side:**
  - None – baseline functional tool.
- **notes:**
  - Without this you can only do the most basic roasting; this is the “you are a cook now” moment.

#### Gear: Stained Camp Apron

- **item_id:** `gear_cook_stained_camp_apron_t1`
- **display_name:** Stained Camp Apron
- **profession_role:** `cook`
- **tier:** 1
- **slot:** `apron`
- **source:** Early quest “First Pot on the Fire”
- **effects_core:**
  - Tiny `cook_quality_bonus_small` (slightly better buff roll within range).
- **effects_side:**
  - Minor `lodge_rep_bonus_small` with kitchen NPCs.
- **notes:**
  - Small but flavorful; lets you feel the difference between “random person cooking” and “actual cook”.

---

### 2.2 Tier 2 – Lodge Chef’s Set

#### Tool: Lodge Iron Pot

- **item_id:** `tool_cook_lodge_iron_pot_t2`
- **display_name:** Lodge Iron Pot
- **profession_role:** `cook`
- **tier:** 2
- **slot:** `main_tool`
- **source:** Lodge questline “The Ember Pot Never Empties” (56)
- **effects_core:**
  - Unlocks full recipe list from 52 at `lodge_hearth`.
  - Moderate `cook_quality_bonus` on:
    - `gw_greatwood_game_stew`
    - `gw_boar_emberroot_pot`
    - `gw_river_hare_chowder`
  - Slight reduction in required `forest_stock_light` / `bone_broth_thick`.
- **effects_side:**
  - When used near the Ember Pot, slightly increases progress on Ember Pot meta-quests.
- **notes:**
  - This is the tool that makes being “the Lodge Chef” feel distinct.

#### Tool: Ember Ladle

- **item_id:** `tool_cook_ember_ladle_t2`
- **display_name:** Ember Ladle
- **profession_role:** `cook`
- **tier:** 2
- **slot:** `offhand_tool`
- **source:** Lodge vendor (mid-tier)
- **effects_core:**
  - Small chance for **+1 extra serving** on stew/feast recipes from 52–53.
  - Small `cook_speed_bonus_small` (reduced cooking time).
- **effects_side:**
  - Cosmetic: ladle hangs at belt, glows faintly near a hot hearth.
- **notes:**
  - Strong group utility: more food out of the same rare ingredients.

---

### 2.3 Tier 3 – Signature Chef Sets

#### Tool: Elder Stag Carving Set

- **item_id:** `tool_cook_elder_stag_carving_set_t3`
- **display_name:** Elder Stag Carving Set
- **profession_role:** `cook`
- **tier:** 3
- **slot:** `main_tool`
- **source:** Completion of Elder Stag Hunt chain + Lodge cooking follow-up
- **effects_core:**
  - High `cook_quality_bonus` for:
    - `food_elder_stag_crown_roast`
    - `food_ragged_king_gravepot` (if Elder Stag ingredients are included)
  - Slight increase to chance of using `spec_ingr_elder_stag_marrow` optimally (reduced waste).
- **effects_side:**
  - Minor `hp_regen_very_small` buff to the cook when near a hearth (flavor).
- **notes:**
  - Signature kitchen set; marks a “master of Greatwood roasts/stews.”

#### Tool: Black-Sap Purge Kettle

- **item_id:** `tool_cook_black_sap_purge_kettle_t3`
- **display_name:** Black-Sap Purge Kettle
- **profession_role:** `cook`
- **tier:** 3
- **slot:** `main_tool`
- **source:** Deep Lodge alchemy + cooking questline tied to Black-Sap Devourer (B117)
- **effects_core:**
  - Enables the cooking-side `food_black_sap_purge` ritual stew variant (53/58 bridge).
  - Slight reduction in **self-debuff** penalty from Purge dishes for party members.
- **effects_side:**
  - Cosmetic dark patina; faint sap-like sheen when brew is active.
- **notes:**
  - A late Greatwood “prestige risk” tool; clearly telegraphed as dangerous but powerful.

#### Gear: Old Cook’s Apron String (Charm)

- **item_id:** `trinket_old_cooks_apron_string`
- **display_name:** Old Cook’s Apron String
- **profession_role:** `cook`
- **tier:** 3
- **slot:** `trinket`
- **source:** Personal Lodge cook story (55 – `spec_ingr_old_cooks_apron_string`)
- **effects_core:**
  - Tiny `cook_quality_bonus_small` across all recipes.
  - Slight reduction in ingredient failure / burn chance (if that exists).
- **effects_side:**
  - Cosmetic: adds a small visible charm to belts/aprons.
- **notes:**
  - More about identity and story than raw power, but still worth equipping.

---

## 3. Alchemist / Ward-Tonic Kits

### 3.1 Tier 1 – Field Mixer’s Kit

#### Tool: Simple Field Alchemy Kit

- **item_id:** `tool_alch_field_kit_t1`
- **display_name:** Simple Field Alchemy Kit
- **profession_role:** `alchemist`
- **tier:** 1
- **slot:** `main_tool`
- **source:** Early Lodge vendor / starter quest “Don’t Drink That”
- **effects_core:**
  - Allows creation of basic brews from 58 at `field_kit_basic`:
    - `alch_bitterpine_stamina_draught`
    - `alch_simple_mending_poultice`
    - `alch_glowcap_field_draught`
    - `alch_ashcurl_warmth_tincture`
- **effects_side:**
  - Minor reduction in reagent consumption if player fails rolls.
- **notes:**
  - Without this, alchemy is basically unavailable outside Lodge.

#### Gear: Tonic Belt Pouch

- **item_id:** `gear_alch_tonic_belt_pouch_t1`
- **display_name:** Tonic Belt Pouch
- **profession_role:** `alchemist`
- **tier:** 1
- **slot:** `belt`
- **source:** Lodge vendor
- **effects_core:**
  - Slight increase to **stack sizes** for brews and tonics.
- **effects_side:**
  - Cosmetic vials visible on belt.
- **notes:**
  - Encourages “I carry a bunch of little bottles” fantasy.

---

### 3.2 Tier 2 – Lodge Alembic Set

#### Tool: Lodge Alembic

- **item_id:** `tool_alch_lodge_alembic_t2`
- **display_name:** Lodge Alembic
- **profession_role:** `alchemist`
- **tier:** 2
- **slot:** `main_tool`
- **source:** Lodge questline “Ward-Clearer’s Apprentice”
- **effects_core:**
  - Unlocks brews that require `lodge_alembic` station (58):
    - `alch_whisperfern_minor_ward_draught`
    - `alch_ashcurl_fireguard_tonic`
    - `alch_lowlight_focus_vial`
  - Moderate `brew_potency_bonus` for low/medium tier tonics.
- **effects_side:**
  - Slightly reduces negative side-effects magnitude on **non-Black-Sap** brews.
- **notes:**
  - This is the turning point where alchemy becomes a serious role, not just a side hobby.

#### Tool: Wardstone Straining Funnel

- **item_id:** `tool_alch_wardstone_strainer_t2`
- **display_name:** Wardstone Straining Funnel
- **profession_role:** `alchemist`
- **tier:** 2
- **slot:** `offhand_tool`
- **source:** Wardstone Hill side quest
- **effects_core:**
  - Small `brew_purity_bonus` on:
    - `brew_wardstone_skin_tonic`
    - `brew_whisperglass_purge_tonic`
    - `brew_hollowroot_fortifying_draught`
- **effects_side:**
  - Cosmetic: small ward-light shimmer when brewing completed.
- **notes:**
  - Purpose is to emphasize ward-aligned brews vs generic potions.

---

### 3.3 Tier 3 – Crucible & Black Sap Kit

#### Tool: Lodge Crucible

- **item_id:** `tool_alch_lodge_crucible_t3`
- **display_name:** Lodge Crucible
- **profession_role:** `alchemist`
- **tier:** 3
- **slot:** `main_tool`
- **source:** Late Lodge/warden story combining Hollowroot, Wardstone, and Hunts
- **effects_core:**
  - Required for:
    - `alch_hollowroot_fortifying_draught`
    - `alch_wardstone_anchor_oil`
    - All Black Sap brews (`alch_black_sap_purge`, `alch_black_sap_insight_tincture`)
  - Significant `brew_potency_bonus` and `brew_duration_bonus` on mid/high-tier brews.
- **effects_side:**
  - Slightly *increases* the variance of side-effects for Black Sap brews (risk amplifier).
- **notes:**
  - This is the “end of Greatwood alchemy tree” tool.

#### Tool: Black-Sap Gauntlets

- **item_id:** `gear_alch_black_sap_gauntlets_t3`
- **display_name:** Black-Sap Handling Gauntlets
- **profession_role:** `alchemist`
- **tier:** 3
- **slot:** `main_tool` or `trinket` slot (cosmetic + small gameplay)
- **source:** Black-Sap Devourer Hunt (B117)
- **effects_core:**
  - Slight reduction to self-corruption stacks when brewing/handling Black Sap items.
  - Tiny `res_corruption_small` for the alchemist only while equipped.
- **effects_side:**
  - Cosmetic: fingers stained permanently dark, faint sheen effects.
- **notes:**
  - Useful but not mandatory; mostly about making Black Sap feel like a real handling hazard.

---

## 4. Forager / Woodworker Kits

### 4.1 Tier 1 – Basic Forager Set

#### Tool: Simple Forager’s Knife

- **item_id:** `tool_forage_simple_knife_t1`
- **display_name:** Simple Forager’s Knife
- **profession_role:** `forager`
- **tier:** 1
- **slot:** `main_tool`
- **source:** Starter / Lodge vendor
- **effects_core:**
  - Small `gather_yield_bonus_small` on:
    - `bitterpine_needle`, `mossy_tongue`, `lowlight_clover`, `stonepotato`, `emberroot_tuber`
- **effects_side:**
  - None.
- **notes:**
  - Basic “don’t wreck the plant” tool.

#### Tool: Worn Gathering Satchel

- **item_id:** `tool_forage_worn_satchel_t1`
- **display_name:** Worn Gathering Satchel
- **profession_role:** `forager`
- **tier:** 1
- **slot:** `satchel`
- **source:** Early quest
- **effects_core:**
  - Slight stack size bonuses for **herbs**, **mushrooms**, and **roots**.
- **effects_side:**
  - Cosmetic strap and bundle visible on model.
- **notes:**
  - Early message: “If you like plants and mushrooms, this is your lane.”

---

### 4.2 Tier 2 – Lodge Forager / Woodworker Set

#### Tool: Lodge Herb Shears

- **item_id:** `tool_forage_lodge_herb_shears_t2`
- **display_name:** Lodge Herb Shears
- **profession_role:** `forager`
- **tier:** 2
- **slot:** `main_tool`
- **source:** Lodge “Herb Circle” questline
- **effects_core:**
  - Moderate `gather_yield_bonus` and chance for **extra rare** herb drops:
    - `whisperfern`, `ravencap_leaf`, `smokebloom_petals`
- **effects_side:**
  - Small chance to auto-add notes to Herb Codex entries when discovering new plants.
- **notes:**
  - Supports alchemy and cooking by feeding rare herbs.

#### Tool: Greatwood Mushroom Basket

- **item_id:** `tool_forage_mushroom_basket_t2`
- **display_name:** Greatwood Mushroom Basket
- **profession_role:** `forager`
- **tier:** 2
- **slot:** `offhand_tool` / `pack`
- **source:** Dungeon / Hollowroot side quest
- **effects_core:**
  - Higher `gather_chance_rare` on:
    - `embertruffle`, `red_vein_morel`, `blacktongue_chanterelle`, `ghostsail_mushroom`
- **effects_side:**
  - Slight reduction in chance to collect **poisonous junk** if you have a mushroom “fails” system.
- **notes:**
  - Essential piece for anyone focusing on mushroom-heavy alchemy and cooking.

---

### 4.3 Tier 3 – Woodworker & Trophy Maker Kit

#### Tool: Lodge Trophy Carver’s Set

- **item_id:** `tool_wood_trophy_carver_set_t3`
- **display_name:** Lodge Trophy Carver’s Set
- **profession_role:** `forager` / `woodworker`
- **tier:** 3
- **slot:** `main_tool`
- **source:** Trophy Hall / Lodge questline (86, B100)
- **effects_core:**
  - Enables crafting of **mounted trophy items** using:
    - `spec_ingr_heartwood_antler_core`
    - `spec_ingr_ward_bear_spine_shard`
    - `spec_ingr_howler_ear_fragment`
    - `spec_ingr_black_sap_eye_resin`
  - Slight material efficiency bonus when crafting Lodge decor.
- **effects_side:**
  - Minor `lodge_rep_bonus_small` with trophy hall NPCs.
- **notes:**
  - Bridges Hunts and Lodge interior decoration systems.

#### Tool: Emberwild Fixture Toolkit

- **item_id:** `tool_wood_emberwild_fixture_kit_t3`
- **display_name:** Emberwild Fixture Toolkit
- **profession_role:** `woodworker`
- **tier:** 3
- **slot:** `pack`
- **source:** Late combined professions quest (Cook + Hunter + Woodworker + Alchemist)
- **effects_core:**
  - Allows crafting of **functional lodge fixtures** that:
    - Slightly boost Ember Pot output
    - Increase seating/feast capacity
    - Provide small profession XP auras within the lodge
- **effects_side:**
  - Cosmetic: visible extra tool rolls around belt/back.
- **notes:**
  - End-of-Greatwood “house builder” kit; strongly Lodge-centric.

---

## 5. Profession Sets & Synergy

Beyond individual tools, we define a few **named sets** that give small set bonuses.

### 5.1 Set: First Circle Hunter

- **Pieces:**
  - `tool_hunter_carving_knife_t2`
  - `tool_hunter_track_cord_t2`
  - Any hunter satchel (`tool_hunter_field_satchel_t1` or future T2)
- **Set Bonus (2 pcs):**
  - Small `specialty_drop_chance_small` on any Greatwood beast.
- **Set Bonus (3 pcs):**
  - Tiny chance for `extra_generic_meat` (e.g. +1 `stringy_game_meat`) on successful butchery.
- **Notes:**
  - Simple, early set that makes “I geared for hunting” a visible choice.

---

### 5.2 Set: Lodge Chef of Greatwood

- **Pieces:**
  - `tool_cook_lodge_iron_pot_t2`
  - `tool_cook_ember_ladle_t2`
  - `gear_cook_stained_camp_apron_t1` or future upgraded apron
- **Set Bonus (2 pcs):**
  - Slight `cook_quality_bonus` for all Greatwood stews from 52.
- **Set Bonus (3 pcs):**
  - Very small chance to produce **one extra portion** of a stew or roast.
- **Notes:**
  - Encourages people to fully lean into the chef role.

---

### 5.3 Set: Ward Alchemist

- **Pieces:**
  - `tool_alch_lodge_alembic_t2`
  - `tool_alch_wardstone_strainer_t2`
  - `tool_alch_lodge_crucible_t3`
- **Set Bonus (2 pcs):**
  - Small reduction in negative side effects on non-Black-Sap ward brews.
- **Set Bonus (3 pcs):**
  - Slight `res_corruption_small` aura around the alchemist while brewing.
- **Notes:**
  - Thematically ties the alchemist tightly to Wardstone Hill & Hollowroot.

---

### 5.4 Set: Hollowroot Expeditionary

- **Pieces:**
  - `tool_forage_mushroom_basket_t2`
  - `tool_forage_lodge_herb_shears_t2`
  - Any Hollowroot-capable profession trinket (Cook or Alchemist)
- **Set Bonus (2 pcs):**
  - Small bonus to **rare Hollowroot drops**:
    - `hollowroot_core_chunk`, `hollowroot_resin`, `spec_ingr_hollowroot_heart_fiber`
- **Set Bonus (3 pcs):**
  - Mild `res_corruption_small` when inside Hollowroot pockets.
- **Notes:**
  - Aligns foragers with Hollowroot-themed content loops.

---

## Integration Notes

### With Ingredients & Recipes (51, 52, 53, 55, 58)

- All tools that mention specific ingredients must reference IDs defined in 51/55.
- Recipe docs (52, 53) note when certain tools:
  - Improve yield/duration
  - Unlock variants
- Alchemy doc (58) references when:
  - Alembic/Crucible is required
  - Black-Sap tools reduce (or increase) side effects

### With Hunts & Contracts (B115–B121)

- Each signature Hunt should:
  - List the **profession tools** that particularly benefit from that Hunt.
  - Offer at least one tool or set piece in its reward track.
- Contracts:
  - Use profession gear as rewards and as “soft requirements” for higher tiers.

### With Lodge & Social Systems (56, 64, 85, 86, B100)

- Tools like the Ember Ladle, Ember Pot Stone, and Fixture Toolkit:
  - Directly affect Lodge dishes, feasts, and fixtures.
- Trophy Carver sets:
  - Turn specialty ingredients into long-term Lodge trophies.

---

## Summary

By the end of Greatwood 1–20, a player should be able to say:

- “I’m the **Hunter** – I bring back the right cuts and trophies.”
- “I’m the **Cook** – I turn those into feasts and travel food.”
- “I’m the **Alchemist** – I keep us alive when the wards fail or the fire gets too close.”
- “I’m the **Forager / Woodworker** – I keep the Lodge stocked, warm, and decorated.”

And all of that ties cleanly into:

- Ingredient taxonomy (51)
- Cooking grids (52–53)
- Specialty ingredients (55)
- Intro alchemy (58)
- Hunts, Lodge systems, and trophies.

