# B101 – Wounds, Risk & Returning to the Lodge
### (Failure Loop, Injuries, Scars & Fallen Hunters)

## Purpose

Define how **failure, injury, and “death”** work in Emberwild, especially in Greatwood 1–20:

- What happens when a hunt goes bad?
- How do wounds and recovery function?
- How does the Lodge **react** to injured or fallen hunters?
- How do Hunts, Deeds, and corruption **feel dangerous** without hard-permadeath?

This system must:

- Support Hunts & Deeds (61)
- Fit Greatwood’s region difficulty curve (63)
- Show up in Lodge social behavior (64)
- Tie into Trophy Hall and Quarters (86, B100)
- Interact with attuned tools & Broken Tools philosophy (60)
- Play nicely with food/Ember Pot buffs (85)

---

## Design Goals

1. **Failure is scary, not game-ending**

   - You should **fear** getting wrecked.
   - But the game is about:
     - Learning, returning, and trying again.
   - Penalties:
     - Hurt enough to matter.
     - Don’t hard-lock content.

2. **Wounds are a story, not just a debuff**

   - Every bad fight should:
     - Leave **some trace**:
       - Scar
       - Dialogue
       - Lodge reaction
   - Not every wound:
     - Has to be tracked in a spreadsheet forever.

3. **The Lodge is your safety net**

   - The Lodge:
     - Treats your return (bloody, bruised, carried) as part of the world’s rhythm.
   - Returning injured:
     - Lights up:
       - NPC barks
       - Ember Pot moments
       - Bed rest interactions (B100).

4. **Risk ties to systems**

   - High-risk Hunts & Deeds:
     - Offer better rewards.
     - Come with higher wound chance.
   - Corruption:
     - Can twist wounds into something worse.

5. **Reusable template**

   - B101 is a **baseline spec**:
     - Greatwood uses it first.
     - Hollowroot, Burn-Scar, later zones can layer extra horrors on top.

---

## 1. Failure States Overview

We define four key “failure” states during play:

1. **Staggered (Soft Down)**
2. **Downed (Hard Down)**
3. **Severely Wounded**
4. **Fallen Hunter (Death Event)**

### 1.1 Staggered (Soft Down)

- Trigger:
  - HP hits 0 **but**:
    - You had recent healing
    - Or a soft fail grace (early game)
- Behavior:
  - Player drops to a knee / staggers.
  - Limited movement.
  - Short window to:
    - Use an item
    - Get help
    - Retreat.
- Consequences:
  - No permanent wound roll yet.
  - Stagger counter increases.
  - Multiple staggers in short window → force **Downed** state.

### 1.2 Downed (Hard Down)

- Trigger:
  - HP hits 0 with:
    - No grace remaining
    - Or after multiple staggers
- Behavior:
  - Player collapses:
    - Reduced camera
    - Very slow crawl (if allowed).
  - In group:
    - Allies may revive you.
  - Solo:
    - Timer until:
      - Auto-fail (you “black out”).
- Consequences:
  - On revive:
    - Temporary wound debuff.
  - On blackout:
    - You **wake up back at safety**:
      - Greatwood Lodge
      - Or nearest safe camp / waystation.

### 1.3 Severely Wounded

- A **meta-state** after:

  - Blacking out
  - Risky revival
  - Certain corruption attacks

- Effects:

  - One or more **Wound Conditions** (see below).
  - Lodge NPCs react.
  - Temporary penalties until treated.

### 1.4 Fallen Hunter (Death Event)

- For the player:

  - “Death” is treated as:
    - A **near-death + rescue / retrieval**, not hard permadeath.

- For the world and NPCs:

  - Hunters **can** truly die:
    - Apprentices
    - Named side characters
    - Rival hunters
  - Their death:
    - Triggers Lodge reactions
    - Can alter Hunts/Deeds.

- Optional advanced mode:

  - A “True Death / Iron Path” mode where:
    - If chosen at character creation:
      - A true permadeath can occur.
      - This interacts with Trophy Hall & Lodge records in special ways.
  - But baseline design:
    - Avoids mandatory permadeath.

---

## 2. Wounds: Types & Rules

### 2.1 Wound Slots & Severity

Wounds are **temporary conditions** that:

- Debuff stats or actions.
- Have **story flavor**.

We model them as:

- `minor_wounds[]` – small debuffs.
- `major_wounds[]` – serious injuries (usually 0–2 at a time).
- `scar_records[]` – record of resolved major wounds that left a mark.

### 2.2 Causes of Wounds

You can gain wounds via:

- Being **Downed** and revived.
- Blacking out and being hauled back to Lodge.
- Specific enemy attacks:
  - Heavy hits
  - Corruption abilities.
- Environmental disasters:
  - Falling from high ridges
  - Ash-pit collapses
  - Burn / frost pockets (later zones).

### 2.3 Wound Examples

#### Minor Wounds

- **Bruised Ribs**
  - Slightly reduced stamina regen.
- **Gashed Forearm**
  - Slightly slower attack animation / reload.
- **Twisted Ankle**
  - Minor movement speed penalty.
- **Ringing Ears**
  - Slight perception debuff (range, or audio cues).

Minor wounds:

- Heal naturally over:
  - In-world time / rests.
- Or can be sped up by:
  - Lodge healer (if implemented)
  - Ember Pot dishes
  - Simple salves.

#### Major Wounds

- **Broken Arm**
  - Heavy penalty to:
    - Two-handed attacks
    - Bow usage.
- **Cracked Ribs**
  - Maximum HP reduced until healed.
- **Deep Corruption Burn**
  - Causes periodic damage in corrupted areas.
- **Fractured Leg**
  - Strong movement penalty.
- **Eye Scar (Persistent Visual)**
  - Long-term slight perception change.
  - Might remain as a **scar record** even after functional penalty fades.

Major wounds:

- Usually assigned:
  - When you black out.
  - Or from particularly nasty attacks.
- Require:
  - Treatment at Lodge
  - Or extended downtime / special resources.

---

## 3. Treating Wounds & Recovery Loop

### 3.1 Return to Lodge Sequence

When you **black out** during a Hunt/Deed:

1. Screen fades.
2. You wake in:
   - Greatwood Lodge infirmary corner
   - Or your quarters (Tier 1+ B100).
3. Short vignette:
   - NPC dialogue:
     - Nurse, Mara, rival hunter, etc.
   - Comments on:
     - How close it was.
     - Who dragged you back.

### 3.2 Basic Treatment

Upon waking:

- System rolls for:
  - Minor wound(s) and possibly 1 major wound.
- You can:
  - Immediately pay a **Lodge treatment cost**:
    - Coin + reagents OR
    - Lodge reputation “credit”.
  - Or walk around wounded.

Basic treatment tiers:

1. **Field Patch**
   - Low cost.
   - Converts major wound to minor.
   - Minor persists until natural recovery.
2. **Full Treatment**
   - Higher cost.
   - Removes wound condition over in-world time.
   - Leaves a **Scar Record** (for story/visuals).

### 3.3 Natural Recovery

Even without paying:

- Minor wounds will:
  - Fade after:
    - X minutes of in-world time
    - Or successful rest cycles.
- Major wounds:
  - May downgrade to minor if:
    - Enough time passes
    - Player avoids heavy combat.

### 3.4 Ember Pot & Wounds (85)

The Ember Pot can:

- Offer specific dishes that:
  - Speed wound recovery
  - Reduce penalties temporarily
  - Calm corruption burns

Examples:

- **Bone-Broth Recovery Stew**
  - Halves natural recovery time for HP/toughness-related wounds.
- **Nerve-Steadying Brew**
  - Temporarily suppresses perception penalties.

NPCs may comment:

- “If Mara hadn’t kept the Pot going, you’d have a lot worse than bruises.”

---

## 4. Risk Tuning & Hunt Integration (61)

### 4.1 Hunt Risk Grades

Each Hunt/Deed can be labeled with a **risk grade**:

- **Low Risk** – culls, simple escorts.
- **Moderate Risk** – tricky terrain, multiple waves.
- **High Risk** – big marks, boss-like fights.
- **Extreme Risk** – late Deeds, corruption-heavy hunts.

Risk grade influences:

- Wound chance when Downed.
- Severity weights:
  - Low: mostly minor.
  - High: higher chance of major.
  - Extreme: major + corruption tags.

### 4.2 Deeds & Wounds

Deeds can:

- Script special wound possibilities.
- Key moments:

  - D-GW-001 (The Boar That Wouldn’t Die):
    - Huge charge can inflict:
      - “Rib Crush” major wound if you get hit at low HP.
  - D-GW-003 (Tracks in the Ash):
    - Ash-Burrowed Alpha can:
      - Inflict “Ash-Lung Burn”.
  - D-GW-004 (Whisper in the Hollow):
    - Mental/fear wounds:
      - “Sleep-Haunted” (debuff to rest till resolved).

Deeds might:

- Offer unique **treatments** or recovery scenes if you finish them while wounded.

---

## 5. Corruption & Wound Interaction

### 5.1 Corrupted Wounds

Some wounds can become **corrupted**, especially:

- In Hollowroot Border
- During corruption-heavy events (62)
- From specific enemies

Corrupted wound traits:

- Harder to heal.
- May flare up:
  - In certain POIs.
- Might require:
  - Special rituals
  - Ember Pot recipes
  - Deed completions.

### 5.2 Whisper-Touched Scars

From D-GW-004 / CH-GW-012:

- Wounding events might:

  - Leave scars that:
    - Cause rare audio hallucinations.
    - Slight distortions in UI when near certain spots.

These should be:

- **More flavor than punishment**:
  - A reminder of what you went through.
  - Occasionally tie into secret detection or lore scenes.

---

## 6. Social & Narrative Integration (64, 86, B100)

### 6.1 Lodge Reactions

When you return wounded:

- NPC barks shift for a bit:
  - “You’re limping again.”
  - “That boar caught you good, didn’t it?”
- If severely wounded:
  - Short **ambient scenes**:
    - Rival hunter sitting near your bunk.
    - Mara dropping by with stew.

Over time, **repeating** certain wound patterns:

- Can unlock:

  - Nicknames, jokes, or respect barks.
  - Special dialogue:
    - “Always back with your ribs taped… you sure you’re okay?”

### 6.2 Trophy Hall & Fallen Hunters (86)

If a **named NPC** dies in an event/Deed:

- Trophy Hall can:

  - Add or update:
    - A small plaque
    - A token on a memorial wall.

Certain major Deeds:

- Failure states can result in:

  - “This name was carved here on the day we lost them.”

Player (baseline) cannot be added as “fallen” since they don’t hard-die, but:

- In **Iron Path** mode:

  - A true death adds:
    - A token or entry in a **Fallen Hunter’s wall**.
  - Next character can:
    - Read that record.
    - Possibly inherit a small thematic bonus or memento.

### 6.3 Hunter’s Quarters (B100)

Major wounds resolved (full treatment):

- May add **cosmetic options** in your room:

  - Crutches leaning by bed.
  - Bandage roll on desk.
  - Scar/medical tools on shelf.

Scars:

- May be reflected in:

  - Character’s visual appearance (if supported).
  - Small mirror interaction:
    - “You look older than when you first came to the Lodge.”

---

## 7. Economy & Penalty Tuning

### 7.1 Cost of Treatment

Treating wounds should:

- Cost *something* meaningful:
  - Coin
  - Ingredients
  - Reagents
- But not so much that:
  - One bad fight bankrupts you.

Baseline:

- Minor wound clean-up:
  - Cheap.
- Major wound full care:
  - Medium cost, maybe partial profession materials.

Lodge Reputation (59):

- High rep:
  - May reduce treatment costs.
  - Or allow one free “full treatment” occasionally.

### 7.2 Time Penalties vs Play Flow

We avoid:

- Making players wait real-time hours.

Instead:

- Use:
  - In-world passes:
    - Sleep / rest, or “time passes” prompt.
  - Or **story-based** transitions:
    - You heal while a general time-skip happens (between arcs).

---

## 8. Technical Model

### 8.1 Wound Data

Per character:

- `stagger_counter`
- `minor_wounds[]`:
  - Each:
    - `wound_id`, `name`, `effect_tags`, `remaining_duration`
- `major_wounds[]`:
  - Each:
    - `wound_id`, `name`, `effect_tags`, `requires_treatment`, `severity`
- `scar_records[]`:
  - Past major wounds that resolved, for:
    - Visuals
    - Dialogue flags.

### 8.2 Integration Hooks

- Combat system:
  - On HP drop to 0:
    - Call `HandleDownedState()`
- On blackout:
  - `ApplyWoundRoll(risk_grade, corruption_state)`
  - `TeleportToLodge()`
- Lodge systems:
  - On `CharacterReturnedWounded`:
    - Trigger:
      - Social hooks.
      - Treatment UI.

### 8.3 Difficulty Modes

Allow toggles:

- **Story-Focused Mode:**
  - Fewer wounds.
  - Mostly minor.
  - Cheaper treatment.
- **Standard Mode:**
  - Balanced wound chances.
- **Iron Path Mode:**
  - Higher wound chance.
  - NPC death more likely.
  - Optional true player permadeath → Fallen Hunter record.

---

## 9. Example Flows

### 9.1 Early-Game Boar Hunt Gone Wrong

1. Player takes CH-GW-002 – Boars in the Turned Fields.
2. Misjudges pulls, gets swarmed.
3. Downed → blackout.
4. Wakes in Lodge:
   - Minor wound: Bruised Ribs.
5. Mara comments:
   - “Field’ll still be there tomorrow. Your ribs might not if you keep that up.”
6. Player pays small fee or eats recovery stew.
7. Goes back wiser.

### 9.2 Late-Game Ash-Edge Disaster

1. Player attempts CH-GW-009 / D-GW-003 at high difficulty.
2. Ash-Burrowed Alpha crits them in ash pit.
3. Downed → blackout.
4. Wakes in Lodge, coughing ash:
   - Major wound: Ash-Lung Burn.
5. Lodge whispers:
   - Hunters comment about how close that was.
6. Treatment:
   - Requires specific herbs from Ember Herb Crest nook + cost.
7. Scar record:
   - Future visits to Smoking Hollows trigger:
     - Subtle cough animation or flavor line.

---

## 10. Next Actions

1. **Lock wound list** for Greatwood 1–20:
   - 6–8 minor
   - 4–6 major
   - 2–3 corruption-specific.
2. **Wire downed & blackout logic** into combat core.
3. **Integrate Lodge return flow**:
   - Infirmary scene hooks
   - Treatment UI
   - Ember Pot wound-support dishes.
4. **Author wound-specific NPC barks**:
   - Mara, Arlen, Fen, Elira, rival hunter, apprentices.
5. **Add Fallen Hunter flow for NPCs**:
   - For key Deeds and events:
     - Death → Hall memorial + social fallout.
6. **Optionally prototype Iron Path**:
   - Player opt-in permadeath mode
   - Lodge memorialization + new-character continuity hooks.

B101 is the **“gravity” system**: it makes every Hunt, Deed, and trek through Greatwood feel risky enough to matter, but forgiving enough that you keep coming back to the fire.
