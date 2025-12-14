Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

Alright, I’m going to hit **70 – Player Death, Injury, and Rest System (Greatwood 1–20)** next, since that’s the core “risk spine” everything else hangs on and we haven’t done it in *this* chat yet.

Here’s a full drop-in:

```markdown
# 70 – Player Death, Injury, and Rest System (Greatwood 1–20)

## Purpose

Define how **getting hurt, going down, dying, and recovering** works in the Greatwood 1–20 slice:

- What happens when you:
  - Take heavy damage
  - Get maimed or corrupted
  - Go down in the field
  - Fully die
- How **wounds, rest, and recovery** interact with:
  - Core combat (06_Systems combat chapters)
  - Hunts & Deeds (61)
  - Fieldcraft & tracking (67)
  - Camps & temporary bases (77)
  - Ember Pot & food (85)
  - Labs & Warding Wing (B101)
  - Encounter curve & failstates (B126)
- How the **Lodge** and **camps** act as your safety net without trivializing risk.

This is the “**what it costs to make mistakes**” file for Greatwood 1–20.

---

## Design Goals

1. **Dangerous but not sadistic**

   - You should feel:
     - Tension when pushing deep.
     - Real cost when you mess up badly.
   - But:
     - No hardcore character deletion.
     - No permanent crippling that ruins your build.

2. **Wounds > health bar spikes**

   - Taking a big hit should:
     - Leave a mark and change behavior, not just drop HP.
   - Wounds:
     - Alter how you play the next 10–60 minutes.

3. **Field fixes vs Lodge care**

   - In the wild:
     - You can stabilize, stop the bleeding, limp along.
   - In the Lodge:
     - You can properly heal, reset, and reflect.
   - Camps sit in the middle:
     - Better than nothing, worse than the Lodge.

4. **Readable, not opaque**

   - You always understand:
     - What happened (why you went down).
     - What your current injury does.
     - What you’d need to do to fix it.

5. **Integrated, not grafted on**

   - Wounds and death plug into:
     - Hunts (61) and signatures (B103+)
     - Corruption (91)
     - Labs & wards (B101)
     - Encounter curve and failstates (B126)
   - Rather than a separate mini-game.

---

## 1. Health, Injury, and Wound Overview

### 1.1 Health vs Wounds

- **Health (HP)**:
  - Short-term buffer.
  - Goes up/down constantly in combat.
  - Rest, food, potions top it up.

- **Wounds**:
  - Medium-term penalties.
  - Represent serious hits:
    - Broken bones
    - Deep cuts
    - Burn scars
    - Corruption burns.
  - Require:
    - Time
    - Specialized treatment (field kits, Lodge healers, Labs).

Health can be full while you’re still carrying a **fractured arm** or **lungs full of smoke**.

### 1.2 Wound Tiers

We use four broad tiers in Greatwood 1–20:

1. **Minor Wounds**
   - Cuts, bruises, mild sprains.
   - Small penalties:
     - Slight stamina regen loss
     - Very small aim sway, etc.
   - Clear in UI but not run-ending.

2. **Serious Wounds**
   - Deep gashes, partial fractures, severe burns.
   - Noticeable penalties:
     - Movement slow
     - Reduced stamina cap
     - Slower weapon draw.
   - Strongly encourage:
     - Tactical retreat or camp.

3. **Grave Wounds**
   - Broken leg, shattered arm, major internal damage.
   - Heavy penalties:
     - Large movement debuff
     - Major aim penalties
     - Lower max HP.
   - You can move, but the forest will likely punish you if you push.

4. **Corrupted Wounds**
   - Any wound tainted by Corruption (91).
   - Added effects:
     - Periodic damage pulses
     - Strange perception distortions
     - Vulnerability to certain enemy types.
   - Need:
     - Labs & Warding Wing involvement (B101)
     - Specialized rituals / salves.

Each wound has:

- `type` – cut, fracture, burn, corruption, etc.
- `tier` – minor, serious, grave, corrupted attached.
- `location` – head, torso, main-arm, off-arm, leg, general.
- `source` – what caused it (beast family, environment, corruption).

---

## 2. How Wounds Are Inflicted

### 2.1 Wound Triggers

Wounds are not every hit. They arise when:

- You take a **large chunk** of HP at once:
  - Above a threshold relative to your max HP.
- You’re hit by:
  - Specific **ability tags**:
    - `maim`, `fracture`, `burn`, `pierce`, `corrupt`.
- You’re in:
  - High-risk states:
    - Over-encumbered
    - Already wounded
    - Standing in hazard zones.

Examples:

- Boar charge (B114 boar family):
  - If it hits at full speed:
    - Chance of “Broken Rib” serious wound.
- Ash-eater ground burst:
  - High chance of minor burns; low chance of serious burn.
- Corruption geyser:
  - Almost always:
    - Corrupted wound if not fully avoided.

### 2.2 Stacking and Escalation

- Multiple **Minor** wounds in same area:
  - Escalate into a **Serious** wound.
- A **Serious** plus new major hit:
  - Can escalate to **Grave**.
- Corruption can:
  - Upgrade any wound to a **Corrupted** variant.

Caps:

- Hard cap on how many active wounds:
  - e.g. 3–4 at once.
- New wounds over cap:
  - Replace older minor ones (representing body focusing damage).

---

## 3. Death, Downed State, and Revival

### 3.1 “Downed” vs “Dead”

Greatwood uses a **two-stage** failure:

1. **Downed State**
   - You hit 0 HP:
     - You drop to knees / prone.
   - Limited actions:
     - Crawl slowly.
     - Shout / call for help (audio + UI ping).
   - Timer:
     - Bleed-out timer counts down.
   - Enemies:
     - Might keep attacking or shift to new targets depending on AI.

2. **Death**
   - Bleed-out timer reaches zero.
   - Or you take:
     - Massive overkill damage while downed.

### 3.2 Being Rescued in the Field

Teammates can:

- **Stabilize**:
  - Short channel on your body to:
    - Stop bleed-out.
    - Lift you to low HP with a fresh Minor wound.
- **Carry or drag**:
  - Limited-mobility carry to:
    - Retreat to safer spot.
- **Field Revive Items**:
  - Rare alchemical brews (58):
    - Can pop you up faster but add a serious or corrupted wound as cost.

Solo:

- In solo play, near-0 bleed-out:

  - You may get a **Last Push** option:
    - Stand and fight for a few seconds at extreme penalty.
    - Either win and limp away in terrible shape.
    - Or die.

### 3.3 Death Outcomes

On full death:

- You **wake up at Greatwood Lodge** (or nearest major outpost after certain story beats).
- Several things happen:

  1. **Lodge Time Passes**
     - Time advances:
       - Hunts may shift state
       - Some events resolve without you (62, 94, 96).

  2. **Injury Outcome**
     - Some wounds:
       - Are auto-healed (minor).
     - Others:
       - Persist but downgraded (serious → minor).
     - Grave / corrupted:
       - Convert into lingering “Scars” or special conditions unless treated in Labs (B101).

  3. **Costs**
     - Economic:
       - Small gold/material loss or “treatment tithe”.
     - Social:
       - Minor Lodge rep hit if you repeatedly die recklessly on official Hunts.
       - Some NPCs comment on your condition.

  4. **World Consequences**
     - Some Hunts/Deeds:
       - Progress as failed or partial.
       - Certain beasts might:
         - Grow stronger or move territory (B103, B114, B126).

No:

- Full gear loss.
- Hardcore character deletion.

But death should feel like:

- “I lost time, resources, some opportunities, and the forest moved while I was gone.”

---

## 4. Rest System: Lodge, Camps, and the Field (70 ↔ 77)

### 4.1 Rest Types

We define three main **rest intensities**:

1. **Catch Breath (Micro-Rest)**
2. **Camp Rest (Short/Field Rest)**
3. **Full Lodge Rest**

#### 4.1.1 Catch Breath

- Trigger:
  - Short pause in relatively safe spot (no camp needed).
- Effects:
  - Small HP/stamina regen burst.
  - No wound healing, just stability.
- Use:
  - Pacing tool in the middle of hunts, not systemic healing.

#### 4.1.2 Camp Rest (via 77)

At a **camp or temporary base** (77):

- You can:
  - Take a **Short Rest**:
    - Moderate HP regen.
    - Minor wound tick:
      - Slight improvement to Minor/Serious if you have bandages/salves.
    - Food buffs from simple camp cooking (85 subset).

- Costs:
  - Time:
    - Enemies may patrol near.
    - Some events may tick.
  - Resources:
    - Fuel, food, salves.

- Risks:
  - Depending on region and camp safety:
    - Chance of night event, ambush, or disturbances (62, 77).

Camp rest never fully cleans up **Grave** or **Corrupted** wounds, but:

- Keeps you functional enough to finish a Hunt or retreat.

#### 4.1.3 Full Lodge Rest

At **Greatwood Lodge** (and later major safe outposts):

- You can:
  - Sleep fully.
  - Access healers, Labs, Warding wing (B101).
  - Eat Ember Pot stew (85).

Effects:

- HP:
  - Fully restored.
- Minor wounds:
  - Healed.
- Serious wounds:
  - Healed or downgraded to minor.
- Grave wounds:
  - Downgraded to serious or converted into “Scars” that carry flavor effects.
- Corrupted wounds:
  - Only partially improved without specific cleansing procedures (91, B101).

Additional:

- Buff:
  - “Well-Rested” buff for a limited number of encounters.
- Social:
  - Chance for:
    - Lodge micro-scenes (64, 94).
    - Healer / alchemist commentary on your habits.

---

## 5. Wound Types and Mechanical Effects

### 5.1 Standard Wound Types

Examples:

1. **Deep Cut – Arm (Serious)**
   - Penalties:
     - Reduced attack speed with that arm.
     - Slightly increased stamina cost for heavy swings.
   - Flavor:
     - Occasional comments from NPCs about bloody bandage.

2. **Sprained Ankle – Leg (Minor/Serious)**
   - Penalties:
     - Movement slow.
     - Reduced dodge distance.
   - Field treatment:
     - Splinting to reduce penalty.

3. **Cracked Ribs – Torso (Serious/Grave)**
   - Penalties:
     - Reduced max stamina.
     - Suffering more when sprinting/rolling.

4. **Smoke-Singed Lungs – Torso (Serious)**
   - Source:
     - Ash and fire-based attacks.
   - Penalties:
     - Reduced stamina regen.
     - Slight debuff to ranged accuracy while moving.

### 5.2 Corrupted Wounds

Variants of any wound tagged with **Corruption**:

- Additional effects:
  - Periodic HP drain pulses.
  - Occasional brief visual/auditory distortions.
  - Corruption “pips” visible in UI (91).

- Treatment:
  - Field:
    - Temporary dampening via special alchemy (58).
  - Lodge Labs (B101):
    - Proper ritual, long rest, rare materials.

Corrupted wounds may:

- Influence certain events:
  - Corruption-sensitive beasts:
    - React differently to you.
- Unlock or twist certain secrets (90):
  - Hearing whispers others don’t.

---

## 6. Integration With Other Systems

### 6.1 Hunts & Deeds (61, B103+)

- Some Hunts explicitly:
  - Play with injury and recovery loops.
- Examples:
  - A Deed where:
    - Suffering a certain wound unlocks special dialogue with a veteran.
  - A Hunt that:
    - Becomes more dangerous if you arrive with pre-existing grave wounds.

Failure and death:

- Can:
  - Escalate certain enemies (B114).
  - Shift territory boundaries.
  - Introduce new traces in fieldcraft trails (67).

### 6.2 Camps & Temporary Bases (77)

- Camps serve as:
  - Soft checkpoints during longer Hunts.
- The more wounded you are:
  - The more camping becomes necessary.
- But:
  - Overusing camps costs time/resources and increases event/ambush chances.

Certain event chains:

- Only appear if:
  - You camp while wounded:
    - A healer-apprentice passing by.
    - A traveling alchemist offering risky cures.

### 6.3 Ember Pot, Food, and Alchemy (58, 85)

Ember Pot (85):

- Festival stews and special dishes:
  - Speed up recovery after Lodge rests.
  - Give temporary resilience against specific wound types (burns, fractures).

Alchemy (58):

- Tonics & balms:
  - Shorten wound durations.
  - Reduce penalties.
  - Add risk:
    - Side effects if misused (shakes, slowed reaction, etc).

### 6.4 Labs & Warding Wing (B101) and Corruption (91)

Labs & Wards (B101):

- Handle:
  - Corrupted wound removal.
  - Experimental treatments with narrative cost/benefit.

Corruption (91):

- Interacts with:
  - Death:
    - Dying in highly corrupted zones might add a corruption scar even after Lodge rest.
  - Rest:
    - Resting in or near corrupted nodes is bad for recovery.

### 6.5 Encounter Curve & Failstates (B126)

Failstates:

- Not only “you died” but:
  - “You stagger back to the Lodge injured and late.”
  - “You limp through the end of a Hunt with a broken arm.”

70 defines how:

- Mid-campaign failures leave marks.
- B126 defines:
  - How often that should happen across 1–20.
  - How punishing successive failures are.

---

## 7. UI, Feedback, and Clarity

### 7.1 Injury Messaging

When you take a wound:

- Immediate feedback:
  - Brief text:
    - “Serious Wound: Cracked Ribs.”
  - Short audio sting.
  - Small icon near health/stamina bars.

Inspection:

- Opening character sheet:
  - Shows current wounds:
    - Name, tier, location, effects.
  - Rough recovery expectation:
    - “Will improve with camp rest.”
    - “Needs Lodge care.”

### 7.2 Death and Recovery Messaging

On death:

- Death screen shows:

  - What killed you.
  - Last few big hits.
  - Current wound state.

On waking at Lodge:

- Simple summary:

  - “You were brought back from the forest edge.”
  - “Your broken leg has been set; you still move carefully for a while.”
  - “The corruption in your wounds has been contained, not cured.”

Minimal UI bloat:

- No huge, permanent popups.
- Information easily re-checkable through:
  - Character / status tabs.
  - NPC dialogue hints.

---

## 8. Tuning Guidelines (Greatwood 1–20)

### 8.1 Early Band (Levels 1–5)

- Wounds:
  - Mostly minor, occasional serious.
- Death:
  - Rare unless player is reckless or under-leveled.
- Rest:
  - Camps very effective for stabilizing.
  - Lodge rest easily accessible and cheap.

Goal:

- Teach:
  - “Wounds exist, but the game isn’t trying to break you yet.”

### 8.2 Mid Band (6–12)

- Wounds:
  - Serious wounds common if you push content above your level.
  - Occasional grave wound on mistakes vs signature Hunts.
- Death:
  - Happens when misreading enemy mechanics or overpulling.
- Rest:
  - Camps become important on long hunts.
  - Lodge trips have more opportunity cost (time, moving the world).

Goal:

- Build habit:
  - “Plan your Hunts, respect danger, pack field kits.”

### 8.3 Upper Band (13–20)

- Wounds:
  - Grave wounds appear in serious content.
  - Corrupted wounds begin to matter more (91).
- Death:
  - Occasionally part of learning new apex fights.
- Rest:
  - Strategic:
    - You think carefully about where to camp.
    - Lodge trips might decide Deed outcomes.

Goal:

- Convey:
  - “The forest will hurt you, but you can recover and keep going if you’re smart.”

---

## 9. Next Actions

1. **Lock wound taxonomy** for Greatwood 1–20:
   - Standard set of named wounds:
     - 8–12 core ones used across content.
2. **Define per-family wound tags** (B114):
   - Which beasts commonly cause which wound types.
3. **Integrate with 77**:
   - Precisely how much each rest type heals / stabilizes.
4. **Hook into Labs & Corruption (B101, 91)**:
   - Rituals and advanced cleanses for corrupted wounds.
5. **Balance death cost**:
   - Iterate on:
     - Time losses
     - Resource/tithe costs
     - Hunt/Deed failure consequences.
6. **Write dialogue and flavor**:
   - Healer lines.
   - Veteran comments about scars.
   - Lodge reactions to repeated reckless deaths.

70 is the **risk & recovery spine**: it answers “what happens when it goes wrong?”, and everything from Hunts to festivals to Labs hangs off that answer.
```
