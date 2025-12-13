# 72 – Bows, Ranged Weapons, and Lodge Hunter Identity (Early Progression)

## Purpose

Define the **early bow and ranged weapon progression** for Emberwild:

- What ranged weapons exist in Greatwood 1–20
- How they feel and function
- How they tie into Lodge hunter identity and professions (Woodworker, Forester)

This is a design pass for **weapons and fantasy**, not animation or exact numerical tuning.

---

## Ranged Combat Pillars

1. **Deliberate shots, meaningful hits**
   - Bows are not machine guns.
   - Each shot costs attention and positioning.

2. **Distance as advantage**
   - Good archers:
     - Start fights on their terms.
     - Avoid getting swarmed.
   - Poor positioning or lack of prep:
     - Leads to panic at close range.

3. **Integration with hunting fantasy**
   - Bows are:
     - Hunting tools first, weapons second.
   - Tied to:
     - Tracking (67)
     - Hunts/Deeds (61, 66)
     - Profession craft (Woodworker 54, Carpenter’s Hall 59)

---

## Early Ranged Weapon Types (Greatwood 1–20)

1. **Simple Hunting Bow**
2. **Lodge Recurve Bow**
3. **Greatwood Longbow**
4. **Thrown Tools / Light Thrown Weapons** (side system stub)
5. (Optionally) **Crossbow** stub for later intro (beyond 1–20 or at the tail end)

---

### 1. Simple Hunting Bow

- ID: `weapon_bow_simple_hunting_t1`
- Tier: Early / starter
- Source:
  - Given or cheaply purchased near start.
  - Reward from basic Lodge hunter quest or tutorial.
- Characteristics:
  - Low draw weight, short effective range.
  - Moderate draw time.
- Feel:
  - “Beginner bow,” good enough for simple hunts.
- Integration:
  - Woodworker can repair and make variants.
  - Early Hunt Board (61) expects players to use this or melee interchangeably.

---

### 2. Lodge Recurve Bow

- ID: `weapon_bow_lodge_recurve_t2`
- Tier: Mid Greatwood (skill ~10ish)
- Source:
  - Crafted by Woodworkers
  - Or earned via Hunt Board Deed / profession rep (Carpenter’s Hall 59)
- Characteristics:
  - Faster draw time than Simple Hunting Bow.
  - Slightly greater range and better damage consistency.
- Feel:
  - Recognizably better; feels like a proper Lodge hunter’s bow.
- Integration:
  - Recipes require:
    - Quality wood
    - Simple reinforcement materials
  - Could have:
    - Sub-variants for different playstyles (slightly faster draw vs slightly higher impact).

---

### 3. Greatwood Longbow

- ID: `weapon_bow_greatwood_longbow_t3`
- Tier: Upper Greatwood (15–20 area)
- Source:
  - High Carpenter’s Hall rep (59)
  - And/or reward from major Greatwood Deed (61, 66)
- Characteristics:
  - Longer draw time.
  - Higher damage per shot and greater range.
  - Best suited for:
    - Pre-fight opening shots
    - Cliff or vantage sniping
- Feel:
  - Big, iconic Lodge weapon.
- Integration:
  - Crafted from:
    - Specific Greatwood tree types
    - Possibly requiring Forester-marked “bow wood”
  - May have slightly increased effectiveness vs certain boss weak points if shot from range.

---

## Shot Feel & Mechanics (Early Concepts)

### Draw & Release

- Bows have:
  - Visible draw time.
  - Clear “peak draw” window:
    - Maximum damage and accuracy.
- If released too early:
  - Lower damage, chance of slight inaccuracy.
- If held too long:
  - Slight shakiness, stamina drain.

### Stamina & Accuracy

- Shots:
  - Consume a small amount of stamina per draw.
- Low stamina:
  - Slight sway, slower draw, increased chance of off-center shots.
- Good food and tonics:
  - Increase effective uptime as an archer.

---

## Arrows & Ammunition (Stub)

At Greatwood 1–20:

- Basic arrows:
  - Minimal tracking, simple crafting (Woodworker).
- Specialty arrows (later / stubbed):
  - Fire-tipped arrows (Burn-Scars, 58)
  - Barbed arrows (more bleed/slow)
  - Signal arrows (non-damage, event interaction)

For now:

- Keep arrow types simple.
- Ensure that arrow acquisition doesn’t feel overly grindy.

---

## Profession Integration

### Woodworker

- Crafts:
  - Bow frames, full bows
  - Arrow shafts
  - Quality-of-life components (grips, quivers later)

- Gets:
  - Rep & rewards from:
    - Providing bows for Lodge hunters
    - Special Hunt Board supply quests

### Forester

- Contributes:
  - Knowledge of best woods for bows.
  - Access to specific tree types/regions (63).
- May unlock:
  - Special “bow wood” harvest nodes
  - Minor bonuses to bows created from certain trees.

### Cook & Alchemist

- Support the archer:
  - Foods:
    - Perception & steadiness recipes.
  - Alchemy:
    - Focus tonics that temporarily boost accuracy or crit.

---

## Hunt & Boss Interactions

- Hunts (61):
  - Some hunts encourage ranged opening:
    - “Avoid being hit by X’s charge” style objectives.
- Rare hunts / Deeds:
  - Require or strongly reward:
    - Precise shots (staggering the Three-Horn Stag before it flees).
- Bosses (66):
  - Weak points exploitable by ranged:
    - Antler tips
    - Eyes
    - Specific corrupted growths

Ranged is not mandatory, but **makes certain fights less punishing** if used well.

---

## Lodge Hunter Identity

Ranged combat is a **core expression** of being a Lodge hunter.

Visual touches:

- Bow racks in Lodge.
- Archery range (64) with:
  - NPCs training
  - Player mini-games
- Quiver, bow, and stance making a hunter silhouette distinctive.

Narrative touches:

- NPCs reference:
  - Great archers and famous shots.
  - Distinct “longbow vs recurve vs shortbow” flavors in stories.

---

## Next Actions

- Create a **bow progression table**:
  - Stats, required materials, unlock conditions for:
    - Simple Hunting Bow
    - Lodge Recurve
    - Greatwood Longbow
- Define:
  - Basic arrow crafting recipes.
  - Simple “archery mini-game” rules that line up with combat feel.
- Ensure:
  - Combat stat tuning (71) and bow damage/draw times are coherent.
