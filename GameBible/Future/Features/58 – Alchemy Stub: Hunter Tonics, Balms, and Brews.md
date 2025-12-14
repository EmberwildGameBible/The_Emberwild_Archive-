# 58 – Intro Alchemy Grid (Greatwood 1–20)

## Purpose

Define the **first full layer of alchemy** for Greatwood, tightly bound to:

- Ingredient taxonomy (51)
- Cooking spines (52–53)
- Hunt / corruption / ward systems (1.4 Part 5, B103+ hunts, B143 relics)

This file answers:

- Which **potions, tonics, oils, and salves** exist in Greatwood 1–20?
- What do they do, and how do they differ from cooked food?
- How do early alchemists progress from “camp mixtures” to “serious ward brews”?
- How do these brews hook into:
  - Wardstones
  - Corruption
  - Fire / burn-scar content
  - Hunts and lodges

This is a **design reference** doc.  
Implementation lives in future Lua data modules:

- `Alchemy_Reagents_Greatwood.lua`
- `Alchemy_Brews_Greatwood.lua`

---

## Design Pillars

1. **Different from cooking, not just bottled food**
   - Food = sustain and long-duration, low-friction buffs.
   - Alchemy = **sharper**, riskier, more situational.
   - Many brews have **side effects** or tradeoffs.

2. **Reagents feel like a map of the world**
   - Glowcaps, Hollowroot, Ashcurl, Black Sap, Wardstone crusts, etc.
   - When you pick up a weird mushroom or gland, it should scream “alchemy”.

3. **Low failure, high learning**
   - Intro alchemy has **very few true failures**, but many weak or “off” brews.
   - Skill increases **quality, duration, side-effects control**, not just unlock counts.

4. **Thematic: ward, rot, and fire**
   - Greatwood alchemy, at this band, leans on:
     - Corruption resistance, fire resistance, stamina, and clarity.
     - Bit of vision/sense manipulation via mushrooms and herbs.

---

## Progression Bands (Alchemy Skill 1–20)

Rough, tunable tiers:

- **Skill 1–4: Field Mixes & Simple Tonics**
  - Bitterpine teas, basic poultices, minor regen/stamina brews.
  - Low-risk, widely usable, cheap reagents.

- **Skill 5–10: Ward & Elemental Basics**
  - First real corruption / fire resistance tonics.
  - Glowcap, Ashcurl, Whisperfern, Wardstone brackets become core.

- **Skill 11–16: Hollowroot & Black Sap**
  - Stronger corruption tools, Hollowroot fortifiers.
  - Black Sap shows up as a dangerous but powerful line.

- **Skill 17–20: Signature Brews & Campaign Prep**
  - Hunt-tied brews (Howler Warbrew, Ragged King tonics), group support brews.
  - High reagent cost, strong identity, careful side effects.

---

## Reagent Taxonomy (Greatwood 1–20)

> Reagents are “alchemical faces” of ingredients from 51.  
> Many are 1:1 with raw items, but some are refined forms.

### Base Reagents (solvents / carriers)

- `river_herb_infusion` – Simple herbal water; low power, safe.
- `hollowroot_tonic_base` – Thick, bitter base from Hollowroot; stabilizes corruption-facing brews.
- `bone_broth_thick` – Used for heavier, body-focused tonics and “drinkable salves”.
- `ashwater_brine` – Salty, mineral-rich carrier tied to fire and scars.
- `glowcap_reduction` – Reduced Glowcap syrup, faintly luminous.

### Core Reagents (primary effect drivers)

- `bitterpine_needle` – Stamina/focus tilt; harsh but predictable.
- `glowcap` – Low-level corruption & darkness interactions.
- `whisperfern` – Stronger corruption/ward alignment.
- `ashcurl` – Fire resistance, heat tolerance, slight agitation.
- `hollowroot_core_chunk` – Fortification, anchoring, heavier debuff risk.
- `hollowroot_resin` – Sticky binding, strong corruption interactions.
- `ravencap_leaf` – Poison/bleed vector, antidote hooks.
- `nightglass_berries` – Subtle sense-shifting, ward-thin vibes.
- `wardstone_bracket` – Ward-aligned fungal growth, defensive lean.
- `wardstone_crust_flake` – Direct wardline resonance, strong but touchy.
- `black_sap_nodule` – Raw corruption reagent; extremely dangerous.
- `black_sap_reduction` – Concentrated Black Sap; used sparingly.

### Modifiers & Catalysts

- `lowlight_clover` – Gentle luck/crit/awareness nudge.
- `thornmint` – Aggressive movement/stamina tweak, “edge” feeling.
- `smokebloom_petals` – Smoke, fire, and scent interaction.
- `emberleaf` – Heat, warmth; pushed toward fire resistance or aggression.
- `wandersage_bundle` – Rounding, stabilizing, “makes it behave”.

---

## Brew Schema

Each brew is defined with:

- **brew_id** – canonical internal ID (`alch_*`)
- **display_name** – player-facing name
- **tier** – recommended skill band (1–20)
- **station** – where it’s crafted:
  - `field_kit_basic`, `lodge_alembic`, `lodge_crucible`
- **category** – functional group:
  - `tonic`, `potion`, `salve`, `oil`, `tincture`, `elixir`, `bomb`
- **reagents_core** – exact reagents/ingredients required (51 IDs + refined forms)
- **reagents_flex** – optional modifiers / “seasonings”
- **output_item_id** – the potion item
- **effects** – intended mechanical impact (tags)
- **duration_profile** – `very_short`, `short`, `medium`, `long`
- **side_effects** – optional downsides / quirks
- **notes** – design + narrative

Implementation detail:  
Recipes live in an Alchemy module; buff templates live in a shared effect data layer.

---

## 1. Field Mixes & Simple Tonics (Skill 1–4)

### 1.1 – Bitterpine Stamina Draught

- **brew_id:** `alch_bitterpine_stamina_draught`
- **display_name:** Bitterpine Stamina Draught
- **tier:** 1–2
- **station:** `field_kit_basic` or `lodge_alembic`
- **category:** `tonic`
- **reagents_core:**
  - `bitterpine_needle`
  - `river_herb_infusion`
- **reagents_flex:**
  - Optional: `wandersage_bundle` for a smoother variant (longer duration, slightly weaker peak)
- **output_item_id:** `brew_bitterpine_stamina_draught`
- **effects:**
  - `stamina_regen_small`
- **duration_profile:** `short`
- **side_effects:**
  - Very minor “bitter aftertaste” flavor only; no mechanical downside at low alchemy skill.
- **notes:**
  - This is **day-one alchemy**: cheap, safe, and easy.
  - Should reinforce that alchemy can give you sharper, quicker stamina tools than food.

---

### 1.2 – Simple Mending Poultice

- **brew_id:** `alch_simple_mending_poultice`
- **display_name:** Simple Mending Poultice
- **tier:** 1–3
- **station:** `field_kit_basic`
- **category:** `salve`
- **reagents_core:**
  - `mossy_tongue`
  - `stonepotato` mash (small, processed)
  - `river_herb_infusion`
- **reagents_flex:**
  - Optional: `bitterpine_needle` (tiny) for slightly faster onset
- **output_item_id:** `salve_simple_mending_poultice`
- **effects:**
  - Small, **instant** `hp_flat_small`
  - Very short `hp_regen_very_small`
- **duration_profile:** `very_short`
- **side_effects:**
  - None beyond flavor text (“itching under bandages”).
- **notes:**
  - Acts as an early “combat heal” alternative to food, but with modest numbers.

---

### 1.3 – Glowcap Field Draught

- **brew_id:** `alch_glowcap_field_draught`
- **display_name:** Glowcap Field Draught
- **tier:** 3–4
- **station:** `field_kit_basic`
- **category:** `tonic`
- **reagents_core:**
  - `glowcap`
  - `glowcap_reduction`
- **reagents_flex:**
  - Optional: `lowlight_clover`
- **output_item_id:** `brew_glowcap_field_draught`
- **effects:**
  - Very small `res_corruption_very_small`
  - Small “low-light comfort” visual/effects
- **duration_profile:** `short`
- **side_effects:**
  - At very low alchemy skill, occasional slight visual flicker (purely cosmetic).
- **notes:**
  - Introductory corruption-adjacent brew; weaker than later tonics but thematic.

---

### 1.4 – Ashcurl Warmth Tincture

- **brew_id:** `alch_ashcurl_warmth_tincture`
- **display_name:** Ashcurl Warmth Tincture
- **tier:** 3–4
- **station:** `field_kit_basic`
- **category:** `tincture`
- **reagents_core:**
  - `ashcurl`
  - `ashwater_brine`
- **reagents_flex:**
  - Optional: `emberleaf`
- **output_item_id:** `brew_ashcurl_warmth_tincture`
- **effects:**
  - Very small `res_cold_small`
  - Mild `hp_regen_very_small`
- **duration_profile:** `medium`
- **side_effects:**
  - Slight “heat rush” visual effect when first consumed.
- **notes:**
  - Pairs nicely with cold pockets and rain-heavy runs.
  - Sets up the idea that Ashcurl is “heat/ward” facing, not just fire.

---

## 2. Ward & Elemental Basics (Skill 5–10)

### 2.1 – Whisperfern Minor Ward Draught

- **brew_id:** `alch_whisperfern_minor_ward_draught`
- **display_name:** Whisperfern Minor Ward Draught
- **tier:** 5–6
- **station:** `lodge_alembic`
- **category:** `tonic`
- **reagents_core:**
  - `whisperfern`
  - `river_herb_infusion`
- **reagents_flex:**
  - Optional: `glowcap`
- **output_item_id:** `brew_whisperfern_minor_ward_draught`
- **effects:**
  - `res_corruption_small`
- **duration_profile:** `medium`
- **side_effects:**
  - Slight feeling of pressure in ears, as if under a ward dome.
- **notes:**
  - This is the **first proper “I am going near corruption” bottle**.
  - Mechanically stronger than Glowcap Field Draught.

---

### 2.2 – Wardstone Skin Tonic

- **brew_id:** `alch_wardstone_skin_tonic`
- **display_name:** Wardstone Skin Tonic
- **tier:** 6–7
- **station:** `lodge_alembic` or `lodge_crucible`
- **category:** `tonic`
- **reagents_core:**
  - `wardstone_bracket`
  - `wardstone_crust_flake` (tiny)
  - `hollowroot_tonic_base`
- **reagents_flex:**
  - Optional: `bitterpine_needle` for a more “alert” feel
- **output_item_id:** `brew_wardstone_skin_tonic`
- **effects:**
  - `res_corruption_small`
  - Slight `res_magic_generic_small` (future tag)
- **duration_profile:** `medium`
- **side_effects:**
  - Brief, mild stiffness debuff at low skill (reduced dodge/turn speed for a few seconds).
- **notes:**
  - Tied thematically to Wardstone Hill and warden NPCs.
  - Stronger, more stable than Whisperfern draught but with a small nuisance side effect.

---

### 2.3 – Ashcurl Fireguard Tonic

- **brew_id:** `alch_ashcurl_fireguard_tonic`
- **display_name:** Ashcurl Fireguard Tonic
- **tier:** 7–8
- **station:** `lodge_alembic`
- **category:** `tonic`
- **reagents_core:**
  - `ashcurl`
  - `ashwater_brine`
  - `emberleaf`
- **reagents_flex:**
  - Optional: `smokebloom_petals` for an upgraded variant
- **output_item_id:** `brew_ashcurl_fireguard_tonic`
- **effects:**
  - `res_fire_medium`
- **duration_profile:** `medium`
- **side_effects:**
  - Minor HP drain over first few seconds (burning throat, then fine).
- **notes:**
  - Should be the **standard fire-prep potion** for Greatwood burn-scar content.
  - Pairs with Ashstream Guard Pot (stew) for layered fire resilience.

---

### 2.4 – Ravencap Coagulant Vial

- **brew_id:** `alch_ravencap_coagulant_vial`
- **display_name:** Ravencap Coagulant Vial
- **tier:** 8–9
- **station:** `lodge_crucible`
- **category:** `potion`
- **reagents_core:**
  - `ravencap_leaf`
  - `hollowroot_tonic_base`
  - `bone_broth_thick`
- **reagents_flex:**
  - Optional: `bitterpine_extract`
- **output_item_id:** `brew_ravencap_coagulant_vial`
- **effects:**
  - Moderate `hp_regen_small` over time
  - Minor `res_bleed_small`
- **duration_profile:** `medium`
- **side_effects:**
  - Slightly reduced `move_speed` for a few seconds as body “thickens”.
- **notes:**
  - Thematically tied to bleed-based mobs and Hunts.
  - Telegraphed as “good against anything that likes to open you up.”

---

## 3. Hollowroot & Corruption Line (Skill 11–16)

### 3.1 – Hollowroot Fortifying Draught (Alchemy Version)

> Mirrors but is **stronger / more configurable** than the cooking-side Glowcap/Hollowroot brews.

- **brew_id:** `alch_hollowroot_fortifying_draught`
- **display_name:** Hollowroot Fortifying Draught
- **tier:** 11–13
- **station:** `lodge_crucible`
- **category:** `elixir`
- **reagents_core:**
  - `hollowroot_tonic_base`
  - `hollowroot_core_chunk`
  - `hollowroot_resin`
- **reagents_flex:**
  - Optional: `glowcap` or `whisperfern` for variant profiles
- **output_item_id:** `brew_hollowroot_fortifying_draught`
- **effects:**
  - `res_corruption_medium`
  - Small `hp_max_small` or `hp_regen_small` depending on variant
- **duration_profile:** `medium`
- **side_effects:**
  - At low skill, brief “heavy limbs” (tiny move_speed penalty on first ticks).
- **notes:**
  - This is the **workhorse corruption elixir** for serious Hollowroot delves.
  - Cooking food handles longer-term sustain; this handles sharper defensive windows.

---

### 3.2 – Lowlight Focus Vial

- **brew_id:** `alch_lowlight_focus_vial`
- **display_name:** Lowlight Focus Vial
- **tier:** 11–12
- **station:** `lodge_alembic`
- **category:** `potion`
- **reagents_core:**
  - `lowlight_clover`
  - `glowcap_reduction`
  - `river_herb_infusion`
- **reagents_flex:**
  - Optional: `nightglass_berries` (for risky focus variant)
- **output_item_id:** `brew_lowlight_focus_vial`
- **effects:**
  - Small `perception_small`
  - Very small `crit_chance_very_small`
- **duration_profile:** `short` to `medium`
- **side_effects:**
  - With nightglass: occasional brief dimming of peripheral vision.
- **notes:**
  - For scouts and ranged characters working in caves / Hollowroot pockets.

---

### 3.3 – Wardstone Anchor Oil

- **brew_id:** `alch_wardstone_anchor_oil`
- **display_name:** Wardstone Anchor Oil
- **tier:** 14–15
- **station:** `lodge_crucible`
- **category:** `oil`
- **reagents_core:**
  - `wardstone_crust_flake`
  - `wardstone_bracket`
  - `hollowroot_resin`
- **reagents_flex:**
  - Optional: `wandersage_bundle`
- **output_item_id:** `oil_wardstone_anchor`
- **effects:**
  - When applied to armor or ward equipment:
    - `res_corruption_small`
    - Slight `res_knockback_small` (anchor effect)
- **duration_profile:** `long` (equipment-bound until death/change)
- **side_effects:**
  - May **amplify** certain ward backlash events in niche edge cases (design hook).
- **notes:**
  - Core reagent for ward teams and advanced hunts.
  - Should appear in small, expensive quantities.

---

### 3.4 – Whisperglass Purge Tonic

- **brew_id:** `alch_whisperglass_purge_tonic`
- **display_name:** Whisperglass Purge Tonic
- **tier:** 13–15
- **station:** `lodge_crucible`
- **category:** `elixir`
- **reagents_core:**
  - `whisperfern`
  - `nightglass_berries`
  - `hollowroot_tonic_base`
- **reagents_flex:**
  - Optional: `glowcap`
- **output_item_id:** `brew_whisperglass_purge_tonic`
- **effects:**
  - Moderate `res_corruption_medium`
  - Small, immediate cleansing of low-stacks corruption debuffs
- **duration_profile:** `short` to `medium`
- **side_effects:**
  - Short “ringing” audio effect and brief screen desaturation.
- **notes:**
  - Designed as an **active cleanse tool**, distinct from slower food-based resist.

---

## 4. Black Sap Line (Risk / Reward, Skill 15–20)

### 4.1 – Black Sap Purge (Refined Alchemy Spec)

> This is the alchemy-side definition of the same brew referenced in cooking.  
> Cooking version is more “ritual stew”; this is the raw bottle form.

- **brew_id:** `alch_black_sap_purge`
- **display_name:** Black Sap Purge
- **tier:** 17–20
- **station:** `lodge_crucible`
- **category:** `elixir`
- **reagents_core:**
  - `black_sap_reduction`
  - `whisperfern`
  - `hollowroot_resin`
  - `glowcap_reduction`
- **reagents_flex:**
  - None; deliberately strict
- **output_item_id:** `brew_black_sap_purge`
- **effects:**
  - Strong `res_corruption_high` for a fixed window
  - Immediate purge of most low- and mid-tier corruption debuffs
- **duration_profile:** `short` to `medium` (strong peak, not long trivial uptime)
- **side_effects:**
  - Short but sharp `hp_flat_loss_small` on drink
  - Brief `move_speed_small_penalty`
- **notes:**
  - Signature “we are going straight into something awful” brew.
  - NPC alchemists should heavily warn about risks.

---

### 4.2 – Black Sap Insight Tincture (Experimental)

- **brew_id:** `alch_black_sap_insight_tincture`
- **display_name:** Black Sap Insight Tincture
- **tier:** 18–20
- **station:** `lodge_crucible`
- **category:** `tincture`
- **reagents_core:**
  - `black_sap_nodule`
  - `lowlight_clover`
  - `river_herb_infusion`
- **reagents_flex:**
  - Optional: `nightglass_berries` for more extreme variant
- **output_item_id:** `brew_black_sap_insight_tincture`
- **effects:**
  - Very small `perception_small`
  - Tiny `crit_chance_small`
- **duration_profile:** `short`
- **side_effects:**
  - Low chance of temporary self-applied small corruption stack.
- **notes:**
  - Risk line for players chasing performance in corruption-heavy content.
  - May be tuned erring on the side of “overscary” so only dedicated alchemists use it.

---

## 5. Hunt & Lodge Signature Brews (Skill 15–20)

These connect directly to the **Greatwood advanced cooking and hunts**.

### 5.1 – Howler’s Warbrew (Alchemy Variant)

- **brew_id:** `alch_howler_warbrew`
- **display_name:** Greatwood Howler Warbrew
- **tier:** 16–18
- **station:** `lodge_alembic`
- **category:** `tonic`
- **reagents_core:**
  - `howler_alpha_fang`
  - `bitterpine_extract`
  - `thornmint`
  - `river_herb_infusion`
- **reagents_flex:**
  - Optional: `lowlight_clover`
- **output_item_id:** `brew_howler_warbrew`
- **effects:**
  - `stamina_max_small`
  - `move_speed_small`
- **duration_profile:** `short` to `medium`
- **side_effects:**
  - Slight audio distortion for a few seconds (howl-like hum).
- **notes:**
  - Aggressive brew for mobile hunts and hit-and-run tactics.
  - Should pair tightly with the cooking version for full “Howler kit”.

---

### 5.2 – Ward-Bear Guard Draught

- **brew_id:** `alch_ward_bear_guard_draught`
- **display_name:** Ward-Bear Guard Draught
- **tier:** 15–17
- **station:** `lodge_crucible`
- **category:** `elixir`
- **reagents_core:**
  - `ward_bear_haunch` (small rendered essence)
  - `bone_broth_thick`
  - `wardstone_bracket`
- **reagents_flex:**
  - Optional: `wandersage_bundle`
- **output_item_id:** `brew_ward_bear_guard_draught`
- **effects:**
  - `hp_max_small`
  - Small `res_corruption_small`
- **duration_profile:** `medium`
- **side_effects:**
  - None beyond flavor text (“heavy chest, stubborn stance”).
- **notes:**
  - Defensive anchor brew for players who like to hold frontline vs corruption.

---

### 5.3 – Ragged King’s Quiet

- **brew_id:** `alch_ragged_king_quiet`
- **display_name:** Ragged King’s Quiet
- **tier:** 19–20
- **station:** `lodge_crucible`
- **category:** `potion`
- **reagents_core:**
  - `ragged_king_bone_shard`
  - `nightglass_berries`
  - `whisperfern`
- **reagents_flex:**
  - Optional: `glowcap`
- **output_item_id:** `brew_ragged_king_quiet`
- **effects:**
  - Strong but temporary `perception_small` and detection buffs vs “restless dead / echoes” style enemies.
- **duration_profile:** `short`
- **side_effects:**
  - After-effect fatigue: small `stamina_regen_penalty` once buff ends.
- **notes:**
  - A lore-heavy, niche-use brew; more “tool for a particular hunt” than general-use potion.
  - Can be a narrative reward for finishing the Ragged King arc.

---

## Integration Notes

### With 51 – Ingredient Taxonomy

- All reagents and brews in this file:
  - Use ingredient IDs from 51 as their **source**.
  - Refined reagents (e.g. `glowcap_reduction`, `bitterpine_extract`) are **crafting transforms** of the same items, not new world drops.
- Node and loot tables should:
  - Drop **base ingredients**, not finished reagents (with rare exceptions).
  - Let alchemy and cooking refine them into higher-value forms.

### With 52–53 – Cooking

- Some brews share names/roles with cooking-side items:
  - `Glowcap Tonic`, `Hollowroot Fortifying Draught`, `Howler Warbrew`, `Black Sap Purge`.
- Cooking versions:
  - Longer durations, more “comfortable”, tied to meals and lodge.
- Alchemy versions:
  - Shorter, sharper, more side effects, more portable.
- The UI should clearly show:
  - Food vs Brew categories
  - Shared icon elements for related recipes (same ingredient constellation).

### UI & Stations

- Alchemy UI can be split into:
  - **Field Kit** (tier 1–4): simple mixtures, tonics, poultices.
  - **Lodge Alembic** (tier 5–14): standard tonics and potions.
  - **Lodge Crucible** (tier 10+): elixirs, oils, Black Sap, and ward-level brews.
- Each brew should list:
  - Ingredients
  - Required station
  - Buff summary
  - Side effects clearly, so players feel informed about risk.

### Future Expansion

- Later regions add:
  - New reagent lines (frost, lightning, deep corruption, etc.).
  - New Black Sap-adjacent or entirely different corruption reagents.
- Greatwood remains the **introductory ward/corruption/fire curriculum**:
  - Player should leave Greatwood understanding:
    - “Food keeps you going. Brews let you **cheat** specific problems for a while.”

---

This gives you a full **Intro Alchemy Grid** for Greatwood 1–20 that:

- Re-uses the ingredient taxonomy (51),
- Lines up with the cooking spine (52–53),
- Hooks into signature hunts and ward/corruption themes,
- And establishes a clear design language for future regions’ alchemy.

