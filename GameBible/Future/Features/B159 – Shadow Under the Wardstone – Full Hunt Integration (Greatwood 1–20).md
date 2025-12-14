# B159 – Greatwood Hunts & Profession Loops (1–20)

---

## 0. PURPOSE & SCOPE

This chapter defines how **Greatwood’s major Hunts** plug directly into:

- **Cooking**
- **Alchemy**
- **Foraging / Node design**
- **Lodgecraft & Trophy systems**
- The **local player economy** (trading, prep, repeat runs)

It is the **bridge** between:

- Encounter design (B153–B158, B160)
- Loot & band logic (B151, B155)
- Profession frameworks (Core Profession chapters)

The goals:

1. Every Greatwood Hunt **feeds at least one profession loop**.
2. Profession loops feel:
   - Thematic (fungal recipes from Matron, ward brews from Ward-Bear, etc.)
   - Intuitively rewarding for players who prep and craft.
3. The **1–20 experience** in Greatwood shows:
   - “Professions matter” from early levels.
   - “Hunts and professions talk to each other.”

This file is **design-facing**:

- It names items, recipes, loops, and band gates.
- Implementation lives in:
  - Item data tables.
  - Recipe modules.
  - Hunt reward & pity scripts.

---

## 1. GREATWOOD PROFESSION OVERVIEW (1–20)

### 1.1 Professions Active in Greatwood

For the Greatwood 1–20 slice, we assume the following professions are available and relevant:

- **Cooking (Cook)**
  - Converts:
    - Meats.
    - Fungi.
    - Basic herbs.
  - Into:
    - Meals (long-duration buffs).
    - Snacks (short, strong bursts).
- **Alchemy (Alchemist)**
  - Converts:
    - Powders, saps, essences, spores, cores.
  - Into:
    - Tonics (defensive buffs).
    - Draughts (offensive buffs).
    - Detox / cleanse brews.

- **Foraging (Gatherer)**
  - Collects:
    - Herbs, fungi, roots, berries, sap nodules, ward dust.
  - Drives:
    - Supply for Cooking & Alchemy.
    - Some Lodgecraft and trophy materials.

- **Huntcraft / Lodgecraft (Artisan)**
  - Uses:
    - Trophies, cores, plates, fangs.
  - To:
    - Create Lodge décor.
    - Craft trinkets / charms tied to Hunts.

Other professions (smithing, tailoring, etc.) are present but **not primary focus** here. We reference them only when directly tied to Hunt loops.

### 1.2 Greatwood Profession Banding

For levels 1–20, profession “tiers” roughly map to:

- **Tier 1 (Novice)** – Player Levels 1–7 (Band A → early B)
- **Tier 2 (Apprentice)** – Player Levels 8–14 (late B → C)
- **Tier 3 (Journeyman)** – Player Levels 15–20 (late C → D)

Hunts in this chapter often unlock:

- Tier 2 and Tier 3 recipes.
- Small **sidegrades** usable earlier if ingredients are obtained.

---

## 2. INGREDIENT TAXONOMY – GREATWOOD 1–20

Below is a **taxonomy of key ingredients** specifically tied to Greatwood Hunts and their surrounding ecosystem.

### 2.1 Animal & Predator Ingredients

**Stag / Deer family:**

- `stag_haunch` – Prime leg cut; general-purpose roast / stew base.
- `young_stag_cut` – Leaner cuts; mid-tier dishes.
- `stag_hide_strip` – Used in:
  - Light armor.
  - Basic Lodge banners.
- `antler_fragment` / `sapstained_antler`
  - Trinket & Lodgecraft inputs.
  - Some alchemy charm recipes.

**Boar family:**

- `boar_shank`
- `boar_belly_strip`
- `stringy_game_meat` (shared with multiple beasts)
- `fat_render_chunk`
- `marrow_bone_piece`
- `boar_hide_patch`

Boar ingredients focus on:

- **Hearty, fat-rich meals** (stamina/regen).
- Tallow and fat for:
  - Simple alchemy bases.
  - Candles and Lodge lighting.

**Howler / Wolf family:**

- `howler_flank`
- `howler_rib_meat`
- `howler_pelt_tuft`
- `fang_chip`
- `howler_alpha_pelt`
- `howler_fang_alpha`
- `howler_flank_prime`
- `warded_howler_tooth` (rare / ward-touched drop)

Howler ingredients feed:

- High-satiety stews.
- Offensive and predator-focused alchemy.
- Trinkets that modify fear, threat, and mobility.

---

### 2.2 Fungal & Hollowroot Ingredients

From Hollowroot beasts, Matron, and fungal pockets:

- `hollowroot_core_chunk`
- `hollowroot_resin`
- `hollowroot_sporecap`
- `black_sap_nodule` (shared with Devourer)
- `mire_fungus`
- `dampcap`
- `hollowroot_spore_cluster`
- `matron_spore_cluster`
- `hollowroot_matron_core`
- `hollowroot_shell_plate`

Uses:

- Cooking:
  - Detox stews.
  - High-risk/high-reward “spiced” meals.
- Alchemy:
  - Detox draughts.
  - Spore-warding brews.
  - Potent DoT brews with Hollowroot flavor.
- Lodgecraft:
  - Containment displays and fungal décor.

---

### 2.3 Wardstone & Arcane Ingredients

From Ward-Bear Hunts and ward-related pockets:

- `wardstone_bear_plate`
- `wardstone_core_shard`
- `bearward_claw_fragment`
- `wardstone_crust_flake`
- `wardstone_bracket`
- `spectral_mote_faint`
- `shadow_essence_flicker`
- `warded_charm_cracked`

Uses:

- Alchemy:
  - Ward resistance brews.
  - Barrier-strengthening tonics.
- Lodgecraft:
  - Ward-bearing wall pieces.
  - Wardstone research annex objects.
- Trinkets:
  - Arcane/ward damage reduction.
  - Resistances vs control effects.

---

### 2.4 Corruption & Black-Sap Ingredients

From Black-Sap Devourer and corrupted pockets:

- `black_sap_nodule`
- `black_sap_growth`
- `blacksap_resin_clot` (Devourer-specific rare)
- `corrupted_hide_shard`
- `devourer_tooth_fragment`
- `devourer_heart_residue` (very rare)

Uses:

- Cooking:
  - Very risky “tainted” recipes giving powerful buffs with debuff side-effects.
- Alchemy:
  - Cleansing draughts that convert corruption into timed buffs.
  - Corruption resist brews.
- Lodge:
  - Black-sap containment / purification projects.

---

### 2.5 World-Drop, Relic, & Lore Ingredients

From world tables (B155) and Hunts:

- `recipe_scroll_hunters_bone_broth`
- `recipe_scroll_gw_game_stew`
- `recipe_scroll_hollowroot_stew`
- `recipe_scroll_boar_fat_feast`
- `recipe_scroll_matron_detox_feast`
- `recipe_scroll_wardbear_ironstew`
- `recipe_scroll_alpha_hunters_stew`

Relic-adjacent:

- `relic_splinter_woodheart`
- `relic_splinter_sapbound_antler`
- `relic_dust_faded_ward`
- `relic_splinter_hollowheart`
- `relic_splinter_shieldstone`
- `relic_splinter_echoing_fang`

Lore scraps:

- `lore_scrap_poachers_route`
- `lore_scrap_greatwood_legend`

These mostly serve:

- Recipe unlocks.
- Future Relic systems.
- Lodge library and lore displays.

---

## 3. HUNT → PROFESSION LOOP MAP (TOP LEVEL)

This section gives a high-level “loop map” for each major Hunt.

### 3.1 Elder Hollow Stag – Loop Snapshot

- **Core drops:**
  - `stag_haunch`, `young_stag_cut`, `antler_fragment`, `sapstained_antler`.
- **Primary loops:**
  - Cooking:
    - Early “Elder Stag Roast” and “Ceremonial Game Stew”.
  - Lodgecraft:
    - Antler-based décor, Elder trophy.
  - Foraging:
    - Ties to glade herbs & fungi (supporting stag recipes).

- **Loop example:**
  1. Player runs Elder Stag → gets `stag_haunch + antler_fragment`.
  2. Forager brings `forest_root_veg`, `softleaf_herb`.
  3. Cook crafts **Elder’s Supper**:
     - Mid-duration regen + stamina dish.
  4. Lodge uses `antler_fragment` + `lore_scrap_greatwood_legend`:
     - Unlock “Honor the Elder” project.

---

### 3.2 Ward-Bear – Loop Snapshot

- **Core drops:**
  - `wardstone_bear_plate`, `wardstone_core_shard`, `bearward_claw_fragment`.
- **Primary loops:**
  - Alchemy:
    - Wardbreaker / ward-resist tonics.
  - Lodgecraft:
    - Ward-Bear shell project; ward décor.
  - Trinkets:
    - `trinket_wardbear_heartward`.

- **Loop example:**
  1. Player runs Ward-Bear → gets `wardstone_bear_plate`.
  2. Forager gathers `glowward_moss` from ward pockets.
  3. Alchemist crafts **Wardbreaker Tincture**:
     - Damage vs shielded targets + reflect reduction.
  4. Lodge invests `wardstone_core_shard`:
     - Increases ambient ward safety for region, minor buff vs ward damage.

---

### 3.3 Black-Sap Devourer – Loop Snapshot

- **Core drops:**
  - `blacksap_resin_clot`, `corrupted_hide_shard`, `devourer_tooth_fragment`.
- **Primary loops:**
  - Alchemy:
    - Corruption cleanse & corruption-boosting brews.
  - Cooking:
    - Risky dishes with strong buffs + mild corruption.
  - Lodge:
    - “Seal the Black-Sap Veins” project.

- **Loop example:**
  1. Player runs Devourer → gets `blacksap_resin_clot`.
  2. Forager brings `purifier_bloom` herb.
  3. Alchemist crafts **Sap Cleanser Draught**:
     - Cleanses corruption stacks, small regen.
  4. Alternatively: use smaller `black_sap_nodule` in dish:
     - **Black-Sap Hotpot** – big offensive buff but small corruption DoT.
  5. Lodge uses `devourer_tooth_fragment + black_sap_resin_clot`:
     - In “Seal the Veins” progress, reducing corruption events.

---

### 3.4 Hollowroot Matron – Loop Snapshot

- **Core drops:**
  - `hollowroot_matron_core`, `hollowroot_shell_plate`, `matron_spore_cluster`.
- **Primary loops:**
  - Cooking:
    - Detox feasts, spore-resist meals.
  - Alchemy:
    - Spore Sickness cleansers, fungal DoT brews.
  - Lodge:
    - Containment wing.

- **Loop example:**
  1. Player runs Matron → gets `matron_spore_cluster`.
  2. Forager brings `dampcap`, `mire_fungus`.
  3. Cook crafts **Matron Detox Feast**:
     - Major group detox + regen buff.
  4. Alchemist turns `hollowroot_matron_core` into:
     - **Overgrowth Phial** – used later in advanced content.
  5. Lodge invests `hollowroot_shell_plate`:
     - Builds containment displays and region-wide spore mitigation.

---

### 3.5 Greatwood Howler – Loop Snapshot

- **Core drops:**
  - `howler_alpha_pelt`, `howler_fang_alpha`, `howler_flank_prime`.
- **Primary loops:**
  - Cooking:
    - Hunter’s stews and mobility-focused meals.
  - Trinkets:
    - Fear/stagger-resistant charms.
  - Lodge:
    - “Songs of the Pack” project.

- **Loop example:**
  1. Player runs Howler → gets `howler_flank_prime`.
  2. Forager brings `wildroot_tuber`, `brambleberry`.
  3. Cook crafts **Alpha Hunter’s Stew**:
     - Stamina + small bleed mitigation.
  4. Lodge uses `howler_alpha_pelt + howler_fang_alpha`:
     - Unlock pack-themed Lodge décor + small party buff in Hunts.

---

## 4. COOKING LOOPS – GREATWOOD HUNTS

This section defines **concrete recipe arcs** that start or are strongly powered by Greatwood Hunts.

### 4.1 Entry-Level Recipes (Tier 1, Levels 1–7)

Even before Hunts, players get:

- **Basic Stag Roast**
  - Inputs:
    - `stag_haunch` or `young_stag_cut`
    - `forest_root_veg`
  - Output:
    - Modest regen.
- **Boar Fat Skillet**
  - `boar_belly_strip` + `fat_render_chunk` + simple seasoning.
  - Output:
    - Short-duration stamina boost.

These recipes scale weakly into Hunts, but:

- Provide a baseline “food is good” expectation.

---

### 4.2 Hunt-Enabled Recipes (Tier 2, Levels 8–14)

These recipes are **unlocked or heavily boosted by Hunt ingredients**.

#### 4.2.1 Elder Hollow Stag Recipes

1. **Elder’s Supper**
   - Unlock: First kill of Elder Hollow Stag.
   - Inputs:
     - 1x `stag_haunch`
     - 1x `forest_root_veg`
     - 1x `softleaf_herb`
   - Effects:
     - Long-duration moderate regen.
     - Small stamina bonus.
   - Ideal use:
     - General-purpose buff for most Band B–C Hunts.

2. **Ceremonial Bone Broth**
   - Learn via `recipe_scroll_hunters_bone_broth` (drops as world/uncommon).
   - Inputs:
     - `marrow_bone_piece` (from boar / stag)
     - `stag_hide_strip` (for gelatin)
   - Effects:
     - Small, persistent regen.
     - Slight boost to **max HP** or equivalent.

---

#### 4.2.2 Greatwood Howler Recipes

1. **Greatwood Hunter’s Stew**
   - Unlock: First Greatwood Howler Hunt completion or via scroll.
   - Inputs:
     - `howler_flank`
     - `wildroot_tuber`
     - `forest_marrow_herb`
   - Effects:
     - Moderate regen.
     - Slight bleed resistance / faster bleed decay.

2. **Alpha Hunter’s Stew** (`recipe_scroll_alpha_hunters_stew`)
   - Inputs:
     - `howler_flank_prime`
     - `wildroot_tuber`
     - `brambleberry`
   - Effects:
     - Strong regen over time.
     - Increased stamina.
     - Small bleed mitigation.
   - Ideal for:
     - Long, attrition-based fights (Howler itself, Matron, Devourer).

---

#### 4.2.3 Ward-Bear Recipes

1. **Wardbear Ironstew** (`recipe_scroll_wardbear_ironstew`)
   - Tier 2.5 (border of Tier 3).
   - Inputs:
     - `boar_shank` or `stag_haunch`
     - `wardstone_bear_plate` (scraped shavings or infused)
     - `ironroot_veg`
   - Effects:
     - Increased physical + ward/arcane mitigation.
     - Slightly slower movement (it’s heavy).
   - Use:
     - Ward-Bear, Devourer, future Wardstone content.

2. **Stonehide Skillet**
   - Inputs:
     - `boar_belly_strip`
     - `wardstone_crust_flake`
   - Effects:
     - Short-duration buff giving:
       - Minor damage reduction.
       - Slight reflect vs basic physical hits.
   - Risk:
     - Possibly small ward vulnerability as side-effect (optional design lever).

---

#### 4.2.4 Hollowroot Matron Recipes

1. **Hollowroot Stew** (`recipe_scroll_hollowroot_stew`)
   - Inputs:
     - `tainted_game_meat` or `stringy_game_meat`
     - `hollowroot_sporecap`
     - `mire_fungus`
   - Effects:
     - Mixed buff:
       - Slight damage increase.
       - Mild DoT self-debuff if over-consumed.
   - Idea:
     - “Tasting the infection” – flavorful but not ideal for careful players.

2. **Matron Detox Feast** (`recipe_scroll_matron_detox_feast`)
   - Tier 3 group feast recipe.
   - Inputs:
     - 2x `matron_spore_cluster`
     - `dampcap`
     - `forest_veg_bundle`
   - Effects (group-wide):
     - Immediate 2–3 stack reduction of Spore Sickness.
     - Strong regen for a short period.
     - Slight increase in spore resistance for the feast duration.
   - Use:
     - Hollowroot Matron Hunt.
     - Any spore-heavy pocket.

---

#### 4.2.5 Black-Sap Devourer Recipes

1. **Black-Sap Hotpot**
   - Inputs:
     - `stringy_game_meat`
     - `black_sap_nodule`
     - `bitterroot_herb`
   - Effects:
     - Strong offensive buff:
       - Increased damage.
       - Harder hits vs corrupted targets.
     - Corruption side-effect:
       - Low corruption DoT.
   - Intended for:
     - Players who trust their healers and cleansing.

2. **Purified Sap Stew** (late Tier 2 / early Tier 3)
   - Inputs:
     - 1x `blacksap_resin_clot`
     - 2x `purifier_bloom`
   - Effects:
     - Remove a chunk of corruption stacks.
     - Medium regen.
   - tied strongly to alchemy as well (shared design space).

---

## 5. ALCHEMY LOOPS – GREATWOOD HUNTS

Alchemy is where **Hunts shine hardest**. Each major Hunt unlocks targeted brews.

### 5.1 Elder Stag & Early Hunts

- **Forest Guard Tincture**
  - Inputs:
    - `antler_fragment`
    - `softleaf_herb`
  - Effects:
    - Mild damage reduction vs beasts.
    - Slight stamina regen.
  - Unlock:
    - After first Elder Stag completion.

- **Hunter’s Focus Draught**
  - Inputs:
    - `fang_chip`
    - `brightcap_herb`
  - Effects:
    - Small crit chance or precision buff.
  - Source:
    - General Greatwood, not specific Hunt.

---

### 5.2 Ward-Bear Alchemy

- **Wardbreaker Tincture**
  - Inputs:
    - `wardstone_core_shard`
    - `glowward_moss`
  - Effects:
    - 10–20% increased damage vs targets with Ward Shield / magical barriers.
    - Reduced reflect damage taken.
  - Duration:
    - Moderate (enough for a shield-heavy phase).

- **Wardsense Draught**
  - Inputs:
    - `spectral_mote_faint`
    - `forest_marrow_herb`
  - Effects:
    - Improved clarity of ward telegraphs:
      - Extra outlines.
      - Longer pre-cast cues (design-side).
    - Minor ward/arcane resist.

- **Stabilizing Phial**
  - Inputs:
    - `wardstone_crust_flake`
    - `purifier_bloom`
  - Usage:
    - Thrown at a Cracked Pillar:
      - Pauses uncontrolled nova behavior.
      - Or converts a chaotic pillar into a stable one for a short time.

---

### 5.3 Hollowroot Matron Alchemy

- **Anti-Spore Tincture**
  - Inputs:
    - `hollowroot_sporecap`
    - `dampcap`
  - Effects:
    - Reduces Spore Sickness stack gain by X% for Y seconds.
  - Great for:
    - Preempting spore-heavy phases.

- **Detox Draught**
  - Inputs:
    - `matron_spore_cluster`
    - `purifier_bloom`
  - Effects:
    - Immediately removes N stacks of Spore Sickness.
    - Slight regen penalty afterward (body “crashes” a bit).
  - Rare but powerful; ideal for Matron.

- **Overgrowth Phial**
  - Inputs:
    - `hollowroot_matron_core`
    - `black_sap_nodule` (optional)
  - Effects:
    - Used in advanced content:
      - Creates temporary fungal zones under player control.
      - Or interacts with later regions’ systems.
  - For Greatwood 1–20:
    - Largely a “future-looking” item and high-value trade good.

---

### 5.4 Black-Sap Devourer Alchemy

- **Sap Cleanser Draught**
  - Inputs:
    - `blacksap_resin_clot`
    - `purifier_bloom`
  - Effects:
    - Cleanses corruption stacks.
    - Grants small anti-corruption buff for a short time.

- **Corrupted Edge Tonic**
  - Inputs:
    - `black_sap_nodule`
    - `fang_chip`
  - Effects:
    - Small damage buff with a chance to apply a low-level corruption DoT to enemies.
  - Risk:
    - Could increase vulnerability to corruption if overused (tuning lever).

---

### 5.5 Greatwood Howler Alchemy

- **Anti-Bleed Draught**
  - Inputs:
    - `howler_fang_alpha` (shavings)
    - `forestroot_bark`
  - Effects:
    - Less damage from bleed effects.
    - Or faster decay of existing bleeds.

- **Focus Tincture**
  - Inputs:
    - `howler_pelt_tuft`
    - `brightcap_herb`
  - Effects:
    - Reduced duration of fear/stagger.
    - Minor concentration boost (cast/channel protection).

---

## 6. FORAGING & NODE LOOPS AROUND HUNTS

Foraging should **echo the Hunts**:

- Each Hunt pocket has **signature foraging nodes**.

### 6.1 Elder Stag Pocket Foraging

Pocket: `POCKET_ELDER_HOLLOW_GLADE`

Nodes:

- `softleaf_herb` – regen and mild defensive properties.
- `forest_root_veg` – base root vegetable.
- `elderbloom_flower` – rare; used in ceremonial recipes.

Loop:

- Elder Stag Hunt + Elder glade foraging → best early regen food.

---

### 6.2 Ward-Bear Pocket Foraging

Pocket: `POCKET_WARDEN_GLADE`

Nodes:

- `glowward_moss` – glows faintly near pillars.
- `ward_dust_deposit` – scrapings from old wardlines.
- `ironroot_veg` – dense, tough root.

Loop:

- Ward-Bear + ward foraging → ward-resist food & brews.

---

### 6.3 Black-Sap Devourer Pocket Foraging

Pocket: `POCKET_BLK_SAP_GROVE` (name flexible)

Nodes:

- `purifier_bloom` – extremely useful for cleanse recipes.
- `sap-scarred_bark` – component for some alchemy and Lodgecraft.
- `shadowroot_tuber` – riskier cooking component.

Loop:

- Devourer + purifier foraging → corruption management.

---

### 6.4 Hollowroot Matron Pocket Foraging

Pocket: `POCKET_HOLLOWROOT_NEST`

Nodes:

- `dampcap`
- `mire_fungus`
- `mycelium_web` – fibrous fungal mass for Lodgecraft and some alchemy.

Loop:

- Matron + fungal harvesting → spore-focused food/brews and Lodge containment décor.

---

### 6.5 Greatwood Howler Pocket Foraging

Pocket: `POCKET_HOWLER_DEN`

Nodes:

- `wildroot_tuber`
- `brambleberry`
- `predator_mint` – herb that sharpens senses (used in some DPS/focus brews).

Loop:

- Howler + predator herbs → stamina/bleed/awareness support for fights.

---

## 7. LODGECRAFT & TROPHY LOOPS

Each Hunt has at least **one Lodgecraft project** and some smaller décor items.

### 7.1 Elder Hollow Stag

Project: **Honor the Elder**

- Inputs:
  - `antler_fragment`, `sapstained_antler`, stag pelts.
  - Optional: `lore_scrap_greatwood_legend`.
- Outputs:
  - Feature wall with Elder antlers.
  - Minor Lodge buff: baseline regen or stamina.

---

### 7.2 Ward-Bear

Project: **Reforged Ward-Bear Shell**

- Inputs:
  - `wardstone_bear_plate`, `wardstone_core_shard`, `bearward_claw_fragment`.
- Outputs:
  - Ward-Bear stone mask & plate wall.
  - Minor Lodge buff: ward/arcane resistance.

---

### 7.3 Black-Sap Devourer

Project: **Seal the Black-Sap Veins**

- Inputs:
  - `blacksap_resin_clot`, `devourer_tooth_fragment`, `sap-scarred_bark`.
- Outputs:
  - Purified barrels and displays in Lodge.
  - Slightly fewer corruption pockets in open world.

---

### 7.4 Hollowroot Matron

Project: **Contain Hollowroot Spread**

- Inputs:
  - `hollowroot_matron_core`, `hollowroot_shell_plate`, `mycelium_web`.
- Outputs:
  - Containment wing with fungal terrariums.
  - Minor Lodge buff: reduced spore effect severity.

---

### 7.5 Greatwood Howler

Project: **Songs of the Pack**

- Inputs:
  - `howler_alpha_pelt`, `howler_fang_alpha`, `howler_pelt_tuft`.
- Outputs:
  - Pack banner wall and totems.
  - Small group buff in Hunts (e.g., party-wide stamina or morale buff).

---

## 8. ECONOMY & PLAYER BEHAVIOR

### 8.1 Roles in Greatwood Economy

Players naturally pick up identity roles:

- **Hunters** – run Hunts, bring back rare ingredients & trophies.
- **Cooks** – turn meat & fungus into meals/feasts.
- **Alchemists** – convert rare reagents into brews & tonics.
- **Foragers** – supply herbs, roots, fungi to both Cook & Alchemist.
- **Lodge-Focused** – invest in projects, care about visual progression.

Hunts are designed so:

- A Hunter without professions still **contributes seriously** by selling:
  - Matron cores.
  - Wardstone plates.
  - Alpha pelts.
- A Cook/Alchemist who doesn’t Hunt:
  - Still needs to interact with Hunters for rare reagents.

---

### 8.2 Price Signals & Demand

Early Greatwood (1–10):

- Highest demand:
  - Basic food.
  - Low-tier healing brews.
- Hunt drops are mostly:
  - Single-use upgrades or Lodge materials.

Mid Greatwood (8–16):

- Strong demand for:
  - Anti-bleed, anti-corruption, anti-spore brews.
  - Ward-bear stew and similar “defense meals.”
- Hunt drops from majors become:
  - High-value trade goods (Matron cores, Wardstone shards, Black-sap clots).

Late Greatwood (16–20):

- Most players:
  - Chasing full Lodge projects.
  - Running Hunts for:
    - Chase recipes.
    - Rare trinket components.
- Market centers on:
  - Feasts.
  - High-tier tonics.
  - Relic-splinter-adjacent items.

---

## 9. BAND & RECIPE GATING

Each recipe should have **explicit band expectations**:

- **Band A**: Mostly generic non-Hunt recipes.
- **Band B**:
  - First Hunt-enabled recipes (Howler, early Stag).
- **Band C**:
  - More specialized Hunt recipes (Ward-Bear, Devourer, early Matron).
- **Band D**:
  - High-end feasts and tonics (Matron Detox Feast, Wardbear Ironstew, advanced Devourer cleanse).

Example gating:

- `recipe_scroll_hunters_bone_broth`: usable at low cooking level, but scroll often found from early Greatwood content including minor Hunts.
- `recipe_scroll_matron_detox_feast`: requires:
  - Cooking Tier 3.
  - Some Matron kill count.
  - A Lodge project threshold completed (e.g., partial Containment).

This ensures:

- Players can’t trivialize Matron the first time they see her.
- But repeated Hunts + Lodge progress unlock powerful tools as a **reward**.

---

## 10. IMPLEMENTATION NOTES (DATA & TAGS)

This section is for future data implementers.

### 10.1 Recommended Tags

Each ingredient should have tags like:

- `tags = { "meat", "stag", "greatwood", "early", "band_b" }`
- `tags = { "fungus", "hollowroot", "spore", "detox", "band_c" }`
- `tags = { "wardstone", "arcane", "defense", "hunt", "band_c" }`
- `tags = { "corruption", "black_sap", "dangerous", "band_d" }`

Recipes should:

- Check tags when generating recommended substitutions (if some ingredients missing).
- Use tags to control which Hunts they are “recommended for” in UI.

### 10.2 Sample Data Snippet (Pseudo-Lua)

_Not an implementation requirement, but a reference for data structure:_

```lua
Recipes["matron_detox_feast"] = {
    id = "matron_detox_feast",
    name = "Matron Detox Feast",
    profession = "cooking",
    tier = 3,
    bands = { min = "C", max = "D" },

    inputs = {
        { itemId = "matron_spore_cluster", quantity = 2 },
        { itemId = "dampcap", quantity = 3 },
        { itemId = "forest_veg_bundle", quantity = 2 },
    },

    effects = {
        { type = "spore_sickness_reduce", amount = 3, target = "party" },
        { type = "regen_flat", value = 10, duration = 60, target = "party" },
        { type = "spore_resist", value = 0.10, duration = 60, target = "party" },
    },

    tags = { "feast", "detox", "hollowroot", "greatwood", "hunt_matron" },
}
