# 59 – Greatwood Lodge Reputation, Circles & Titles

## Purpose

Define how **reputation, circles, and titles** work in and around Greatwood Lodge:

- The Lodge **reputation spine** and its sub-factions (“circles”).
- How Hunts, Deeds, professions, events, Ember Pot, and social choices **feed rep**.
- What **ranks/titles** you earn and what they unlock.
- How rep ties into:
  - Hunt Board (61)
  - Dynamic events & region play (62–63, 90)
  - Lodge social layer (64)
  - Ember Pot (85)
  - Trophy Hall & Quarters (86, B100)
  - Broken Tools & professions (52–57, 60)

This is the **meta-progression loop** that says:
> “You’re not just leveling, you’re becoming *someone* in this Lodge.”

---

## Design Goals

1. **Simple spine, deep flavor**

   - Easy to understand:
     - “Do Lodge things → earn Lodge favor.”
   - Depth comes from:
     - *Where* you invest (which circle)
     - *What* stories unlock at each rank.

2. **No hard-lock, strong soft pressure**

   - Reputation should:
     - Encourage certain play (help Ember Kitchen, Foresters, etc.)
   - But **not**:
     - Hard-lock core game systems behind grind walls.

3. **Titles feel earned, not spammed**

   - Fewer, more meaningful titles:
     - “New Face”, “Working Hunter”, “Named Hunter”, etc.
   - Titles visible:
     - In social UI
     - In some NPC dialogue
     - On the Hunt Board / Hall ledger.

4. **Circles = lenses on the same forest**

   - Lodge is one structure, but:
     - Foresters
     - Ember Kitchen
     - Woodworkers
     - Scribes/Scholars
   - Each cares about **different actions**.

5. **Reusable pattern**

   - 59 is the base pattern for:
     - Other Lodges
     - City factions
     - Future regions.

---

## 1. Lodge Reputation Structure

### 1.1 Main Tracks

Greatwood reputation is split into:

1. **Lodge Core** – “Are you a *hunter* in good standing?”
2. **Forester’s Circle** – Forest management, logging, path-making.
3. **Ember Kitchen** – Food, Ember Pot, camp kitchens.
4. **Carpenter’s Hall** – Woodworking, structures, repairs.
5. **Scribes & Scholars** (Records) – Elira’s domain: reports, maps, lore.
6. **(Future) Alchemist / Corruption Study** – Tied to Hollowroot & later chapters.

All of these roll up under an implicit **“Greatwood Lodge Standing”** meta-score, but most rewards come from the **individual tracks**.

### 1.2 Rank Tiers (per track)

Each track uses a simple tier ladder:

- **Rank 0 – Stranger**
- **Rank 1 – New Face**
- **Rank 2 – Working Hand**
- **Rank 3 – Trusted Hand**
- **Rank 4 – Named Hunter / Pillar** (name varies by circle)

Each ladder has its own flavor names, but mechanically:

- Rank 0: No track-specific perks, limited dialogue.
- Rank 1: Basic services & intro discounts.
- Rank 2: Access to better contracts/recipes, more barks.
- Rank 3: Deeper story beats, unique items, social micro-quests.
- Rank 4: Top tier for Greatwood 1–20:
  - Your name in records.
  - Bigger social recognition.
  - Some persistent account-wide flavor hooks possible.

---

## 2. How You Earn Reputation

### 2.1 Core Sources

Each activity contributes to **one or more tracks**:

- **Hunts (61)**
  - Lodge Core (primary)
  - Sometimes Foresters (if forest-safety related)
  - Sometimes Ember Kitchen (meat & ingredient delivery).

- **Deeds (61)**
  - Big bump to Lodge Core.
  - Secondary bumps to relevant circles:
    - Boar Deed → Kitchen & Foresters.
    - Ash Deed → Foresters & Scholars.
    - Whisper / Hollowroot Deed → Scholars & Alchemists.

- **Professions & Broken Tools (52–57, 60)**
  - Foresters: tree work, path clearing, wood scouting.
  - Ember Kitchen: cooking for the Pot, road-cauldrons.
  - Carpenters: repairs, attuned beams, structures.
  - Scribes: accurate reports, maps, bestiary notes.

- **Dynamic Events (62)**
  - Help/Rescue events → Lodge Core + relevant circle.
  - Ember Pot on the Road → Ember Kitchen.
  - Panicked Beast & Lost Gatherer → Foresters.

- **Secrets & exploration (90)**
  - Turning in certain lore items → Scribes.
  - Revealing new safe routes → Foresters + Lodge Core.

- **Lodge Social / Micro-Quests (64)**
  - Micro-quests from Mara, Arlen, Fen, Elira, rival, apprentices:
    - Small but flavorful rep bumps.

### 2.2 Rep Values (Tuning Concept)

We don’t need exact numbers here, but the *shape*:

- Common Hunt completion:
  - Small Lodge Core rep, tiny profession circle rep.
- Deeds:
  - Large Lodge Core bump.
  - Medium to large circle bump (depending on theme).
- Profession tasks / deliveries:
  - Low rep, but frequent and stackable.
- Secrets turned in:
  - Moderate Scribe rep, small Lodge Core rep.

No rep **decay** in Greatwood 1–20 baseline (unless a specific story beat demands it). Any “rep loss” is story-gated:

- e.g. siding with poachers in a Deed → one-off rep hit with Foresters/Lodge.

---

## 3. Lodge Core Track

### 3.1 Rank Names

- Rank 0: **Outsider**
- Rank 1: **New Face**
- Rank 2: **Working Hunter**
- Rank 3: **Trusted Hunter**
- Rank 4: **Named Hunter of Greatwood**

### 3.2 Rank Unlocks

**Rank 0 → 1 (Outsider → New Face)**  
Unlocked by:

- Completing initial Lodge intro & first Hunts.

Perks:

- Can use:
  - Basic Hunt Board contracts.
- Basic Ember Pot stew access.
- Simple bed in shared quarters (B100 Tier 0).

**Rank 1 → 2 (New Face → Working Hunter)**  
Conditions (examples):

- X common Hunts completed (CH-GW-001/002/005, etc.)
- First Deed started OR certain region milestones.

Perks:

- Access to slightly higher-risk Hunts on the Board.
- Ember Kitchen:
  - Discount on basic food.
- Lodge treatment:
  - Small discount on wound treatment (B101).
- Quarters:
  - Unlocks B100 Tier 1 (“Working Hunter” room).

**Rank 2 → 3 (Working Hunter → Trusted Hunter)**  

Conditions:

- Y Hunts, at least one Deed completed.
- Positive completion of some help/rescue events.

Perks:

- Deeds:
  - Some high-tier Deeds show only at this trust.
- Social:
  - More personal dialogues:
    - Rival hunter respects/challenges you.
    - Elira shares deeper Lodge history.
- Services:
  - Better treatment discounts.
  - Access to certain Lodge-only gear (cosmetic or minor-functional).
- Quarters:
  - B100 Tier 2 unlocked.

**Rank 3 → 4 (Trusted Hunter → Named Hunter of Greatwood)**  

Conditions:

- All Greatwood Deeds completed **or** key narrative arc finished.
- Combined threshold on circles (you can’t totally neglect everyone).

Perks:

- Title:
  - “Named Hunter of Greatwood” available.
- Trophy Hall (86):
  - Your name added to a recognition board.
- Social:
  - NPCs reference you in third-person stories to others.
- Quarters:
  - B100 Tier 3 and 4 gating: this and a circle track at Rank 3+.

---

## 4. Circle Tracks

### 4.1 Forester’s Circle

**Role:** Forest edges, path safety, logging, ash-line management.

Rank flavors:

- R0: Stranger to the Trees
- R1: Saw-Hand
- R2: Line Keeper
- R3: Grove Steadfast
- R4: Ash-Line Warden

Core rep sources:

- Hunts touching forest health:
  - CH-GW-001, 002, 007, 009, 010.
- Professions:
  - Forester tasks, route scouting, marking hazardous trees.
- Events:
  - Lost Gatherer, Panicked Beast, Tree That Bends Away.

Perks by tier (examples):

- R1:
  - Better prices on wood tools.
  - Forester barks acknowledge you.
- R2:
  - Access to:
    - Forester-only Hunts or side-assignments.
  - Profession:
    - Extra “cut options” for wood yields.
- R3:
  - Influence on:
    - Where new paths/loggings appear in the world.
  - Special Forester trophy or decor for quarters.
- R4:
  - Named in:
    - Forester Circle records.
  - Foresters will:
    - Sometimes adjust event outcomes (e.g. send help to your location more readily).

---

### 4.2 Ember Kitchen

**Role:** Cooking, Ember Pot, field kitchens.

Rank flavors:

- R0: Stranger to the Fire
- R1: Spoon-Holder
- R2: Pot-Steward
- R3: Ember-Hand
- R4: Keeper of the Pot

Core rep sources:

- Delivering ingredients.
- Cooking via profession.
- Ember Pot contributions/dishes (85).
- Event:
  - Ember Pot on the Road (HLP-05)
  - Feeding hungry NPCs in micro-quests.

Perks:

- R1:
  - Slight discount on Lodge food / Pot fees.
- R2:
  - Unlock Ember Pot recipe hints & baseline Ember Pot-specific quests.
- R3:
  - Access to advanced recipes:
    - Attuned Broth, Whisper-Ward Pottage, etc. (once story-unlocked).
  - More dialogue with Mara about deeper Ember philosophy.
- R4:
  - Your name occasionally dropped in kitchen barks:
    - “Use their cut, they know what they’re doing.”
  - Room:
    - Unique kitchen-themed trophies/decor for B100.

---

### 4.3 Carpenter’s Hall

**Role:** Structural integrity, woodcraft, attuned beams & tools.

Rank flavors:

- R0: Unknown Hand
- R1: Bench-Helper
- R2: Beam-Faithful
- R3: Grain-Listener
- R4: Master of the Hall

Core rep sources:

- Woodworking profession tasks.
- Repairing structures in events:
  - Stuck Cart hardware
  - Broken ladders, bridges.
- Broken Tools questline (60):
  - Major injection of rep on completing key steps.

Perks:

- R1:
  - Cheap access to basic gear upgrades (simple hafts, scraps).
- R2:
  - Recipes for attuned wood items unlocked more easily.
- R3:
  - Option to influence:
    - Where new structural props appear in Lodge / nearby POIs.
- R4:
  - A named workbench or small plaque in Carpenter’s Hall.
  - Special attuned tool skins or minor stat cosmetics.

---

### 4.4 Scribes & Scholars (Records)

**Role:** Documentation, bestiary, maps, lore; Elira’s domain.

Rank flavors:

- R0: Ink Stranger
- R1: Margin-Note
- R2: Ledger-Hand
- R3: Story-Keeper
- R4: Chronicler of Greatwood

Core rep sources:

- Turning in detailed Hunt reports.
- Collecting lore notes from secrets (90).
- Helping Elira with specific investigation stages in Deeds.
- Mapping POIs (63) and returning to Elira with info.

Perks:

- R1:
  - Free access to basic bestiary entries and simple map hints.
- R2:
  - Advanced map overlays:
    - You can mark personal notes and see more POI detail.
- R3:
  - Access to:
    - Deeper lore dialogue.
    - Hidden background on Deeds and Lodge history.
  - Tiny buff:
    - Slightly clearer tracking info in Hunts.
- R4:
  - Your name appears in:
    - Record room as a Chronicler.
  - Rare social scenes:
    - Elira asks your perspective for the archive.

---

## 5. Titles & Display

### 5.1 Player Titles

Titles come from:

- Lodge Core rank.
- Specific Deeds.
- Circle Ranks.

Examples (Greatwood 1–20 pool):

- **“New Face at the Fire”** – Lodge Core Rank 1.
- **“Working Hunter of Greatwood”** – Lodge Core Rank 2.
- **“Named Hunter of Greatwood”** – Lodge Core Rank 4.
- **“Ash-Line Warden”** – Forester Rank 4.
- **“Keeper of the Pot”** – Ember Kitchen Rank 4.
- **“Grain-Listener”** – Carpenter Rank 3+ and Broken Tools completion.
- **“Chronicler of Greatwood”** – Scribe Rank 4.
- **Deed Titles:**
  - “Boar-Breaker” (D-GW-001).
  - “Fire-Stalker’s Bane” (D-GW-002).
  - “Ash-Burrow’s End” (D-GW-003).
  - “Whisper-Warden” or “Whisper-Bound” (D-GW-004 choice).
  - “The Lodge’s Scales” (D-GW-005, depending on judgement).

### 5.2 Where Titles Show

- Character sheet / social UI.
- Nameplate (optional toggle).
- NPC dialogue:
  - Some characters use:
    - Your chosen title.
    - Or your highest Lodge title.

Trophy Hall:

- Recognition Row (86) may display:
  - “Named Hunters of Greatwood” board.
  - “Chroniclers” plaque.

---

## 6. Rep & The Lodge Social Layer (64)

### 6.1 Unlocking Social Content

Each rep threshold:

- Unlocks new **conversation topics**:
  - Mara cooking philosophy (Ember).
  - Arlen’s view on overlogging vs caution.
  - Fen’s attitudes about tools lying/attuning.
  - Elira’s lore and worries.

Micro-quests (64):

- Often gated by:
  - Rank 2+ with appropriate circle.
  - E.g. “The Apprentice’s First Cut” requires:
    - Forester or Carpenter rank high enough.

### 6.2 Barks Based on Rank

NPCs use rank to:

- Change tone:
  - “You’re not new anymore.” vs “First time out?”
- React to your presence:
  - Low rank:
    - Neutral.
  - High rank:
    - Deference, curiosity, rivalry.

Rival Hunter:

- At certain Lodge ranks:
  - Shifts from dismissive:
    - “Try not to die out there.”
  - To competitive respect:
    - “Race you to the Ash-Edge. Loser buys stew.”

---

## 7. Rep & System Integration

### 7.1 Hunts & Deeds (61)

- Some Hunts only appear above:

  - Lodge Rank 1 or 2 (to avoid overwhelming newbies).
- Deeds may require:
  - Minimum Lodge or circle ranks:
    - e.g. D-GW-005 (A Debt in Blood) might not fire until:
      - Lodge Core Rank 2+ and certain Hunts done.

Deed outcomes:

- Can boost or dent certain circles:
  - Choosing harsh justice vs leniency in D-GW-005:
    - Might please Foresters & core Lodge.
    - Or please Ember Kitchen / Scribes.
  - But no “you’re locked out forever” punishments.

### 7.2 Ember Pot & Kitchen (85)

- Higher Ember Kitchen rank:

  - Reduces ingredient requirements or cost overhead for some dishes.
  - Unlocks special Ember Pot “communal feasts” you can initiate.

- Ember Pot feast events:
  - Have different tone if served under a Keeper-of-the-Pot vs baseline.

### 7.3 Broken Tools & Attunement (60)

- Broken Tools questline:

  - Heavily boosts Carpenter & Forester rep on completion.
- High Carpenter/Forester rep:
  - Unlocks:
    - Attuned recipes.
    - Better yields from attunement tasks.
  - Slightly more tolerant NPC attitudes:
    - When you experiment/“break things” in field trials.

### 7.4 Secrets & Exploration (90)

- Turning in certain notes/maps to Elira:

  - Delivers Scribe rep.
- High Scribe rank:
  - Might reveal additional map hints about:
    - Secret caches.
    - Shortcut paths.

### 7.5 Wounds & Treatment (B101)

- Treatment cost scaling:

  - Lodge Core rank:
    - Generic discount.
  - Ember Kitchen rank:
    - Sometimes free healing soup or tonics.
  - Carpenter/Forester rank:
    - Help with physical rehab events (micro-quests for recovery).

---

## 8. Tech & Data Model

### 8.1 Reputation Data

Per character, for Greatwood:

- `rep_lodge_core`
- `rep_foresters`
- `rep_kitchen`
- `rep_carpenters`
- `rep_scribes`
- `rep_alchemists` (future)

Each track:

- Derived **rank**:
  - Threshold table.
- Exposed **title flags**:
  - Which titles are unlocked/eligible.

### 8.2 Event Hooks

Any action that matters fires a generic hook:

- `OnRepEvent(tag, value, context)`
  - e.g. `tag = "hunt_completed", context = CH-GW-002`
- A rep routing table maps:
  - Tags/contexts → rep track and amounts.

Ex:

- `hunt_completed:CH-GW-002`:
  - +X Lodge Core
  - +Y Foresters
  - +Z Ember Kitchen (if you bring meat back).

### 8.3 UI

Lodge Reputation screen:

- Shows all tracks as:
  - Bars with thresholds marked.
- Highlight:
  - Current rank & next unlocks.
- Small text:
  - “You gained favor with the Forester’s Circle from recent Hunts.”

Titles UI:

- List of unlocked titles.
- Choose active title.
- Show:
  - Source (rank, Deed, special).

---

## 9. Next Actions

1. **Lock threshold values** for ranks for Greatwood’s pacing.
2. **Fill the rep routing table** with:
   - All Hunts & Deeds (61)
   - Broken Tools steps (60)
   - Key dynamic events (62)
   - Key secrets / lore hand-ins (90).
3. **Author rep-based dialogue variations**:
   - Baseline, mid-rank, high-rank versions for:
     - Mara, Arlen, Fen, Elira, rival, apprentices.
4. **Wire quarter & Hall unlocks** to rank-based flags:
   - B100 tiers.
   - 86 recognition boards / plaques.
5. **Test extremes**:
   - Player hyper-focusing on 1 circle vs spreading out.
   - Ensure no track becomes useless or mandatory.

59 is the **“who you are to these people” file**: levels are what you can do; reputation is who remembers that you did it.
