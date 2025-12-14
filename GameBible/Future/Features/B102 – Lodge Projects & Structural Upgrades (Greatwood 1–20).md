# B102 – Camps, Fieldcraft & Long Hunts (Greatwood 1–20)

## Purpose

Define how **camps and fieldcraft** work when you leave Greatwood Lodge:

- Types of camps (fixed outposts vs. temporary hunter camps)
- How you **rest, recover, and prepare** mid-hunt
- How camps tie into:
  - Hunts & Deeds (61)
  - Dynamic events (62)
  - Region layout & POIs (63)
  - Wounds & recovery (B101)
  - Ember Pot & cooking (85)
  - Social & micro-scenes (64)
  - Secrets & caches (90)

This is the “**what happens between Lodge and lair**” system.

---

## Design Goals

1. **The forest is a trip, not a loading screen**

   - Travel is:
     - An actual phase of play.
     - Where real decisions and small stories happen.
   - Camps are:
     - Checkpoints
     - Story nodes
     - Not just “press sleep to heal”.

2. **Fieldcraft rewards preparation**

   - Players who:
     - Pack smart
     - Choose good camp spots
     - Learn wind, terrain, and event patterns
   - Have:
     - Safer long Hunts
     - Better odds on high-risk Deeds.

3. **Rest is powerful but not trivial**

   - Camps offer:
     - Wound recovery
     - Buffs
     - Crafting/prep space
   - But also:
     - Time cost
     - Resource cost
     - Ambush risk in some areas.

4. **Use the systems we already have**

   - Camps lean on:
     - Ember Pot logic (field cooking)
     - Wound rules (B101)
     - Secrets (90)
     - Reps & circles (59)
   - Instead of inventing totally separate mechanics.

5. **Reusable pattern**

   - Greatwood’s camp structure should:
     - Port cleanly to Hollowroot, Burn-Scar, etc.
     - With regional flavor swaps.

---

## 1. Camp Types

We define **three main types** of places you can “camp” or rest:

1. **Lodge & Major Outposts** – safest, fullest features.
2. **Semi-Permanent Hunter Camps** – pre-built field camps at POIs.
3. **Ad-Hoc Trail Camps** – player-placed, lightweight temporary camps.

### 1.1 Lodge & Major Outposts

**Greatwood Lodge** itself:

- Full services:
  - Ember Pot (85)
  - Bed/quarters (B100)
  - Wound treatment (B101)
  - Vendors, profession stations.

Major outposts (examples for Greatwood 1–20, anchored to 63):

- **First Watch Tower Outpost**
- **Edge-Settlers’ Camp**
- **Riverbend Waystation**
- **Ash-Edge Stand Lean-to**

Major outposts:

- Are **fixed locations** with:
  - Safe rest (very low or zero ambush chance)
  - A small cookfire or “Travel Ember Pot” variant
  - 1–2 profession hooks (e.g. basic sharpening, minimal woodwork)
- They serve as:
  - Mid-region respawn/return points
  - Hunt staging areas

### 1.2 Semi-Permanent Hunter Camps

These are **pre-existing hunter camps** scattered around Greatwood:

- Sometimes:
  - Have a tent or lean-to
  - Basic fire ring
  - Crude rack or tripod
- Some are:
  - Always there
  - Others appear only when:
    - Certain Hunts are active
    - Certain Deeds are in specific stages.

Usage:

- Safe-ish **short rest** points:
  - Limited benefits compared to Lodge
  - Cheaper to use than building your own camp
- Place where:
  - Dynamic events
  - Social scenes
  - Secret-related content can hook in.

### 1.3 Ad-Hoc Trail Camps (Player-Placed)

Player can **create a small camp** out on the trail.

- Requires:
  - Camp kit item (crafted or purchased)
  - Enough space / safe-ish terrain
  - Not too close to:
    - Other camps
    - Certain POIs.

Traits:

- Very limited footprint:
  - Small fire
  - Bedroll(s)
  - Maybe a simple rack/stand.
- Benefits:
  - Short rest
  - Small wound recovery
  - Use of certain Ember Pot-inspired field recipes (simple, not full Pot).
- Risk:
  - Depending on region:
    - Low chance of night attack or disturbance.
    - Higher near Ash-Edge / Hollowroot border.

---

## 2. Rest & Recovery Mechanics

### 2.1 Rest Types

We define three rest intensities:

1. **Quick Pause (No Fire)**
2. **Short Rest (Campfire)**
3. **Full Rest (Sleep)**

#### 2.1.1 Quick Pause

- Trigger:
  - Player chooses to “catch breath” in safe-ish area (no full camp).
- Effects:
  - Small stamina regen burst.
  - Tiny HP recovery (not enough to fix big mistakes).
- Time cost:
  - Very short (seconds).
- Risk:
  - Minimal to none.

Mostly a pacing tool, not a system pillar.

#### 2.1.2 Short Rest (Campfire)

- Trigger:
  - Use existing hunter camp
  - Or light a campfire at:
    - Semi-permanent camp
    - Ad-hoc camp position.
- Requirements:
  - Fuel (wood) from Forester / gathered resources.
  - Time (1–2 in-game hours).
- Effects:
  - Moderate HP recovery.
  - Minor wound recovery progress (B101):
    - Minor wounds tick toward healing.
    - Major wounds do **not** fully heal, but may:
      - Reduce severity slightly if multiple rests.
  - Buff refresh:
    - Re-applies or extends camp-related buffs (e.g. some food).
- Risk:
  - In safe zones/outposts:
    - Almost zero.
  - In wild / high-threat zones:
    - Small chance of:
      - Ambush (wolves, ash-eaters, bandits).
      - Corruption event (if near Hollowroot/ash pockets).

#### 2.1.3 Full Rest (Sleep)

- Trigger:
  - Sleep at:
    - Lodge quarters (B100)
    - Bed in major outpost
    - Bedroll at hunter/ad-hoc camp.
- Requirements:
  - Longer time skip.
  - Consumables (optional):
    - Food before bed
    - Specific salves to improve healing.
- Effects:

  In **Lodge / big outpost**:
  - Full HP restoration.
  - Minor wounds:
    - Always heal.
  - Major wounds:
    - Progress strongly toward healing (depending on treatment choices in B101).
  - Buff:
    - “Well-Rested” or variant, small stat boost.

  In **field camp**:
  - Good HP restoration.
  - Minor wounds:
    - Heal or nearly so.
  - Major wounds:
    - Slight progress only.
  - Buff:
    - Weaker “Camp-Rested” buff.

- Risk:
  - Lodge & outposts: no risk.
  - Field camp:
    - Low to moderate chance:
      - Night disturbances, partial rest.
      - Event trigger (62) for specific families (HLP, TRV, COR).

---

## 3. Camps & Wounds (B101)

### 3.1 Wound Recovery at Camps

When resting at **field camps**:

- Minor wounds:
  - Tick down faster than “just walking”.
- Major wounds:
  - At best:
    - Slight reduction in penalties
    - Or shift from “fresh” to “stabilized” state.
- Full clean-up of major wounds:
  - Still requires:
    - Lodge treatment
    - Or special story-driven solutions.

### 3.2 Corrupted Wounds in the Field

If you have **corrupted wounds**:

- Resting in certain places is **bad**:

  - Near Hollowroot border, ash pockets, or corruption nodes:
    - Rest may cause:
      - Wound to flare.
      - Corruption events to trigger.
  - At Lodge / specific blessed shrines:
    - Rest helps **contain** corruption effects.

Design note:

- This creates small choices:
  - Do I push on and camp near the lair (risky for the wound)?
  - Or fall back to safer camp / outpost?

---

## 4. Camps & Ember Pot / Cooking (85)

### 4.1 Field Cooking vs Lodge Ember Pot

At camps, you do **field cooking**, not full Ember Pot operations:

- Field cooking:
  - Limited recipes.
  - Single-character buffs or tiny group buffs.
- Lodge Ember Pot:
  - Big communal stews.
  - Shared buffs, feasts, story events.

Mechanically:

- Field cooking uses:
  - A subset of Ember Pot recipe tags.
  - Simpler inputs:
    - 1–3 ingredients.
- Buffs:
  - Shorter duration.
  - Lower magnitude.

### 4.2 Field Ember Kits

Players can carry **Ember Kits**:

- Consumable or partially refillable items that:
  - Allow:
    - 1–3 uses of field-cooking actions.
- Higher Ember Kitchen rank (59):
  - May grant:
    - Better field-kit efficiency.
    - Extra slots for recipes.

Example field dishes:

- **Hunter’s Jerky & Root Mash**
  - Slight stamina boost, small HP regen.
- **Ash-Edge Bitter Brew**
  - Tiny resistance vs ash damage for a short time.
- **Nerve-Steadying Tea**
  - Small fear-resistance buff.

### 4.3 Camp Interactions with Ember Kitchen Rep

High Ember Kitchen rank:

- Unlocks:

  - Extra field recipes.
  - Slightly stronger effects.
- Influences:
  - Mara’s commentary when you’re back at Lodge with stories of cooking out in the dark.

---

## 5. Camps, Hunts & Deeds (61)

### 5.1 Staging Hunts from Camps

Some Hunts/Deeds:

- Explicitly start or stage from **specific camps**.

Examples:

- A **night ambush** Deed stage might require:
  - Setting camp as bait at a certain clearing.
- Investigation Hunts:
  - Ask you to:
    - “Stay overnight at the glade and watch what comes.”

Mechanically:

- Accepting such Hunts:
  - Temporarily tags a specific camp as:
    - “Mission Camp”.
- Resting there:
  - Triggers special **event phases**:
    - Beast prowling
    - Whispers
    - NPC visits.

### 5.2 Hunt Risk & Camp Distance

Higher-risk Hunts:

- Often lie **farther from safe anchors**.

Design tension:

- You can:
  - Push deep and go “camp-light”:
    - Fewer rests
    - Faster, riskier.
  - OR make staging camps along the way:
    - Slower but safer.

Some Deeds:

- Might reward:
  - Smart camp placement:
    - E.g. placing a camp near a Deed lair without being detected.

---

## 6. Dynamic Events at Camps (62)

Camps are **prime hooks** for dynamic events:

### 6.1 Help / Rescue Events at Camps

Examples:

- **Lost Gatherer appears at your fire** (HLP-GW-01 tie-in).
- **Stray apprentice stumbles into your camp** after sunset.
- **Traveler cart limps into view**, asking to share the fire.

Outcome:

- Micro-quests:
  - Escort them next day.
  - Patch up their wound.
  - Share food in exchange for info.

### 6.2 Travel Hazards & Ambushes

At field camps, random rolls may trigger:

- **Beast sniffing the fire** – you choose:
  - Scare it off
  - Try to hunt it
  - Let it be.
- **Bandit/poacher probing** – conflict or negotiation.
- **Ash wind** near Ash-Edge:
  - Reduces rest effectiveness / triggers event.

### 6.3 Corruption & Weirdness Near Hollowroot

Camps too close to:

- Whispershade Glade
- Hollowroot border nodes

…may see:

- Whispers around camp.
- Shadows that don’t move right.
- Mini COR events, like:
  - Whispering Cache
  - Roots That Bleed.

These create:

- Atmosphere
- Hooks into D-GW-004

---

## 7. Social & Micro-Scenes at Camps (64)

### 7.1 Party & NPC Moments

Camps are:

- Natural places for **dialogue scenes**:

  - Rival hunter:
    - Shows up at a pre-set camp to talk or challenge.
  - Apprentices:
    - Ask questions or tell rumors.
  - Traveling musician:
    - Shares songs over a borrowed fire.

These scenes:

- Unlock based on:
  - Rep ranks (59)
  - Deed progress
  - Wound history (B101)
  - Time-of-day.

### 7.2 Quiet Moments

Not every camp scene is big:

- Character sits, sharpening blade.
- Short monologue thoughts (if we support player-character perspective text).
- Environmental audio:
  - Distant beasts
  - Cracking branches
  - Ember pops.

These help:

- Pacing
- Emotional texture
- Make the forest feel **watched** but not always hostile.

---

## 8. Camps & Secrets / Exploration (90)

### 8.1 Secret-Adjacent Camps

Some secret chains:

- Only appear or progress if you:

  - Camp in certain **unmarked but good spots**:
    - E.g. cliff overhang with view of White Stag route.
    - Remote ridge beyond Old Bark Terrace.

Examples:

- **White Stag Trail (90)**:
  - Increased chance of stag sighting:
    - If you camp at specific overlooks.
- **Sleeping Giant’s Echo**:
  - A late-night rumble only audible:
    - When camping above certain ravines.

### 8.2 Camp as a “Secret Detector”

Some secrets:

- Only become interactable after:

  - You’ve rested there:
    - Tree nearby “responds” after you sit.
    - Whisper stone lights faintly only after long quiet.

Mechanically:

- Rest finishing at certain camp volumes:
  - Triggers secret flag enabling:
    - Nearby interactable or event.

---

## 9. Fieldcraft & Player Choices

### 9.1 What to Pack

Preparation:

- Deciding which combination of:

  - Camp kits
  - Fuel bundles (wood)
  - Food/ingredients
  - Wound salves
  - Tools

…to bring dictates:

- How deep you can go.
- How many times you can rest safely.

### 9.2 Where to Camp

Choosing location matters:

- High, open camp:
  - Better visibility
  - More wind exposure (cold, maybe more noise).
- Low, sheltered camp:
  - Easier to ambush
  - More stable temperatures & stealth.

Some Hunts & events:

- Care about:
  - Smoke visibility
  - Scent travel
  - Proximity to known beast routes.

---

## 10. Technical / Data Model

### 10.1 Camp Definitions

For **fixed camps** (Lodge, outposts, hunter camps):

- `camp_id`
- `camp_type` – `lodge`, `outpost`, `hunter_camp`
- `region_tag`, `poi_id`
- `services[]`:
  - `rest_quick`, `rest_short`, `rest_full`
  - `field_cooking`
  - `wound_treatment_light`
- `safety_level` – influences ambush chance
- `event_hooks[]` – IDs of events that can use this camp
- `social_scenes[]` – possible camp-specific cutscenes/dialogues.

For **ad-hoc camps**:

- Template definition:
  - `camp_type` – `temporary`
  - `max_per_region`
  - `base_safety_level`
  - `allowed_terrain_tags[]`
  - `build_cost` (items/resources)

Engine stores **instances** placed by player with:

- `instance_id`
- `world_position`
- `remaining_uses` (optional)
- `last_used_time`

### 10.2 Rest Logic

On rest:

- Check:
  - Camp safety
  - Time-of-day
  - Nearby event budgets (62)
  - Player wound state (B101)
- Resolve:
  1. Event chance roll.
  2. If event triggers:
     - Run event phases, which may:
       - Interrupt rest
       - Partially complete rest.
  3. Apply:
     - HP & resource recovery.
     - Wound recovery increments.
     - Buff application.

### 10.3 Integration Points

- **Hunts / Deeds (61)**:
  - Flags: `hunt_staged_from_camp`, `deed_camp_phase`.
- **Events (62)**:
  - `camp_event_slots` in region definitions.
- **Rep (59)**:
  - Certain camp-based help/rescue events grant rep.
- **Secrets (90)**:
  - `camp_rest_triggered_secret_ids`.

---

## 11. Greatwood-Specific Example Camps

Just a quick sample to anchor mental picture (full detail would go in 63/POI files):

1. **First Watch Tower Outpost**
   - Type: Major Outpost
   - Services:
     - Short/Full rest
     - Basic field cooking
     - Light wound treatment
   - Hooks:
     - Sentries in the Boughs Hunt staging
     - Night watch social scenes.

2. **Edge-Settlers’ Campfire Circle**
   - Type: Hunter Camp / Settler hybrid
   - Services:
     - Short rest
     - Simple food
   - Hooks:
     - Boar & field Hunts
     - Settler micro-quests.

3. **Raven’s Ledge Scout Camp**
   - Type: Hunter Camp (mid-elevation)
   - Services:
     - Short rest only
     - Good vantage (tactical planning)
   - Hooks:
     - Bird-of-prey Hunts, “Silence in the Treetops”.

4. **Ash-Edge Stand Lean-to**
   - Type: Rough Outpost
   - Services:
     - Risky full rest (ash winds)
     - Field cooking with ash-based recipes
   - Hooks:
     - Ash-Eaters Hunts & Deeds
     - Corruption event chances during rest.

---

## 12. Next Actions

1. **Mark candidate camp locations** in Greatwood layout (63):
   - 3–4 major outposts.
   - 4–8 hunter camps.
   - Rules/volumes for ad-hoc camps per region.

2. **Implement basic camp template**:
   - Short rest
   - Field cooking
   - Simple event hooks.

3. **Hook wounds & Ember Pot** into rest logic:
   - Minor wound ticks
   - Field recipes vs Lodge feasts.

4. **Author a first wave of camp scenes**:
   - 2–3 rival hunter scenes.
   - 2–3 apprentice/help scenes.
   - 1–2 corruption tension beats near Hollowroot border.

5. **Tune risk & benefit**:
   - Ensure:
     - Camps meaningfully help on Hunts.
     - But you can’t brute-force everything by infinite camping.

B102 should be treated as the **“between” system**: everything that happens in the little circle of light when you’re not in the Lodge and not face-to-face with the beast yet… but the forest is already deciding what it thinks of you.
