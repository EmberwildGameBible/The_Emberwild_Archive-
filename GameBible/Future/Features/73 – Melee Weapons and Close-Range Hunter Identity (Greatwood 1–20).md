Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 73 – Melee Weapons & Close-Range Hunter Identity (Greatwood 1–20)

## Purpose

Define the **early melee weapon set** and close-range Hunter identity for Emberwild:

- What melee weapons exist in Greatwood 1–20
- How they feel and play differently
- How they tie into Lodge culture, hunts, and professions

This is a **design stub** for melee fantasy and progression, not final balance or animation.

---

## Melee Combat Pillars

1. **Deliberate swings, real weight**  
   - Weapons feel like real tools/weapons, not foam sticks.
   - You commit to swings; spacing matters.

2. **Few archetypes, deep expression**  
   - 2–3 core melee categories in early game:
     - Blades (knives, shortswords)
     - Axes (light/heavy)
     - Hammers / blunt tools
   - Each supports different playstyle and fantasy.

3. **Tool first, weapon second**  
   - Many melee weapons are also tools:
     - Axes for wood and skulls.
     - Hammers for building and breaking.
   - Professions and combat overlap.

---

## Early Melee Weapon Categories

For Greatwood 1–20:

1. Light Blades (Knives, Shortblades)
2. Axes (One-Handed and Heavier Forester Axes)
3. Blunt Weapons (Hammers, Clubs)
4. Lodge Improvised Weapons (Stub)

Each category has:

- Base T1
- T2 Lodge-quality versions
- T3 “named” or region-locked variants

---

### 1. Light Blades – Knives & Shortblades

**Fantasy:**  
Quick, close-range weapons favored by cooks, trappers, and hunters who like mobility.

#### Simple Lodge Knife

- ID: `weapon_blade_lodge_knife_t1`
- Tier: Early starter
- Source:
  - Given early as part of profession intro or basic hunt.
- Characteristics:
  - Fast light attacks
  - Low stagger, modest damage
- Use:
  - Last-resort backup
  - Precise strikes against small and fast enemies

#### Hunter’s Shortblade

- ID: `weapon_blade_hunter_shortblade_t2`
- Tier: Mid Greatwood
- Source:
  - Crafted by Woodworker / metalworker equivalent, or earned via Hunt Deed reward.
- Characteristics:
  - Faster combo potential
  - Better damage and crit potential than the basic knife
- Feel:
  - Ideal for agile, dodge-heavy players who like to get in and out.

#### Dual-Use Butcher’s Blade (Optional)

- ID: `weapon_blade_butcher_t3`
- Tier: Upper Greatwood
- Source:
  - Ember Kitchen questline or profession rep (Cook + Hunter).
- Characteristics:
  - Slightly slower, chunkier hits
  - High bonus vs beasts specifically
- Integration:
  - Also recognized as a cooking tool in some recipes.

---

### 2. Axes – Forester & Hunter Axes

**Fantasy:**  
Iconic hunter tools; used for trees and beasts alike.

#### Lodge Hatchet

- ID: `weapon_axe_lodge_hatchet_t1`
- Tier: Early
- Source:
  - Shared between Forester and Hunter intros.
- Characteristics:
  - Medium swing speed
  - Decent stagger and damage
- Use:
  - All-purpose melee tool in early game

#### Forester’s Work Axe

- ID: `weapon_axe_forester_work_t2`
- Tier: Mid Greatwood
- Source:
  - Forester’s Circle reputation (59)
- Characteristics:
  - Higher damage and stagger
  - Slightly slower, with more weight
- Integration:
  - Also a profession tool; might boost wood gathering slightly.

#### Greatwood Cleaver Axe

- ID: `weapon_axe_greatwood_cleaver_t3`
- Tier: Upper Greatwood
- Source:
  - Deed or world boss reward tied to trees/forester hunts.
- Characteristics:
  - Heavy overhead swings
  - Large stagger, potential to interrupt certain elite attacks
- Feel:
  - High-commitment, high-payoff weapon for players comfortable reading enemy patterns.

---

### 3. Blunt Weapons – Hammers, Clubs

**Fantasy:**  
Tools of woodworkers, builders, and some heavy-hitting hunters.

#### Carpenter’s Mallet

- ID: `weapon_blunt_carpenter_mallet_t1`
- Tier: Early
- Source:
  - Carpenter’s Hall intro quest (59)
- Characteristics:
  - Medium speed, good stagger
  - Feels like a tool but does the job in a pinch
- Use:
  - Great against armored or thick-skulled enemies at low levels.

#### Lodge Warhammer (Stubbed)

- ID: `weapon_blunt_lodge_warhammer_t2`
- Tier: Mid Greatwood
- Source:
  - Carpenter’s Hall mid-rank reward
- Characteristics:
  - Slower, heavy impact
  - High stagger, potential bonus vs armor/corruption shells
- Feel:
  - For players who like big, satisfying hits.

#### Rootbreaker Maul

- ID: `weapon_blunt_rootbreaker_t3`
- Tier: Upper Greatwood
- Source:
  - Hollowroot Warren (65) or Deed tied to corruption.
- Characteristics:
  - Very high stagger and structure damage
  - Strong knockback vs certain creatures
- Integration:
  - Thematically tied to breaking corrupted roots and fungal growths.

---

### 4. Lodge Improvised Weapons (Stub)

Concept:  
Early or low-tier “improvised” weapons, like:

- Broken spear
- Heavy branch/clublike tools
- Makeshift shields (if used)

These are mostly flavor and tutorial-intro tools, quickly replaced by real gear, but they:

- Help sell the Lodge as a working place where people grab what they can.
- Could appear in tutorial or narrative scenes.

---

## Playstyle Differences

### Light Blade Player

- High mobility.
- Relies on:
  - Dodges
  - Flanking
  - Finishers on wounded enemies.
- Weak against:
  - Groups that cannot be easily kited
  - Very tanky enemies in early game.

### Axe Player

- Balanced offense and defense.
- Relies on:
  - Medium tempo swings.
  - Stagger and control.
- Weak against:
  - Extremely quick enemies if player mistimes swings.

### Blunt Weapon Player

- Heavy control and stagger.
- Relies on:
  - Fewer, heavier hits that must connect.
- Weak against:
  - Enemies that punish slow windups
  - Situations where mobility is crucial.

---

## Integration With Other Systems

- **Combat Stat Philosophy (71):**
  - Axes and hammers lean more into Power and stagger.
  - Light blades lean into crit and Perception synergy.

- **Professions (54, 59):**
  - Forester and Woodworker:
    - Provide or improve axes/hammers.
  - Cook:
    - Some blades cross over as kitchen tools.

- **Hunts & Deeds (61, 66):**
  - Some Deeds might grant:
    - Named melee weapons.
    - Special melee challenges (e.g. “kill X without using ranged”).

- **Death & Rest (70):**
  - Melee players who over-commit:
    - More likely to take heavy hits, interact more with wound/debuff systems.

---

## Next Actions

- Create a **melee weapon progression table**:
  - HP/damage/stamina costs
  - Swing speeds per category
- Map:
  - Which profession crafts what
  - Which quests/Deeds grant signature melee weapons
- Align:
  - Weapon stats with food/tonic buffs to reinforce distinct melee playstyles.
