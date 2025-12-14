Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 85 – The Ember Pot & Communal Cooking Loop

## Purpose

Define the **Ember Pot** as a core social & mechanical system that:

- Sits at the **heart of Greatwood Lodge**
- Turns **ingredients** (51) and **professions** (52–57, 60) into:
  - Shared buffs
  - Story moments
  - Visible culture
- Connects to:
  - Hunts & Deeds (61–62)
  - Dynamic Events (62)
  - Region Layout (63)
  - Hunter’s Quarters (B100)
  - Trophy Hall (86)

The Ember Pot is not just a “buff cauldron”; it’s:

- A **ritual of coming home**
- A **measure of Lodge health**
- A **meter of how well the forest is feeding the fire**

---

## Design Goals

1. **Fire as a living scoreboard**

   - The Ember Pot’s appearance and behavior:
     - Reflect how the Lodge is doing:
       - Ingredients flowing?
       - Hunts going well?
       - Corruption creeping in?
   - Players read the fire’s state as a **quick gut-check** of the world.

2. **Gather, cook, share**

   - The Ember Pot ties together:
     - Gathering ingredients in Greatwood (51, 63)
     - Profession cooking (52–56)
     - Communal feasts and story beats (64, 86)

3. **Buffs with personality, not spreadsheets**

   - Pot outcomes give:
     - Distinctive, flavorful buffs
     - With clear stories (“Boar Feast”, “Ash-Steeped Stew”)
   - Choices matter, but:
     - No hyper-optimized MMO food treadmill.

4. **Always there, never mandatory**

   - The Pot is:
     - Always lit (unless something is very wrong).
     - Always doing *something* (stew, broth, etc.).
   - You can ignore it and still play fine.
   - Engaging with it:
     - Feels like a treat, not a chore.

5. **Scales with the world**

   - Early:
     - Simple stews, basic ingredient families.
   - Later:
     - Region-specific dishes
     - Corruption-resistant recipes
     - Seasonal feasts & special events.

---

## 1. Physical Concept & Location

### 1.1 The Ember Pot Hearth

- Massive, iron-and-stone cauldron on a:
  - Raised brick or stone hearth
  - Center of the Lodge hall floor, slightly offset from main firepit.

- Visual elements:
  - Constant low steam.
  - Ember glow from under the pot.
  - Hooks, ladles, strainers hanging nearby.
  - Surrounding work surface with:
    - Chopping board
    - Spice jars
    - Ingredient baskets

- Ownership:
  - Run chiefly by **Cook Mara Emberpot** (56, 60).
  - Assisted by apprentices and rotating Lodge cooks.

### 1.2 Surrounding Space

- **Benches and tables** radiate out:
  - Hunters eat here
  - NPC conversations cluster here
- Nearby:
  - A small **recipe board** (daily dishes & requests)
  - Shelves with:
    - Preserved ingredients
    - Special jars (pickles, stocks, ferments)

---

## 2. Core Loops & Interactions

There are three main Ember Pot loops:

1. **Baseline Stew (Automatic)**
2. **Player-Powered Pot (Contribution & Recipes)**
3. **Feasts & Specials (Events & Milestones)**

### 2.1 Baseline Stew – “The Pot Never Empties”

- Even if no player touches it:

  - The Ember Pot always contains:
    - A basic stew or broth.
  - NPCs occasionally:
    - Eat from it
    - Comment on its quality (“thin today”, “rich tonight”).

- Functionally:
  - Provides a **free, low-grade buff**:
    - “Stew-Warmed”
  - Minimal effect:
    - Tiny regen / morale boost for a short time
    - No stacking with stronger foods

- World-state tie:

  - Baseline stew quality can subtly drift based on:
    - Lodge ingredient stocks
    - Recent success or failure in Hunts/Deeds
    - Corruption pressure on Greatwood (if codified)

### 2.2 Player-Powered Pot – Contribution Loop

Players can **interact** with the Ember Pot to:

- Contribute ingredients
- Trigger specific recipes
- Improve the stew quality
- Craft **Pot Dishes** that grant better buffs

#### 2.2.1 Contribution Interaction

Menu options when interacting:

1. **Taste the current stew**
2. **Contribute ingredients**
3. **Prepare a specific dish** (if unlocked)
4. **Ask Mara what the Pot needs**

#### 2.2.2 Ingredient Contributions

- Player can drop in:

  - Common ingredients (51) gathered from:
    - Hunts (meats, bones)
    - Gathering nodes (roots, mushrooms, herbs)
    - Professions & loot
  - Each ingredient family has:
    - Flavor tags (savory, sweet, bitter, earthy)
    - Theme tags (forest, river, ash-touched, hollowroot-adjacent)

- Under the hood:
  - Ember Pot tracks a simple **flavor balance** & **theme mix**:
    - e.g. `savory + earthy` → hearty stew
    - `spicy + ash-touched` → risky but powerful blend
  - Also tracks **quality level**:
    - Basic, Better, Superior, Legendary (per resource quality from 51–55).

- Contribution rewards:

  - Small Ember Kitchen rep (59).
  - Tiny chance at:
    - Recipe hints
    - Cooking XP boosts.

#### 2.2.3 Preparing Specific Dishes

Some interactions are:

- Not just “add random ingredients” but:
  - **Start a named recipe** at the Ember Pot.

Flow:

1. Player chooses “Prepare a dish”.
2. Selects from **unlocked recipes**:
   - Boar Hunter’s Feast
   - Ash-Steeped Stew
   - Riverbend Fisher’s Chowder
   - etc.
3. System checks:
   - Required ingredients (or close substitutes).
   - Player’s Cooking rank.
4. Player:
   - Adds required components.
   - Performs short timing/sequence actions (stir, add, taste).

Result:

- Successfully completed dish:
  - **Ember Pot current stew** becomes that dish for a certain time or number of servings.
- Failure:
  - Downgrades stew quality.
  - NPC commentary shifts accordingly.

#### 2.2.4 Buff Application

When player **tastes** the stew:

- If stew is **baseline**:
  - Gains basic buff: `Stew-Warmed`
- If stew is **dish-based**:
  - Gains buff tied to that dish:
    - e.g. `Boar Feast Fortification`, `Ash-Steeped Resilience`.

Rules:

- Only one Ember Pot buff at a time.
- Can be overwritten by:
  - Stronger Pot dishes
  - Other food sources (some priority rules needed).

---

### 2.3 Feasts & Specials – Communal Events

At certain times or triggers, the Ember Pot becomes the center of **larger events**:

- Daily “Evening Stew”
- Hunt Victory Feasts
- Campaign Milestone Feasts
- Seasonal/Festival Specials

#### 2.3.1 Daily Evening Stew

- At specific Lodge time windows:

  - Ember Pot enters a **“evening cycle”**:
    - NPCs gather and eat.
    - Mara may give a short speech or banter.
  - Player:

    - Gains a slightly stronger buff if present during the cycle.
    - Can overhear relevant gossip about:
      - Hunts
      - Deeds
      - Region state.

#### 2.3.2 Hunt Victory Feasts

- Triggered when:

  - Player completes a major Deed or milestone Hunt.
  - OR when a **world story beat** is resolved.

- Effects:

  - Ember Pot stew is replaced by a **special named dish**:
    - e.g. `The Boar That Wouldn’t Die Feast`
  - Trophies associated with that Hunt/Deed (86) are:
    - Temporarily highlighted in the Hall.
  - NPC attendance in Lodge surges.

- Player:

  - May receive:
    - One-time stronger buff.
    - Unique lines of dialogue.
    - Invitation to speak / modest “toasting” moment.

#### 2.3.3 Campaign & Corruption Specials

- During arcs like **Broken Tools** and **Hollowroot**:

  - Ember Pot may:

    - Experiment with new recipes:
      - E.g. `Attuned Broth`, `Root-Ward Pottage`.
    - Temporarily change visuals:
      - Slightly different color, steam pattern, or sound.

- Examples:

  - After Broken Tools resolution:
    - A celebratory “Firstgrain Stew” is served.
  - During Hollowroot escalation:
    - Mara attempts an **anti-corruption broth**:
      - Buffs give small resistance.
      - Too much of it might have side effects.

#### 2.3.4 Seasonal & Festival Feasts

- Linked to:

  - Lodge festivals (94).
  - Traveling musician events (EVT-GW-SOC-04).

- Provide:

  - Unique dishes with limited-time buffs.
  - Cosmetic or lore-only items (festival mugs, tokens).

---

## 3. Ingredients & Recipe Structure

### 3.1 Ingredient Families & Tags (Ref 51)

Every ingredient usable in the Ember Pot has:

- **Family**:
  - Meat (boar, stag, wolf, ash-beast)
  - Root (turnip, carrot, bitterroot)
  - Herb (hearty, aromatic, medicinal)
  - Fungus (forest, cave, ash-touched)
  - Liquid (broth, stock, river water, wine)
  - Special (corruption residue minor, hollowroot resonance, etc.)

- **Flavor Tags**:
  - `savory`, `earthy`, `spicy`, `bitter`, `sweet`, `smoky`, `ash`, `wild`, `fresh`, `corrupt`

- **Origin Tags**:
  - `greatwood_low_eaves`, `mid_greatwood`, `ash_edge`, `hollowroot_border`
  - `riverbend`, `turn_fields`, etc.

- **Quality**:
  - `poor`, `common`, `fine`, `rare`, `legendary`

The Ember Pot uses tags to:

- Determine dish variation.
- Give small side effects:
  - More `ash` tags → resilience vs fire but maybe dryness debuff.
  - More `fresh` + `wild` → stamina bonuses, but possible “restlessness”.

### 3.2 Recipe Types

1. **Comfort Stews**
   - Simple, hearty.
   - Low-level buffs:
     - Small health regen
     - Slight morale.

2. **Hunt Prep Dishes**
   - Focused on:
     - Damage vs specific families
     - Stamina/recovery.

3. **Profession Support Dishes**
   - Support gathering and crafting:
     - Longer focus
     - Slightly.

4. **Corruption-Related Dishes**
   - Buffs:
     - Resistance to corruption
     - Faster recovery.
   - Risk:
     - Might increase “corruption exposure” meter if misused.

5. **Feast-Level Dishes**
   - Big, celebratory dishes:
     - Combine multiple rare or story ingredients.
   - Unique names and one-off buffs.

---

## 4. Example Ember Pot Recipes (Greatwood 1–20)

These are **named dishes** that anchor the early game.

> NOTE: Names, tags, and effects are design stubs; tune numbers later.

### 4.1 “Boar Hunter’s Feast”

- **Type:** Hunt Prep / Feast
- **Unlocked By:**
  - Completing CH-GW-002 (“Boars in the Turned Fields”) a few times
  - OR completing D-GW-001 (“The Boar That Wouldn’t Die”)
- **Ingredient Pattern:**
  - Boar meat (savory, hearty)
  - Root vegetables (earthy)
  - Herb (aromatic)
- **Buff:**
  - Minor increased damage vs boars and similar beasts.
  - Slight health regen while out of combat.
- **Duration:**
  - Medium (longer than baseline stew).
- **Flavor:**
  - Hearty, thick; boar hunts often end with this in Lodge stories.

---

### 4.2 “Riverbend Fisher’s Chowder”

- **Type:** Comfort / Profession Support
- **Unlocked By:**
  - Reaching certain number of fishing / river-related gatherings.
- **Ingredients:**
  - Fish (river, fresh)
  - Cream/broth
  - Herbs (light)
  - Clay-filtered water (from Overfull Clay event).
- **Buff:**
  - Slight bonus to:
    - Fishing yields
    - River resource gathering.
  - Mild focus buff (slower stamina drain from gathering).
- **Duration:**
  - Medium-short.
- **Flavor:**
  - Associated with Riverbend Crossing and Stone Kettle Falls.

---

### 4.3 “Ash-Steeped Stew”

- **Type:** Hunt Prep / Corruption-Adjacent
- **Unlocked By:**
  - Progress in Ash-Edge and D-GW-003 (Tracks in the Ash).
- **Ingredients:**
  - Ash-touched beast cuts (ash, savory)
  - Root vegetables
  - Charcoal-clarified broth
- **Buff:**
  - Minor resistance to fire/heat-based damage.
  - Small bonus vs ash-eater creatures.
- **Risk:**
  - If made with too much ash-tagged ingredient:
    - Small chance of short debuff (dry throat, slower regen).
- **Flavor:**
  - Polarizing taste; some NPCs love it, some hate it.

---

### 4.4 “Attuned Broth of Firstgrain”

- **Type:** Profession / Campaign
- **Unlocked By:**
  - Completing Quest 5 of Broken Tools (60).
- **Ingredients:**
  - Woodsmoke from proper Firstgrain wood
  - Balanced roots and herbs from attuned sources
- **Buff:**
  - Slight increase in chance to:
    - Avoid tool breakage
    - Gain extra yield when using attuned tools.
- **Flavor:**
  - “This tastes like doing the job *right*, not easy.”

---

### 4.5 “Whisper-Ward Pottage”

- **Type:** Corruption-Related
- **Unlocked By:**
  - Progress in Hollowroot / D-GW-004.
- **Ingredients:**
  - Hollowroot resonance (minimal quantity)
  - Bitterroot
  - Specific herbs chosen to ground the mind.
- **Buff:**
  - Small resistance to:
    - Fear/terror effects
    - Whisper-based debuffs.
- **Risk:**
  - If brewed incorrectly:
    - Mild disorientation debuff.
- **Flavor:**
  - Unsettling, but hunters swear by its effect in the hollows.

---

### 4.6 “Festival Ember Stew”

- **Type:** Seasonal / Social
- **Unlocked By:**
  - Participation in festivals (94).
- **Ingredients:**
  - Wide variety of contributions from many NPCs/players.
- **Buff:**
  - Warm, social buff:
    - Increased social rep gain
    - Might boost emote or camp interactions.
- **Flavor:**
  - “Everything and everyone together in the same pot.”

---

## 5. Player Skill & Progression – Cooking with the Ember Pot

### 5.1 Cooking Rank & Ember Pot

- Cooking profession rank affects:

  - Chance to:
    - Succeed in complex dish actions.
    - Invent new variations.
  - Quality of dish outcome:
    - Fine vs common.

- The Ember Pot is:

  - The **public stage** for high-level cooks.
  - But basic use is accessible to:
    - Low-rank or non-cook players (simple contributions/tastes).

### 5.2 Recipe Discovery

Players can discover new Pot recipes by:

1. **Mara’s Quests**
   - Ember Pot-specific questlines (56, 85.x).
2. **Experimentation**
   - Add certain patterns of ingredients repeatedly.
   - Unlock a new named recipe when:
     - A stable configuration is found.
3. **Hunt/Deed Rewards**
   - Some Deeds grant:
     - “Mara’s notes for a new feast.”

4. **Event-Driven Unlocks**
   - Seasonal events:
     - Introduce limited-time recipes.

---

## 6. Integration with Other Systems

### 6.1 Hunts & Deeds (61–62)

- Certain Hunts drop:
  - **Signature ingredients** used in Pot recipes:
    - Special cuts, marrow, rare organs, spices.
- Deeds:
  - Unlock **named feasts**:
    - The Boar That Wouldn’t Die → Boar Hunter’s Feast.
    - Tracks in the Ash → Ash-Steeped Stew.
- Ember Pot commentary:
  - After a big Deed:
    - Mara or others bring it up during a feast event.

### 6.2 Dynamic Events & Region Layout (62–63)

- Events like **Ember Pot on the Road (HLP-05)** are:

  - **Field echoes** of the Lodge Ember Pot:
    - Same mechanics but smaller scope.

- Region Layout:
  - Certain POIs:
    - Edge-Settlers’ Camp
    - Char-Shelter Ruins
    - Stone Kettle Falls
  - Have:
    - Local cookfires using Ember Pot recipes at smaller scale.

- Ember Pot state can:
  - Reflect region conditions:
    - If ingredients from certain POIs are scarce due to events:
      - Mara complains.
      - Baseline stew might thin.

### 6.3 Professions & Broken Tools (52–57, 60)

- Broken Tools arc:

  - Ember Pot is central to:
    - Noticing patterns of **cracked pots**, **lids failing**.
  - Resolution:
    - Introduces attuned cookware (Emberbound Lid).
  - Pot visuals:
    - Slight “stability” change after attuned cookware is adopted.

- Professions:

  - Cooks:
    - Naturally have deeper Pot interactions.
  - Foresters & Woodworkers:
    - Provide fuels and wood types:
      - Different wood affects heating patterns:
        - Longer simmer vs quick boil.

### 6.4 Personal Quarters (B100)

- At higher quarters tiers:

  - Player can have:
    - A small personal Ember bowl that:
      - Ties into the main Pot:
        - You can scoop a portion of current stew to your room.
  - Provides:
    - Convenience (pre-hunt buff without returning to main Pot).
    - Flavor: “I brought a bowl back to think over tomorrow’s route.”

- Some room trophies (e.g. Emberbound Lid):

  - Unlock additional Pot flavor options:
    - Mara comments if you’re displaying them.

### 6.5 Trophy Hall (86)

- Certain major feasts:

  - Get **Hall plaques** in the Trophy Hall.
  - Example:
    - First successful Ash-Steeped Stew served as part of an Ash-Edge campaign.
- Hall can house:
  - Decorative **platters**, **old ladles**, or **broken lids** with narrative plaques.

---

## 7. Technical / Data Model Sketch

### 7.1 Ember Pot State

Per world (and per player where needed):

- `ember_pot_base_state`:
  - `current_dish_id` (or `baseline_stew`)
  - `quality_level`
  - `time_to_reset` or `servings_remaining`
- `ember_pot_flavor_vector`:
  - Summed flavor tags from contributions.
- `ember_pot_contributors`:
  - Lightweight record of who added what recently (for rep/xp).

### 7.2 Dish Definitions

Each dish:

- `dish_id`
- `name`
- `recipe_requirements`:
  - Ingredients with tags or specific items.
  - Minimum cooking rank.
- `flavor_profile`:
  - Tags for buff/narrative mapping.
- `buff_id`
- `origin_arc`:
  - Deed, Hunt, quest, festival.
- `visual_variant`:
  - Different stew look (color, thickness, garnish).

### 7.3 Buff Definitions

Ember Pot buffs:

- `buff_id`
- `name`
- `effect_tags` – `["health_regen", "stamina_regen", "vs_beast_boar"]`
- `magnitude`, `duration`
- `stacking_rules`:
  - With other food/Ember buffs.

### 7.4 Event Hooks

- Hooks to call when:

  - `current_dish_id` changes.
  - Specific `dish_id` is active:
    - Trigger feast events.
    - Toggle specific NPC dialogue sets.

---

## 8. Narrative & Feel

The Ember Pot should **feel** like:

- A **living ritual**:
  - Hunters coming back cold and bloodied.
  - Steam on faces, shared bowls, loud stories.

- A **thermometer** for Greatwood:

  - Thick, aromatic stew:
    - Hunts good, Lodge healthy.
  - Thin, watery broth:
    - Food short, trouble brewing.
  - Unsettling, slightly wrong smells:
    - Corruption creeping into the food chain.

- A **place to breathe**:

  - Players can take a second between Hunts.
  - Watch NPCs gossip.
  - Taste what the forest has become today.

---

## 9. Next Actions

1. **Lock baseline Ember Pot visual & placement** in the Lodge hall.
2. **Implement minimal loop**:
   - Baseline stew
   - Taste action
   - Simple contribution mechanic
3. **Add 3–5 concrete Greatwood dishes**:
   - Boar Hunter’s Feast
   - Riverbend Chowder
   - Ash-Steeped Stew
   - Attuned Broth
   - Festival Ember Stew stub.
4. **Wire into Professions & Broken Tools**:
   - Pot failures early.
   - Attuned cookware later.
5. **Create at least one Hunt Victory Feast** for:
   - D-GW-001 or D-GW-002.
6. **Integrate Pot state with Lodge ambience**:
   - NPC chatter
   - Evening stew cycles
   - Trophy Hall references.

The Ember Pot should read as **the heart of the Lodge**, where every choice in Greatwood—every Hunt, every Deed, every cut of meat and every root pulled from the soil—eventually finds its way into the same fire.
