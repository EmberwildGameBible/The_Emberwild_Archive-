# B157 – Ward-Bear – Full Hunt Integration (Greatwood 1–20)

---

## 0. PURPOSE & POSITION IN GREATWOOD

The **Ward-Bear** is a major Greatwood Hunt that expresses the forest’s **protective / wardstone** side, in contrast to:

- **Elder Hollow Stag** – ceremonial, natural guardian, movement test.
- **Black-Sap Devourer** – corruption, sap, territory control.
- **Hollowroot Matron** – infestation, spores, add ecology.

The Ward-Bear is:

- A **mid-band Hunt** tuned for **levels ~10–16** (Bands B–C).
- A teaching boss for:
  - **Sustained pressure with shields and barriers**.
  - **Wardstone mechanics** (blocking / reflecting / amplifying).
  - **Interrupts & coordinated burst windows**.

It is thematically:

> Greatwood’s attempt to protect itself so aggressively that travelers and hunters become targets.

This file defines the Ward-Bear’s:

- Identity, story, fantasy.
- Unlock conditions & Lodge integration.
- Arena layout & environmental wardstones.
- Full fight structure (phases, mechanics, patterns).
- Role expectations & profession hooks.
- Loot, ingredients, and Lodge projects.
- Implementation-facing notes & telemetry targets.

---

## 1. HUNT IDENTITY & FANTASY

### 1.1 High-Concept Tagline

> **“The forest’s shield, turned into a weapon.”**

The **Ward-Bear** is:

- A **massive bear** suffused with wardstone energy:
  - Stone plates fused into its hide.
  - Glowing ward sigils embedded in its shoulders/flanks.
- Originally created/empowered as a **guardian construct**:
  - A living ward anchored to **wardstones** in the glade.
- Over time:
  - Its mandate warped from protecting the forest from invaders to attacking **any** disturbance.

It embodies:

- **Protection twisted into aggression**.
- **Barrier-centric gameplay** (shields, protective rings, reflections).

### 1.2 Visual Motifs

- Body:
  - Thick, overgrown fur with stone plates and crystalline shards protruding.
  - Bear’s eyes glow with wardstone light (pale blue/green).
  - Ward sigils etched into skin and stone, faintly rotating or pulsing.
- Armor & Cracks:
  - Stone segments over back and shoulders:
    - Some cracked, leaking light.
  - As HP lowers, more cracks:
    - Light leaks more intensely.
- Environment:
  - Wardstone obelisks around the arena:
    - Each with distinct rune patterns.
    - Some intact, some fractured.

### 1.3 Audio Motifs

- Ambient:
  - Low hum from wardstones.
  - Occasional chime-like pulses when wards activate.
- Bear:
  - Deep, reverberant growls with a metallic/stone resonance.
  - Heavy paw impacts with a stone ring.
- Abilities:
  - Shield activations:
    - Quick, crystalline chime → low bass thrum.
  - Warding roars:
    - Multi-layered roar with echo-like afterimage sound.
  - Ward beam or explosion:
    - Crackling energy → shattering stone.

### 1.4 Emotional Beat

Players should feel:

- **Impressed** by the bear’s bulk + magical shielding.
- **Frustrated (in a good way)** by its ability to shrug off damage without proper mechanics.
- **Empowered** when they finally break or redirect its wards to create big burn windows.

The fight is about:

> Learning *when not to hit* and *where to stand* to turn the forest’s defensive magic to your advantage.

---

## 2. UNLOCK CONDITIONS & STORY FRAMING

### 2.1 Recommended Bands & Timing

- Primary band: **B–C (levels 8–15)**.
- Optimal target: **10–14**.
- Position in progression:
  - After players have:
    - Seen at least one wardstone in the world (ambient objects, minor scripts).
    - Completed a simpler Hunt (Elder Stag or Greatwood Howler).
  - Before or parallel with more punishing corruption Hunts (Devourer, Matron).

### 2.2 Preconditions (Design-Level)

The Ward-Bear Hunt appears on the Hunt Board when:

- Player has:
  - Completed at least:
    - 1x **early animal Hunt** (stag, boar, howler, etc.).
    - 1x **wardstone-related quest or event** (e.g. “Stabilize wardstone at XYZ pocket”).
- Lodge has:
  - Progressed a **basic wardstone project**, such as:
    - “Reinforce the Lodge wards”.
    - “Activate perimeter wardstones”.

NPCs can then say things like:

> “We shored up the Lodge, but something’s gone wrong in the outer groves. The ward we anchored into a bear didn’t stop. It keeps pushing everything away. Including us.”

### 2.3 Narrative Setup

Framing:

- In an earlier crisis, Greatwood wardens + Lodge scholars:
  - Performed a ritual to **bind wardstone essence into a powerful animal**.
  - They chose a bear: sturdy, territorial, dependable.
- The binding worked **too well**:
  - Ward-Bear became a roaming ward anchored to nearby wardstones.
  - It started treating:
    - Travelers, foragers, and even some Lodge hunts as **threats**.
- Lodge is split:
  - Some want to **re-bind** or calm the bear (not supported mechanically yet).
  - Others say the ward is **unstable and must be felled**.

Hunt text emphasizes:

- “You face the forest’s own shield.”
- “Break it, and the Lodge sleeps easier. Spare it, and you won’t sleep at all.”

### 2.4 Lodge Integration

- **Hunt Board**:
  - Ward-Bear entry uses:
    - Bear silhouette.
    - Wardstone runes.
- **Ward Warden NPC**:
  - Specialized NPC who talks about wardstones and rituals.
  - Provides optional side-quest to gather ward reagents before the Hunt.
- **Cook & Alchemist**:
  - Cook:
    - Recommends **stamina + toughness** dishes.
  - Alchemist:
    - Recommends **wardbreak tonics**, **barrier-piercing brews**, or **reflective dampeners**.

First completion:

- Decorative upgrades:
  - A **shattered wardstone shard** mounted over Lodge entry.
  - Bear-claw marks etched around Lodge ward glyphs.
- Mechanical:
  - Minor Lodge buff vs ward/arcane damage across Greatwood.

---

## 3. ARENA & ENVIRONMENT DESIGN

### 3.1 Pocket Tag & Location

Pocket tag: `POCKET_WARDEN_GLADE`

- Geography:
  - Open glade nestled between rocky outcrops.
  - Several standing **wardstone pillars** arranged in a rough ring.
  - Center area where Ward-Bear patrols, with ward dust swirling.

### 3.2 Zones

Divide into:

- **Zone A – Outer Ring (Pillar Circle)**
  - Wardstone pillars around the glade.
  - Some are:
    - Intact (strong effects).
    - Cracked (unstable).
- **Zone B – Central Trample Ground**
  - Worn earth where Ward-Bear mostly fights.
  - Scored with claw marks and scorch-like ward burns.
- **Zone C – Rocky Edges / Ledges**
  - Slight elevation:
    - Players can take vantage points.
    - Some ward beams may reflect off rocks.

### 3.3 Wardstones (Core Environmental Objects)

Types:

1. **Guardian Pillars**
   - Project protective auras:
     - Reduce incoming damage in their radius.
   - But:
     - Ward-Bear can tap them to gain **temporary shields**.

2. **Reflective Pillars**
   - When activated:
     - Reflect certain ward-beams.
   - Player positioning can:
     - Redirect damage or disable a pillar temporarily.
   - Risk:
     - Mis-aimed beams can hit allies.

3. **Cracked Pillars**
   - Unstable:
     - Periodically pulse.
     - May:
       - Empower Ward-Bear.
       - Or create volatile zones players can exploit.

Visual clarity:

- Guardian = sturdy, full runes, stable light.
- Reflective = mirror-like crystals, sharper edges.
- Cracked = visible breaks, flickering, sparks.

### 3.4 Navigation & Readability

Design goals:

- Central area is where melee dances with bear.
- Outer ring is where:
  - Ranged players position.
  - Ward interactions are managed.
- Pillars are distinct and **highly readable**, with:
  - Different color signatures.
  - Different iconography / rune patterns.

---

## 4. MECHANICAL THEMES & OVERVIEW

### 4.1 Core Themes

1. **Shields & Windows**
   - Ward-Bear cycles through:
     - High-defense states (shielded).
     - Vulnerable windows (wards broken or misaligned).
   - Players must learn:
     - When to break shields.
     - When to hold damage.

2. **Positional Ward Play**
   - Pillars amplify or reflect ward energies.
   - Correct positioning:
     - Lets players use pillars against the bear.
   - Incorrect positioning:
     - Causes friendly-fire or wasted windows.

3. **Sustained Damage & Punishment of Mindless DPS**
   - If players tunnel DPS:
     - They hit into shields.
     - Trigger punishing reflects.
   - The fight rewards:
     - Discipline.
     - Timing.
     - Group coordination.

4. **Teaching Wardstone Mechanics for Later Content**
   - Later content (Wardstone dungeons, Shadow Under the Wardstone, etc.) builds on these same read patterns.

### 4.2 Fight Structure

Phases:

- **Phase 0 – The Glade Wakes**
  - Entrance, initial ward pulse.
- **Phase 1 – Guardian on Patrol**
  - Basic bear moves + intro shields.
- **Phase 2 – Ward Overcharge**
  - Pillars, beams, and heavy ward synergies.
- **Phase 3 – Broken Ward Frenzy (Soft Enrage)**
  - Bear partially unbound; more feral, less controlled, more dangerous.

---

## 5. PHASE BREAKDOWNS

### 5.0 Shared Systems

**Ward Shield (Status)**

- Special shield state:
  - Reduces incoming damage by a large percentage.
  - In some cases:
    - Reflects a fraction of damage back as ward damage.
- Applied when:
  - Bear taps certain pillars.
  - Some HP thresholds.

**Ward Resonance (Arena Meter)**

- Tracks:
  - Current activation state of pillars.
  - Amount of ward energy circulating.
- Drives:
  - Overcharge events.
  - Soft enrage intensification.

---

### 5.1 Phase 0 – The Glade Wakes

**Trigger**

- Players enter `POCKET_WARDEN_GLADE`.
- Wardstones hum; Ward-Bear appears from behind one of the pillars or from a den.

**Gameplay**

- Brief walk-in.
- Ward-Bear:
  - Circles the pillars once.
  - Exchanges a few warning roars.
- One **scripted ward pulse**:
  - Low damage.
  - Subtle HUD flash to indicate “wards exist”.

**Purpose**

- To establish:
  - Pillars are important.
  - Bear is linked to them.
- To showcase:
  - Colors of different ward types.

---

### 5.2 Phase 1 – Guardian on Patrol

**HP Range**

- 100% → ~70%.

**Abilities**

1. **Crushing Swipe**
   - Standard bear front attack.
   - Conical melee damage.
   - Teaches:
     - “Don’t stand in front” for non-tanks.

2. **Boulder Charge**
   - Short charge toward a target.
   - On hit:
     - Heavy physical damage + brief knockdown.
   - If collided with a pillar:
     - Minor effect:
       - Guardian Pillar: slight self-heal.
       - Cracked Pillar: cracks deepen; minor wardflash AoE.

3. **Ward Pulse (Minor)**
   - Bear rears and slams the ground.
   - Wardstones emit a small pulse:
     - Low damage.
     - Tiny temporary damage reduction field near pillars.

4. **Ward Shield – Guarded Hide (Intro)**
   - Occasionally:
     - Bear touches a Guardian Pillar.
   - Gains a **small Ward Shield** (60–70% reduction for a few seconds).
   - Players see:
     - Visual shield overlay.
     - Clear “not worth tunneling” feedback.

**Environment**

- Pillars mostly calm.
- Reflective and Cracked pillars:
  - Barely used yet.

**Player Checks**

- Learn to:
  - Move for charges.
  - Shift damage priorities when shield is up (e.g. hit adds, reposition).
  - Notice Ward Shield visual.

---

### 5.3 Phase 2 – Ward Overcharge

**Trigger**

- Bear reaches ~70% HP.
- Ward Resonance crosses first threshold.

**New/Upgraded Mechanics**

1. **Ward Beam (Reflective)**
   - Ward-Bear channels at a **Reflective Pillar**:
     - Pillar emits a straight-line beam.
   - Beam interacts with environment:
     - If it hits another pillar:
       - That pillar’s effect changes (overcharged).
     - If it hits players:
       - Ward damage + temporary **arcane vulnerability** debuff.
   - Players can:
     - Position themselves or the bear so the beam:
       - Hits **Cracked Pillars** to cause beneficial shatters.
       - Avoids friendly bodies.

2. **Overcharged Ward Shield**
   - When Ward-Bear taps a Guardian Pillar under high Ward Resonance:
     - Gains a **strong shield** with partial reflect:
       - High mitigation (80–90%).
       - 10–20% of pre-mitigation damage reflected back.
   - It is dangerous to mindlessly DPS into this state.
   - Breaking the shield:
     - Causes a **short vulnerability window** afterwards.

3. **Cracked Pillar Shatter**
   - If a Ward Beam or Charge impacts a Cracked Pillar at high Resonance:
     - Pillar **shatters**:
       - Medium AoE damage.
       - Leaves a **ward-dim zone**:
         - Reduced ward damage and reflect inside it.
   - These shattered zones become:
     - Preferred places to fight during later shield phases.

4. **Summoned Wardlings (Optional Adds)**
   - Small, stone-armored spirits (bear cub-like forms).
   - They:
     - Leap at players.
     - Occasionally reinforce Ward-Bear’s shield if left alive.

**Environmental Shift**

- Wardstone hum is louder.
- Pillars occasionally emit small arcs between each other.

**Player Checks**

- Group must:
  - Not full-tunnel into Overcharged Shield.
  - Intentionally:
    - Aim Ward Beams into chosen Cracked Pillars.
    - Create safe “dim zones.”
  - Decide when to:
    - Burst shield.
    - Or hold DPS and wait for it to drop.

---

### 5.4 Phase 3 – Broken Ward Frenzy (Soft Enrage)

**Trigger**

- Bear reaches ~35–40% HP.
- Ward Resonance crosses second threshold.

**State Transition**

- Some pillars:
  - Flicker or go dark.
- Ward-Bear:
  - Loses some controlled ward discipline.
  - Becomes more feral and unpredictable.

**New/Upgraded Mechanics**

1. **Shattering Roar**
   - Bear releases a powerful ward-infused roar.
   - Effects:
     - Medium-high damage in a large radius.
     - Shakes pillars:
       - Some Guardian Pillars temporarily shut down.
       - Cracked Pillars advance towards full shatter.

2. **Wild Wardnova**
   - Random pillar flares unleash:
     - Small ward novas at unpredictable intervals.
     - Each nova:
       - Moderate damage.
       - Short debuff: either damage taken up or healing taken down.

3. **Frenzied Charge + Slam**
   - Upgraded Boulder Charge:
     - Faster, possible multi-target pattern.
   - End slam:
     - Creates a ward burst at impact point:
       - Local damage/healing/ward effect depending on pillar interaction.

4. **Broken Shield State**
   - Bear no longer maintains **clean Overcharged Shield cycles**.
   - Instead:
     - Gains **unstable shield bursts**:
       - Short windows of high mitigation.
       - End in mini-explosions around the bear.

**Soft Enrage**

- As fight drags past target timeframe:
  - Ward Resonance saturates:
    - Beams and novas occur more often.
    - Few or no Guardian Pillars remain stable.
  - Safe “dim zones” from shattered pillars may still exist, but:
    - Their shielding effect weakens over time.

**Player Checks**

- Under pressure, can they:
  - Still respect shield periods?
  - Use remaining pillars and dim zones wisely?
  - Coordinate final burn phases between chaos bursts?

---

## 6. ABILITY LIST (DESIGN LAYER)

> As with other Hunts, exact numbers live in B151 / implementation. This section is about structure.

### 6.1 Ward-Bear Core Abilities

- `WARD_BEAR_CRUSHING_SWIPE`
  - Front cone melee.
  - Physical damage.
  - Baseline tank check.

- `WARD_BEAR_BOULDER_CHARGE`
  - Target: random non-tank or furthest target.
  - Rushes in a line, knocks back on hit.
  - Interacts with pillars on collision.

- `WARD_BEAR_MINOR_WARD_PULSE`
  - Low-damage AoE.
  - Emitted from bear or pillars on queue.

### 6.2 Shield & Beam Abilities

- `WARD_BEAR_GUARDIAN_TAP`
  - Bear taps Guardian Pillar.
  - Applies `WARD_SHIELD_GUARDED_HIDE`:
    - Moderate damage reduction.

- `WARD_BEAR_OVERCHARGED_TAP`
  - Under high Resonance.
  - Applies `WARD_SHIELD_OVERCHARGED`:
    - High damage reduction + reflect.

- `WARD_PILLAR_BEAM_CAST`
  - Bear channels at Reflective Pillar.
  - Pillar emits beam at target or along line.
  - Beam interacts with:
    - Other pillars.
    - Players.
    - Terrain.

- `CRACKED_PILLAR_SHATTER`
  - Triggered by beam/charge.
  - AoE burst + creation of dim zone.

### 6.3 Phase 3 Abilities

- `WARD_BEAR_SHATTERING_ROAR`
  - Large radius.
  - High ward/nature damage.
  - Pillar destabilization.

- `WARD_PILLAR_WILD_NOVA`
  - Random pillar nova.
  - Damage + short status (buff or debuff).

- `WARD_BEAR_FRENZY_SHIELD`
  - Brief, unstable shield states:
    - Resist more.
    - Then pop with AoE.

---

## 7. ROLE EXPECTATIONS & PROFESSION INTEGRATION

### 7.1 Combat Roles

**Tanks**

- Keep bear oriented away from ranged and healers.
- Try to position bear:
  - So charges and beams:
    - Hit targeted pillars (planned).
    - Avoid friendly cluster.
- Call out when Ward Shield appears:
  - “Slow DPS, shield up.”

**Melee DPS**

- Stick to bear’s flanks and rear.
- Respect:
  - Charge direction.
  - Shield state.
- Help quickly burst shield when window is right.

**Ranged DPS**

- Manage positioning around pillars:
  - Use Reflective Pillars safely.
  - Avoid stray beams.
- Clean up Wardlings (if used) before they bolster shields.

**Healers / Support**

- Maintain group through:
  - Minor pulses in Phase 1.
  - Overcharges and novas later.
- Manage:
  - Reflect damage spikes on greedy DPS.
  - Position in **dim zones** for protection if possible.

### 7.2 Cook & Food Integration

Recommended pre-Hunt meals:

- **Ward-Toughened Stew**
  - Increases general damage reduction or max HP.
- **Stamina & Focus Dish**
  - Boosts stamina/mana/energy for:
    - Frequent repositioning.
    - Longer fights with windows.
- Optional:
  - Food that slightly reduces **arcane/nature damage**:
    - Makes beams and pulses less punishing.

The Ward-Bear is a high-value test of:

- “Did you bring the right meal for a long, shield-heavy fight?”

### 7.3 Alchemy Integration

- **Wardbreaker Tinctures**
  - Temporarily increase damage vs shielded targets.
  - Or reduce reflect percentages on Ward Shields.

- **Wardsense Draught**
  - Highlights dangerous beams and nova radii better for the player using it (UI/FX flourish).
  - Could provide:
    - Slight buff to reaction time windows (cast times).

- **Stabilizing Phials**
  - Thrown at Cracked Pillars:
    - Temporarily pause their worst nova behavior.
    - Or convert them into safe dim zones without full shatter.

### 7.4 Foraging / Wardstone Knowledge

Foragers and ward-knowledgeable characters:

- Understand which reagents came from:
  - Wardstone crusts.
  - Guardian crystals.
- Provide:
  - Better pre-Hunt kits (stabilizers, wardbreaker materials).
  - Extra ambient lore about pillar types.

The Hunt feels **easier** and more controlled if:

- The group has invested in:
  - Wardstone-related foraging.
  - Lodged-based ward projects.

---

## 8. LOOT & INTEGRATION

### 8.1 Thematic Ingredient Outputs

The Ward-Bear is the main source for:

- `wardstone_bear_plate`
  - Chunk of fused bear hide and wardstone.
  - Used in crafting defensive talismans or armor.

- `wardstone_core_shard`
  - Refined shard from a pillar tapped via the bear.
  - High-end alchemy and Lodge upgrades.

- `bearward_claw_fragment`
  - Claw with etched wards.
  - Used in certain trinkets and recipes.

Base bundle (per kill, per player):

- 1–3 `wardstone_bear_plate`.
- 1–2 `bearward_claw_fragment`.

Additional chance (shared/group):

- 1x `wardstone_core_shard` via Hunt reward or specialty track.

### 8.2 Lodge Trophies & Projects

- **Primary Trophy:**
  - `trophy_ward_bear_stone_mask` (stone-faced bear mask for Lodge wall).

- Lodge Projects:

  - “Reforged Ward-Bear Shell”:
    - Uses Ward-Bear plates + core shards.
    - Creates:
      - Decorative Lodge wall with built-in ward glow.
      - Minor Lodge buff vs ward/arcane damage in future content.

  - “Wardstone Research Annex”:
    - Uses:
      - Wardstone shards from pillars.
      - Bear claw fragments.
    - Expands:
      - Wardstone knowledge, unlocking:
        - New alchemy recipes.
        - New Hunt Board entries related to ward anomalies.

### 8.3 Chase Items

- **Trinket: `trinket_wardbear_heartward`**
  - Passive:
    - Slight reduction in incoming critical hit damage.
    - Small boost to resistances vs ward/arcane effects.

- **Recipe: `recipe_scroll_wardbear_ironstew`**
  - Stew that:
    - Greatly boosts physical and ward resistance for a time.
    - Possibly used for later dungeons or major Hunts.

- **Relic-Adjoining Drop: `relic_splinter_shieldstone`**
  - Extremely rare.
  - Foreshadows:
    - Deeper interactions in Relic/wardstone endgame content.

### 8.4 B151/B155 Hooks

- In Greatwood loot system (B151/B155):

  - Add Ward-Bear Hunt as:
    - `HUNT_WARD_BEAR` in Hunt bundle table.
    - `POCKET_WARDEN_GLADE` as a zone for ward-aligned drops.

- Specialty track in `SpecialtyPity_Greatwood`:

  ```lua
  SpecialtyPity.tracks.ward_bear_specialty = {
      expected_rolls = 6,
      hard_cap_rolls = 15,
      min_band = "B",
      max_band = "C",
      sources = { "HUNT_WARD_BEAR", "POCKET_WARDEN_GLADE" },
  }
This ensures:

Players who repeatedly Hunt Ward-Bear see:

Wardstone-specific ingredients.

Ward-focused chase items with consistent long-term odds.

9. DIFFICULTY & TUNING
9.1 Intended Audience
Groups with:

Basic understanding of Hunts.

Some prior success in Greatwood.

Slot:

As a mechanically demanding but not brutally punitive Hunt.

Emphasis:

Punishing greedy DPS, not positioning mistakes alone.

9.2 Duration & Failure Modes
Target:

7–10 minute fight for properly leveled groups.

Common fail causes:

Ignoring Overcharged Shields (reflect damage wipes group).

Failing to:

Create or use dim zones from Cracked Pillars.

Respect Ward Beams in Phase 2.

Letting Wardlings buff the bear too much (if used).

9.3 Tuning Levers
Shield values & duration:

How punishing it is to “just hit through” vs waiting.

Reflect percentage:

Enough to be scary, not enough to be instant wipe by itself.

Ward Beam frequency & pattern complexity.

Pillar behavior:

How many need to shatter for decent dim zones.

How nasty uncontrolled novae become.

10. IMPLEMENTATION NOTES (HIGH-LEVEL)
Implementation goes into boss/encounter Lua modules, not here. This section is the bridge.

10.1 State Machine Sketch
States:

STATE_IDLE

STATE_PHASE1_PATROL

STATE_PHASE2_OVERCHARGE

STATE_PHASE3_FRENZY

STATE_RESET

Transitions:

HP thresholds.

Ward Resonance thresholds.

10.2 Wardstone Controller
Separate module, e.g. WardenGlade_WardController:

Responsible for:

Pillar states (Guardian/Reflective/Cracked/Shattered).

Ward Resonance meter.

Applying:

Buff/debuff fields.

Beam paths.

Nova triggers.

Boss AI calls:

WardController:TapPillar(type)

WardController:FireBeamFrom(pillarId, params)

WardController:ShatterPillar(pillarId)

WardController:GetResonance()

10.3 Loot Hook
On Ward-Bear death:

Compose Hunt context:

mobId = "HUNT_WARD_BEAR"

zoneTag = "POCKET_WARDEN_GLADE"

isHuntTarget = true

Use:

Greatwood loot tables.

Hunt reward bundles.

Ward-Bear specialty pity track.

The actual drop logic is data-driven; this file defines which tables & tracks Ward-Bear belongs to.

11. TELEMETRY & BALANCING
11.1 Metrics to Track
Per attempt:

Number of wipes vs kills.

Fight duration.

Damage taken from:

Ward Shields (reflected).

Beams.

Novae and pulses.

Pillar stats:

How many pillars shattered (by type).

Time between first and last shatter.

Shield behavior:

How often players break Overcharged Shields vs wait them out.

Heatmap:

Where most deaths occur in the arena (relative to pillars).

11.2 Targets
First-time group at intended level:

~30–40% success after 2–3 attempts.

Experienced groups:

70–80% success, depending on loadout and prep.

Adjustment logic:

Excess wipes from reflect damage:

Lower reflect or shorten shield durations.

Excess wipes from random nova:

Increase telegraph, reduce AoE or damage.

Fight too easy:

Increase frequency of Overcharged Shields.

Make poor pillar interactions more punishing.

12. SUMMARY
The Ward-Bear:

Is Greatwood’s wardstone tutorial boss, wrapped in a big, angry animal.

Teaches:

Shields & damage windows.

Wardstone interactions (pillars, beams, cracked vs intact).

Group coordination around “don’t hit yet / hit NOW”.

It sits alongside:

Elder Hollow Stag – movement and environmental respect.

Black-Sap Devourer – corruption & area control.

Hollowroot Matron – fungal creep and add management.

Together, these Hunts make Greatwood 1–20 feel like:

A living forest with multiple “faces” (natural, warded, corrupted, infested) that all push on different player skills.

Ward-Bear’s specific identity:

“The shield that became another thing you have to survive.”
