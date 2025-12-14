Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 61 – Greatwood Hunts, Deeds & Hunt Board Structure

## Purpose

Define the **Greatwood Hunt system** as it lives in and around Greatwood Lodge:

- The **Hunt Board** itself (UI, usage, logic)
- **Standard Hunts** (contracts you pull from the board)
- **Deeds** (prestige, multi-step, story-rich Hunts)
- How Hunts & Deeds:
  - Plug into Greatwood region layout (63)
  - Drive Trophy Hall (86) and Quarters (B100)
  - Feed Ember Pot & professions (51–57, 60, 85)
  - Intersect with dynamic events and ambient encounters (62, 63, 64)

This is the **core loop** for “I go out and hunt things” in Emberwild, starting with Greatwood 1–20.

---

## Design Goals

1. **Predictable structure, unpredictable details**

   - Players learn:
     - How to read a Hunt listing.
     - What a Deed is vs a normal Hunt.
   - But:
     - Where it leads.
     - How enemies behave.
     - Which events trigger… stays fresh.

2. **Hunts feed the Lodge**

   - Every Hunt should:
     - Support Lodge survival (meat, safety, materials).
     - Change how NPCs talk and behave (64).
     - Influence Ember Pot, tools, trophies, decor (85, 86, B100).

3. **Deeds = named stories**

   - Deeds are:
     - Multi-part, named arcs.
     - The ones that earn **Hall trophies** (86).
     - The ones hunters tell around the Pot for years.

4. **Scales with region progression**

   - Early Greatwood: modest culls and escorts.
   - Mid Greatwood: hunts with mechanics and investigation.
   - Deep Greatwood / Hollowroot border: hunts with moral weight and corruption stakes.

5. **Reusable spine**

   - 61 is the **template** for Hunts & Deeds in future regions:
     - Change beasts, terrain, politics.
     - Keep structure and data shapes.

---

## 1. The Greatwood Hunt Board

### 1.1 Physical Board

- Located in the **Greatwood Lodge main hall**, near Clerk Elira’s desk.
- Visuals:
  - Wooden board with:
    - Pinned notes
    - Strapped-on tokens
    - Rough sketches of beasts, maps.
  - A separate strip for **Deeds**, treated with more reverence.

### 1.2 Board Sections

1. **Standard Hunts Area**
   - Rotating set of:
     - 4–8 available Hunts.
   - Includes:
     - Cull contracts
     - Track & kill
     - Escort/protect
     - Investigations.

2. **Deeds Panel**
   - Limited slots (e.g. 3 per region).
   - Each Deed is:
     - A named plaque or engraved plate (not just paper).
   - When a Deed is active for the player:
     - Its plaque glows or is tagged.

3. **Notices & Rumors Strip**
   - Smaller notes that:
     - Hint at future Hunts/Deeds.
     - Reflect dynamic events (62).
     - Provide flavor (“Missing: hunter’s dog”, “Seen: strange glow near Whispershade”).

---

## 2. Hunt Types & Structure

### 2.1 Standard Hunt Categories

1. **Cull Hunts**
   - “Too many of X, go reduce the numbers.”
   - Core early-game contracts.

2. **Mark Hunts**
   - “A specific beast with a name or rare traits.”
   - Higher difficulty, usually 1–3 targets.

3. **Escort / Guard Hunts**
   - Protect:
     - Gatherers
     - Carts
     - Apprentices
   - Often overlap with dynamic events.

4. **Investigations**
   - Explore:
     - Weird tracks
     - Missing hunters
     - Strange phenomena

5. **Hybrid Hunts**
   - Multi-objective:
     - Track → fight → retrieve.
   - Often proto-Deeds or Deed-supporting.

### 2.2 Hunt Data Shape

Each Hunt (`CH-GW-XXX`) has:

- `hunt_id` – e.g. `CH-GW-001`
- `name`
- `type` – `cull`, `mark`, `escort`, `investigation`, etc.
- `region_tags[]` – which POIs/areas (63)
- `level_band`
- `giver` – typically `Lodge Board`, but may reference key NPC
- `objectives[]`:
  - Kill, track, escort, interact, investigate.
- `variants[]`:
  - Slightly different spawn patterns, environmental conditions.
- `rewards`:
  - Base coin
  - Materials
  - Lodge rep (per wing)
  - Chance of special drops.
- `repeatable` – `true/false`
- `cooldown` – per player.

---

## 3. Deeds – Prestige Hunts & Story Arcs

### 3.1 What is a Deed?

- A **Deed** (`D-GW-00X`) is:

  - A named, multi-part Hunt arc.
  - Tied to a **major beast/phenomenon** or **moral turning point**.
  - Recognized in:
    - Trophy Hall (86)
    - Lodge records (64)
    - Player’s quarters trophies (B100).

- Design intent:

  - Deeds bridge:
    - Systemic Hunts → Narrative arcs.
  - Completing a Deed:
    - Marks a permanent chapter in Lodge history.

### 3.2 Deed Structure

Each Deed has:

- `deed_id`
- `name`
- `summary`
- `prerequisites[]`:
  - Hunts completed
  - Region progress
  - Questlines
- `stages[]` (2–5 stages typical)
  - Each stage = one or more Hunts / bespoke missions.
- `moral_or_systemic_choice` (optional)
- `completion_rewards`:
  - Hall trophy
  - Quarters trophy
  - Rep, titles.
- `world_effects`:
  - Changes in spawn tables
  - NPC barks
  - Hunt availability.

---

## 4. Greatwood Hunt Catalogue (Standard Hunts)

Below is the **Greatwood 1–20** core Hunt set, with summary-level detail. Full implementations would live in separate subfiles or expanded sections if needed.

### 4.1 CH-GW-001 – Cull the Greybacks

- **Type:** Cull
- **Level Band:** 3–6
- **Region Tags:** Low-Eaves Paths, Lodge Road South
- **Premise:**
  - Greyback wolves have been:
    - Stalking edges of the road
    - Harassing apprentices and carts.
- **Objectives:**
  - Kill N greybacks in specified zones.
- **Variants:**
  - Night variant with more packs.
  - Storm variant where visibility is low.
- **Hooks:**
  - Teaches:
    - Basic Hunt structure
    - Reading tracks on paths.
  - Feeds:
    - Ember Pot (wolf meat)
    - Early leather/trophy materials.

---

### 4.2 CH-GW-002 – Boars in the Turned Fields

- **Type:** Cull / Mark Hybrid
- **Level Band:** 4–8
- **Region Tags:** Turned Fields, Edge-Settlers’ Camp
- **Premise:**
  - Boars:
    - Rooting up abandoned fields.
    - Risk pushing into settler camp.
- **Objectives:**
  - Cull a number of common boars.
  - Optional:
    - Kill a **larger boar** variant if it spawns (rare).
- **Variants:**
  - Daytime heavy.
  - Muddy ground → movement penalties (Slippery Slope event synergy).
- **Hooks:**
  - Unlock path to Deed D-GW-001 (The Boar That Wouldn’t Die).
  - Ember Pot:
    - Unlocks base pattern for Boar Hunter’s Feast.

---

### 4.3 CH-GW-003 – The Sentries in the Boughs

- **Type:** Mark / Area Control
- **Level Band:** 8–12
- **Region Tags:** Canopy Ridge, First Watch Tower vicinity
- **Premise:**
  - Aggressive birds of prey:
    - Nested in canopy.
    - Attacking hunters moving through ridges.
- **Objectives:**
  - Climb or navigate to nest zones.
  - Kill targeted “Sentry” birds.
  - Optionally destroy some nests.
- **Variants:**
  - Windy vs calm days alter difficulty (knockback, accuracy).
- **Hooks:**
  - Teaches verticality and ranged combat.
  - Feeds into dynamic events:
    - Shadow Overhead (AMB-05), Song of the Canopy (AMB-04).

---

### 4.4 CH-GW-004 – Webs Over the Path

- **Type:** Investigation / Cull
- **Level Band:** 7–12
- **Region Tags:** Spiderway Cut
- **Premise:**
  - The Cut is getting:
    - Choked with webs.
    - Travelers are going missing.
- **Objectives:**
  - Investigate the webbed canyon.
  - Destroy web anchors.
  - Kill controlling spider matriarch or cluster.
- **Variants:**
  - Heavy webs (slow movement).
  - Venomous variant with poison hazards.
- **Hooks:**
  - Reinforces hazard awareness.
  - Ties to resource nodes (spider silk for crafts).

---

### 4.5 CH-GW-005 – Something in the Grain

- **Type:** Investigation / Hunt
- **Level Band:** 5–10
- **Region Tags:** Turned Fields, Waystone Hollow
- **Premise:**
  - Spoiled grain, strange rot.
  - Evidence of beast or corruption influencing fields.
- **Objectives:**
  - Inspect granaries & leftover sacks.
  - Follow trails (footprints, gnawed stalks).
  - Kill the culprit(s) (could be:
    - Beast
    - Swarm
    - Low-level corrupted scavengers).
- **Variants:**
  - Early runs: mundane pests.
  - Later: corrupted variant that foreshadows deeper rot.
- **Hooks:**
  - Ties to:
    - Ember Pot (bad/ruined ingredients).
    - Broken Tools sample logic (“it’s not just tools failing”).

---

### 4.6 CH-GW-006 – Tracks Along the Riverbend

- **Type:** Tracking / Mark
- **Level Band:** 6–12
- **Region Tags:** Riverbend Crossing, river banks
- **Premise:**
  - Large predator(s) using river edges:
    - To ambush animals and travelers.
- **Objectives:**
  - Find and follow tracks along river.
  - Identify lair.
  - Kill target(s).
- **Variants:**
  - Water level high vs low.
  - Fog vs clear mornings (Sudden Fog Wall synergy).
- **Hooks:**
  - Teaches reading terrain & flow.
  - Links to D-GW-001 arena proximity.

---

### 4.7 CH-GW-007 – Guard the Gatherers

- **Type:** Escort / Defense
- **Level Band:** 9–13
- **Region Tags:** Gatherers’ Green, adjoining paths
- **Premise:**
  - Lodge sending gatherers to a rich glade.
  - They need protection while they work.
- **Objectives:**
  - Escort gatherers to the glade.
  - Defend multiple waves while they harvest.
  - Return them safely.
- **Variants:**
  - Different threat families (wolves, spiders, poachers).
- **Hooks:**
  - Ties to:
    - Dynamic event Lost Gatherer (HLP-01).
    - Profession progression and Broken Tools field experiments.

---

### 4.8 CH-GW-008 – Silence in the Treetops

- **Type:** Investigation
- **Level Band:** 10–14
- **Region Tags:** Canopy Ridge, high-canopy zones
- **Premise:**
  - Birds have gone silent in upper branches.
  - Hunters worry it’s a bad omen.
- **Objectives:**
  - Scout canopy vantage points.
  - Look/listen for anomalies.
  - Possibly discover:
    - Predator
    - Corruption node
    - Human interference (poachers).
- **Variants:**
  - Some runs end in a fight.
  - Some are just tension & a small lore reveal.
- **Hooks:**
  - Feeds into:
    - D-GW-004 (Whisper in the Hollow) tone.
    - Corruption / weirdness events (62).

---

### 4.9 CH-GW-009 – Ash-Eaters at the Edge

- **Type:** Cull / Mark
- **Level Band:** 12–18
- **Region Tags:** Ash-Edge Stand, Smoking Hollows
- **Premise:**
  - Ash-eater creatures:
    - Gnawing at burnt trees and ash pits.
    - Threatening to push into Mid-Greatwood.
- **Objectives:**
  - Cull ash-eaters in designated zones.
  - Kill an Ash-Eater Alpha if it spawns.
- **Variants:**
  - Day vs night:
    - Different aggression and behavior.
- **Hooks:**
  - Ties directly to D-GW-003 – Tracks in the Ash.
  - Ember Pot:
    - Ash-Steeped Stew ingredient sourcing.

---

### 4.10 CH-GW-010 – The Poachers’ Signs

- **Type:** Investigation / Mark
- **Level Band:** 10–16
- **Region Tags:** Mid-Greatwood side paths, Old Bark Road segments
- **Premise:**
  - Illicit traps, snares, and kill signs.
  - Poachers operating inside Lodge territory.
- **Objectives:**
  - Discover and disarm traps.
  - Find poacher camps.
  - Confront or kill key poacher figures.
- **Variants:**
  - Some runs end with:
    - Camps abandoned.
    - Loose notes hinting at bigger operation.
- **Hooks:**
  - Dynamic event Panicked Beast (HLP-04).
  - Moral/choice content in D-GW-005 (A Debt in Blood).

---

### 4.11 CH-GW-011 – Eyes in the Fog

- **Type:** Tracking / Ambush
- **Level Band:** 12–18
- **Region Tags:** River valleys, fog-prone low ground
- **Premise:**
  - “Eyes” reported watching from fog banks.
- **Objectives:**
  - Travel through designated fog-lanes.
  - Trigger and survive ambush(es).
  - Track back to source lair or feeding ground.
- **Variants:**
  - Different predator family:
    - Wolves, ash-eaters, corrupted hounds.
- **Hooks:**
  - Uses dynamic event Sudden Fog Wall (TRV-02).
  - Foreshadows deeper corruption hunts.

---

### 4.12 CH-GW-012 – Whispers in the Hollow

- **Type:** Investigation / Deed-Linked Hunt
- **Level Band:** 14–20
- **Region Tags:** Whispershade Glade, Hollowroot Border
- **Premise:**
  - Reports of whispers guiding or misguiding hunters.
- **Objectives:**
  - Enter designated whisper zones.
  - Resist/obey whispers in multiple small vignettes.
  - Identify root cause of the phenomenon in Greatwood.
- **Variants:**
  - Based heavily on corruption state.
- **Hooks:**
  - Core lead-in to D-GW-004 – The Whisper in the Hollow.
  - Strong interaction with corruption mechanics & events.

---

## 5. Deed Catalogue – Greatwood Core Deeds

### 5.1 D-GW-001 – The Boar That Wouldn’t Die

- **Type:** Hunt Deed – Stubborn Prey / Mythic Beast
- **Summary:**
  - A gigantic, scarred boar has:
    - Survived multiple Hunt attempts.
    - Become legend.
- **Prereqs:**
  - CH-GW-002 completed X times.
  - CH-GW-006 completed at least once.
- **Stages:**
  1. **Old Wounds, New Tracks**
     - Inspect:
       - Old Hunt reports
       - Boar-scarred trees
     - Talk to older hunters for tales.
  2. **Mud and Memory**
     - Track the boar through:
       - Turned Fields
       - Riverbend mud flats.
     - Encounter near-kill scenes, broken spears.
  3. **The Last Wall of Hide**
     - Arena-style fight in:
       - Special mud-ring clearing.
     - Boar uses:
       - Charge patterns
       - Environment to its advantage.
- **Choice / Variation:**
  - Player can:
    - Take tusk/bones for trophies.
    - Leave part of carcass as Lodge offering.
- **Completion Rewards:**
  - Hall trophy:
    - Boar Skull in Great Hunts Gallery (86).
  - Quarters trophy:
    - `Boar Skull Crest` (B100).
  - Ember Pot:
    - Unlock Boar Hunter’s Feast recipe (85).
- **World Effects:**
  - Fewer giant boar spawns in Greatwood.
  - Lodge barks and stories reference the Deed.

---

### 5.2 D-GW-002 – The Beast That Hunts Fire

- **Type:** Hunt Deed – Fire-Affine Predator
- **Summary:**
  - A predator drawn to firelight:
    - Preying on camps and outposts.
- **Prereqs:**
  - Multiple Hunts with night camps / escorts.
- **Stages:**
  1. **Ash Circles**
     - Investigate burned campsites.
     - Collect:
       - Scent traces
       - Claw grooves near burned logs.
  2. **Watching from the Glow**
     - Set up decoy camp.
     - Wait for attack; survive and track beast back.
  3. **Hunt the Fire-Stalker**
     - Final fight:
       - Mixed light/darkness mechanics.
       - Beast grows bolder as light dims.
- **Rewards:**
  - Hall trophy:
    - Claw-mark panel (86).
  - Quarters:
    - `Char-Scored Fire Ring` trophy.
  - Ember Pot:
    - Enables Ash/charcoal themed recipes.
- **World Effects:**
  - Fewer attacks on fires in mid-level zones.
  - NPCs more relaxed about night travel near Lodge.

---

### 5.3 D-GW-003 – Tracks in the Ash

- **Type:** Hunt Deed – Ash-Edge Ecology
- **Summary:**
  - Something big is tunneling under ash, destabilizing the burn-scar margins.
- **Prereqs:**
  - CH-GW-009 completions.
  - Visits to Smoking Hollows & Ash-Edge Stand.
- **Stages:**
  1. **Ash Trails**
     - Track ash disturbances.
     - Mark unstable ash pits.
  2. **Burrow Echoes**
     - Drop markers into burrows.
     - Use sound / vibration to triangulate lair.
  3. **Ash-Burrowed Alpha**
     - Boss fight:
       - Emerges from ash.
       - Uses burrowing & sudden eruptions.
- **Rewards:**
  - Hall trophy:
    - Burrowed Effigy (86).
  - Quarters:
    - `Blackened Claw` trophy.
  - Professions:
    - Access to special ash-touched materials.
- **World Effects:**
  - Reduced ash-pit collapses on travel routes.
  - Smoothed path options through Ash-Edge.

---

### 5.4 D-GW-004 – The Whisper in the Hollow

- **Type:** Deed – Corruption / Psychological
- **Summary:**
  - Whispers in Whispershade Glade and Hollowroot border are:
    - Luring hunters.
    - Misguiding tracking and travel.
- **Prereqs:**
  - CH-GW-012 (Whispers in the Hollow) progress.
  - Specific corruption events experienced:
    - Roots that Bleed, Whispering Cache, The Still Patch.
- **Stages:**
  1. **First Echo**
     - Follow whispers once:
       - For a controlled, limited sequence.
     - Survive and log what you saw.
  2. **Mapping the Murmurs**
     - Visit 3–5 whisper nodes.
     - Distinguish:
       - Natural (wind, animals).
       - Unnatural sources.
  3. **Confrontation / Choice**
     - Reach a central hollow.
     - Make:
       - Key choice:
         - Suppress the whispers.
         - Attempt to channel/use them.
- **Rewards:**
  - Hall trophy:
    - Resonant Root (86).
  - Quarters:
    - `Whispering Root Charm`.
  - Ember Pot:
    - Unlock Whisper-Ward Pottage recipe (85).
- **World Effects:**
  - Adjust corruption event frequency and severity.
  - Alters later Hollowroot content hooks.
  - NPC attitudes to whispers shift based on player choice.

---

### 5.5 D-GW-005 – A Debt in Blood

- **Type:** Deed – Moral / Internal Lodge Conflict
- **Summary:**
  - Conflict between hunters:
    - A death, a betrayal, or a Hunt gone wrong.
  - The Lodge weighs:
    - Justice vs mercy vs pragmatism.
- **Prereqs:**
  - Several Hunts related to:
    - Poachers (CH-GW-010).
    - Escort failures.
    - Rumors of hunters taking bribes or going rogue.
- **Stages:**
  1. **Testimony**
     - Speak to:
       - Witnesses
       - Surviving hunters.
     - Investigate:
       - Discrepancies in stories.
  2. **The Hunt Within**
     - Track the accused or their last known route.
     - Decide how to approach:
       - Confront, ambush, parley.
  3. **Judgment**
     - Final confrontation.
     - Player chooses:
       - Execution, exile, or attempted rehabilitation (depending on design).
- **Rewards:**
  - Hall trophy:
    - Judgment Stone (86).
  - Quarters:
    - `Blood-Marked Lodge Token`.
- **World Effects:**
  - NPC barks & attitudes:
    - Reflect choice:
      - Some approve.
      - Some disapprove.
  - Long-tail:
    - May impact later Lodge politics in other regions.

---

## 6. Hunt & Deed Progression

### 6.1 Levelling Curve

- Levels 1–5:
  - Intro Hunts (CH-GW-001, 002).
  - Basic board interactions.
- Levels 5–10:
  - More variety:
    - Investigations and escorts.
  - CH-GW-003–007.
- Levels 10–15:
  - Ash-Edge & deeper forest hunts:
    - CH-GW-008–011.
- Levels 14–20:
  - Corruption-linked hunts and Deeds:
    - CH-GW-012
    - D-GW-003–005.

### 6.2 Board Refresh & Hunt Rotation

- Board rules:

  - Standard Hunts:
    - 4–8 visible at once.
    - Refresh:
      - When completed
      - Or after a time period.
  - Deeds:
    - Always visible once unlocked.
    - Accepting a Deed may “reserve” it to player/party.

- Cooldowns:

  - Certain Hunts can be repeated frequently (Cull).
  - Others have:
    - Multi-day in-world cooldowns.

---

## 7. Rewards & Systems Integration

### 7.1 Rewards Summary

Every Hunt/Deed can award:

- **Coin** – baseline.
- **Materials** – beast parts, ingredients, profession mats.
- **Lodge Reputation** – split between:
  - Hunter’s Lodge
  - Forester’s Circle
  - Ember Kitchen
  - Carpenter’s Hall
- **Special Items** – trophies, artefacts, recipes.
- **World Changes** – spawn frequencies, event weights.

### 7.2 With Trophy Hall (86)

- Deeds → Hall trophies:
  - Boar Skull, Claw-Mark Panel, Burrow Effigy, Resonant Root, Judgment Stone.
- Standard Hunts:
  - Update:
    - Tallies
    - Minor plaques
    - “Hunt board statistics” UI on Hall ledger.

### 7.3 With Quarters & Trophies (B100)

- Deed completions:
  - Unlock personal trophies.
- High Hunt completion thresholds:
  - Unlock:
    - Additional decor items
    - Small “Hunter’s Pride” objects (weapon racks, banners).

### 7.4 With Ember Pot (85)

- Specific Hunts:
  - Supply signature ingredients.
- Deeds:
  - Unlock feasts and named dishes.
- Ember Pot events:
  - Triggered after big Deed completions as:
    - Victory feasts.

### 7.5 With Dynamic Events & Region Layout (62–63)

- Hunts:
  - Attach to specific POIs and dynamic event pools.
- Completing Deeds:
  - Reshapes:
    - Event weights (fewer boar attacks, less ash chaos).
- Corruption Deeds:
  - Alter:
    - Corruption event frequencies.

### 7.6 With Broken Tools & Professions (60, 52–57)

- Hunt materials:
  - Feed profession systems:
    - Attuned tools
    - Unique crafts.
- Broken Tools:
  - Use Hunts as:
    - Field-tests for tool changes.
- Some Hunts have:
  - Optional profession objectives:
    - Collect special wood, ore, herbs.

---

## 8. Tech & Data Notes

### 8.1 Hunt Data

Per Hunt:

- `hunt_id`
- `name`
- `description`
- `type`
- `level_min`, `level_max`
- `board_category` (standard, priority, tutorial, event)
- `region_tags[]`
- `poi_ids[]`
- `objectives[]`:
  - `objective_type` (`kill`, `escort`, `investigate`, `interact`)
  - `target_tags` (`wolf_greyback`, `boar`, `ash_eater`)
  - `counts`, `locations`
- `rewards`:
  - `gold`, `rep`, `items`, `xp`
- `flags_set`, `flags_required`

### 8.2 Deed Data

Per Deed:

- `deed_id`
- `name`
- `summary`
- `prereq_flags[]`
- `stages[]`:
  - `stage_id`
  - `linked_hunt_ids[]` (or bespoke quest content)
  - `stage_description`
- `completion_rewards`
- `world_state_changes[]`:
  - Spawn weight adjustments
  - Hall trophy activation
  - Social layer flag updates

### 8.3 Board UI & UX

- Shows:

  - List of Hunts with:
    - Name
    - Short tagline
    - Difficulty indicator
    - Distance/region.
- Deeds panel:
  - Shows:
    - Longer descriptions.
    - Stage progress.

- Player interactions:

  - Accept Hunt / Deed.
  - Abandon (with constraints for Deeds).
  - See “History” tab:
    - Completed Hunts & Deeds summary.

---

## 9. Next Actions

1. Finalize **data tables** for:
   - CH-GW-001–012
   - D-GW-001–005
2. Hook up **board logic**:
   - Rotation, refresh, acceptance rules.
3. Wire **trophy & quarters rewards** for Deeds.
4. Connect Hunts to:
   - Region POIs (63)
   - Dynamic events (62)
   - Ember Pot recipes (85)
   - Broken Tools beats (60).
5. Author **Hunt/Deed-specific dialogue**:
   - Elira’s board commentary.
   - Mara/Arlen/Fen reactions.
   - Rival hunter banter before/after Deeds.

File 61 should be treated as the **official contract ledger** of Greatwood: when players ask “What is there to hunt?”, this is the spine that answers.
