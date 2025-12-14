# 90 – Secrets, Caches & Exploration Rewards (Greatwood 1–20)

## Purpose

Define how **secrets, caches, and “off-the-path” rewards** work in Greatwood:

- Small and medium **hidden rewards**: chests, stashes, hidden shrines, memory spots.
- How they tie into:
  - Region layout & POIs (63)
  - Hunts & Deeds (61)
  - Dynamic events & ambient encounters (62)
  - Professions & Broken Tools (52–57, 60)
  - Ember Pot, Lodge, trophies, and quarters (64, 85, 86, B100)

This file makes sure **going off the road is always worth it**, without turning the forest into a loot piñata.

---

## Design Goals

1. **The forest pays attention to wanderers**

   - If you:
     - Follow a fox
     - Walk the long way around a hill
     - Climb where you don’t “need” to
   - The world should sometimes respond with:
     - A stash
     - A story
     - A weird little moment.

2. **Small secrets, big connective tissue**

   - Most secrets are small:
     - A cache, a note, a safe shortcut, a buff spot.
   - But together they:
     - Teach lore
     - Hint at Hunts/Deeds
     - Reward professions and attentive play.

3. **Consistent language, varied execution**

   - Players learn over time:
     - “This kind of rock, these markings, this fox behavior = there’s probably something nearby.”
   - But the **exact reward** and **exact trick** should vary.

4. **Exploration, not map-hoovering**

   - We avoid:
     - Filling map with icons for every secret.
   - Instead:
     - Use spatial hints, NPC stories, and environmental clues.

5. **Reusable scaffolding**

   - Patterns defined here should:
     - Reuse data structures from Hunts, events, POIs.
     - Be easy to copy into Hollowroot, Burn-Scar, later regions.

---

## 1. Secret Types & Taxonomy

We classify Greatwood secrets into **families** for implementation and tuning.

### 1.1 Secret Families

1. **Simple Caches**
   - Small hidden stashes with immediate loot.
2. **Layered Caches**
   - Require short interaction chains (switches, tracks, minor platforming).
3. **Lore Shrines & Memory Spots**
   - Primarily narrative, occasionally with buffs.
4. **Profession Nooks**
   - Hidden resource-rich micro-spots tied to a profession.
5. **Traversal Shortcuts**
   - Secret ladders, root tunnels, ridge paths.
6. **Event-Linked Secrets**
   - Only appear or become visible via dynamic events (62).
7. **Rare / Golden Secrets**
   - Region-defining hidden chains and one-offs.

Each secret instance has:

- `secret_id`
- `family` (from above)
- `poi_anchor` (from 63)
- `visibility_state` (always visible / revealed by condition)
- `reward_profile` (loot + intangible benefits)
- Optional:
  - `linked_hunt_id`
  - `linked_deed_id`
  - `linked_event_ids`

---

## 2. World Placement Philosophy

### 2.1 Relationship to POIs (63)

Most secrets live:

- **Just off** major POIs:
  - Around Turned Fields, Riverbend Crossing, Ash-Edge Stand, Stone Kettle Falls, Whispershade Glade, etc.
- Along **secondary paths**:
  - Spiderway Cut side ledges
  - Under/around Canopy Ridge
  - Within Old Bark Road fragments
- In **“dead corners”** of otherwise traversed spaces:
  - Behind waterfalls
  - Under bridges
  - At the bottom of ravines you can safely climb out of.

### 2.2 Density Targets

Per **major POI cluster** (63):

- 2–4 simple caches.
- 1–2 layered caches.
- 1 lore/memory spot.
- 0–1 rare/golden secrets (spread out across the whole region).

Travel paths between POIs:

- Every **2–3 minutes** of off-road wandering should have:
  - At least something interesting:
    - A minor event
    - A small cache
    - A weird rock formation with a note.

---

## 3. Simple Caches

### 3.1 Concept

Small, quick payoffs. Designed to:

- Reward:
  - Curiosity
  - Line-of-sight puzzles
  - Following environmental hints
- Not require:
  - Combat
  - Puzzles more than 10–30 seconds.

### 3.2 Placement Patterns

Common patterns:

1. **Behind / Under Geometry**
   - Behind:
     - Waterfalls (Stone Kettle Falls).
     - Fallen logs.
     - Large roots.
   - Under:
     - Bridges.
     - Ledges near Riverbend.

2. **Edge-of-Cliff Rims**
   - Slight paths along cliff edges:
     - Lead to small alcoves.
   - Often overlooked if you stick to main trail.

3. **Tree Hollows & Root Pockets**
   - Large trees with:
     - Hollow bases.
     - Lift-up roots.

4. **Abandoned Camp Remnants**
   - Small, half-buried crates or packs near old camps.

### 3.3 Example Simple Caches (Greatwood)

#### 3.3.1 Fox’s Stash (Template)

- **secret_id:** `GW_SC_FOX_STASH_01`
- **Family:** Simple Cache
- **Anchor:** Low-Eaves Paths, Edge-Settlers’ Camp
- **Trigger Hint:**
  - Fox on the Road event (AMB-03) leads to the rough area.
- **Location:**
  - Small gap between rocks, low to the ground.
- **Reward Profile:**
  - Modest coin
  - 1–2 mid-tier ingredients (herbs/meat)
  - Low chance of a small note hinting at a bigger secret nearby.

#### 3.3.2 Riverbend Driftwood Cache

- **Anchor:** Riverbend Crossing downstream bank
- **Location:**
  - Behind a large driftwood snag, partly submerged.
- **Rewards:**
  - Water-linked ingredients (fish, herbs)
  - Chance for `fine_clay` (Overfull Clay synergy)
  - Maybe a soggy but readable scrap of early Lodge mapping.

#### 3.3.3 Webbed Satchel

- **Anchor:** Spiderway Cut
- **Location:**
  - Web-tangled nook just off main path.
- **Rewards:**
  - Mix of:
    - Silk
    - Old coins
    - Low-tier potions.
- **Risk:**
  - Disturbing it might spawn:
    - 1–2 small spiders.

---

## 4. Layered Caches

### 4.1 Concept

Small “mini-puzzles” lasting 1–5 minutes:

- Follow tracks
- Hit 2–3 switches
- Use noise/visibility rules
- Might require:
  - Light combat
  - Mild platforming

### 4.2 Patterns

1. **Track & Cache**
   - Find:
     - Unusual tracks.
   - Follow them:
     - Off main path.
   - Track ends at:
     - Nest, burrow, stash.

2. **Hunter Marks Trail**
   - Follow Lodge markers in a non-obvious direction:
     - Up a ridge
     - Along cliff
   - Ends in a hidden hunter’s stash.

3. **Environmental Locks**
   - Root door that only opens if:
     - You interact with 2–3 specific tree markings.
   - Rock “teeth” that must be pushed/pulled.

4. **Sound / Whisper Clues**
   - Subtle audio:
     - Dripping water
     - Whisper directions
   - Lead to hidden spaces near Hollowroot border.

### 4.3 Example Layered Caches

#### 4.3.1 Old Hunter’s Side Path

- **secret_id:** `GW_LC_HUNTER_SIDE_01`
- **Anchor:** Old Bark Road segment near Mid-Greatwood
- **Steps:**
  1. Player notices:
     - Small, faded Lodge marker slightly off road.
  2. Following markers:
     - Up a side ridge.
  3. Reaches:
     - Overlook with small stash box.
- **Rewards:**
  - Mid-tier Hunt materials.
  - Note from an older hunter:
    - Hints at Deed D-GW-001 boar history.
- **Hooks:**
  - Reinforces Lodge marker language.
  - Ties into Hall and boar Deed lore.

#### 4.3.2 Root-Notch Sequence

- **Anchor:** Around Gatherers’ Green.
- **Steps:**
  1. Player sees 3 trees with:
     - Subtle carved notches, each near a root-lift.
  2. Interacting with them in:
     - Correct order (hinted by age of cuts / moss).
  3. Opens:
     - Small root-hollow that pops up or cracks.
- **Rewards:**
  - Profession:
    - Extra herbs, mushrooms.
    - Rare seeds.
- **Hooks:**
  - Ties into Broken Tools “grain remembers” language.
  - Could unlock a small profession recipe.

#### 4.3.3 Whispered Cache

- **Anchor:** Whispershade Glade / Hollowroot Border.
- **Steps:**
  1. While in event **Whispering Cache** (COR-04):
     - Player chooses to “trust” the whispers.
  2. Follow intangible directions through glade.
  3. Find:
     - Partially buried chest under twisted roots.
- **Rewards:**
  - Higher-tier loot:
    - Corruption-touched reagents.
    - Rare story items.
- **Risk:**
  - Adds a bit of corruption exposure.
- **Hooks:**
  - Direct connection to D-GW-004 (The Whisper in the Hollow).

---

## 5. Lore Shrines & Memory Spots

### 5.1 Concept

Non-combat, low-loot secrets whose main reward is:

- **Lore**
- **Atmosphere**
- Occasional **small buffs**

They help the world feel old and layered, and tie into Lodge history and pre-Lodge eras.

### 5.2 Shrine Types

1. **Old Road Shrines**
   - Along Old Bark Road.
   - Stone markers, traveler altars.

2. **Forest Spirit Markers (Non-literal)**
   - Spots where:
     - Hunters leave offerings.
     - The forest “feels” focused.

3. **Burn Scar Memorials**
   - Simple carvings at Ash-Edge.
   - Remember lost hunters / settlements.

4. **Whisper-Scarred Stones**
   - Carvings from hunters who heard whispers and lived.

### 5.3 Memory Spot Mechanics

- Look for:
  - **Visual tell**:
    - Unique stone
    - Worn stump
    - A small pile of tokens.
- Interact:
  - Short scene:
    - Camera framing
    - Audio vignette
    - 1–3 lines of text or voice.
- Reward (optional):
  - Very small XP
  - Short, gentle buff:
    - e.g. +tiny focus, +tiny courage.

### 5.4 Example Shrines & Spots

#### 5.4.1 The First Grain Marker

- **Anchor:** Near Turned Fields / Low-Eaves boundary.
- **Visual:**
  - Stone with carved grain bundle & early Lodge sigil.
- **Memory:**
  - Text/voice describing:
    - First attempts to farm near the forest.
- **Effect:**
  - Very small buff:
    - Slightly improved yield from grain-related gathering for the next short period.
- **Hooks:**
  - Ties to Broken Tools and Ember Pot grain stories.

#### 5.4.2 Ash Circle Memorial

- **Anchor:** Near edge of Smoking Hollows.
- **Visual:**
  - Small stone ring in ash with carved names.
- **Memory:**
  - Names of hunters who died in the great fires.
- **Effect:**
  - Brief “Resolve in Ash” buff:
    - Microscopic boost vs ash creatures (mostly flavor).
- **Hooks:**
  - Supports D-GW-003 mood.

#### 5.4.3 Whisper-Scribbled Stone

- **Anchor:** At edge of Whispershade Glade.
- **Visual:**
  - Stone with half-legible scratched words.
- **Memory:**
  - Fragments like:
    - “It’s not the voice that’s dangerous; it’s the wanting to believe it.”
- **Effect:**
  - None or tiny fear-resistance buff.
- **Hooks:**
  - Strongly ties into D-GW-004.

---

## 6. Profession Nooks

### 6.1 Concept

Secret spots that heavily reward **a specific profession**, but are either:

- Only visible
- Or only truly profitable

…if you’re skilled in that profession.

### 6.2 Behaviour

- Any player can find the nook.
- But:
  - Higher profession rank:
    - Better resources
    - Extra interaction options
    - Chance to unlock profession trophies.

### 6.3 Example Nooks (Greatwood)

#### 6.3.1 Forester’s Quiet Grove

- **Anchor:** Off a Mid-Greatwood trail.
- **Access:**
  - Narrow path between closely spaced trunks.
- **Content:**
  - Cluster of high-quality trees.
  - Once harvested:
    - Long respawn.
- **Forester Rank Bonus:**
  - Higher rank → chance at:
    - Perfect-grain wood.
- **Hooks:**
  - Supplies wood for attuned tools (60).

#### 6.3.2 Ember Herb Crest

- **Anchor:** Ledge above Stone Kettle Falls.
- **Access:**
  - Mild platforming/climbing.
- **Content:**
  - Rare herb patches:
    - Ember-aligned.
- **Cook/Alchemist Rank Bonus:**
  - Extra rare herbs.
  - Chance to discover Ember Pot recipe hints.

#### 6.3.3 Clay Pocket Under the Bridge

- **Anchor:** Under a smaller bridge near Riverbend.
- **Content:**
  - Rich clay deposit.
- **Potter / related profession bonus:**
  - Much higher yield.
- **Hooks:**
  - Overfull Clay event synergy.
  - Ties into Broken Tools pot incidents.

---

## 7. Traversal Shortcuts

### 7.1 Concept

Hidden paths that provide:

- Faster routes between key POIs
- Safer alternative routes
- Or riskier but rewarding shortcuts

They are their **own reward** (improved navigation), often with minor caches along them.

### 7.2 Types

1. **Root Tunnels**
   - Natural tunnels formed by roots & erosion.
   - Low visibility, tight spaces.

2. **Ridge Paths**
   - Narrow ledges along Canopy Ridge and hills.

3. **Old Infrastructure**
   - Old stair segments, watch platforms, broken bridges.

### 7.3 Examples

#### 7.3.1 Root-Tunnel Link

- **Anchor:** Between Mid-Greatwood and Hollowroot Border.
- **Description:**
  - Hidden entrance under a fallen tree root.
- **Function:**
  - Connects:
    - Two otherwise longer-apart paths.
- **Risk:**
  - Occasional small creatures.
- **Reward:**
  - Time saved, plus:
    - 1–2 minor caches inside.

#### 7.3.2 Old Bark Terrace

- **Anchor:** Off Old Bark Road near mid-elevation ridge.
- **Description:**
  - Broken road segment forming a natural “balcony”.
- **Function:**
  - Provides:
    - Shortcut
    - Scout vantage.
- **Reward:**
  - One small chest with mid-tier gear.
- **Hooks:**
  - Encourages using height for planning Hunts.

---

## 8. Event-Linked Secrets

### 8.1 Concept

Secrets that **only appear or open** when a specific dynamic event (62) occurs or has occurred.

These make the world feel:

- Reactive
- Time-sensitive
- Tied to your actions in non-obvious ways

### 8.2 Examples

#### 8.2.1 Cry from the Ravine – Hidden Ledge

- Related to: EVT-GW-HLP-03 (Cry from the Ravine)
- Behavior:
  - When player rescues NPC:
    - NPC shows you:
      - A narrow ledge leading to a small stash.
- Reward:
  - Gear, unique note.
- Persistent:
  - Once discovered, ledge can be reused by player even if event no longer active.

#### 8.2.2 Panicked Beast – Poacher Cache

- Related to: EVT-GW-HLP-04 (Panicked Beast)
- Behavior:
  - Freeing trapped beast:
    - Might lead it to run toward:
      - A poacher hide.
  - Following:
    - Reveals cache with:
      - Poacher gear, notes, illicit trophies.
- Reward:
  - Scrap gear, coin, intel for CH-GW-010 (Poachers’ Signs).

#### 8.2.3 Ember Pot on the Road – Travel Cauldron Note

- Related to: EVT-GW-HLP-05
- Behavior:
  - Helping cook crew on the road:
    - Sometimes they leave:
      - A note marking their favorite hidden cookfire spot.
- Following note:
  - Leads to:
    - Tiny camp with:
      - Simple supplies
      - Ember Pot-related lore.

---

## 9. Rare / Golden Secrets

### 9.1 Concept

Low-frequency, high-impact secrets. Often multi-step, multi-location.

They:

- Tie directly into:
  - Rare Deeds
  - Future arcs
  - Mythic beasts (White Stag)
- Are mostly about **long-tail satisfaction**, not raw power.

### 9.2 Example Golden Chains

#### 9.2.1 The White Stag Trail

- **Anchor:** EVT-GW-RAR-01 – The White Stag
- **Steps (proposed chain):**
  1. Player sees White Stag once (rare).
  2. Later, finds:
     - Specific stag signs:
       - Unique scat/hoof marks
       - Bark rubs with white hair.
  3. Follow enough signs:
     - Unlocks a hidden glade:
       - Dappled light, calm ambience.
  4. Final step:
     - A multi-part pursuit:
       - Very hard to complete.
- **Rewards:**
  - Possibly:
    - Unique White Stag Relic (trophy, B100, Hall mention).
    - Or a non-lethal resolution:
      - “Blessing” instead of kill.
- **Hooks:**
  - Pre-setup for a future Deed or cross-region legend.

#### 9.2.2 The Sleeping Giant’s Echo

- **Anchor:** EVT-GW-RAR-02 – The Sleeping Giant
- **Behavior:**
  - After first glimpse:
    - Player can find:
      - Carved stones / old notes about “the thing that breathes below”.
  - Collecting enough:
    - Allows a ritual at a specific cliff lip.
- **Reward:**
  - Lore-heavy scene:
    - Glimpse of deeper creature or structure.
  - Possibly small mechanical reward:
    - Future discount/edge in Burn-Scar Descent.

---

## 10. Rewards: Profiles & Balance

### 10.1 Reward Profiles

Each secret chooses from tuned profiles:

1. **Tiny Rewards**
   - Small coin
   - 1–2 common materials
   - Tiny XP
2. **Small Rewards**
   - Mix of common + fine materials
   - Low chance of gear
   - Slightly more XP
3. **Medium Rewards**
   - Guaranteed fine material bundles
   - 1 piece of gear appropriate to level
   - Recipe clue or lore item
4. **Large / Golden Rewards**
   - Rare materials
   - Unique cosmetics / trophies
   - Strong lore reveals
   - Maybe small, unique utility items (non-game-breaking).

### 10.2 Non-Loot Rewards

Some secrets should give:

- **Fast travel unlocks** (rare)
- **Minor shortcuts**
- **Access to new dialogue topics**
- **Hidden social scenes**:
  - NPCs meeting in a nook, you overhear.

---

## 11. Tech / Data Model

### 11.1 Secret Definition

Per secret:

- `secret_id`
- `family` – `simple_cache`, `layered_cache`, `shrine`, `profession_nook`, `shortcut`, `event_linked`, `rare`
- `poi_anchor` – references POI ID from 63
- `location_data` – coordinates + bounding volume
- `visibility_mode`:
  - `always`
  - `requires_flag`
  - `requires_event_active`
- `discovery_conditions[]`:
  - Flags / progress
  - Optional profession rank
  - Event IDs
- `reward_profile_id`
- `one_time` / `repeatable`:
  - Some caches are one-and-done
  - Others respawn slowly

### 11.2 Tracking & UI

- Minimal UI:

  - No map icon until after discovered.
  - Optionally:
    - “Secrets found in Greatwood: X / Y” in a meta screen.
  - Some secrets:
    - Tag Hunts or Deeds as “helped by secret knowledge”.

### 11.3 Integration Hooks

- With Hunts (61):
  - `linked_hunt_ids[]`:
    - Some secrets only appear when certain Hunts accepted.
- With Deeds:
  - Deed flags unlock new secrets or alter existing ones.
- With Events (62):
  - `linked_event_ids[]` to gate event-linked secrets.

---

## 12. Writing & Presentation Guidelines

- Keep **written clues** short and evocative:
  - Notes, scratched markings, not essays.
- Let **environmental storytelling** do heavy lifting:
  - Placement of bones, tools, candles, herbs.
- Avoid:
  - Excessive exposition in caches themselves.
- Do:
  - Use secrets to:
    - Re-contextualize known places (e.g. Turned Fields history).
    - Seed worry or hope about corruption, Hollowroot, Burn-Scar.

---

## 13. Next Actions

1. **Map pass** on Greatwood (63):
   - Mark candidate locations for:
     - 30–50 simple caches.
     - 10–20 layered caches.
     - 10–15 shrine/memory spots.
     - 5–10 profession nooks.
     - 3–5 traversal shortcuts.
     - 2–3 rare/golden chains.

2. **Define reward profiles** in loot tables:
   - Link to:
     - Ingredients (51)
     - Profession mats (52–57)
     - Early gear tiers.

3. **Author 10–20 lore notes & shrine memories**:
   - Tie into:
     - Lodge founding
     - Fires
     - Early Hollowroot hints
     - Hunts & Deeds.

4. **Wire dynamic event hooks**:
   - Ensure:
     - Cry from the Ravine
     - Panicked Beast
     - Ember Pot on the Road
     - Whispering Cache
   - Each open at least one secret.

5. **Add secret flags** for future regions:
   - Make sure data model can:
     - Handle Hollowroot & Burn-Scar secrets with same structure.

90 should be treated as the **explorer’s reward grid**: if Hunts and Deeds are why you go out, secrets are what reward you for **not going straight back home** when the job is done.
