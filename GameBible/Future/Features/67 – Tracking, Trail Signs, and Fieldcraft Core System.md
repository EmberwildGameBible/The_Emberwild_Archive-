# 67 – Tracking, Trail Signs, and Fieldcraft Core System

## Purpose

Design the **core tracking / fieldcraft system** that makes Emberwild feel like a true **hunting game**, not a waypoint simulator.

This system should let players:

- Track beasts via **visual + systemic clues**
- Read **trail signs** (natural, beast, human, and hunter-made)
- Use **wind, terrain, and time** to make better decisions
- Tie tracking into:
  - Hunts & Deeds (61)
  - Greatwood pockets & travel (63, B113)
  - Enemy families & behaviors (B114)
  - Professions & combo items (52–57, 60)
  - Dynamic events & secrets (62, 90)
  - Wounds & failstates (B101)
  - Roles & builds (B110)

This spec defines mechanics, readability, progression, and how tracking plugs into the rest of Greatwood 1–20.

---

## Design Goals

1. **No magic GPS**

   - Tracking is **local and physical**:
     - Prints, broken branches, scat, noise, smell, blood.
   - No “glowing golden path” across the whole map.
   - If you lose the trail, you actually have to think / search.

2. **Readable at a glance, deep on inspection**

   - Casual players:
     - Can follow clear tracks to main Hunts and Deeds.
   - Fieldcraft nerds:
     - Read track *details*:
       - Size, direction, freshness, wound, herd composition.
     - Use that to pre-plan fights, ambushes, or avoidance.

3. **The forest teaches you**

   - Early:
     - Obvious, chunky prints and bloody tracks.
   - Later:
     - Subtler signs:
       - Bent grass, scrape marks, scent hints, silence vs birds.
   - The more you interact with beasts and Hunts:
     - The better your character and **you** get at reading signs.

4. **Consistent across the whole game**

   - Same fieldcraft language works in:
     - Greatwood
     - Hollowroot
     - Burn-Scar
   - Each region:
     - Has its own quirks layered on top (ash, fungus, wards, etc.).

5. **Systemic, not just scripted**

   - Deeds and signatures can hand-place cool trails.
   - But the **core logic**:
     - Lives in a reusable track + sign system.
   - Creatures actually **lay trails** as they move and act,
     - Not just “you start the quest, the trail loads in”.

---

## 1. Core Concepts

### 1.1 Track

A **track** is any **physical sign** left by a creature or person:

- Footprints / hoofprints / claw marks
- Drag marks, skid marks
- Blood droplets, splashes
- Scat, hair/feathers, broken quills
- Scratches on bark or stone
- Disturbed foliage / crushed grass / displaced soil

Each track instance has:

- `track_id`
- `source` – which creature / NPC / group
- `type` – print, blood, scat, scratch, disturbance, etc.
- `direction` – vector or segment
- `age` – time since created (affects clarity)
- `intensity` – how strong / readable
- `context` – terrain, weather, time-of-day
- `metadata` – size class, gait, injured/not, load (dragging, carrying)

### 1.2 Trail

A **trail** is an ordered chain of tracks produced by the same source over some time span.

Attributes:

- `trail_id`
- `source` – the thing that made it
- `segments[]` – ordered list of track instances
- `start_region_tag`, `end_region_tag` – for 63 integration
- `trail_type` – hunt trail, routine path, panic trail, migration, etc.
- `current_state` – fresh, stale, partly erased, overwritten.

Players usually perceive **trail segments**, not entire trails at once.

### 1.3 Trail Signs (Fieldcraft Cues)

“Trail signs” are what the player **actually notices** and interacts with:

- Track clusters:
  - A patch of 3–4 prints → prompt.
- Highlightable clues:
  - Blood smear on rock.
- Interactable objects:
  - Broken branch, scrape tree.
- Audio / ambient cues:
  - Buzzing flies around carcass, silence in birds, distant howl.

These are **sampling points** along trails that the game promotes to the player.

---

## 2. Player-Facing Mechanics

### 2.1 Base Tracking (No Special Gear)

What every player can do from the start:

- See **obvious tracks** at close range:
  - Large prints
  - Heavy blood
  - Fresh drag marks.
- Interact with trail signs via a simple “Inspect”:
  - “These tracks are fresh and heading southeast.”
  - “This boar was running hard, something might have spooked it.”
- Follow a **loose chain of clues** toward a target.

Limitations:

- Fainter tracks simply don’t render / become interactable.
- No long-range direction overlays:
  - Hints are short-range:
    - “Ahead”
    - “Up-slope”
    - “Towards the river”.
- Easy to lose the trail by:
  - Cutting corners
  - Ignoring obvious choke points.

### 2.2 Enhanced Tracking (Gear, Skills, Roles)

As players progress:

- Skills, talents (B110), and gear (B107) can:

  - Increase **track detection radius**
  - Reveal **fainter / older tracks**
  - Unlock **extra information** in inspect text:
    - “Older hunter bootprint mixed in with these.”
    - “This wolf is favoring its front right leg.”

Sources of enhancement:

- **Talents / Role perks**
  - “Ridge Stalker” – better predator tracking.
  - “Ash-Reader” – better in ash zones.
- **Attuned tools** (60):
  - Charms attached to belts, boots, bows.
- **Potions & salves** (58):
  - Short-lived “heightened senses” fields.
- **Reputation & training** (59):
  - Forester / Lodge training unlocks new hints.

### 2.3 Trail Lock-On (Soft Guidance)

For **structured Hunts / Deeds (61)**:

- When a Hunt is active:

  - The first few trail signs are:
    - Slightly more obvious
    - Marked with a subtle UI cue (icon / outline).
- Once the player has followed enough of them:
  - A **soft “trail locked” state** can:
    - Add extra contextual clues:
      - Birds taking off in the right direction
      - NPC comment if they’re with you.
- If the player **loses the trail**:
  - Inspect last known sign:
    - “From here, it must have gone either up into the ridge or down to the river.”
  - No hard “compass arrow”, but gives a clear pair of options.

---

## 3. Track Types & Readability

### 3.1 Track Categories

1. **Prints**
   - Foot / hoof / paw impressions.
2. **Body Signs**
   - Blood
   - Scat
   - Hair / feathers
   - Molted scales.
3. **Environment Disturbance**
   - Broken branches
   - Bent grass
   - Displaced stones
   - Scratched bark.
4. **Sound & Smell (Soft Cues)**
   - Distant howl, ash hiss, buzzing flies, metallic tang.

Each category has different **visibility rules**:

- Prints:
  - Strong in soft ground (mud, snow, ash).
  - Weak on hard rock.
- Body signs:
  - Obvious when fresh.
  - Fade or get eaten / washed away.
- Disturbance:
  - Persists longer, but is more subtle.
- Sound/smell:
  - Short-lived, highly local.

### 3.2 Readability Tiers

We define **readability tiers** for clue display:

- Tier 0 – Not visible (too old / subtle / wrong terrain).
- Tier 1 – Visible only in inspect radius (must be close and looking).
- Tier 2 – Visible as faint, context-appropriate highlight at mid-range.
- Tier 3 – Very obvious; glows visually / strong audio/visual.

Factors affecting tier:

- Time since created.
- Terrain / weather (rain, fog, ash).
- Player fieldcraft rank / buffs.
- Creature-specific behaviors (some leave cleaner trails).

---

## 4. Trail Lifecycles

### 4.1 Creation

Creatures and NPCs generate tracks when:

- Moving, fleeing, hunting, patrolling.
- Being wounded (starting blood trails).
- Performing behaviors:
  - Scratching territory
  - Marking scent
  - Digging burrows.

For performance, **not every step** makes a track:

- System uses a **step interval**:
  - E.g. a footprint cluster every X world units or on certain animations (jump, slide).
- “Eventful” actions:
  - Always leave a track:
    - Falls, hits, sudden direction changes.

### 4.2 Aging & Decay

Tracks age through states:

1. Fresh
2. Recent
3. Stale
4. Faint
5. Gone

Decay influenced by:

- Weather:
  - Rain/snow: faster print erosion.
  - Wind: faster ash redistribution.
- Terrain:
  - Mud vs stone.
- Activity:
  - Other creatures / players walking through.

Each family (B114) can define **custom decay modifiers**:

- Heavy boar prints:
  - Stay visible longer in mud.
- Spiderweb disturbances:
  - Reset quickly as webs reform.
- Ash-Edge creatures:
  - Create trails that smear / spread in ash.

### 4.3 Overlap & Contamination

Multiple trails can overlap:

- System can:

  - Merge similar trails (herds, packs).
  - Mark cross-contamination in inspect text:
    - “Multiple sets of tracks here; hard to tell how many.”

Fieldcraft progression:

- Higher skill:
  - Can parse more detail from messy overlap:
    - “At least two adult wolves and a smaller one.”

---

## 5. Families & Signature Behaviors (B114)

Tracking is **tied directly** into B114 family behavior.

### 5.1 Ridge Beasts (Wolves, Boars, Stags)

Examples:

- **Wolves**
  - Trails:
    - Pack prints, looping patrols around ridge pockets.
  - Signs:
    - Scat with bone fragments.
    - Scratch marks on trees at nose height.
  - Trail feel:
    - Circling / flanking; not straight lines.

- **Boars**
  - Trails:
    - Rooting patterns: disturbed soil patches.
    - Deep hoof marks in mud.
  - Signs:
    - Uprooted plants, bark rubbed off trunks.
  - Trail feel:
    - Meandering, heavy, with sudden charge lines.

- **Stags**
  - Trails:
    - Narrow, graceful paths through undergrowth.
  - Signs:
    - Antler-scraped bark, ground scuffs at display spots.
  - Trail feel:
    - Often lead to lookout glades or water.

### 5.2 Hollowroot Brood (Insects, Burrowers)

- Trails:

  - Subtle ground ripples.
  - Sporadic surface breaks.
- Signs:
  - Piles of fine soil.
  - Chitin shards.
- Trail feel:
  - Partial; you often follow **surface disturbances** to burrow nodes.

### 5.3 Black Sap-Touched & Corruption

- Trails:

  - Resin droplets on bark.
  - Blackened footprints.
- Signs:
  - Sickly plants.
  - Slower insect sounds or “wrong” buzzing.
- Trail feel:
  - Uneasy; sometimes trails double back unnaturally.

### 5.4 Human / Humanoid Threats

- Trails:

  - Boot prints, drag marks from traps, cart ruts.
- Signs:
  - Cigarette butts, torn cloth, scrap rope.
  - Trap sites with scuffed soil.
- Trail feel:
  - Intentional paths:
    - Toward vantage points
    - Along ridges with good lines of fire
    - Hidden approach routes.

---

## 6. Trail Signs & Hunter Marks

### 6.1 Natural Trail Signs

These are *unintentional* signs:

- Broken branches
- Mud slides
- Carcass remains
- Predator/perch spots with worn stone.

Used to:

- Hint at **common beast routes**.
- Suggest:
  - “If you camp here, something will likely pass below.”
  - Pocket-level patterns (B113).

### 6.2 Lodge Trail Marks

Hunters leave **Lodge-standard marks**:

- Bark slashes at specific heights/angles.
- Small carved symbols on rocks.
- Fetish bundles, feather ties, colored ribbons.

Types:

- **Route Marks**
  - “Safe path down”
  - “Shortcut to river”
- **Warning Marks**
  - “Den ahead”
  - “Ash-hole / unstable ground”
- **Memory / Story Marks**
  - Commemorating difficult Hunts or fallen hunters.

Reading them:

- Base player:
  - Gets simple, clear text:
    - “Old Lodge route marker: safe descent.”
- High Scribe/Forester rep:
  - Might get:
    - Who likely left it and roughly when.

### 6.3 Player-Placed Marks

Players can **place their own marks** within limits:

- Types:
  - Basic path arrows.
  - Warning markers.
  - Camp markers (tie into camp systems).
- Boundaries:
  - Max number per region to avoid clutter.
  - Small resource cost (simple craft).
- Utility:
  - Navigation with friends.
  - Personal shorthand (“This glade has good herbs.”).

---

## 7. Fieldcraft Progression

### 7.1 Skill Bands

We can think of **fieldcraft ranks** (explicit or implicit):

1. **Untrained**
2. **Novice**
3. **Competent**
4. **Expert**
5. **Master Tracker** (late Greatwood / future regions)

These may be represented by:

- Talent investments (B110)
- Profession side progression (Forester/Hunter notes)
- Lodge training quests
- Story moments (Deeds, B60/B67 side arcs)

### 7.2 What Changes with Rank

**Untrained:**

- Sees only Tier 2–3 fresh tracks for main Hunts/Deeds.
- Limited inspect text: direction + very basic info.

**Novice:**

- Can see Tier 1 tracks for common families.
- Inspects may include:
  - Rough freshness (“not long ago”).
  - Very basic quantity (“more than one”).

**Competent:**

- Better detection radius.
- Can parse:
  - Rough weight class.
  - Whether target is wounded / tired.
- Gains small mechanical bonuses:
  - Slight move-speed while following trails (knows where to step).

**Expert:**

- Access to faint / stale tracks for chosen families.
- Inspects:
  - Provide predictions:
    - “This is a patrol path; expect them to circle back.”
  - Notice:
    - Humane vs sadistic trap design in human threats.
- Stronger synergy with:
  - Signature Hunts (B103)
  - Secrets (90) linked to specific animals.

**Master Tracker:**

- Largely post-20 / later regions.
- In Greatwood 1–20:
  - Mostly signposted as “you are on your way there”, not fully realized.

---

## 8. Integration with Other Systems

### 8.1 Hunts & Deeds (61)

- Most Hunts:

  - Define a **primary trail** from:
    - Known last-sign spot → lair / encounter site.
- Deeds:

  - Often string multiple **trail segments**:
    - Old signs
    - NPC accounts
    - Fresh tracks.

Examples:

- D-GW-001 (Boar That Wouldn’t Die):
  - Early stage:
    - Ancient scars on trees, old broken spears.
  - Later:
    - Fresh, wide hoof trails with deep gouges.
- D-GW-003 (Tracks in the Ash):
  - Uses ash disturbances and burrow hum more than traditional prints.

Failing a Hunt:

- Trail might **go cold**:
  - Beast moves territory.
- Optional system:
  - “Re-tracking” the mark with an updated trail after time passes.

### 8.2 Regions & Pockets (63, B113)

Each pocket (B113) defines:

- Typical **traffic types**:
  - Which beasts move through.
  - Which human groups.
- **Trail density**:
  - Busy vs quiet pockets.
- Special **choke points**:
  - Ridge passes
  - Fallen logs
  - Dry streambeds.

Fieldcraft uses this to:

- Place and weigh trail signs.
- Suggest plausible directions:
  - “These prints will probably follow this dry creek.”

### 8.3 Dynamic Events (62)

Events can generate or react to trails:

- Help / rescue events:
  - “Find the missing gatherer by following mixed boot + drag marks.”
- Poacher events:
  - Lead via trap chain signs.
- Corruption events:
  - Corrupted track variants:
    - Tracks that stop abruptly
    - Trails that circle unnatural points.

Some events only appear if:

- The player has sufficiently **noticed** certain trails.

### 8.4 Professions & Broken Tools (52–57, 60)

Fieldcraft synergizes with professions:

- Herbalism:
  - Reading which animals graze on which plants.
- Skinning:
  - Finding carcasses by following scavenger trails.
- Woodworking & Forester tasks:
  - Recognizing tree damage patterns from beasts vs wind.
- Broken Tools (60):
  - Field experiments on tool durability:
    - Chosen based on:
      - Where you predict heaviest usage from trail data.

Profession-specific trail hints:

- High herbalism:
  - Notice unusual plant scorchings from black-sap.
- High skinning:
  - Identify predator kill sites from scattered remains alone.

### 8.5 Wounds & Failstates (B101)

Tracking influences risk:

- Following a **fresh** trail too aggressively:
  - Increases chance to be **ambushed** or cornered.
- Knowledge from fieldcraft:
  - Can warn:
    - “This creature has turned around before; it might be behind us.”
- Failing a trail and stumbling around:
  - Increases the chance of:
    - Running into unrelated threats.

Certain wounds:

- Might affect:
  - Tracking ability (blurred vision, foot pain).
- Lodge healers might:
  - Comment specifically:
    - “You won’t be following faint tracks on an ankle like that.”

---

## 9. UI & Presentation

### 9.1 General Principles

- No AR HUD overlays.
- Use:

  - Subtle highlights
  - Camera framing
  - Audio cues
  - Short text snippets.

Players should be able to:

- Toggle **Fieldcraft Hints** level:
  - Full → Minimal (for hardcore).

### 9.2 Visuals

- Tracks:
  - Subtle shader with slightly increased contrast.
- When focusing / near inspect radius:

  - Gentle outline or shimmer.
- Inspecting:
  - Small pop-up text, anchored near track.
  - No giant pop-up windows.

### 9.3 Audio

- Ambient layering:

  - Buzzing flies near carcasses.
  - Crack of twig when near fresh path.
  - Slight audio “pointing” for very nearby obvious clues.

Expert fieldcraft perks:

- Unlock more nuanced audio hints:
  - “You learn to distinguish ash crackle from normal breeze.”

### 9.4 Map & Journal

- Hunts:
  - Show **broad region** where trail starts.
- Journal:
  - Records:
    - Key fieldcraft notes discovered for Deeds:
      - “Boar favors muddy low ground.”
      - “Ash-burrow alpha pops up near certain stone outcrops.”

No:

- Track-by-track map plotting.
- Instead:
  - High-level “this is the kind of paths this thing uses.”

---

## 10. Technical Model

### 10.1 Track Data

Per track:

- `track_id`
- `source_id` – creature/NPC ID or party ID
- `family_tag` – for B114 (wolf, boar, poacher, etc.)
- `type_tag` – print, blood, scat, scratch, disturbance
- `position`, `direction`
- `created_time`, `age`
- `intensity` – 0–1
- `terrain_tag`, `weather_snapshot`
- `flags`:
  - `is_hunt_critical`
  - `is_event_critical`

### 10.2 Trail Data

Per trail:

- `trail_id`
- `source_id`
- `segment_ids[]`
- `start_region_tag`, `end_region_tag`
- `trail_type`
- `freshness_state`
- `attached_quest_id` (optional)

### 10.3 Fieldcraft Logic

Key functions:

- `SpawnTrackFromMovement(source, context)` – called by AI/anim.
- `UpdateTrackAges()` – run periodically; degrade intensity, change visibility tier.
- `GetVisibleTracksForPlayer(player)` – use radius, rank, settings.
- `InspectTrack(player, track)` – generate text based on:
  - Player rank
  - Track metadata
  - Story flags.

For performance:

- Trails outside some radius:
  - Can be compressed or culled, especially non-critical ones.
- Hunt-critical trails:
  - Given higher persistence/budget.

---

## 11. Example Flows

### 11.1 Simple Hunt: Greyback Cull

1. Player takes CH-GW-001.
2. Journal marks:
   - “Greybacks active near Low-Eaves Paths.”
3. Player reaches region:
   - Sees obvious Tier 3 prints:
     - Fresh wolf tracks crossing path.
4. Inspect:
   - “Fresh; moving along the ridge toward the south.”
5. Follow:
   - Trail bends according to B114 wolf patterns:
     - On high ground, circling vantage points.
6. Encounter:
   - Wolves spotted before they fully flank if:
     - Player kept eyes on trail and environment.

### 11.2 Deed Stage: Ash-Burrowed Alpha (D-GW-003)

1. Player in Ash-Edge:
   - Tracks are mostly **disturbance patterns** in ash.
2. Trail signs:
   - Fine ash slides.
   - Periodic eruptions where smaller ash-eaters surfaced.
3. Fieldcraft inspection:
   - “Something big is moving beneath; these ripples are too regular.”
4. Using knowledge:
   - Player can guess:
     - Where to avoid standing (predict eruption).
   - Or where to bait emergence:
     - Heavy stomping, thrown rocks.
5. Final arena:
   - Reading ash-trail lines mid-fight helps:
     - Anticipate the burrowed alpha’s path.

### 11.3 Poacher Trail

1. Event/Hunt spawns:
   - “Poachers’ Signs” (CH-GW-010).
2. First sign:
   - Smashed snare, blood spatters.
3. Trail:
   - Boot prints alternating with drag marks (animal / stolen carcass).
4. Branching:

   - Player can:
     - Follow tracks directly to camp (risk ambush).
     - Or read terrain:
       - Realize they’re likely heading toward a known lookout pocket.
5. High fieldcraft:

   - Additional insight:
     - “Multiple boot sizes, one with a limp; one carries heavier load.”

---

## 12. Next Actions

1. **Lock family-specific track profiles** in B114:
   - For wolves, boars, ash-eaters, Hollowroot brood, poachers.
2. **Define fieldcraft rank sources**:
   - Talents, quests, rep thresholds, potions.
3. **Prototype base tracking loop**:
   - Fresh → stale tracks, simple Hunt.
4. **Integrate with events (62) and pockets (B113)**:
   - Make sure:
     - Trails respect pocket layouts.
5. **Author inspect text bank**:
   - Multiple variants per family, rank, and situation.
6. **Test readability**:
   - Tune:
     - Density of tracks
     - Lifetime
     - How often players “just lose” the trail vs feel smart for following it.

67 should be treated as the **fieldcraft backbone**: if 61 says *what* you’re hunting and 63 says *where*, this file defines *how you actually find it* when the forest doesn’t draw you a straight line.
