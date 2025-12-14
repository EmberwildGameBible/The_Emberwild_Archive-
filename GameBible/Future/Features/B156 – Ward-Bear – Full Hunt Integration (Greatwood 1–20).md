Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B156 – Hollowroot Matron – Full Hunt Integration (Greatwood 1–20)

---

## 0. PURPOSE & POSITION IN GREATWOOD

The **Hollowroot Matron** is a major Greatwood Hunt that expresses the forest’s
**fungal / root / infestation** side.

She sits alongside:

- Elder Hollow Stag – natural guardian, ceremony, movement test.
- Black-Sap Devourer – corruption, sap, territory control.
- Greatwood Howler, Ward-Bear, Ragged King, Shadow Under the Wardstone – other pillars.

This file defines the Hollowroot Matron as:

- A **mid-to-late Greatwood Hunt** for bands **C–D (11–20)**.
- A boss focused on:
  - **Spore management**
  - **Add control**
  - **Space denial via fungal growth**
  - Cross-synergy with **cooking, alchemy, and foraging**.

It covers:

- Identity, story, and fantasy.
- Unlock conditions and Lodge integration.
- Arena design, phases, and specific mechanics.
- Role expectations and profession hooks.
- Loot and system integration (B151/B152, ingredients, Lodge).
- Implementation notes + telemetry.

---

## 1. HUNT IDENTITY & FANTASY

### 1.1 High-Concept Tagline

> **“The mother of the hollow groves that never stops feeding.”**

The **Hollowroot Matron** is:

- A massive, partially immobile **root-and-fungus chimera**:
  - Imagine a deer or boar skeleton long since subsumed by Hollowroot tissue.
  - Thick root bundles form legs and torso; fungal gardens erupt from her back.
- The source and **command node** for many Hollowroot beasts in Greatwood.

Where Black-Sap Devourer is **liquid corruption**, the Matron is **solid infestation**:

- She **grows** the groves.
- Her power shows up as:
  - New fungal pads.
  - Re-spawning Hollowroot beasts.
  - Choking root networks.

### 1.2 Visual Motifs

- Body:
  - A central “torso” grown around old bones.
  - Root bundles forming thick limbs anchored into the ground.
  - A half-skeletal, half-wooden “head” with fungus-grown antlers.
- Back & Upper Mass:
  - Multiple large **fungal blooms**:
    - Plateau mushrooms (platforms).
    - Puffball clusters (spore bombs).
    - Bioluminescent caps (telegraphing mechanics).
- Ground:
  - Interlocking root webs.
  - Soft soil with **pulsing patches** where new growth will occur.
  - Pools of faintly glowing mycelium.

The goal is to make the arena feel like **the inside of a forest infection**, not just a regular clearing.

### 1.3 Audio Motifs

- Ambience:
  - Quiet, muffled; as if the forest is full of dampened, rotting material.
  - Subtle creaking roots, stretching wood, and faint bubbling beneath soil.
- Boss sounds:
  - Low, rumbling groans that blend animal and wood-splitting.
  - Wet tearing noises when she rips roots out of the soil.
- Abilities:
  - Spore bursts:
    - Compressed “thunk” followed by hissing, crackling diffusion.
  - Root whips:
    - Sharp whiplash followed by splintering.

### 1.4 Emotional Beat

Players should feel:

- **Claustrophobic**, even in an open arena:
  - The ground is “alive” and untrustworthy.
- **Overwhelmed**, but in a slow, creeping way:
  - More spores, more adds, more zones over time.
- **Rewarded for awareness and planning**:
  - If they control growth and focus certain targets, the fight remains manageable.
  - If they ignore it, the grove blankets itself in danger.

This fight is about **infection over time**, not just a DPS race.

---

## 2. UNLOCK CONDITIONS & STORY FRAMING

### 2.1 Recommended Band & Timing

- Designed for **levels 13–18**, best in **late Phase C / early Phase D**.
- Intended progression context:
  - After players have:
    - Encountered Hollowroot beasts in pockets.
    - Seen Black-Sap Devourer or at least the sap groves.
    - Started engaging with cooking/alchemy at more than surface level.

For many players, Matron is:

- Either their **third major Hunt** (after Elder Stag + Devourer / Ward-Bear).
- Or an alternate path: “the fungal route” where they lean into Hollowroot content.

### 2.2 Preconditions (Design-Level)

Hunt appears on Hunt Board when:

- Player has completed **X Hollowroot contracts**, e.g.:
  - “Burn out Hollowroot growths in pocket Y.”
  - “Hunt Hollowroot beasts for their cores.”
- Player has:
  - Cleared at least one **fungal event** in a Greatwood pocket (e.g., a “spore bloom” event).
- Lodge has:
  - Progressed a project related to **treating or studying fungal infestations**.

NPCs can now say:

> “You’ve cut away what you can at the edges. The infection isn’t stopping. Time to go for the root.”

### 2.3 Narrative Setup

Framing:

- Lodge scholars discover that Hollowroot growth rates are **accelerating unnaturally**.
  - Pockets clear for a while, then re-infect.
- Stories appear of:
  - Hunters vanishing in “soft soil”.
  - Animals consumed by fungus mid-stride.

Hunt description:

- The Hollowroot Matron is the **organizing node**:
  - A central body from which Hollowroot creep spreads through Greatwood.
- She’s not purely malevolent—she’s just **unchecked overgrowth**.
- The Lodge frames the Hunt as:
  - “Pruning a diseased heart so the forest doesn’t die.”

### 2.4 Lodge Integration

- **Hunt Board**:
  - The Matron’s entry uses fungal imagery and root motifs.
- **Alchemist NPC**:
  - Pushed to forefront for this Hunt:
    - Offers pre-Hunt brews.
    - Provides repeatable turn-ins for Hollowroot reagents.
- **Cook**:
  - Emphasizes **detox** stews and **immune fortifying** meals.

Hunt completion:

- Unlocks new Lodge décor:
  - A section of Hollowroot Matron’s shell mounted as a **fungal wall piece**.
  - Potted Hollowroot “specimen” safely contained behind glass / wards.
- Progresses Lodge project:
  - “Containment of Hollowroot Spread.”

---

## 3. ARENA & ENVIRONMENT DESIGN

### 3.1 Pocket & Location

Pocket tag: `POCKET_HOLLOWROOT_NEST`

- Geography:
  - Depression in the forest floor like a **sunken bowl**.
  - Encircled by thick roots forming natural walls and arches.
  - Matron is anchored toward the back/center.

### 3.2 Zones

Divide into:

- **Zone A – Outer Ring (Rotten Fringe)**
  - Patchy Hollowroot growth.
  - Safe by comparison, but with occasional fungal pads.
- **Zone B – Root Web (Midfield)**
  - Crisscrossing roots above/below ground.
  - Movement is slightly slower; root nodes can rupture.
- **Zone C – Matron’s Cradle (Inner Core)**
  - Directly around Matron’s main mass.
  - Highest concentration of fungal structures:
    - Puffballs.
    - Large plates.
    - Glowcaps.

### 3.3 Environmental Props

- **Root Nodes**
  - Bulging joints where multiple roots converge.
  - Can be:
    - Neutral terrain.
    - Or explode in spore or root lash if triggered.
- **Fungal Clusters**
  - Distinct types:
    - Puffballs (burst into spores).
    - Glowcaps (buff/debuff zones).
    - Shelf fungi (platforms/climbable shapes, if needed).
- **Hollow Pits**
  - Small pits where beasts can emerge.
  - Function as spawn points for Hollowroot adds.

### 3.4 Readability

Each hazard type gets its **own color and silhouette**:

- Puffballs: round, pale, soft edges.
- Glowcaps: bright colored caps; clearly “zones”.
- Root Nodes: thick wood with visible veins.

This is essential so players can parse quickly what’s dangerous vs useful.

---

## 4. MECHANICAL THEMES & OVERVIEW

### 4.1 Core Themes

1. **Fungal Creep Over Time**
   - The arena gets busier and more dangerous as the fight goes on.
   - The group can **push back** by destroying specific structures.

2. **Spore Management**
   - Spore clouds and stacks require:
     - Time management.
     - Positioning.
     - Cleanses and detox consumables.

3. **Add Ecology**
   - Adds are not just nuisance:
     - They represent the Matron’s “children”.
     - Killing them too fast, too slow, or in the wrong place has consequences.

4. **Cross-System Prep**
   - The Hunt rewards:
     - Anti-toxin stews.
     - Fungal-knowledge brews.
     - Foraged reagents turned into the right tools.

### 4.2 Fight Structure

Phases:

- **Phase 0 – Descent into the Nest**
- **Phase 1 – First Bloom**
  - Mild creep + basic spore mechanics.
- **Phase 2 – Children of the Matron**
  - Adds, thicker spores, and interactive terrain.
- **Phase 3 – Rot Overflow (Soft Enrage)**
  - Arena heavily covered; group must push for kill.

We combine:

- Slow build pressure (like Devourer’s sap) with
- Sharp bursts of danger (spore bombs, add waves).

---

## 5. PHASE BREAKDOWNS

### 5.0 Shared Systems

**Spore Sickness (Status)**

- Stackable debuff from:
  - Spore clouds.
  - Certain Matron abilities.
- At low stacks:
  - Minor DoT, mild healing reduction.
- At high stacks:
  - Stronger DoT, movement sluggishness, occasional cough/stagger (brief interruption).

**Fungal Saturation (Arena Meter)**

- Hidden meter tracking:
  - Number of active fungal clusters.
  - % of arena under fungus/spores.
- Drives:
  - Phase triggers.
  - Extra mechanics in Phase 3.

---

### 5.1 Phase 0 – Descent into the Nest

**Trigger**

- Player enters `POCKET_HOLLOWROOT_NEST`.
- Short descent path:
  - Narrow root tunnels.
  - Mild ambient spores.

**Gameplay**

- Small Hollowroot beasts.
- One or two **tutorial fungal pads**:
  - Step on puffball → small spore cloud.
  - Glowcap zone gives small regen or resist.

**Purpose**

- Teach:
  - “Spore clouds exist, don’t stand in them.”
  - “Some fungi are helpful, some harmful.”

---

### 5.2 Phase 1 – First Bloom

**HP Range**

- Matron at 100% → ~70%.

**Matron Behavior**

- She is **semi-anchored**:
  - Can rotate, lash, and shift slightly.
  - Not fully mobile like a normal boss.

**Abilities**

1. **Root Lash**
   - Medium-range line/arc from her.
   - Damage: medium physical + small Spore Sickness stack.
   - Telegraph: roots tense, glow faintly, then whip.

2. **Spore Puff (Basic)**
   - Matron flexes fungal bulges on her back.
   - 1–3 **puffball clusters** eject small spore bursts:
     - Impact points marked briefly.
     - On impact: small AoE cloud.
   - Clouds linger briefly; low damage, 1 stack on entry.

3. **Drain from the Soil**
   - Matron channels, drawing nutrients:
     - Small heal over time.
     - Spawns **low-tier Hollowroot beastlings** from pits.
   - Adds:
     - Light melee.
     - If not killed, they rush players or return to Matron to accelerate her heal.

**Environment**

- Only a few fungal clusters active.
- Ground mostly manageable.

**Player Checks**

- Can they:
  - Respect root lash telegraphs?
  - Step out of obvious small clouds?
  - Kill/interrupt drainage adds?

---

### 5.3 Phase 2 – Children of the Matron

**Trigger**

- Matron hits ~70% HP.
- Fungal Saturation crosses first threshold.

**New/Upgraded Mechanics**

1. **Hollowroot Summons (Add Waves)**
   - Every X seconds:
     - Small pack of **Hollowroot beasts** emerges from pits:
       - Some melee rushers.
       - Some spore-casters.
   - If waves are ignored:
     - They flood the arena.
     - Certain abilities scale with number of active adds.

2. **Spore Puff (Patterned)**
   - Instead of random:
     - Puffballs now form **patterns**:
       - Lines across the arena.
       - Rings around Matron.
   - Creates movement puzzles:
     - Players must weave through safe gaps.

3. **Fungal Overgrowth**
   - Adds that die on fungal pads:
     - Cause that pad to **upgrade**:
       - Larger radius.
       - Heavier clouds.
   - Encourages:
     - Pulling adds off pads before killing them.
     - Thinking about **where** to fight.

4. **Protective Glowcaps**
   - Some glowcaps now give:
     - Small buffs when standing inside:
       - Reduced spore stack gain.
       - Minor regen.
   - But:
     - Glowcaps can be shattered by certain Matron abilities or poor positioning.

**Environmental Shift**

- More fungal clusters appear in Midfield and Outer ring.
- Root web gets denser:
  - Slight movement penalty in some strips.

**Player Checks**

- Handling multi-target pressure.
- Add control, not just boss tunneling.
- Basic environment manipulation:
  - Avoid upgrading pads too much.
  - Use glowcaps intelligently.

---

### 5.4 Phase 3 – Rot Overflow (Soft Enrage)

**Trigger**

- Matron hits ~35–40% HP.
- Fungal Saturation crosses second threshold.

**New/Upgraded Mechanics**

1. **Spore Storm**
   - Matron unleashes a wave of spores:
     - Multiple puffball volleys in rapid sequence.
   - Clouds may **chain** or over-lap.
   - Players rely heavily on:
     - Movement.
     - Brews/food.
     - Glowcaps.

2. **Root Grasp (Snare Zones)**
   - Sections of root web **animate**:
     - Create snare zones briefly.
   - Being inside when it triggers:
     - Short root/snare.
     - Spore stacks from ground vents.

3. **Matron’s Call (Empowered Adds)**
   - Add waves become:
     - Less frequent but more dangerous.
     - Elite Hollowroot beasts:
       - One high-priority target at a time.
   - These adds:
     - Bring mini-fungal auras.
     - Disrupt safe spaces.

4. **Overflow Threshold**
   - Fungal Saturation can now push into “overflow”:
     - If too many pads are active/upgraded, the arena:
       - Gains baseline spore haze (constant low stacks).
       - Gains pulses of damage zone expansions.

**Soft Enrage**

- If fight runs too long:
  - The ground is **nearly all fungus**.
  - Spore Sickness stacks become almost impossible to manage.
  - Glowcaps shatter faster than they can be used.
- The design target is:
  - Group must make a **confident push**.
  - Pre-Hunt prep matters heavily.

**Player Checks**

- Do they:
  - Prioritize adds correctly?
  - Hold cooldowns for Spore Storms?
  - Manage Saturation by intentionally clearing certain pads where possible?

---

## 6. ABILITY & DATA BREAKDOWN (DESIGN LAYER)

> Numbers are intentionally left **relative**; actual numeric tuning is in B151/B155 and implementation.

### 6.1 Matron Ability List

- `ROOT_LASH_LINE`
  - Medium cone/line.
  - Physical damage + small Spore Sickness.
  - Used throughout.

- `SPORE_PUFF_BASIC`
  - Target: random players/positions.
  - Creates small fungal clouds.

- `DRAIN_FROM_SOIL`
  - Channeled.
  - Spawns beastlings from pits.
  - Slow self-heal while active.

- `SPORE_PUFF_PATTERN`
  - Spawns puffballs in designed patterns (line, ring, spiral).
  - Introduces movement puzzles.

- `SPORE_STORM`
  - High-intensity, repeated volley of spore puffs.
  - Anchor mechanic for Phase 3.

- `ROOT_GRASP_FIELD`
  - Root webs animate in defined zones.
  - Short snare + spore vent.

- `MATRON_CALL_EMPOWERED_ADD`
  - Summons elite Hollowroot beast.
  - Add has its own mini-abilities.

### 6.2 Add Types

- `hollowroot_beastling`
  - Fast melee, low HP.
  - Minor spore application on hit.

- `hollowroot_sporecaster`
  - Mid-range enemy.
  - Throws small spore balls.

- `hollowroot_guardian`
  - Elite add in Phase 3.
  - Aura:
    - Slightly increases fungal pad radius nearby.
  - Tuning:
    - Must die fast or the arena becomes untenable.

---

## 7. ROLE EXPECTATIONS & PROFESSION INTEGRATION

### 7.1 Combat Roles

**Tanks / Frontliners**

- Keep Matron faced away from group for root lashes.
- Hold empowered adds in safe zones away from fungal pads.
- Stand between sporecasters and the party where possible.

**Melee DPS**

- Clear adds quickly **in chosen locations**.
- Manage positioning around root webs and upcoming snare fields.
- Help break particularly dangerous pads if that’s allowed mechanically.

**Ranged DPS**

- Primary responsibility for:
  - Sporecasters.
  - Targetable fungal structures at range (if implemented).
- Should be more mobile:
  - Shifting between safe areas during Spore Storms.

**Healers / Support**

- Manage Spore Sickness stacks:
  - Cleanse rotations.
  - Timing of mitigation.
- Cover sustain during:
  - Drain from Soil + adds.
  - Spore Storm bursts.

### 7.2 Cooking Integration

From Greatwood cooking chapters:

- Recommended **pre-Hunt meals**:

  - **Fungal Detox Stew**
    - Modest health regen.
    - Reduced Spore Sickness stack gain or faster decay.

  - **Stamina / Mobility Dish**
    - Increases stamina / movement, to handle Spore Storm and root snares.

  - **Regenerative Roast**
    - Helps over long fight duration:
      - Slight health regen.
      - Minor resist vs nature/fungal damage.

- Special recipes:
  - Made primarily from Hollowroot-aligned ingredients:
    - `hollowroot_sporecap`
    - `mire_fungus`
    - `dampcap`
  - The Matron’s Hunt is where **those ingredients really shine**.

### 7.3 Alchemy Integration

- **Brews & Tonics**:

  - Anti-spore tincture:
    - Temporarily halves Spore Sickness gain.
  - Detox draught:
    - Large one-time reduction in Spore Sickness stacks.
  - Resist brew:
    - Increases resistance to fungal/nature damage for a short window.

- **Bombs / Tools**:

  - Fungal cleanser vials:
    - Thrown at fungal pads to:
      - Reduce potency.
      - Or remove them entirely (at some cost/risk).
  - Root-sever salves:
    - Temporarily disable root webs in an area:
      - Reducing movement penalties / snares.

### 7.4 Foraging & Hollowroot Knowledge

- Foragers familiar with **Hollowroot pockets**:

  - Know which fungi are:
    - Edible / beneficial / neutral / deadly.
  - Provide best routes and quick callouts:
    - “Don’t kill adds on those pads.”
    - “Glowcaps on north side are safer.”

- The Hunt is an exam of:
  - Whether players engaged with fungal ingredients in broader Greatwood play.

---

## 8. LOOT & SYSTEM INTEGRATION

### 8.1 Thematic Ingredients

Primary drops (per B151/B155 naming style):

- `hollowroot_matron_core`
  - Rare core piece; used in:
    - High-end alchemy brews.
    - Lodge containment projects.

- `hollowroot_shell_plate`
  - Hard fungal-root plate; used in:
    - Defensive talismans.
    - Certain trophies.

- `matron_spore_cluster`
  - Dense spore bundles; key for:
    - Strong detox or damage brews.
    - Advanced fungal recipes.

Common bundles:

- Each player:
  - 1–3 `hollowroot_shell_plate`
  - 1–2 `matron_spore_cluster` (subject to tuning)
- Group often gets:
  - 1 `hollowroot_matron_core` split via loot rules (or guaranteed for first clear).

### 8.2 Lodge Trophies & Progress

- **Primary Trophy Item**
  - `trophy_hollowroot_matron_fragment`

- Lodge projects:

  - “Contain Hollowroot Spread”:
    - Costs:
      - Matron cores.
      - Shell plates.
      - Standard Hollowroot cores from lesser beasts.
    - Rewards:
      - Visual: new warded sections of Lodge with contained Hollowroot samples.
      - Mechanical: minor Lodge buff vs fungal/nature effects across Greatwood.

  - “Matron Study Wing”:
    - Cosmetic area in Lodge:
      - Books, jars, diagrams.
      - NPC research sidequests later.

### 8.3 Chase Rewards

- **Trinket: `trinket_matron_spore_talisman`**
  - Small passive bonus:
    - Reduced damage from spores/fungal sources.
    - Slight increase in **ingredient yield** from fungal nodes.

- **Recipe Scroll: `recipe_scroll_matron_detox_feast`**
  - High-tier group feast:
    - Big detox effect + regen.
    - Very rare drop; pinnacle fungal cooking recipe in Greatwood tier.

- **Relic-adjacent drop** (very low chance):
  - `relic_splinter_hollowheart`
    - Ties the Matron into broader Relic storyline (B139–B150/B143).

### 8.4 B151/B155 Hook

- In `HuntRewards_Greatwood` (future file):

  - Define `HUNT_HOLLOWROOT_MATRON_BUNDLE` referencing:
    - New Matron ingredients.
    - Fungal world-drop tables from B155.

- In `SpecialtyPity_Greatwood.lua`:

  ```lua
  SpecialtyPity.tracks.hollowroot_matron = {
      expected_rolls   = 6,  -- typical kills before a special ingredient
      hard_cap_rolls   = 15,
      min_band         = "C",
      max_band         = "D",
      sources          = { "HUNT_HOLLOWROOT_MATRON", "POCKET_HOLLOWROOT_NEST" },
  }
Ensures players farming the Matron see specialized fungal drops at reliable long-term rates.

9. DIFFICULTY, DURATION, & TUNING
9.1 Intended Difficulty
Target audience:

Groups in level 13–18 range.

Reasonable gear and some system prep (food/brews).

First-time success:

After 2–4 attempts for prepared groups.

9.2 Fight Duration & Failure Modes
Duration target:

8–12 minutes depending on group skill and band.

Common fails:

Ignore add waves → Saturation skyrockets.

Kill adds in bad places → Over-upgraded fungal pads.

Mismanage Spore Sickness → Healing overwhelmed in Phase 3.

Fail to coordinate cooldowns for Spore Storm.

9.3 Main Tuning Levers
Spore Sickness:

Stack gain rate.

Decay dynamics.

Thresholds for major penalties.

Fungal Saturation:

How quickly pads spawn/upgrade.

How punishing overflow becomes.

Add density:

Beastling/sporecaster counts.

Guardian (elite) strength and frequency.

Loot:

Core/plate/cluster quantities.

Chase drop chances.

10. IMPLEMENTATION NOTES (HIGH-LEVEL)
Implementation lives in separate Lua modules (boss FSM, environment controller, loot resolver). This section explains how to translate design into code, without binding to a specific engine.

10.1 State Machine Sketch
States:

STATE_IDLE – Matron dormant / ambient.

STATE_PHASE1 – First Bloom.

STATE_PHASE2 – Children of the Matron.

STATE_PHASE3 – Rot Overflow.

STATE_RESET – Despawn/cleanup.

Transitions:

HP thresholds (70%, 35–40%).

Fungal Saturation thresholds (First, Second).

10.2 Environment Controller
Separate HollowrootNestEnvironment responsible for:

Spawning & tracking:

Fungal pads (type, position, upgrade state).

Root webs and snare zones.

Pits (add spawn points).

Tracking Fungal Saturation.

Providing query API:

“How saturated is arena?”

“Where are safe zones?”

Matron logic calls:

Env:SpawnFungalPad(type, position)

Env:TriggerSporeBurst(pattern, params)

Env:SpawnAddWave(type)

Env:GetSaturation()

10.3 Loot Integration
On kill:

Compose a LootContext including:

mobId = "HUNT_HOLLOWROOT_MATRON"

zoneTag = "POCKET_HOLLOWROOT_NEST"

isHuntTarget = true

Feed to:

Greatwood creature loot tables (B155).

Hunt-specific bundle (HuntRewards module).

SpecialtyPity (for fungal tracks).

The Hunt’s identity in code is:

Just another source keyed as "HUNT_HOLLOWROOT_MATRON" plus pocket tag.

11. TELEMETRY & BALANCING
11.1 Data to Log
Per attempt:

Fight duration.

Wipes vs kills.

Spore Sickness stats:

Average peak stacks per player.

Time spent above threshold X.

Add statistics:

Count of adds spawned and killed by type.

Average time adds stay alive.

Fungal Saturation:

Saturation at Phase transitions.

Saturation at wipe/kill.

Fungal pad behavior:

Number spawned.

Number upgraded.

Top 3 “death locations” relative to pad clustering.

11.2 Targets & Adjustments
Targets:

Most of the difficulty should come from:

Add management + spore handling, not random one-shots.

Players should feel:

“We got overwhelmed because we handled mechanics poorly,”

Not “it’s just a gear wall.”

Adjustments if:

Completion rate too low:

Reduce Saturation growth from pad upgrades.

Reduce Spore Sickness penalties.

Completion rate too high:

Increase add threat.

Increase stakes of bad pad management (more dramatic upgrades).

12. SUMMARY
The Hollowroot Matron:

Is Greatwood’s fungal / infestation keystone Hunt.

Tests:

Add control.

Environmental awareness.

Long-fight resource planning (food, brews, cleanses).

Integrates cleanly with:

B151 – Greatwood Loot & Drop System (fungal ingredients, bands, pity).

B152 – 1–20 Systems Index (Hunts + pockets + Lodge).

B155 – Creature loot tables (Hollowroot family drops).

Lodge projects around forest disease, containment, and research.

If Elder Stag is “Greatwood’s heart” and Black-Sap Devourer is “its bleeding wound,”
the Hollowroot Matron is “the rot that would take everything if you let it grow.”

