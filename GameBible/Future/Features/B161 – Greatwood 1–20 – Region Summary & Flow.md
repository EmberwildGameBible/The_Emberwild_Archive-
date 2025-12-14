Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B161 – Greatwood Ingredient Atlas & Foraging Biomes (Greatwood 1–20)

---

## 0. PURPOSE & SCOPE

This chapter is the **definitive ingredient atlas** for **Greatwood 1–20**.

It exists to:

- Catalog all **major ingredients** found in Greatwood:
  - Meats & animal parts
  - Fungi & molds
  - Herbs & leafy plants
  - Roots & vegetables
  - Fruits, nuts & seeds
  - Special reagents (sap, spores, ward dust, etc.)
- Map each ingredient to:
  - **Biomes / pockets / Hunts**
  - **Band expectations** (A–D, 1–20)
  - **Profession hooks** (Cooking, Alchemy, Foraging, Lodgecraft)
- Provide an **alphabetical A–Z index** for quick cross-reference.

This file is **design-facing**:

- It does NOT encode final numbers.
- It defines **what exists**, **where it lives**, and **how it’s themed**.
- Numeric tuning (drop rates, stack counts, yield multipliers, etc.) live in:
  - B151 – Greatwood Loot & Drop System (1–20)
  - B155 – Greatwood Creature Loot Tables
  - Core Profession data tables

---

## 1. TAXONOMY OVERVIEW

### 1.1 Ingredient Categories

We classify Greatwood ingredients into the following top-level categories:

1. **Meats & Animal Products**
   - e.g. stag haunch, howler flank, marrow bones.
2. **Fungi & Molds**
   - e.g. hollowroot sporecap, mire fungus, dampcap.
3. **Herbs & Leafy Plants**
   - e.g. softleaf herb, brightcap herb, predator mint.
4. **Roots & Vegetables**
   - e.g. forest root veg, wildroot tuber, ironroot veg.
5. **Fruits, Nuts & Seeds**
   - e.g. brambleberry, moonfall nut, thornpod seed.
6. **Special Reagents**
   - Saps, spores, wardstone dust, relic splinters, etc.

Each ingredient entry includes:

- **Name (ID + display)**
- **Bands** (A–D)
- **Primary Biomes / Pockets**
- **Primary Uses** (Cooking / Alchemy / Foraging / Lodgecraft)
- **Short Flavor Hook**

---

## 2. GREATWOOD FORAGING BIOMES (1–20)

These are the main **foraging biomes** tied to Hunts and pockets.

### 2.1 Elder Hollow Glade (Stag / Nature Biome)

- Pocket: `POCKET_ELDER_HOLLOW_GLADE`
- Feel:
  - Quiet, mossy, shafts of sunlight.
  - Old trees, shallow roots, gentle fungi.
- Ingredient Themes:
  - Gentle herbs, roots, and ceremonial plants.
  - Good for regen and stamina.

### 2.2 Warden’s Glade (Wardstone Biome)

- Pocket: `POCKET_WARDEN_GLADE`
- Feel:
  - Wardstone pillars, faint humming, glowing moss.
- Ingredient Themes:
  - Ward-aligned mosses and crusts.
  - Dense roots, arcane-touched bulbs.

### 2.3 Black-Sap Grove (Corruption Biome)

- Pocket: `POCKET_BLK_SAP_GROVE`
- Feel:
  - Dark, slick bark, slow drip of black sap.
- Ingredient Themes:
  - Purifier blooms, corruption-touched tubers and bark.
  - High risk, high alchemy value.

### 2.4 Hollowroot Nest (Fungal Biome)

- Pocket: `POCKET_HOLLOWROOT_NEST`
- Feel:
  - Dim, damp bowl crowded with mushrooms and mycelium.
- Ingredient Themes:
  - Sporecaps, wet fungi, fibrous mycelium.
  - Best for detox/DoT concoctions.

### 2.5 Howler Den (Predator Biome)

- Pocket: `POCKET_HOWLER_DEN`
- Feel:
  - Trampled brush, bones, dens beneath roots.
- Ingredient Themes:
  - Stamina and reaction herbs, quick-burn tubers.
  - Things that keep you alive when the forest is chasing you.

### 2.6 Neutral Greatwood (General Forest Biome)

- Spread:
  - Non-Hunt pockets, paths, riversides.
- Ingredient Themes:
  - General purpose herbs, berries, roots.
  - Shared pool that interlocks with all Hunts.

---

## 3. MEATS & ANIMAL PRODUCTS (CREATURE-DROPPED)

> Many of these are also defined in B155; here we expand their **profession-facing identity**.

Entries are alphabetical by **ID**.

---

### 3.1 A–C

#### 3.1.1 `antler_fragment` – Antler Fragment

- **Bands:** B–C
- **Biomes / Sources:** Stags (general), Elder Hollow Stag; Elder Hollow Glade
- **Uses:**
  - *Cooking:* Gelatinous stock booster (bone broth).
  - *Alchemy:* Forest Guard Tincture (beast resist).
  - *Lodgecraft:* Mounted décor, ritual charms.
- **Flavor:** Shaped by years of rut; etched by bark and time.

#### 3.1.2 `bearward_claw_fragment` – Ward-Bear Claw Fragment

- **Bands:** B–D
- **Biomes / Sources:** Ward-Bear Hunt; Warden’s Glade
- **Uses:**
  - *Alchemy:* Wardsense Draught, Wardbreaker Tincture catalyst.
  - *Lodgecraft:* Inlaid into shield displays and ward totems.
- **Flavor:** Heavy with wardstone etchings that never quite stop glowing.

#### 3.1.3 `boar_belly_strip` – Boar Belly Strip

- **Bands:** A–C
- **Biomes / Sources:** Boar family; general Greatwood
- **Uses:**
  - *Cooking:* Fat-rich skillet meals (Boar Fat Skillet), Wardbear Ironstew base.
  - *Alchemy:* Rendered fat for salves and pastes.
- **Flavor:** Thick and marbled; prized in every camp kitchen.

#### 3.1.4 `boar_hide_patch` – Boar Hide Patch

- **Bands:** A–C
- **Biomes / Sources:** Boar family; general Greatwood
- **Uses:**
  - *Lodgecraft / Armorcraft:* Light armor, Lodge benches, bedrolls.
- **Flavor:** Tough, coarse, simple—standard field leather.

#### 3.1.5 `boar_shank` – Boar Shank

- **Bands:** A–C
- **Biomes / Sources:** Boar family; common in low/mid pockets.
- **Uses:**
  - *Cooking:* High-hearty stews (Wardbear Ironstew, Hunter’s Stews).
- **Flavor:** Muscle-heavy joint that loves slow, patient cooking.

#### 3.1.6 `bristled_ridge_pelt` – Bristled Ridge Pelt (NEW)

- **Bands:** B–C
- **Biomes / Sources:** Ridge boars / wild variant in higher Greatwood.
- **Uses:**
  - *Lodgecraft:* Rug / wall hangings.
  - *Armorcraft:* Lighter, thorn-resistant cloak lining.
- **Flavor:** Stiff bristles that remember every thorn they parted.

---

### 3.2 D–H

#### 3.2.1 `devourer_tooth_fragment` – Black-Sap Devourer Tooth Fragment

- **Bands:** C–D
- **Biomes / Sources:** Black-Sap Devourer Hunt.
- **Uses:**
  - *Alchemy:* Sap Cleanser, corruption-edge tonics.
  - *Lodgecraft:* Set into “Seal the Veins” displays.
- **Flavor:** Edges blackened with sap that never dries.

#### 3.2.2 `fang_chip` – Fang Chip

- **Bands:** A–C
- **Biomes / Sources:** Howlers, wolves, scavengers; broad Greatwood.
- **Uses:**
  - *Alchemy:* Hunter’s Focus, Corrupted Edge Tonic.
  - *Trinketcraft:* Basic predator charms.
- **Flavor:** The forest’s simplest warning: everything here has teeth.

#### 3.2.3 `forest_marrow_bone` – Forest Marrow Bone (NEW)

- **Bands:** A–C
- **Biomes / Sources:** Larger beasts (stags, boars, bears).
- **Uses:**
  - *Cooking:* Bone broth, marrow roasts.
  - *Alchemy:* Potent base for regen draughts.
- **Flavor:** Heavy bone that keeps popping up in old Lodge recipes.

#### 3.2.4 `howler_alpha_pelt` – Alpha Howler Pelt

- **Bands:** B–C
- **Biomes / Sources:** Greatwood Howler (Hunt).
- **Uses:**
  - *Lodgecraft:* Pack banners, floor rugs.
  - *Trinketcraft:* Alpha Howl Charm components.
- **Flavor:** When worn or displayed, you always feel like something’s watching the door.

#### 3.2.5 `howler_fang_alpha` – Alpha Howler Fang

- **Bands:** B–C
- **Biomes / Sources:** Greatwood Howler.
- **Uses:**
  - *Alchemy:* Anti-Bleed Draught, Focus Tincture catalysts.
  - *Trinket:* Alpha Howl Charm.
- **Flavor:** Still hums with the memory of pack calls.

#### 3.2.6 `howler_flank` – Howler Flank

- **Bands:** B–C
- **Biomes / Sources:** Howler family; general pockets & Hunt.
- **Uses:**
  - *Cooking:* Greatwood Hunter’s Stew, simpler roasts.
- **Flavor:** Lean, gamey, perfect for the kind of people who run toward howls.

#### 3.2.7 `howler_flank_prime` – Prime Howler Flank

- **Bands:** B–C
- **Biomes / Sources:** Greatwood Howler; high-roll drop.
- **Uses:**
  - *Cooking:* Alpha Hunter’s Stew; premium band-B/C meals.
- **Flavor:** A rare cut from a creature that never stopped moving.

#### 3.2.8 `howler_pelt_tuft` – Howler Pelt Tuft

- **Bands:** A–C
- **Biomes / Sources:** All howlers; common.
- **Uses:**
  - *Alchemy:* Focus Tincture.
  - *Lodgecraft:* Minor décor, stuffing, small fetishes.
- **Flavor:** Smells of wet fur and cold nights.

---

### 3.3 H–Z

#### 3.3.1 `hollowroot_shell_plate` – Hollowroot Shell Plate

- **Bands:** C–D
- **Biomes / Sources:** Hollowroot Matron; Nest.
- **Uses:**
  - *Lodgecraft:* Containment shells, fungal displays.
  - *Alchemy:* Overgrowth Phials (late-game), structural reagent.
- **Flavor:** Feels like bark, sounds like bone, grows like neither.

#### 3.3.2 `marrow_bone_piece` – Marrow Bone Piece

- **Bands:** A–C
- **Biomes / Sources:** Boars, stags, wolves.
- **Uses:**
  - *Cooking:* Ceremonial Bone Broth; marrow roasts.
  - *Alchemy:* General restorative bases.
- **Flavor:** The oldest comfort food in the forest.

#### 3.3.3 `stag_haunch` – Stag Haunch

- **Bands:** A–C
- **Biomes / Sources:** Stag family; Elder Stag.
- **Uses:**
  - *Cooking:* Elder’s Supper; many base stews and roasts.
- **Flavor:** The standard by which every Ranger judges a cook.

#### 3.3.4 `stringy_game_meat` – Stringy Game Meat

- **Bands:** A–C
- **Biomes / Sources:** Low-tier beasts, e.g., smaller stags, boars, howlers.
- **Uses:**
  - *Cooking:* Lower-quality stews, Black-Sap Hotpot.
- **Flavor:** Tough, but better than starving.

---

## 4. FUNGI & MOLDS

Alphabetical; many centered on Hollowroot Nest and corrupted pockets.

---

### 4.1 A–F

#### 4.1.1 `ambergill_cluster` – Ambergill Cluster (NEW)

- **Bands:** B–C
- **Biomes / Sources:** Elder Hollow Glade fallen logs; rare.
- **Uses:**
  - *Cooking:* Sweet-earthy flavor for mid-tier stews.
  - *Alchemy:* Minor focus / clarity brews.
- **Flavor:** Sun-colored gills on a mushroom that never sees direct light.

#### 4.1.2 `black_sap_growth` – Black-Sap Growth

- **Bands:** C–D
- **Biomes / Sources:** Black-Sap Grove; Devourer proximity.
- **Uses:**
  - *Alchemy:* High-end corruption brews and cleansers.
  - *Lodgecraft:* “Do not touch” displays.
- **Flavor:** A fungal colony fed entirely on sap that wants everything dead.

#### 4.1.3 `dampcap` – Dampcap

- **Bands:** B–D
- **Biomes / Sources:** Hollowroot Nest; wet roots in shaded pockets.
- **Uses:**
  - *Cooking:* Component in Matron Detox Feast; damp, chewy.
  - *Alchemy:* Anti-Spore Tincture; detox brews.
- **Flavor:** Spongey cap that never quite feels dry, even in your pack.

#### 4.1.4 `mire_fungus` – Mire Fungus

- **Bands:** B–D
- **Biomes / Sources:** Low muddy depressions, Hollowroot Nest perimeter.
- **Uses:**
  - *Cooking:* Hollowroot Stew; heavy, earthy base.
  - *Alchemy:* Spore/rot synergy; poisons and antidotes.
- **Flavor:** Smells like wet leather left too long by the river.

#### 4.1.5 `mossveil_cap` – Mossveil Cap (NEW)

- **Bands:** A–B
- **Biomes / Sources:** Neutral Greatwood; tree bases, mossy logs.
- **Uses:**
  - *Cooking:* Light stews; adds gentle umami.
  - *Alchemy:* Very mild regen tonics.
- **Flavor:** Moss-textured mushroom that melts if overcooked.

---

### 4.2 G–R

#### 4.2.1 `glowcap_ember` – Ember Glowcap (NEW)

- **Bands:** B–C
- **Biomes / Sources:** Near faint relic traces, Hollowroot Nest edges.
- **Uses:**
  - *Alchemy:* Rare reagent for light / vision tonics.
  - *Lodgecraft:* Decorative jars and lamps.
- **Flavor:** Its gills glow like embers when disturbed.

#### 4.2.2 `hollowroot_sporecap` – Hollowroot Sporecap

- **Bands:** C–D
- **Biomes / Sources:** Hollowroot Nest; on Matron husks.
- **Uses:**
  - *Cooking:* Hollowroot Stew; risky but potent.
  - *Alchemy:* Anti-Spore Tincture, Detox Draught component.
- **Flavor:** Each cap is a tiny forest of spores waiting to happen.

#### 4.2.3 `latchmold` – Latchmold (NEW)

- **Bands:** B–C
- **Biomes / Sources:** Abandoned dens, old leather, forgotten gear.
- **Uses:**
  - *Alchemy:* Adhesives, sticky toxins.
  - *Lodgecraft:* Minor adhesives or aged effect props.
- **Flavor:** Grows wherever people leave things and don’t come back.

#### 4.2.4 `moss_silk_mycelium` – Moss-Silk Mycelium (NEW)

- **Bands:** A–C
- **Biomes / Sources:** Under thick moss carpets in Elder Glade.
- **Uses:**
  - *Cooking:* Thickens broths; mild flavor.
  - *Alchemy:* Stabilizer in complex brews.
- **Flavor:** Feels like spider silk woven from damp forest floor.

---

### 4.3 S–Z

#### 4.3.1 `spore_drift_filaments` – Spore Drift Filaments (NEW)

- **Bands:** C–D
- **Biomes / Sources:** Upper air in Hollowroot Nest during Matron phases.
- **Uses:**
  - *Alchemy:* High-tier spore mechanics; advanced content.
  - *Lodgecraft:* Suspended in jars for “moving fog” displays.
- **Flavor:** You can never quite decide if you actually see them moving—or if it’s the spores.

#### 4.3.2 `tainted_game_mold` – Tainted Game Mold (NEW)

- **Bands:** C–D
- **Biomes / Sources:** Beasts that die near Hollowroot or Black-Sap pockets.
- **Uses:**
  - *Cooking:* Risky; mostly avoided except by certain “tough” NPCs.
  - *Alchemy:* Potent but dangerous reagent for curse brews.
- **Flavor:** The forest’s way of saying, “this meat should never have been eaten.”

---

## 5. HERBS & LEAFY PLANTS

---

### 5.1 A–H

#### 5.1.1 `brightcap_herb` – Brightcap Herb

- **Bands:** A–C
- **Biomes / Sources:** Neutral Greatwood; edges of clearings.
- **Uses:**
  - *Alchemy:* Focus, crit, and concentration tonics.
- **Flavor:** Smells like crushed pine needles and fresh rain.

#### 5.1.2 `forest_marrow_herb` – Forest Marrow Herb

- **Bands:** B–C
- **Biomes / Sources:** Elder Glade; shady spots by roots.
- **Uses:**
  - *Alchemy:* Wardsense Draught, regen tonics.
  - *Cooking:* Added to broths for light bitterness.
- **Flavor:** Bitter stem, sweet aftertaste.

#### 5.1.3 `predator_mint` – Predator Mint

- **Bands:** B–C
- **Biomes / Sources:** Howler Den; trails used for stalking.
- **Uses:**
  - *Alchemy:* Awareness / reaction brews, anti-fear support.
  - *Cooking:* Sharp, cooling note in certain stews.
- **Flavor:** A cold, biting mint that seems to clear your ears as much as your nose.

#### 5.1.4 `purifier_bloom` – Purifier Bloom

- **Bands:** C–D
- **Biomes / Sources:** Black-Sap Grove only; extremely rare.
- **Uses:**
  - *Alchemy:* Sap Cleanser Draught, Detox, high-tier purifiers.
  - *Cooking:* In Purified Sap Stew.
- **Flavor:** Petals glow faintly when near corruption—as if arguing with it.

#### 5.1.5 `softleaf_herb` – Softleaf Herb

- **Bands:** A–B
- **Biomes / Sources:** Neutral Greatwood, Elder Glade.
- **Uses:**
  - *Cooking:* Elder’s Supper, basic regen dishes.
  - *Alchemy:* Gentle regen and beast resist tonics.
- **Flavor:** The standard “if you don’t know what to add, add Softleaf.”

---

### 5.2 I–Z

#### 5.2.1 `thornveil_leaf` – Thornveil Leaf (NEW)

- **Bands:** B–C
- **Biomes / Sources:** Around dens and predator paths.
- **Uses:**
  - *Alchemy:* Light armor hardening oils.
  - *Cooking:* Rare; can toughen meat if misused.
- **Flavor:** Leaves with veins that feel like tiny thorns.

#### 5.2.2 `whisperfern_sprig` – Whisperfern Sprig (NEW)

- **Bands:** A–B
- **Biomes / Sources:** Quiet, windless corners of Elder Glade.
- **Uses:**
  - *Alchemy:* Calm / silence brews (RP & niche mechanics).
  - *Cooking:* Minimal; subtle flavor note.
- **Flavor:** Shifts as if listening when you speak near it.

---

## 6. ROOTS & VEGETABLES

---

### 6.1 A–M

#### 6.1.1 `forest_root_veg` – Forest Root Vegetable

- **Bands:** A–C
- **Biomes / Sources:** General forest floor; Elder Glade patches.
- **Uses:**
  - *Cooking:* Base veg for almost everything.
- **Flavor:** Somewhere between potato and rutabaga, depending on who cooked it.

#### 6.1.2 `ironroot_veg` – Ironroot Vegetable

- **Bands:** B–D
- **Biomes / Sources:** Warden’s Glade; near wardstones.
- **Uses:**
  - *Cooking:* Wardbear Ironstew; “heavy” meals.
  - *Alchemy:* Minor stabilization in defensive brews.
- **Flavor:** Dense, fibrous; more chewed than eaten.

#### 6.1.3 `shadowroot_tuber` – Shadowroot Tuber

- **Bands:** C–D
- **Biomes / Sources:** Black-Sap Grove, darker riverbanks.
- **Uses:**
  - *Cooking:* Rare, risky stews; pairs with Black-Sap recipes.
  - *Alchemy:* Night vision / shadow synergy.
- **Flavor:** Bitter, almost metallic, but some swear by its kick.

#### 6.1.4 `wildroot_tuber` – Wildroot Tuber

- **Bands:** A–C
- **Biomes / Sources:** Howler Den and general predator biomes.
- **Uses:**
  - *Cooking:* Hunter’s Stews and simple roasted sides.
- **Flavor:** Starchy, slightly peppery when roasted properly.

---

### 6.2 N–Z

#### 6.2.1 `mycelium_web` – Mycelium Web

- **Bands:** B–D
- **Biomes / Sources:** Hollowroot Nest, under thick fungal mats.
- **Uses:**
  - *Lodgecraft:* Containment displays, wall panels.
  - *Alchemy:* Stabilizer or catalyst in fungal brews.
- **Flavor:** You do NOT eat this, generally.

#### 6.2.2 `rootcoil_bulb` – Rootcoil Bulb (NEW)

- **Bands:** B–C
- **Biomes / Sources:** Twisted tree roots; mostly in mixed biomes.
- **Uses:**
  - *Cooking:* Strong-flavor bulb; used in spicy/meaty dishes.
  - *Alchemy:* Slight energy restoration.
- **Flavor:** Somewhere between garlic and wild onion, but more stubborn.

---

## 7. FRUITS, NUTS & SEEDS

---

### 7.1 A–M

#### 7.1.1 `brambleberry` – Brambleberry

- **Bands:** A–C
- **Biomes / Sources:** Howler Den, Neutral Greatwood thickets.
- **Uses:**
  - *Cooking:* Sweet-tart additions to stews and snacks.
  - *Alchemy:* Minor focus and mood buffs.
- **Flavor:** Tastes best eaten from your hand while pretending nothing is stalking you.

#### 7.1.2 `elderbloom_flower` – Elderbloom Flower

- **Bands:** B–C
- **Biomes / Sources:** Elder Glade only; rare.
- **Uses:**
  - *Cooking:* Ceremonial desserts or broths.
  - *Lodgecraft:* Pressed into honor plaques.
- **Flavor:** Soft floral note; most cooks are afraid to ruin it.

#### 7.1.3 `moonfall_nut` – Moonfall Nut (NEW)

- **Bands:** B–D
- **Biomes / Sources:** High branches; shaken down during certain weather events.
- **Uses:**
  - *Cooking:* High-fat, energy-dense snacks.
  - *Alchemy:* Sleep and dream tonics.
- **Flavor:** Buttery, with a faint copper aftertaste that some find unsettling.

---

### 7.2 N–Z

#### 7.2.1 `thornpod_seed` – Thornpod Seed (NEW)

- **Bands:** A–C
- **Biomes / Sources:** Shrubs that grow near game trails.
- **Uses:**
  - *Cooking:* Toasted for crunch in stews/breads.
  - *Alchemy:* Slight inflammation / “heat” in blood tonics.
- **Flavor:** Crunchy, nutty, with a slow build of spice.

---

## 8. SPECIAL REAGENTS (SAPS, STONES, ESSENCES, RELIC SPLINTERS)

---

### 8.1 Saps & Corruption

#### 8.1.1 `black_sap_nodule` – Black-Sap Nodule

- **Bands:** C–D
- **Biomes / Sources:** Black-Sap Grove; Devourer fights.
- **Uses:**
  - *Cooking:* Black-Sap Hotpot, risky buffs.
  - *Alchemy:* Corrupted Edge Tonic, Overgrowth Phial.
- **Flavor:** Thick, bitter syrup that stains everything.

#### 8.1.2 `blacksap_resin_clot` – Black-Sap Resin Clot

- **Bands:** C–D
- **Biomes / Sources:** Black-Sap Devourer.
- **Uses:**
  - *Alchemy:* Sap Cleanser Draught, Purified Sap Stew.
- **Flavor:** Feels heavier than it should in the vial.

---

### 8.2 Wards & Spirits

#### 8.2.1 `wardstone_core_shard` – Wardstone Core Shard

- **Bands:** C–D
- **Biomes / Sources:** Ward-Bear Hunt, Warden’s Glade.
- **Uses:**
  - *Alchemy:* Wardbreaker, advanced ward brews.
  - *Lodgecraft:* Ward research annex.
- **Flavor:** Crystalline shard that “vibrates” in your hand when near other wards.

#### 8.2.2 `wardstone_crust_flake` – Wardstone Crust Flake

- **Bands:** B–D
- **Biomes / Sources:** Wardstone pillars, Ward-Bear environment.
- **Uses:**
  - *Cooking:* Stonehide Skillet (light reflect).
  - *Alchemy:* Stabilizers, stabilizing phials.
- **Flavor:** Tasteless grit; cooks argue about whether you should ever put it in food.

#### 8.2.3 `spectral_mote_faint` – Faint Spectral Mote

- **Bands:** C–D
- **Biomes / Sources:** Ward entities, rare ambient occurrences.
- **Uses:**
  - *Alchemy:* Wardsense, spiritual sensitivity tonics.
  - *Lodgecraft:* Decorative lamps.
- **Flavor:** Purely conceptual; no one has ever eaten one on purpose.

---

### 8.3 Relic Splinters

> Detailed Relic systems live elsewhere; here we just name key splinters touched by Greatwood.

- `relic_splinter_woodheart`
- `relic_splinter_sapbound_antler`
- `relic_splinter_hollowheart`
- `relic_splinter_shieldstone`
- `relic_splinter_echoing_fang`

Bands: Generally C–D, all rare.

Uses:

- Long-term Relic progression.
- Future Hunts and dungeons.
- Key Lodge “endgame” projects.

---

## 9. A–Z INGREDIENT QUICK INDEX (DESIGN REFERENCE)

> This is a **flat A–Z** list of all named Greatwood 1–20 ingredients defined so far in B151/B155/B156–B160/B159/B161.  
> (Duplicates across files are intentional; names must stay consistent.)

**A**

- `alpha_hunters_stew` (recipe – see B159)
- `ambergill_cluster`
- `antler_fragment`

**B**

- `bearward_claw_fragment`
- `black_sap_growth`
- `black_sap_nodule`
- `blacksap_resin_clot`
- `boar_belly_strip`
- `boar_hide_patch`
- `boar_shank`
- `brambleberry`
- `bristled_ridge_pelt`

**C**

- `ceremonial_bone_broth` (recipe)
- `corrupted_hide_shard`

**D**

- `dampcap`
- `devourer_tooth_fragment`

**E**

- `elderbloom_flower`

**F**

- `fang_chip`
- `forest_marrow_bone`
- `forest_marrow_herb`
- `forest_root_veg`

**G**

- `glowcap_ember`
- `glowward_moss` (named earlier in Hunts/Professions)
- `gw_game_stew` (recipe scroll defined in B151/B159)

**H**

- `hollowroot_matron_core`
- `hollowroot_resin`
- `hollowroot_shell_plate`
- `hollowroot_sporecap`
- `howler_alpha_pelt`
- `howler_fang_alpha`
- `howler_flank`
- `howler_flank_prime`
- `howler_pelt_tuft`
- `hunters_bone_broth` (recipe scroll)

**I**

- `ironroot_veg`

**L**

- `latchmold`
- `lore_scrap_greatwood_legend`
- `lore_scrap_poachers_route`

**M**

- `matron_spore_cluster`
- `mire_fungus`
- `moonfall_nut`
- `moss_silk_mycelium`
- `mossveil_cap`
- `mycelium_web`

**P**

- `predator_mint`
- `purifier_bloom`

**R**

- `recipe_scroll_alpha_hunters_stew`
- `recipe_scroll_boar_fat_feast`
- `recipe_scroll_gw_game_stew`
- `recipe_scroll_hollowroot_stew`
- `recipe_scroll_hunters_bone_broth`
- `recipe_scroll_matron_detox_feast`
- `recipe_scroll_wardbear_ironstew`
- `relic_splinter_echoing_fang`
- `relic_splinter_hollowheart`
- `relic_splinter_sapbound_antler`
- `relic_splinter_shieldstone`
- `relic_splinter_woodheart`
- `rootcoil_bulb`

**S**

- `sap-scarred_bark`
- `shadowroot_tuber`
- `softleaf_herb`
- `spore_drift_filaments`
- `stag_haunch`
- `stringy_game_meat`

**T**

- `tainted_game_mold`
- `thornpod_seed`
- `thornveil_leaf`

**W**

- `warded_charm_cracked`
- `warded_howler_tooth`
- `wardstone_bear_plate`
- `wardstone_bracket`
- `wardstone_core_shard`
- `wardstone_crust_flake`
- `whisperfern_sprig`
- `wildroot_tuber`

---

## 10. SUMMARY

B161 turns Greatwood from:

- “That place with trees and some animals”

into:

- A **fully stocked pantry and reagent garden**,
- A network of **foraging biomes** each tied to a Hunt,
- A foundation for:
  - Cooking balance.
  - Alchemy trees.
  - Lodge progression.
  - Future Relic and expansion hooks.

Any future work that needs **“what ingredients exist in Greatwood”** should reference this file first.

---

_End of B161 – Greatwood Ingredient Atlas & Foraging Biomes (Greatwood 1–20)_
