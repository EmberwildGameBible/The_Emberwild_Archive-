Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 89 – Stealth, Noise, and Visibility System (Greatwood 1–20)

## Purpose

Define the **stealth, noise, and visibility system** for Emberwild:

- How players move quietly or loudly through Greatwood
- How enemies detect players via **sight, sound, and scent**
- How stealth ties into:
  - Tracking & Hunts (61, 67, 80)
  - Talents & gear (71, 72–75, 82)
  - Weather & environment (81)
  - Camps, traps, and fieldcraft (77, 79)

Goal: enable **sneaking, stalking, ambushes, and cautious approaches** without turning Emberwild into a full stealth-game sim.

---

## Design Goals

1. **Simple model, rich consequences**
   - Under-the-hood stealth uses a few core variables:
     - Visibility
     - Noise
     - Scent (lightweight)
   - Player decisions (stance, gear, weather, movement) actually matter.

2. **Readable feedback**
   - Players should understand **why** they were spotted:
     - Noise, line-of-sight, bad angle, too close, wrong wind, etc.

3. **Supports hunting fantasy**
   - Sneaking up on prey, flanking packs, setting ambushes near traps.

4. **No hard “stealth class”**
   - Any hunter can use stealth:
     - Talents and gear just enhance it for those who lean in.

---

## Core Stealth Variables

### 1. Visibility

How easy you are to see.

Affected by:

- Distance to enemy
- Player posture:
  - Standing, crouched, prone (if implemented later)
- Light levels:
  - Day vs night
  - Being in shadow vs open
  - Torches/lanterns carried (75, 78)
- Weather:
  - Fog/mist (81) reduces visibility range.
- Motion:
  - Faster movement = easier to spot.

### 2. Noise

How easy you are to hear.

Affected by:

- Movement type:
  - Sprinting → loud.
  - Walking → moderate.
  - Crouch-walking → quiet.
- Terrain:
  - Dry leaves, branches, gravel = louder.
  - Moss, mud, packed soil = quieter.
- Actions:
  - Firing a bow, dropping heavy gear, breaking branches.
- Weather:
  - Rain/storms (81) mask some noises, helping stealth.
- Gear:
  - Heavier armor = more clank.
  - Certain talents/gear reduce noise (82, 74).

### 3. Scent (Lightweight)

Simple directional modifier:

- Wind direction (81):
  - If you are **upwind** from predators, they are less likely to smell you.
  - If you are **downwind**, they can detect you earlier based on scent.
- Scent-masking items:
  - Bundles, tonics, balms (57, 58, 79) reduce scent radius temporarily.

---

## Enemy Detection States (Hooking Into 80)

Each enemy (or group) cycles through:

1. **Unaware**
   - Behaving normally.
   - No knowledge of player.

2. **Suspicious**
   - Heard a noise, caught a glimpse, or smelled something.
   - Looks around, moves toward noise source, pauses to sniff.

3. **Alerted**
   - Knows **something** is there, actively searching.
   - Moves more systematically:
     - Sweeps area.
     - Investigates cover spots.

4. **Aggressive**
   - Fully detected player.
   - Enters combat AI.

Stealth gameplay lives mostly in:

- Preventing Suspicious → Alerted → Aggressive escalation.
- Recovering from Suspicious/Alerted without being seen fully.

---

## Player Stealth Tools & Behaviors

### Posture & Movement

- **Standing Walk:**
  - Normal visibility and noise profiles.

- **Crouch:**
  - Reduced visibility (especially in underbrush).
  - Reduced noise at walking speeds.
  - Slight movement speed penalty.

- **Sprint:**
  - Highly visible and loud.
  - Used for chases, escape, or repositioning, not stealth.

### Cover & Shadow

- Visual cover:

  - Bushes, tall grass, tree trunks.
- If crouched in cover:
  - Enemies require closer distance or more direct angle to detect.
- Shadow / low light:

  - Slight invisibility boost at medium range.
  - Less help at close range (they will still see you if you’re in their face).

### Stealth Aids

- **Noise bait:**
  - Throw small stones or objects to pull attention away.
- **Scent-masking bundles / tonics (57, 58, 79):**
  - Temporarily reduce scent-based detection.
- **Camouflage gear (74):**
  - Specific cloak sets or armor patterns:
    - Slight passive bonuses to visibility in forest regions.

---

## Stealth & Hunting Scenarios

### Ambushing Prey

- Player:
  - Spots deer from afar.
  - Approaches from downwind.
  - Moves in crouch through underbrush.
- Uses:
  - Range to take an Opening Volley shot (72, 82) or
  - Set traps ahead of herd’s path (79).

If successful:

- One or more animals can be taken before herd fully panics.

### Flanking Packs

- Wolves (80):
  - Busy attacking front or investigating noise.
- Player:
  - Uses stealth to approach from side or rear.
  - Targets key pack members (alpha, sporecaster-like variants later).
- Result:
  - Softens encounter, reduces chaos when fight fully begins.

---

## Failure & Recovery

When stealth **fails**:

- Clear feedback:
  - Enemies bark/growl.
  - Short visual/audio “alert” cue.
- Early stage (Suspicious → Alerted):
  - Player still has brief window:
    - Freeze, stay in cover.
    - Back away slowly.
- If fully Aggressive:
  - Combat begins as normal.
  - Some enemies may:
    - Search briefly before fully committing if they lose line-of-sight quickly.

---

## Talents & Perks Synergy (82)

### Path of the Bow

- **Opening Volley:**
  - Extra damage from stealth-range first shot.
- **Featherstep:**
  - Reduced noise when moving at walking speed.

### Path of the Blade & Axe

- Perks that:
  - Reward closing in from stealth/dodge combos.
  - Let melee players “burst from cover” safely.

### Path of the Trail

- **Sign Reader / Quiet Breath:**
  - Help with:
    - Reading safe approach paths.
    - Listening for enemy patrolling patterns.

### Path of the Lodge

- Potential perks:
  - Slight bonuses to certain stealth items:
    - Better scent-masking mixes.
    - Crafting quieter gear.

---

## Gear & Item Hooks

- **Light armor sets (74):**
  - Lower noise and better stealth synergy.
- **Cloaks:**
  - Woodland cloaks with leaf/bark patterns = small visibility bonuses in forest.
- **Charms & Talismans (75 stub):**
  - Minor stealth-boosting charm:
    - Slightly extended Suspicious window before enemies fully Alert.

---

## Weather & Environment Interactions (81)

### Fog & Mist

- Reduced sight lines:
  - Both for player and enemies.
- Stealth:
  - Easier at medium range.
  - Short-range detection still dangerous.

### Rain & Storm

- Noise masking:
  - Player movement noises reduced.
- Visual clutter:
  - Harder for both sides to see detail.
- Tracking:
  - Trickier; stealth may rely more on sound & hound assistance (87).

### Clear Days

- Best for:
  - Long-distance scouting.
- Hardest for:
  - Approaching across open spaces without cover.

---

## System Complexity Constraints (Greatwood 1–20)

For early content:

- Keep stealth numeric model shallow:

  - Visibility score
  - Noise score
  - Simple scent flag

- Avoid:

  - Deep cover percentages.
  - Excessive UI meters.

Make stealth **feel intuitive** through:

- Audio-visual feedback.
- Enemy barks and animations.
- Codex entries with tips (69).

---

## Integration With Other Systems

- **Tracking & Hunts (61, 67, 80):**
  - Stealth crucial for:
    - Rare hunts and Deeds.
    - Not spooking target before traps are set.

- **Traps & Camps (77, 79):**
  - Stealth helps:
    - Set traps near enemy paths.
    - Camp near hostile zones without instant detection.

- **Companions (87):**
  - Hounds’ noise and positioning:
    - Affect stealth.
  - Option:
    - Command hound to Stay/Guard to avoid giving away position.

- **Co-op Hunts (88):**
  - Group stealth:
    - Harder but satisfying.
    - Requires coordination (no random sprinting).

---

## Next Actions

- Define:
  - Baseline detection ranges and how posture modifies them.
- Create:
  - Simple internal “visibility/noise” curves per enemy family.
- Implement:
  - 2–3 tutorial-style hunts that:
    - Explicitly teach using stealth.
    - Provide codex entries about sound, sight, and wind.
