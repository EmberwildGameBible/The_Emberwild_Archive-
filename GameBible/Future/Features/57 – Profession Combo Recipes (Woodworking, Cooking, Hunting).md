# 57 – Profession Combo Recipes: Woodworking + Cooking + Hunting

## Purpose

Design a set of **combo recipes/crafts** that require items from **multiple professions** (Hunting, Cooking, Woodworking, Forester) so the player feels like their professions actually **interlock** instead of living in separate silos.

Focus on Greatwood 1–20 content, but build patterns we can reuse.

---

## Design Goals

1. **Synergy, not busywork**  
   Using multiple professions should feel *powerful* or *special*, not just “more steps.”

2. **Group utility & world impact**  
   Combo items should:
   - Help with group hunts
   - Boost camps or temporary bases
   - Interact with beasts or the environment (bait, lures, totems)

3. **Clear responsibility**  
   It should be obvious which profession provides which part of the recipe.

4. **Upgradeable templates**  
   Start with “basic” versions that can later be expanded to higher tiers or other regions.

---

## Combo Recipe Structure

Each entry:

- **ID:** `combo_<theme>_<tier>`
- **Display Name**
- **Professions Involved:** (e.g. Cook, Woodworker, Hunter)
- **Components:**
  - Craft/recipe IDs from each profession
- **Effect:** what the combo does in gameplay
- **Duration / Limits:** number of uses, time, radius, etc.
- **Source:** how players learn it (quest, rep, vendor, drop)
- **Flavor Text**

---

## Combo Concepts

### 1. Hanging Meat Rack (Camp Buff)

**Concept:** A wooden rack built by a Woodworker, loaded with cooked meats by a Cook, placed in a camp to give **temporary buffs** to anyone nearby.

- ID: `combo_hanging_meat_rack_t1`
- Professions:
  - Woodworker (rack)
  - Cook (meat)
  - Hunter (provides raw game)
- Components:
  - `item_rack_frame_basic` (woodworking craft)
  - x2 cooked meat dishes (Tier 1–2 recipes, any from 52)
- Effect:
  - When placed at a campsite:
    - Nearby players gain a mild, shared buff (e.g. +5% stamina regen, +small HP regen)
    - Buff lasts 20–30 min, limited radius
  - Rack lasts for X minutes or until charges used
- Source:
  - Combo recipe unlocked from early Lodge building / camp tutorial or woodworking quest
- Flavor:
  - “If you can smell it, you’re close enough for the buff.”

---

### 2. Hunter’s Baited Blind

**Concept:** A small, crafted blind that makes hunting easier in a specific area by **drawing in specific beasts**.

- ID: `combo_hunters_baited_blind_t1`
- Professions:
  - Woodworker / Forester (structure)
  - Cook (bait)
- Components:
  - `item_wooden_blind_frame` (woodworking)
  - `item_bait_meat_bundle` (cooking craft using meat + herbs)
- Effect:
  - When placed:
    - Increases spawn chance of certain beasts in a small radius
    - Slight stealth bonus for players inside the blind
  - Limited uses or timed duration
- Source:
  - Learned via Lodge hunter NPC who teaches advanced fieldcraft
- Flavor:
  - “If the wind’s in your favor, they’ll come right to you.”

---

### 3. Greatwood Feast Table (Group Feast)

**Concept:** A large shared table that grants stronger buffs than individual meals, but requires **multiple professions to contribute**.

- ID: `combo_greatwood_feast_table_t1`
- Professions:
  - Woodworker (table)
  - Cook (feast dishes)
  - Hunter (trophy meats)
- Components:
  - `item_feast_table_frame` (woodworker)
  - x3 different cooked dishes (Tier 2–3 recipes from 52/53)
  - 1 specialty ingredient from 55 (e.g. `spec_ingr_hollowroot_resin` or `spec_ingr_elder_stag_marrow`)
- Effect:
  - When “activated,” nearby group members can interact to gain:
    - Stronger combined buff (e.g. +8–10% HP, +stamina regen, small damage/resist boosts)
    - Duration: 40+ min
  - Large cooldown or limited uses per table to keep it special
- Source:
  - Later Lodge reputation milestone or Ember Pot questline progression
- Flavor:
  - “The kind of meal you make for a hunt you might not come back from.”

---

### 4. Scent-Masking Campfire Bundle

**Concept:** A crafted bundle burned at a campfire to **reduce how easily enemies detect players**.

- ID: `combo_scent_masking_bundle_t1`
- Professions:
  - Forester (plants)
  - Cook / Alchemy (preparing bundle)
- Components:
  - Specific herbs from 51 (`whisperfern`, `bitterpine_needle`, etc.)
  - Simple cooking/alchemical processing step
- Effect:
  - When burned at a campfire:
    - Temporarily reduces enemy aggro radius in a small area
    - Slight boost to stealth/ambush effectiveness
  - Duration: 10–15 min
- Source:
  - Learned from a stealth-focused hunter NPC or nighttime quest
- Flavor:
  - “Smells awful, works wonders.”

---

### 5. Ember-Seasoned Tracking Markers

**Concept:** Wooden markers treated with special spices and herbs that help **track specific beasts** or **mark safe paths**.

- ID: `combo_ember_tracking_marker_t1`
- Professions:
  - Woodworker (marker sticks / plaques)
  - Cook / Alchemy (herbal/oil treatment)
- Components:
  - `item_marker_stake_bundle` (woodworker)
  - Mixture of herbs/spices from 51 (e.g. `ember_pepper`, `bitterpine_needle`)
- Effect:
  - When placed along a path:
    - Enhance tracking UI/effects within a small radius (better chance to see tracks, prompt hints)
    - Optionally reduce chance of random hostile encounters on that path
- Source:
  - Tracking & fieldcraft tutorial chain (23) extension
- Flavor:
  - “A good tracker uses every sense, not just their eyes.”

---

### 6. Portable Drying Rack (Jerky & Preserves)

**Concept:** Small portable rack that lets players **convert fresh ingredients into preserved rations** with better travel utility.

- ID: `combo_portable_drying_rack_t1`
- Professions:
  - Woodworker (rack)
  - Cook (jerky / preserves)
- Components:
  - `item_small_drying_rack` (woodworker)
  - Raw meats + spices (from 51, early recipes)
- Effect:
  - At a camp:
    - Convert raw meat into travel-friendly rations (lighter, stack better, longer buff duration but slightly weaker effects)
- Source:
  - Recipe obtained from long-range hunter NPC / travel quest
- Flavor:
  - “You can’t carry a pot everywhere, but you can carry this.”

---

### 7. Ritual Hunt Offering

**Concept:** A constructed offering that can be placed at specific altars to **trigger rare hunts or world events**.

- ID: `combo_ritual_hunt_offering_t1`
- Professions:
  - Cook (food offering)
  - Hunter (trophy part)
  - Woodworker / Forester (crafted idol/stand)
- Components:
  - Crafted wooden idol/stand
  - Cooked dish using a specialty ingredient from 55
  - Trophy item (antler, fang, etc.)
- Effect:
  - When placed at a specific altar POI:
    - Triggers a special encounter:
      - Rare beast spawn
      - Small ritual event
- Source:
  - Given through Lodge ritual lore, special questline
- Flavor:
  - “The forest answers when you speak its language.”

---

## Integration & Progression

- **Early combos** (T1) unlock as soon as the player has:
  - Basic Woodworking
  - Basic Cooking
  - A few hunts under their belt

- **More advanced combos** can be introduced later (Tier 2–3) by:
  - Increasing component quality
  - Adding higher-tier versions of the same items (e.g. advanced feast table, higher-tier baited blinds)

---

## Next Actions

- Turn each concept into:
  - Concrete item/craft entries (IDs, ingredients, exact effects)
  - Specific unlock conditions (quests, rep ranks)
- Ensure recipes reference the correct ingredient IDs from:
  - 51 – Ingredient Taxonomy
  - 52/53 – Cooking Recipes
  - 54 – Profession Tools & Gear
