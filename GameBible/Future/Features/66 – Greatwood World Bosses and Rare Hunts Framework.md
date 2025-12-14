Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 66 – Greatwood World Bosses & Rare Hunts Framework

## Purpose

Define the framework for **World Bosses** and **rare hunt targets** in Greatwood:

- Big, named threats that live in the open world (not inside dungeons)
- Tightly integrated with the Hunt Board (61), Deeds, and specialty ingredients (55)
- Provide “event” scale fights without full instancing

This spec covers behavior, spawn rules, reward rules, and some example bosses.

---

## Design Goals

1. **Presence in the world, not just a UI list**  
   Players should see signs, hear rumors, and maybe glimpse these beasts even if they’re not on the hunt.

2. **Learnable encounters**  
   Each boss has a theme and patterns that players can learn and teach others.

3. **Shared benefit**  
   Multiple players in the area can benefit when the boss is defeated (loot, reputation, etc.), within reason.

4. **Long-term hooks**  
   World bosses tie into:
   - Deeds (61)
   - Specialty ingredients (55)
   - Questlines (56, 60)
   - Early Alchemy stubs (58)

---

## World Boss Types in Greatwood

Initial target: **2–3 world bosses** in Greatwood.

### Boss A – Elder Hollow Stag

- **Location:**
  - Deep Greatwood clearings, possibly migrating between a few known spots.
- **Theme:**
  - Ancient, massive stag; embodiment of the forest’s memory and fury.
- **Mechanics:**
  - High mobility, charges, trample attacks.
  - Periodic “forest call”:
    - Summons lesser beasts
    - Buffs allies, perhaps heals slightly
  - Phase change at low health:
    - Antlers and hooves glow or bleed corruption/fury
- **Rewards:**
  - High chance at:
    - `spec_ingr_elder_stag_marrow` (55)
    - `spec_ingr_elder_antler_shard` (55)
  - Deed completion and Hunt Board ties
  - Unique gear or cosmetic trophy
- **Integration:**
  - Central to Deeds like “The Old King of the Clearing.”
  - Key ingredient source for high-tier recipes (53, 58).

---

### Boss B – Ash-Touched Dire Boar

- **Location:**
  - Burn-Scar / Wildfire Glades sub-regions.
- **Theme:**
  - Boar that embodies wildfire’s aftermath – scarred, smoking, enraged.
- **Mechanics:**
  - Short-range brutal charges.
  - Ground fire patches on impact.
  - “Burning rage” phase:
    - Faster, more reckless movement
    - Larger fire zones
- **Rewards:**
  - `spec_ingr_ash_touched_beast_cut` (55)
  - Fire-resistance gear or alchemy recipes (58)
  - Special boar-themed Lodge trophies
- **Integration:**
  - Hunt Board Deed: “The Boar That Wouldn’t Die” (55 example).
  - Ember Pot storyline involvement (56 “Ash in the Pot”).

---

### Boss C – The Hollowroot Warden (Open-World Variant)

- **Location:**
  - Surface Hollowroot Edge, near Dungeon entrances and corruption pockets.
- **Theme:**
  - A beast or entity bound to guard the boundary between surface forest and Hollowroot Warren.
- **Mechanics:**
  - Uses root-based attacks, small environmental hazards.
  - May occasionally retreat into root structures then re-emerge.
- **Rewards:**
  - Hollowroot-related ingredients (55)
  - Dungeon-focused gear or keys/tokens
- **Integration:**
  - Feeds into Deeds and dungeon narrative (65)
  - Could be part of a multi-step world boss arc.

---

## Rare Hunts (Non-Boss Named Targets)

These are named creatures less “epic” than world bosses but more special than normal elite enemies.

Examples:

1. **The Three-Horn Stag**
   - Wanders specific hunting grounds with low spawn chance.
   - Drops unique antlers and rare meat variant.
   - Linked to a Deed or Hunt Board chain.

2. **Gloom-Touched Wolf Matriarch**
   - Spawns at night near certain camps.
   - Leads packs that behave differently (vicious, coordinated).
   - Drops rare pelts and corruption-tagged ingredients.

3. **The Riverback Devourer**
   - Occasional river encounter.
   - Heavy, slow, dangerous predator that can swallow smaller beasts.
   - Drops fish-related special ingredients and maybe crafting parts.

---

## Spawn & Reset Rules

### World Bosses

- **Spawn Windows:**
  - Either:
    - Timed rotations (e.g. Boss up every X hours)
    - Event-triggered (Hunt Board Deed accepted by enough players, or certain conditions met)

- **Telegraphing:**
  - NPC rumors in Lodge.
  - Visual cues in the world (tracks, sounds, distant roars).

- **Reset / Fail States:**
  - If left alone or players wipe:
    - Boss retreats, despawns after a while
  - Try to avoid grief loops; boss can reset HP after some conditions.

### Rare Hunts

- **Lower spawn chance**, but no heavy telegraphing.
- Some hunts may:
  - Require certain time-of-day
  - Require certain weather
  - Trigger off other actions (slaying too many of a family, leaving bait, etc.)

---

## Rewards & Distribution

### World Boss Rewards

- All participants that meaningfully contribute get:
  - Base XP and coin
  - Chance at ingredient drops and gear
  - Hunt/Deed credit if on the relevant contract

Scaling:

- Some rewards can scale based on:
  - Participation
  - Difficulty chosen (if scaled)
  - Deed completion status

### Rare Hunt Rewards

- Slightly better than normal elite loot:
  - Unique trophy items
  - High chance at a specific special ingredient
- Often one-off Deeds or contract completions grant bonus rewards.

---

## Visual / Audio Identity

- World bosses should have:
  - Distinct **silhouettes**
  - Strong, recognizable sounds (roars, hoofbeats, fire, etc.)
  - Environmental changes (fog, ash, shaking ground)

- Rare hunts:
  - Subtler, but still visually distinct (colors, scars, antlers, etc.)

---

## Integration Summary

- **51–60 Systems:**
  - World bosses and rare hunts feed ingredients (55), recipes (52, 53), and quests (56, 60).
- **61 – Hunt Board:**
  - Deeds often culminate in these bosses.
- **62 – Events:**
  - Dynamic events can hint at boss presence.
- **63 – Map:**
  - Locations are tied to specific sub-regions and POIs.

---

## Next Actions

- Decide on **final list** of world bosses for Greatwood 1–20 (2–3 solid picks).
- Write:
  - Boss-specific Deeds (names, steps, rewards)
  - Concrete spawn logic and locations
- Sketch out:
  - Attack patterns and abilities for each boss
  - First-draft loot tables aligned with overall progression.
