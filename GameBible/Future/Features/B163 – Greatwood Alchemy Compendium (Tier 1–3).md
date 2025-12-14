Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B163 – Greatwood Alchemy Compendium (Tier 1–3)

---

## 0. PURPOSE & SCOPE

This chapter is the **complete alchemy reference** for **Greatwood 1–20**.

It exists to:

- Define all **core brews** (potions, tonics, draughts, phials) that:
  - Are discoverable or craftable in Greatwood.
  - Interact directly with:
    - Greatwood Hunts (Elder Stag, Ward-Bear, Devourer, Matron, Howler).
    - Spore, corruption, bleed, ward, and predator mechanics.
- Tie brews to:
  - **Ingredients** (B161 – Ingredient Atlas).
  - **Hunt Profession Loops** (B159).
  - **Status mechanics** (Spore Sickness, Corruption, Bleeds, etc.).

This file is **design-facing**:

- It names and describes **brews and their roles**.
- Exact numeric values are handled in:
  - Core Alchemy balance tables.
  - Status effect tuning docs.

---

## 1. ALCHEMY SYSTEM – DESIGN RULES (GREATWOOD 1–20)

### 1.1 Tiers & Player Bands

Alchemy tiers mirror cooking:

- **Tier 1 – Novice (1–7, Band A → early B)**
  - Simple brews: minor regen, minor resist, basic offense.
- **Tier 2 – Apprentice (8–14, Band B–C)**
  - Specialized anti-bleed, anti-spore, ward, corruption tools.
  - Short-duration “spike” effects.
- **Tier 3 – Journeyman (15–20, Band C–D)**
  - Strong, targeted tools:
    - Spore detox.
    - Corruption cleanses.
    - Ward manipulation.
    - High-impact burst brews.

---

### 1.2 Brew Categories & Stacking

For Greatwood 1–20, **alchemy buffs** are grouped into:

1. **Tonic** – Longer-duration, milder buff.
   - Category: `TONIC`
   - Only **1 Tonic buff** active at a time.

2. **Draught** – Medium-duration, strong effect.
   - Category: `DRAUGHT`
   - Only **1 Draught buff** active at a time.

3. **Phial / Vial** – Instant-use or very short w/ strong / special effects.
   - Category: `PHIAL`
   - Usually stackable with 1 Tonic + 1 Draught.
   - Some are **thrown** (targeted).

4. **Elixir** – Rare “hybrid” brew, usually Tier 3.
   - Category: `ELIXIR`
   - Typically counts as both a Tonic **and** a Draught (or has `special_stack`).

Stacking rules:

- Default:
  - `1 TONIC + 1 DRAUGHT + multiple PHIAL effects (most are instantaneous).`
- If a brew is flagged as:
  - `exclusive = "all"` → blocks all other alchemy buffs while active.
  - `special_stack = true` → custom logic needed.

---

### 1.3 Status Effects & Alchemy Hooks

Relevant statuses & interactions in Greatwood 1–20:

- **Bleeds (Howler, beasts)**
  - Effects:
    - HP loss over time.
  - Alchemy hooks:
    - Anti-Bleed Draught, bleed decay modifiers, mitigation on damage.

- **Spore Sickness (Hollowroot Matron, fungal pockets)**
  - Effects:
    - Stacking DoT and/or debuffs.
  - Alchemy hooks:
    - Anti-Spore Tincture, Detox Draught, spore immunity windows.

- **Corruption (Black-Sap, Devourer pockets)**
  - Effects:
    - Stacking corruption damage, debuffs.
  - Alchemy hooks:
    - Sap Cleanser Draught, Purifying brews, corruption “weaponization” tonics.

- **Ward / Arcane Damage (Ward-Bear, Wardstone pockets)**
  - Effects:
    - Shield interactions, reflected damage, beams.
  - Alchemy hooks:
    - Wardbreaker Tincture, Wardsense Draught, Ward Crust Chips.

- **Fear / Stagger / Control (Howler howls, some ward effects)**
  - Effects:
    - Control loss, slowed reactions.
  - Alchemy hooks:
    - Focus Tincture, Predator Mint Chew, anti-fear tonics.

Alchemy is the **main way** players alter these statuses on themselves (beyond class kits).

---

### 1.4 Brew Entry Format

Each brew entry includes:

- **ID** – Internal name (stable).
- **Display Name**
- **Tier & Bands**
- **Category** – Tonic / Draught / Phial / Elixir.
- **Origin & Theme**
- **Inputs** – Ingredient list (referencing B161).
- **Effects** – Concept-level design:
  - Buff/debuff categories.
  - Interactions with statuses.
- **Use Cases** – When to use it.
- **Unlock Conditions** – Scroll, Hunt kill, Lodge project, etc.
- **Flavor Text**

Optional: pseudo-Lua data example.

---

## 2. TIER 1 – NOVICE BREWS (1–7, BAND A → EARLY B)

Tier 1 brews:

- Introduce baseline regen, stamina, minor resist.
- Use low-tier ingredients:
  - `softleaf_herb`, `brightcap_herb`, `forest_marrow_herb`, simple fungi.

### 2.1 Tonics (Tier 1)

---

#### 2.1.1 `tonic_forest_guard` – Forest Guard Tincture

- **Tier:** 1  
- **Bands:** A–B  
- **Category:** TONIC  
- **Origin:** Elder Glade / General Greatwood; tied to stags/wildlife.

- **Inputs:**
  - 1x `antler_fragment`
  - 1x `softleaf_herb`
  - 1x `forest_marrow_herb` *or* `brightcap_herb`

- **Effects (Intent):**
  - Mild, long-duration:
    - **Physical damage reduction vs beasts.**
    - Slight **stamina regen** or max stamina buff.

- **Use Case:**
  - Early-life “default” protection tonic when wandering Greatwood.
  - Helpful in lower-tier stag, boar, wolf pockets.

- **Unlock:**
  - First Elder Hollow Stag kill *or* reading `Forest Guard Field Notes` (common scroll).

- **Flavor Text:**
  - “Hunters swear the forest looks at you differently after this.”

---

#### 2.1.2 `tonic_softleaf_balm` – Softleaf Balm

- **Tier:** 1  
- **Bands:** A–B  
- **Category:** TONIC  

- **Inputs:**
  - 2x `softleaf_herb`
  - 1x `mossveil_cap`

- **Effects:**
  - Mild, long-duration:
    - **Flat health regen** (small).
    - Slight **resistance to nature/poison** (minor spore/corrosion mitigation).

- **Use Case:**
  - Generic “comfort brew” for low-level exploration.
  - Helps soften chip damage and minor environmental DoTs.

- **Unlock:**
  - Base Alchemy trainer recipe.

- **Flavor Text:**
  - “Smells like home, or whatever you miss most.”

---

#### 2.1.3 `tonic_fledgling_focus` – Fledgling’s Focus Tonic

- **Tier:** 1  
- **Bands:** A–B  
- **Category:** TONIC  

- **Inputs:**
  - 1x `brightcap_herb`
  - 1x `brambleberry`

- **Effects:**
  - Mild **focus / accuracy / crit** buff.
  - Very minor **cast/channel resilience** (if applicable).

- **Use Case:**
  - Early casters / ranged classes.
  - Good for early Hunts when nerves are high.

- **Unlock:**
  - Learned via simple recipe scroll or default trainer list.

- **Flavor Text:**
  - “Your hands still shake, but less from fear and more from excitement.”

---

### 2.2 Draughts (Tier 1)

---

#### 2.2.1 `draught_hunters_dash` – Hunter’s Dash Draught

- **Tier:** 1  
- **Bands:** A–B  
- **Category:** DRAUGHT  

- **Inputs:**
  - 1x `moonfall_nut`
  - 1x `predator_mint` (optional if player has reached Howler pockets)
  - 1x `thornpod_seed`

- **Effects:**
  - Short-duration:
    - **Movement speed increase.**
    - Slight **stamina regen** spike.
  - Minor post-effect “crash”:
    - Tiny movement / stamina dip.

- **Use Case:**
  - Closing gaps, repositioning in early Hunts.
  - Escape/dramatic chase moments.

- **Unlock:**
  - Simple alchemy trainer recipe once player has discovered Moonfall Nuts.

- **Flavor Text:**
  - “Run now, collapse later.”

---

#### 2.2.2 `draught_field_stitch` – Field Stitch Draught

- **Tier:** 1  
- **Bands:** A–B  
- **Category:** DRAUGHT  

- **Inputs:**
  - 1x `forest_marrow_bone` shavings
  - 1x `softleaf_herb`
  - 1x `moss_silk_mycelium`

- **Effects:**
  - Short-medium duration:
    - **Moderate regen**, slightly stronger than Softleaf Balm.
    - Slight boost to **healing received**.

- **Use Case:**
  - Early pseudo-healing pot for players lacking strong healing.
  - Good for early Hunts and long pockets.

- **Unlock:**
  - Craftable once player has both bone and mycelium; unlocked via a basic recipe scroll.

- **Flavor Text:**
  - “Feels like someone tied your wounds with moss and stubbornness.”

---

### 2.3 Phials (Tier 1)

---

#### 2.3.1 `phial_basic_bandage_wash` – Basic Bandage Wash

- **Tier:** 1  
- **Bands:** A–B  
- **Category:** PHIAL  

- **Inputs:**
  - 1x `brightcap_herb`
  - 1x `softleaf_herb`

- **Effects:**
  - Instant-use:
    - Small immediate **HP restoration**.
    - Cleanses **very minor bleeds** (only Tier 1 bleeds).

- **Use Case:**
  - Starter alternative to “potion of healing.”
  - Good training item to show alchemy can interact with bleeds.

- **Unlock:**
  - Base recipe for novice Alchemist.

- **Flavor Text:**
  - “Stings for a heartbeat, then you forget where the cut was.”

---

## 3. TIER 2 – APPRENTICE BREWS (8–14, BAND B–C)

Tier 2 is where alchemy **really interacts with Hunts**.

We cover:

- Anti-bleed, anti-spore, anti-corruption, ward interactions, focus & fear control.

### 3.1 Tonics (Tier 2)

---

#### 3.1.1 `tonic_anti_bleed` – Anti-Bleed Draught

> Despite the name “Draught” in flavor, mechanically we treat this as a TONIC (longer duration, persistent effect). If preferred, rename in data to `Tonic of Coagulated Resolve` etc.

- **Tier:** 2  
- **Bands:** B–C  
- **Category:** TONIC  

- **Inputs:**
  - 1x `howler_fang_alpha` (shavings, small amount)
  - 1x `forestroot_bark` (can be introduced in B161 as minor bark)
  - 1x `softleaf_herb`

- **Effects:**
  - Long-duration:
    - **Reduces bleed damage taken**.
    - Slightly **accelerates bleed decay** (fewer ticks).
  - Does not prevent new bleeds, just mitigates.

- **Use Case:**
  - Greatwood Howler, any beast-heavy content with bleeds.
  - Multi-Hunt runs where healers are strained.

- **Unlock:**
  - Awarded as recipe after first Greatwood Howler kill.
  - Or as a rare scroll from Howler-related contracts.

- **Flavor Text:**
  - “It doesn’t stop the teeth, just makes the holes matter less.”

---

#### 3.1.2 `tonic_focus_predator` – Predator’s Focus Tonic

- **Tier:** 2  
- **Bands:** B–C  
- **Category:** TONIC  

- **Inputs:**
  - 2x `predator_mint`
  - 1x `brightcap_herb`

- **Effects:**
  - Long-duration:
    - Moderate **focus / crit / accuracy** increase.
    - Slight **reduction in fear/stagger duration**.

- **Use Case:**
  - Greatwood Howler Hunts (howls), challenging dungeons with fear or control.
  - Ranged/heavy-precision classes.

- **Unlock:**
  - Learned via recipe scroll dropped in Howler Den or from Hunt Board vendor.

- **Flavor Text:**
  - “You know exactly where the teeth will be, and where you won’t.”

---

#### 3.1.3 `tonic_wardsense` – Wardsense Draught

- **Tier:** 2  
- **Bands:** B–C  
- **Category:** TONIC  

- **Inputs:**
  - 1x `spectral_mote_faint`
  - 1x `forest_marrow_herb`
  - 1x `glowward_moss`

- **Effects:**
  - Long-duration:
    - **Improved clarity of ward telegraphs** (UI cue: brighter outlines, longer pre-cast).
    - Minor **ward/arcane damage reduction**.

- **Use Case:**
  - Ward-Bear Hunt, ward-heavy content.
  - Players struggling to read ward beams/pillars.

- **Unlock:**
  - First Ward-Bear kill or Warden’s Glade alchemy quest.

- **Flavor Text:**
  - “You don’t see the wards, you feel where they’d like to hurt you.”

---

#### 3.1.4 `tonic_anti_spore` – Anti-Spore Tincture

- **Tier:** 2  
- **Bands:** B–C  
- **Category:** TONIC  

- **Inputs:**
  - 1x `hollowroot_sporecap`
  - 1x `dampcap`
  - 1x `moss_silk_mycelium`

- **Effects:**
  - Long-duration:
    - Reduces **Spore Sickness gain rate** by X% (design-tuned).
    - Small **DoT reduction** from spore sources.

- **Use Case:**
  - Hollowroot Matron, fungal Nests.
  - Pre-emptive defense for extended fungal pockets.

- **Unlock:**
  - Found as recipe scroll in Hollowroot Nest, or after first Matron kill.

- **Flavor Text:**
  - “It tastes like licking a cave wall, but your lungs thank you later.”

---

### 3.2 Draughts (Tier 2)

---

#### 3.2.1 `draught_hunters_focus` – Hunter’s Focus Draught

- **Tier:** 2  
- **Bands:** B–C  
- **Category:** DRAUGHT  

- **Inputs:**
  - 1x `fang_chip`
  - 1x `brightcap_herb`
  - 1x `brambleberry`

- **Effects:**
  - Medium duration:
    - Noticeable **accuracy / crit** bump.
    - Slight **reduction to cast/channel interruption**.

- **Use Case:**
  - Hunts with heavy movement but need sustained DPS.
  - Ranged DPS prepping for coordinated DPS windows.

- **Unlock:**
  - General Greatwood contract rewards or field alchemy trainer.

- **Flavor Text:**
  - “Your heartbeat stops being a distraction and starts keeping time.”

---

#### 3.2.2 `draught_corrupted_edge` – Corrupted Edge Tonic (Draught Category)

- **Tier:** 2  
- **Bands:** B–C (used more in C–D content)  
- **Category:** DRAUGHT  

- **Inputs:**
  - 1x `black_sap_nodule`
  - 1x `fang_chip`
  - 1x `brightcap_herb`

- **Effects:**
  - Medium duration:
    - Small to moderate **damage increase**.
    - Attacks have a chance to inflict **low-level corruption DoT** on enemies.
  - Mild **corruption vulnerability** to the player (tuning lever).

- **Use Case:**
  - Advanced players fighting corrupted enemies who can manage risk.
  - Ideal for Black-Sap Devourer runs where healers are prepared.

- **Unlock:**
  - Black-Sap Devourer loot, scroll, or Lodge corruption research.

- **Flavor Text:**
  - “You drink it and hope the forest can’t tell the difference between your venom and its own.”

---

#### 3.2.3 `draught_wardbreaker` – Wardbreaker Tincture

- **Tier:** 2  
- **Bands:** B–C  
- **Category:** DRAUGHT  

- **Inputs:**
  - 1x `wardstone_core_shard`
  - 1x `glowward_moss`
  - 1x `forest_marrow_herb`

- **Effects:**
  - Medium duration:
    - Significant **bonus damage vs shielded/warded targets**.
    - Reduced **reflect damage taken**.

- **Use Case:**
  - Ward-Bear (Ward Shield phases).
  - Any content with heavy warded targets or reflection.

- **Unlock:**
  - Ward-Bear kill; Warden’s Glade alchemy quest; Ward research Lodge project.

- **Flavor Text:**
  - “You don’t break the ward; you convince it you already belong on the other side.”

---

### 3.3 Phials (Tier 2)

---

#### 3.3.1 `phial_stabilizing` – Stabilizing Phial

- **Tier:** 2  
- **Bands:** B–C  
- **Category:** PHIAL (thrown)  

- **Inputs:**
  - 1x `wardstone_crust_flake`
  - 1x `purifier_bloom`
  - 1x `moss_silk_mycelium`

- **Effects:**
  - Thrown on **Wardstone object**:
    - Temporarily **stabilizes** a Cracked Pillar or ward anomaly.
    - Reduces dangerous behavior (explosive pulses, random beams).
  - If thrown on ground:
    - Creates a small **safe zone** vs arcane pulses.

- **Use Case:**
  - Ward-Bear fights where players struggle to manage pillar types.
  - Experimental Wardstone events.

- **Unlock:**
  - Ward-Bear + Ward Lodge research project.

- **Flavor Text:**
  - “You’re not calming the ward, you’re distracting it with something worse.”

---

#### 3.3.2 `phial_basic_detox` – Basic Detox Phial

- **Tier:** 2  
- **Bands:** B–C  
- **Category:** PHIAL  

- **Inputs:**
  - 1x `purifier_bloom`
  - 1x `softleaf_herb`
  - 1x `mire_fungus`

- **Effects:**
  - Upon use:
    - Removes **one small stack** of:
      - Spore Sickness **or** Corruption.
    - Minor **regen** for a few seconds.

- **Use Case:**
  - Lightweight cure during fungal or corrupted pockets.
  - For players without access to full Detox Draught.

- **Unlock:**
  - Intro quest in Black-Sap Grove or Hollowroot Nest.

- **Flavor Text:**
  - “Quick, dirty, effective. Like most good field medicine.”

---

## 4. TIER 3 – JOURNEYMAN BREWS (15–20, BAND C–D)

Tier 3 brews are **strong, specialized tools**:

- Matron Detox, Sap Cleanser, advanced ward and awareness brews, spore immunity windows.

### 4.1 Tonics (Tier 3)

---

#### 4.1.1 `tonic_detox` – Detox Draught

- **Tier:** 3  
- **Bands:** C–D  
- **Category:** TONIC  

- **Inputs:**
  - 1x `matron_spore_cluster`
  - 1x `purifier_bloom`
  - 1x `moss_silk_mycelium`

- **Effects:**
  - Immediately:
    - Removes **multiple Spore Sickness stacks**.
  - Over duration:
    - Provides **reduced spore damage**.
    - Slight **regen** but with a small “crash” at the end (brief minor fatigue debuff).

- **Use Case:**
  - Hollowroot Matron fight.
  - Any spore-saturated environment.

- **Unlock:**
  - Hollowroot Matron kill + Lodge Containment project.

- **Flavor Text:**
  - “You feel like you coughed your lungs out—then realize you can breathe again.”

---

#### 4.1.2 `tonic_sap_cleanser` – Sap Cleanser Draught

- **Tier:** 3  
- **Bands:** C–D  
- **Category:** TONIC  

- **Inputs:**
  - 1x `blacksap_resin_clot`
  - 1x `purifier_bloom`
  - 1x `forest_marrow_herb`

- **Effects:**
  - On use:
    - Removes several **corruption stacks**.
  - While active:
    - Grants **corruption resistance**.
    - Small **health regen**.

- **Use Case:**
  - Black-Sap Devourer Hunt, corrupted dungeons.
- **Unlock:**
  - Devourer kill + Lodge corruption-sealing project.

- **Flavor Text:**
  - “You can feel the sap burning out of your blood.”

---

#### 4.1.3 `tonic_wardward_bulwark` – Wardward Bulwark Tonic

- **Tier:** 3  
- **Bands:** C–D  
- **Category:** TONIC  

- **Inputs:**
  - 1x `wardstone_core_shard`
  - 1x `spectral_mote_faint`
  - 1x `ironroot_veg` extract

- **Effects:**
  - Long-duration:
    - Significant **ward/arcane damage reduction**.
    - Minor **stability** vs knockbacks / control from ward sources.

- **Use Case:**
  - Ward-Bear high difficulty.
  - Late Wardstone dungeons, arcane-heavy fights.

- **Unlock:**
  - Deeper Ward Lodge research tier.

- **Flavor Text:**
  - “Your skin feels like stone and the wards feel mildly offended.”

---

### 4.2 Draughts (Tier 3)

---

#### 4.2.1 `draught_overgrowth` – Overgrowth Phial (Draught/Phial Hybrid)

> Functionally a **PHIAL** but with a lingering field effect; we categorize as DRAUGHT+PHIAL hybrid.

- **Tier:** 3  
- **Bands:** C–D  
- **Category:** ELIXIR (special)  

- **Inputs:**
  - 1x `hollowroot_matron_core`
  - 1x `black_sap_nodule`
  - 1x `moss_silk_mycelium`

- **Effects:**
  - Thrown at ground:
    - Creates a **temporary fungal zone**.
      - Could:
        - Slow enemies.
        - Deal low fungal DoT to enemies.
        - Heal or buff players standing within, depending on design.
  - Strong but short-lived effect with small chance to:
    - Generate minor spore stacks on players if misused.

- **Use Case:**
  - Advanced players who want to weaponize fungal mechanics.
  - Later dungeons; Greatwood advanced states.

- **Unlock:**
  - Rare Matron + Devourer combined content or high-tier Lodge research.

- **Flavor Text:**
  - “You’re bottling exactly the thing the Lodge warned you about.”

---

#### 4.2.2 `draught_nightsight` – Nightsight Draught

- **Tier:** 3  
- **Bands:** C–D  
- **Category:** DRAUGHT  

- **Inputs:**
  - 1x `shadowroot_tuber`
  - 1x `glowcap_ember`
  - 1x `brightcap_herb`

- **Effects:**
  - Medium duration:
    - Enhanced **night vision / low-light telegraph clarity**.
    - Slight **awareness/dodge** boost.
  - Possible mild visual side-effects.

- **Use Case:**
  - Night variants of Hunts (Howler, Stag, future content).
  - Dark dungeons.

- **Unlock:**
  - High-tier alchemy scroll from nighttime Greatwood content.

- **Flavor Text:**
  - “The dark doesn’t go away; it just stops being the most important part of the room.”

---

### 4.3 Phials (Tier 3)

---

#### 4.3.1 `phial_sporeveil` – Sporeveil Phial

- **Tier:** 3  
- **Bands:** C–D  
- **Category:** PHIAL  

- **Inputs:**
  - 1x `mossveil_cap`
  - 1x `spore_drift_filaments`
  - 1x `hollowroot_sporecap`

- **Effects:**
  - Upon use:
    - Grants a short window of **Spore Sickness immunity** or dramatically reduced gain.
    - Mild visual soft-focus/haze to emphasize effect.

- **Use Case:**
  - Specific Matron mechanics where players must cross intense spore fields.
  - Clutch “pass-through-cloud” moments.

- **Unlock:**
  - Deep Hollowroot Nest exploration + advanced Lodge containment.

- **Flavor Text:**
  - “You feel like a ghost walking through a storm of dust.”

---

#### 4.3.2 `phial_wardshock` – Wardshock Vial

- **Tier:** 3  
- **Bands:** C–D  
- **Category:** PHIAL (thrown)  

- **Inputs:**
  - 1x `wardstone_bracket`
  - 1x `spectral_mote_faint`
  - 1x `thornveil_leaf`

- **Effects:**
  - Thrown at warded enemy:
    - Temporarily **weakens their ward shield**.
    - Minor **arcane damage burst**.
  - If thrown at Wardstone object:
    - Causes a short **“overload”** that:
      - May interrupt certain ward behaviors.
      - Slightly damages players if mispositioned.

- **Use Case:**
  - Advanced Ward-Bear mechanics; future Wardstone bosses.
- **Unlock:**
  - Late Ward Lodge research.

- **Flavor Text:**
  - “Imagine convincing a thunderstorm to go inside the enemy’s armor.”

---

## 5. HUNT CLUSTERS – WHAT BREWS GO WITH WHAT HUNT

Quick design map for each major Hunt:

### 5.1 Elder Hollow Stag

Recommended:

- **Tier 1–2:**
  - `tonic_forest_guard`
  - `tonic_softleaf_balm`
  - `draught_hunters_focus`
- Secondary:
  - `tonic_fledgling_focus`
  - Basic detox/wash phials.

Goal:

- Teach **basic tonic usage**:
  - Regen + mild resist.
  - Early focus buff for telegraph reading.

---

### 5.2 Greatwood Howler

Recommended:

- `tonic_anti_bleed`
- `tonic_focus_predator`
- `draught_hunters_focus`
- `snack_predator_mint_chew` (from cooking, B162)

Goals:

- Show:
  - **Bleed management** matters.
  - **Fear/stagger reduction** and awareness matter.
- Alchemy-cooking synergy:
  - Use stew + anti-bleed + Predator Mint for best results.

---

### 5.3 Ward-Bear

Recommended:

- `tonic_wardsense`
- `draught_wardbreaker`
- `phial_stabilizing`
- Later:
  - `tonic_wardward_bulwark`
  - `phial_wardshock`

Goals:

- Make Wards & Pillars:
  - **Readable** and **manipulable**.
- Reward players who:
  - Use Wardbreaker in shield phases.
  - Use Phials to control pillar behavior.

---

### 5.4 Black-Sap Devourer

Recommended:

- `draught_corrupted_edge` (for advanced players)
- `tonic_sap_cleanser`
- `phial_basic_detox`
- Later synergy:
  - Purified Sap Stew (B162).

Goals:

- Teach:
  - Corruption is dangerous but manageable.
  - You can **weaponize** it (Corrupted Edge) if prepared.
  - You can **cleanse** it (Sap Cleanser) with right investment.

---

### 5.5 Hollowroot Matron

Recommended:

- `tonic_anti_spore`
- `tonic_detox`
- `phial_sporeveil`
- `phial_basic_detox`

Goals:

- Show:
  - Spore Sickness can be **preempted** and **cleansed**.
  - Whole party benefits if someone invests deeply in fungal alchemy.
- Combine with:
  - Matron Detox Feast (B162) for full anti-spore suite.

---

## 6. INGREDIENT SYNERGY SNAPSHOT (B161 CROSS-REF)

A few key mappings:

- **Softleaf, Brightcap, Mossveil** → Early regen/focus, baseline tonics.
- **Predator Mint, Thornveil Leaf** → Awareness, burst, “predator” brews.
- **Purifier Bloom** → Core of any **detox/cleanse** brew.
- **Hollowroot Sporecap, Matron Spore Cluster** → Spore-related risk/reward, detox.
- **Black-Sap Nodule, Resin Clot** → Corruption: either **weaponize** or **cleanse**.
- **Wardstone Core/Crust, Spectral Motes** → Ward & arcane interaction.

Design rule:

> If an ingredient is visually/fictionally dangerous, alchemy should offer *both*:
> - A way to turn it against enemies.
> - A way to counter its harms.

---

## 7. IMPLEMENTATION NOTES (DATA & TAGGING)

### 7.1 Standard Brew Data Fields (Pseudo-Lua)

Example:

```lua
AlchemyBrews["tonic_anti_bleed"] = {
    id       = "tonic_anti_bleed",
    name     = "Anti-Bleed Draught",
    category = "TONIC",
    tier     = 2,
    bands    = { min = "B", max = "C" },

    inputs = {
        { itemId = "howler_fang_alpha", quantity = 1 },
        { itemId = "forestroot_bark", quantity = 1 },
        { itemId = "softleaf_herb", quantity = 1 },
    },

    effects = {
        { type = "bleed_damage_mult", value = 0.75, duration = 900 },
        { type = "bleed_duration_mult", value = 0.8, duration = 900 },
    },

    tags = {
        "anti_bleed", "howler", "greatwood", "hunt", "defensive"
    },

    unlock = {
        type = "quest_or_kill",
        conditions = {
            { type = "kill", target = "HUNT_GREATWOOD_HOWLER", count = 1 },
        },
    },
}
Same pattern for others:

category ∈ { "TONIC", "DRAUGHT", "PHIAL", "ELIXIR" }

tags used for:

UI grouping.

Recommendation system.

Search in crafting UI.

7.2 UI Recommendation Hooks
When players open Hunts or pockets:

System queries by tags, e.g.:

_recommendByTags({ "anti_bleed", "howler", "greatwood" })

_recommendByTags({ "spore_resist", "matron" })

_recommendByTags({ "corruption_resist", "devourer" })

Cooking (B162) + Alchemy (B163) combined give:

Full pre-Hunt preparation UI:

“Suggested food: X, Y”

“Suggested brews: A, B, C”

8. SUMMARY
B163 turns Greatwood alchemy from:

“Some potions you find and maybe drink”

into:

A deliberate toolkit for:

Surviving bleeds, spores, corruption, wards, and predator howls.

Expressing player identity:

The anti-spore specialist.

The ward-breaker Alchemist.

The corruption gambler who drinks Sap Shots and Corrupted Edges.

By the time players finish Greatwood 1–20, they should have learned:

Status effects are predictable and manageable:

Spore Sickness, Corruption, Bleeds, Wards.

Alchemy + Cooking + Hunts are a closed loop:

Hunts give reagents → Reagents craft brews & meals → Brews & meals help beat Hunts.

Continuing deeper into Emberwild regions:

Players expect new threats to come with new brews.

When designing any new Greatwood content:

Ask: “What does this do to the player?” and, “What bottle can they bring that makes that fair?”
