Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 80 – Animal Behavior, Fear, Fleeing, and Aggro Logic (Greatwood 1–20)

## Purpose

Define **animal behavior and AI logic** for Greatwood creatures:

- How they **detect**, **approach**, and **attack**
- How they **fear**, **flee**, and **react** to damage and traps
- How this behavior supports:
  - Hunts & tracking (61, 67)
  - Traps & tools (79)
  - World bosses & rare hunts (66)
  - Overall combat philosophy (71)

Goal: creatures feel like **living animals** with instincts, not just aggro cubes.

---

## Behavior Pillars

1. **Instinct-first behavior**  
   Animals:
   - Want to eat.
   - Want to avoid pain.
   - Want to protect territory or young.

2. **Readable patterns**  
   Behavior is more complex than “run at player,” but still understandable.

3. **Different families, different instincts**  
   Wolves, boars, deer, corrupted beasts all behave differently.

4. **Escalation and retreat**  
   Not every fight is “to the death”; some enemies flee, call for help, or change tactics.

---

## Detection & Aggro

### Senses

Each creature has:

- **Sight radius & arc**
- **Hearing range**
- **Smell/”scent” awareness** (for certain species)

Factors affecting detection:

- Time of day
- Weather (fog, rain)
- Player actions:
  - Sprinting vs sneaking
  - Using scent-masking items (57, 79)
  - Carrying torch/lantern (78, 75)

### Alertness States

1. **Idle** – wandering, feeding, resting.
2. **Alert** – suspects something, looking around.
3. **Aggressive** – commits to attack or chase.
4. **Fleeing** – tries to escape.
5. **Herd Panic** – group reaction when one member freaks out.

---

## Creature Family Behaviors

### Deer & Prey Animals

- Default:
  - **Skittish** but curious if undisturbed.
- Detection:
  - High sight and hearing; moderate scent sense.
- Behavior:
  - At **Idle**:
    - Graze, drink, move in small groups.
  - On slight disturbance:
    - Brief **Alert** state:
      - Head up, sniffing, short step or two.
  - On clear threat (player too close, loud noise, arrow near):
    - **Flee**:
      - Sprint away, sometimes in a less predictable path.
    - May:
      - Leave individual stragglers behind.

- Rare variants (Three-Horn Stag, 61, 66):
  - More unique patterns (short charges, loops, or territory circles).

### Boars & Aggressive Prey

- Default:
  - Defensive/territorial; will stand ground more than deer.
- Behavior:
  - At **Idle**:
    - Rooting and wandering.
  - On **Alert**:
    - They may:
      - Bluff charge.
      - Circle player.
  - On **Aggressive**:
    - Straight-line charges with windup.
  - On **Low HP**:
    - Some may flee; others go into berserk mode depending on variant.

### Wolves & Pack Predators

- Default:
  - Pack hunters, rarely alone.
- Behavior:
  - At **Idle**:
    - Pack patrol, rest, or play animations.
  - On **Alert**:
    - Pack spreads slightly, tries to flank.
  - On **Aggressive**:
    - 1–2 wolves engage directly.
    - Others try to attack from sides/back.
  - On **Low HP** or pack casualties:
    - Pack may:
      - Retreat as a group.
      - Or a remaining alpha may become more ferocious.

- Reaction to traps:
  - Smarter about obvious traps.
  - May avoid or circle areas with too much blood/scent.

### Corrupted Beasts

- Default:
  - More unnatural; behavior is:
    - Less predictable.
    - Less rooted in standard fear patterns.
- Behavior:
  - More willing to fight to the death.
  - Some may:
    - Be attracted to pain, fire, or certain alchemical scents.
  - Might:
    - Have delayed fear responses or “frenzy” phases instead of flee.

---

## Fear, Fleeing, and Morale

### Morale System (Simple 1–20 pass)

Each creature or group has a **morale value** affected by:

- HP % remaining
- Nearby allies dead or fleeing
- Player’s actions (loud/terrifying attacks, fire usage)

At low morale:

- Prey animals:
  - Increase flee behavior, refuse to re-engage.
- Packs:
  - May retreat in a coordinated way.
- Some predators:
  - Try to lure you away, or retreat to den (separate encounter zone).

### Player Influence

Player can manipulate morale with:

- Fire (torches, wildfire glows).
- Loud, high-impact hits (big crits, certain abilities).
- Traps:
  - Snaring one animal might cause others to panic.

---

## Aggro & Target Switching

- Creatures prioritize:

  1. Closest perceived threat.
  2. Biggest source of pain (highest recent damage).
  3. Threat to young or den if that’s in context.

- For now (1–20, likely solo):
  - Target switching is simpler:
    - They stick to the player unless something major happens (e.g., trap triggered, loud event).

- Later group play:
  - “Soft aggro” distribution between multiple players.

---

## Interactions With Traps (79), Camps (77), and Tracking (67)

- Traps:
  - Create new behavior patterns:
    - Animals:
      - Can be baited into snares or pits.
      - Panic when a nearby animal is trapped.
- Camps:
  - Firelight:
    - May attract some predators (curiosity).
    - Repel others (fear of flame).
- Tracking:
  - Behavior leaves different track patterns:
    - Panic fleeing leaves more chaotic prints and signs.
    - Calm movement → more orderly track lines.

---

## Rare Hunts & World Boss Behavior (66)

- Rare Hunts:
  - More cautious, more likely to flee after being injured.
  - Require smarter approach:
    - Using tracking, stealth, or traps.

- World Bosses:
  - Have custom behavior scripts:
    - Phases with:
      - Calls for adds
      - Territory-based attacks
    - Rarely flee; instead may:
      - Retreat to new phase location.
      - Enrage when low HP.

---

## Safely Non-Homicidal Creatures

Not everything wants to kill you:

- Small critters (rabbits, birds):
  - Mostly avoid player, serve as ambiance / minor resources.
- Certain large animals:
  - Only attack when:
    - Cornered.
    - You threaten young.
- This reinforces:
  - A world that feels alive, not pure combat.

---

## Integration With Combat Philosophy (71)

- Intentional pacing:
  - Enemies:
    - Don’t just mindlessly pile on.
  - Fights:
    - Can be avoided with good play.
- Attrition:
  - Chasing fleeing prey deep into forest:
    - Can be risky but rewarding.
- Skill expression:
  - Skilled players:
    - Understand creature patterns.
    - Choose when to push and when to hang back.

---

## Next Actions

- For each enemy family in Greatwood:
  - Define:
    - Idle routines.
    - Aggro triggers.
    - Flee conditions.
    - Basic group logic (if applicable).
- Build:
  - 2–3 behavior “scripts” per family (e.g., calm, hungry, disturbed).
- Test:
  - Hunts and Deeds that rely on:
    - Flee behavior (keep target from escaping).
    - Herd panic (control or exploit).
