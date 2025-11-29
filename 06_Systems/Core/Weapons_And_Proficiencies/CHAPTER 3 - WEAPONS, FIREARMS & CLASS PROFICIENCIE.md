# CHAPTER 3 — WEAPONS, FIREARMS & CLASS PROFICIENCIES (FINAL)

---

Emberwild: Weapon Families, Proficiency Rules, Firearm Mechanics, and Weapon Skill

Nothing in this chapter may violate Chapters 1 or 2.

This chapter defines what weapons exist, who can use them, how they scale, and how they interact with Classic-style combat math.

---

# 3.0 PURPOSE OF THIS CHAPTER

This chapter establishes:

- The full taxonomy of weapon families
- Classic-style armor types and armor progression
- Fixed class weapon lists (schemas)
- Weapon proficiency vs weapon skill
- Ammo, firearms, and ranged auto-attacks
- Universal weapon parameters and scaling hooks
- Constraints for all future items, classes, and systems

If any future item, class concept, or patch contradicts this chapter, this chapter overrides it.

---

# 3.1 WEAPON TAXONOMY (FAMILIES)

Weapons in Emberwild follow Classic-style family groupings.

Every weapon belongs to exactly one family.

No exceptions, no hybrid types, no “special snowflake weapons.”

---

## 3.1.1 One-Handed Weapons

1. One-Handed Swords
    - Balanced speed/damage
    - Crit/precision oriented
2. One-Handed Axes
    - Slightly higher base damage
    - Cleave/armor pressure themes
3. One-Handed Maces
    - Blunt damage; stagger/poise flavor
4. Daggers
    - Fast, low damage, high proc frequency
    - Core for precise/light classes
5. Fist Weapons
    - Brutal close-quarters weapons
    - Often tied to dodge/counterplay identities

---

## 3.1.2 Two-Handed Weapons

1. Two-Handed Swords
    - Reach, burst-critical windows
2. Two-Handed Axes
    - Heavy cleave arcs, punishing hits
3. Two-Handed Maces
    - Massive blunt force; stagger-heavy identity
4. Polearms (includes Spears)
    - Long reach
    - Ideal for hunting thrusts, kiting, and mid-range melee control

Spears are not a separate category.

They are Polearms.

---

## 3.1.3 Ranged Weapons

1. Bows (use arrows)
2. Crossbows (use bolts)
3. Guns (use bullets)
4. Thrown Weapons (charges, not infinite ammo)

Thrown weapons are not universal.

Only classes whose schemas allow “Thrown” may ever use them.

---

## 3.1.4 Caster & Hybrid Implements

1. Staves
    - Two-handed
    - Modest melee + caster stats
2. Wands / Light Firearms / Hand Crossbows
    - Very light ranged tools
    - Mostly for casters/hybrids
    - No ammo unless specified per family
3. Off-Hand Items
    - Tomes, lanterns, orbs, relics
    - Cannot attack
    - Provide stats or utility

---

# 3.2 ARMOR TYPES & PROGRESSION

The armor system mirrors Classic progression rules.

All classes begin with Cloth.

Heavier armor must be learned only if the class schema allows it.

---

## 3.2.1 Armor Types

- Cloth — lowest physical mitigation
- Leather — agility/mobility armor
- Mail — heavy mid-tier armor
- Plate — maximum physical mitigation

---

## 3.2.2 Armor Progression Rules

- All classes start with Cloth at Level 1
- Certain agile classes start with Leather at Level 1
- Eligible classes learn Mail mid-game
- Only true heavy classes can learn Plate

A class never exceeds its schema-defined ceiling.

A Leather-max class can never wear Mail/Plate.

A Mail-max class can never wear Plate.

No items, quests, trainers, or patches override this law.

---

# 3.3 UNIVERSAL WEAPON PARAMETERS

Every weapon has:

1. BaseDamageMin / BaseDamageMax
2. WeaponSpeed (seconds)
3. NormalizedSpeed (for ability scaling)
4. AccuracyBase
5. Critical Bonus modifiers (if any)
6. Range (for ranged/extended melee)
7. Family (exact one)
8. Required Level
9. Required Proficiency (binary)
10. Stamina/Resource Costs (if applicable)

Damage scaling:

Bonus DPS = AP ÷ 14

Bonus Damage per Hit = (AP ÷ 14) × WeaponSpeed

This matches Chapter 2 and Classic WoW math.

---

# 3.4 FIREARMS & AMMUNITION SYSTEM

Firearms are fully Classic-style:

- Require consumable ammo
- Ammo has level requirements
- Ammo adds flat damage
- Ranged autos consume ammo

---

## 3.4.1 Ammo Types

- Arrows → bows
- Bolts → crossbows
- Bullets → guns

Each has:

- RequiredLevel
- AmmoDamageBonus
- Rarity tier
- Possible elemental/armor-piercing flag (rare, controlled)

---

## 3.4.2 Ammo Level Restriction

A fundamental law:

- You may equip any firearm your class is proficient in
- But you cannot use ammo above your character level

Example:

A level 15 character with a level 40 gun cannot use level 30 bullets.

They must use level-appropriate ammo.

This prevents power-level boosting and maintains danger and progression.

---

## 3.4.3 Ranged Auto-Attacks (Auto Shot)

All classes allowed to use bows/guns/crossbows gain:

Auto Shot

- Continuous ranged auto attack
- Ammunition is consumed
- Scales with weapon speed, AP, and ammo bonus
- Obeys dead zone rules (Chapter 2)
- No ranks

---

# 3.5 CLASS WEAPON SCHEMAS (FIXED FOREVER)

Every class has a fixed list of weapon families they are allowed to use.

Weapon trainers only unlock proficiencies within the class’s predefined list.

They never expand it.

Examples (illustrative; real class lists come later):

- A hunter-style class:
    
    Bows, Crossbows, Guns, Thrown, Daggers, 1H Axes, 2H Axes, Polearms, Staves, Fist Weapons
    
- A caster:
    
    Daggers, Staves, Wands, Off-Hand items
    
- A heavy frontline class:
    
    1H Swords, 2H Swords, 1H Maces, 2H Maces, Axes, Polearms, Shields
    

If a weapon is not in the schema:

the class can never use it.

---

## 3.5.1 Starting Proficiencies

At Level 1:

- Every class has melee Auto Attack
- Some begin with ranged Auto Shot (if schema allows)
- Starting weapon is a basic gray item
- Starting armor = Cloth (or Leather for certain classes)

---

## 3.5.2 Learning Additional Proficiencies

Weapon trainers teach only:

- Weapon types already in the schema
- For a gold cost
- At appropriate levels

Weapon trainers do not expand schemas.

---

# 3.6 WEAPON SKILL SYSTEM (CRITICAL)

Weapon Skill is separate from proficiency.

---

## 3.6.1 Proficiency vs Weapon Skill

Proficiency:

“Can I equip this weapon family?”

Weapon Skill:

“How good am I at hitting things with it?”

Proficiency = binary

Weapon Skill = numeric (0 → cap)

---

## 3.6.2 Weapon Skill Caps & Progression

Max Weapon Skill = 5 × Character Level

Examples:

- Level 10 → 50 skill
- Level 60 → 300 skill

Skill increases by using the weapon on valid targets.

Low skill → clumsy

High skill → reliable

---

## 3.6.3 Combat Impact

Weapon skill affects:

- Miss chance
- Dodge/parry/block chance
- Glancing blow rate
- Glancing blow damage penalty
- Critical reliability

Weapon Skill is one of the most powerful stats in the game.

It must always matter.

---

# 3.7 WHITE VS YELLOW DAMAGE & NORMALIZATION

All weapons produce two types of damage:

---

## 3.7.1 White Damage (Auto Attacks)

- Runs through the full hit table
- Includes glancing blows
- Scaled by AP/14 × weapon speed
- Weapon skill affects everything

---

## 3.7.2 Yellow Damage (Abilities)

- Often uses normalized weapon speed
- Ignores glancing blows
- Has separate hit/speed rules
- Still affected by crit/hit/penetration

Normalized speeds are defined in Chapter 4.

---

# 3.8 DESIGN CONSTRAINTS FOR ALL FUTURE WEAPONS & ARMOR

Any weapon or armor added to Emberwild must obey:

1. Must belong to exactly one family
2. Must be allowed by at least one class schema
3. Must respect armor ceilings (no plate for leather-max classes)
4. Must follow AP/14 scaling rules
5. Must follow ranged ammo rules
6. Must not introduce power-creep that undermines progression
7. Must interact with hit tables and weapon skill correctly
8. Must never bypass class identity

If an item violates any of these laws, the item is invalid.

---

End of CHAPTER 3 — WEAPONS, FIREARMS & CLASS PROFICIENCIES (FINAL).

Ready for Chapter 4 — Stat & Scaling Framework?