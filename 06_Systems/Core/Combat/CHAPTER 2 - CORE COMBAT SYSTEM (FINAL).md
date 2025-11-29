# CHAPTER 2 — CORE COMBAT SYSTEM (FINAL)

Emberwild: Table-Resolved, Classic-Style Combat

This chapter is subordinate to Chapter 1. Nothing here may contradict Chapter 1.

This chapter defines how combat works at every level: movement, targeting, hit tables, ability flow, mitigation, threat, death, recovery, and world interaction.

---

# 2.0 PURPOSE OF THIS CHAPTER

This chapter establishes Emberwild’s combat law:

- All attacks are resolved through Classic-style tables
- All mitigation uses Classic-style armor and resistance formulas
- All outcomes depend on weapon skill, attributes, and derived stats
- Resources, GCD, and pacing follow Classic principles
- Combat is deliberate, dangerous, and positional
- Success requires pulling discipline, line of sight, terrain advantage, and teamwork
- Nothing may skip class identity, weapon families, armor ceilings, or fixed schemas defined in Chapter 1

Chapter 3 defines weapons and proficiencies.

Chapter 4 defines the underlying math.

If any mechanic conflicts with Chapter 1, Chapter 1 overrides it.

---

# 2.1 COMBAT PILLARS & INTENT

Emberwild combat is built on the following non-negotiable principles:

---

## 2.1.1 Table-Resolved, Not Hitscan

- All attacks run through a server-side Classic-style hit table.
- No crosshair aiming, no FPS logic, no hit-scan.
- Each attack resolves as:
    
    Miss → Dodge → Parry (front) → Block (front) → Glancing Blow → Crit → Hit
    

This reinforces:

- Weapon skill importance
- Class identity
- Slow, deliberate combat pacing

---

## 2.1.2 Deliberate, Weighty Pace

- Combat cadence is GCD-driven
- Auto-attacks (white hits) and Auto Shot are the backbone
- Abilities (yellow hits) augment auto-attacks, not replace them
- Over-pulling is lethal
- Planning > button-spam

---

## 2.1.3 Positioning & Terrain Matter

- Attacks from behind cannot be Parried or Blocked
- LoS restrictions apply to ranged and spellcasting
- Elevation, corners, and pathing are core mechanics
- Kiting routes, choke points, and terrain hazards are intentional

---

## 2.1.4 Classic-Style Hidden Depth

Emberwild inherits Classic’s core systems:

- Weapon skill
- Hit, crit, and glancing blow rules
- Armor mitigation formula
- Resistances and partial resist logic
- Spirit-based “5-second rule” regen
- Threat as a hidden metric

Casual players feel the results.

Theorycrafters can analyze the math.

---

## 2.1.5 Roles & Identity

Combat reinforces class roles:

- Tanks generate threat and absorb damage
- Healers sustain allies
- DPS control pacing and output
- Hybrids trade DPS for utility

Nothing may break niche protection or hybrid tax rules in Chapter 1.

---

# 2.2 TARGETING, RANGE, FACING & DEAD ZONES

---

## 2.2.1 Soft Targeting

- Players select targets via tab-targeting or click-targeting
- No free-aim mechanics
- All attacks reference:
    - Attacker weapon skill
    - Target defense/level
    - Positional rules
    - Hit table logic

---

## 2.2.2 Facing & Positional Requirements

Melee:

- Must be in melee range
- Must face the target (reasonable cone)
- Target can Dodge, Parry, Block when attacked from the front
- Target cannot Parry or Block from behind

Ranged/Spells:

- Must face target broadly
- Must have clear LoS
- Must be within min/max range

---

## 2.2.3 Ranged Dead Zones

Classes with bows/guns/crossbows use a Classic dead-zone model:

- Too close → cannot fire
- Too far → out of range

The dead zone:

- Forces ranged classes to master movement and spacing
- Gives melee classes counterplay in close quarters

---

# 2.3 GLOBAL COOLDOWN, RESOURCES & ACTION FLOW

---

## 2.3.1 Global Cooldown (GCD)

- Standard GCD = 1.5 seconds
- Some abilities are off-GCD
- Auto-attacks and Auto Shot continue during GCD

---

## 2.3.2 Resource Systems

Resource rules obey Chapter 1’s attribute mapping:

### Vitality (physical stamina-like resource)

- Used for heavy abilities, bracing, shield usage
- Regenerates slowly in combat

### Focus/Mana (precision/mental resource)

- Max pool from Intellect
- Regeneration governed by Spirit
- 5-second rule: regen resumes 5 seconds after spending

### Resolve, Current, hybrid-specific resources

- Defined per class, but must obey Classic-like constraints
- Never infinite
- Never spammy

---

## 2.3.3 Auto Attacks

All classes start the game with:

### Auto Attack (Melee)

- No ranks
- Uses weapon stats, AP, weapon skill
- White damage on hit table

### Auto Shot (Ranged classes with bows/guns/crossbows)

- Fires automatically while stationary
- Consumes ammo
- Uses weapon speed
- Uses ranged hit table
- No ranks

---

# 2.4 ABILITY TYPES & CADENCE

---

## 2.4.1 Ability Categories

1. Melee Attacks
2. Ranged Attacks (bows/guns/throwing)
3. Spells/Techniques (instant or casted)
4. Defensive Abilities (blocks, bracing, DR tools)
5. Control (stuns, roots, slows, disarms, silences)
6. Heals, HoTs, Support Auras

The system emphasizes toolkit diversity, not “rotation” gaming.

---

## 2.4.2 Cooldowns

- Short cooldowns = core builders
- Medium cooldowns = burst windows or control
- Long cooldowns = major defensives or big utility

Rotations do not exist.

Decisions matter.

---

# 2.5 ATTACK RESOLUTION & HIT TABLE

---

## 2.5.1 The Single-Roll Hit Table

All physical attacks (white and most yellow) use:

- Miss
- Dodge
- Parry (front only)
- Block (front only, shield targets only)
- Glancing Blow (vs higher-level enemies)
- Critical Hit
- Normal Hit

Server-side resolution means:

- Zero client manipulation
- Fully deterministic outcomes
- Weapon skill is always relevant

---

## 2.5.2 Weapon Skill Effects

Weapon Skill (max = 5 × level):

- Reduces miss chance
- Reduces target dodge/parry/block
- Reduces glancing blow penalty
- Increases damage reliability
- Defines progression from level 1 “clumsy” to level 60 mastery

A level 40 bow with maxed weapon skill feels lethal.

A level 60 bow with low weapon skill feels bad.

This is intentional.

---

## 2.5.3 Spell/Technique Hit Checks

Spells and mental techniques use:

- Resist
- Partial Resist
- Crit
- Hit (if applicable)

No glancing blows.

No parry/block.

---

# 2.6 MITIGATION: ARMOR, BLOCK, DODGE, CRIT

---

## 2.6.1 Armor

Classic-style armor formula reduces incoming physical damage based on:

- Attacker level
- Defender armor value

Plate > Mail > Leather > Cloth.

This cannot be changed.

---

## 2.6.2 Block

- Requires a shield
- Reduces damage on block
- Tied to Strength and shield stats
- Identity of heavy classes

## 2.6.3 Dodge

- Granted by Agility
- Typically higher for light/medium armor classes

## 2.6.4 Critical Hits

Physical crit:

- 200% damage (unless modified)
    
    Spell crit:
    
- Defined by ability category and class design

---

# 2.7 THREAT, TANKING & AGGRO

---

## 2.7.1 Threat Basics

- 1 damage ≈ 1 threat
- Healing generates 1 threat per ~3 health restored (split across mobs)
- Tanks have multipliers via stances/auras

---

## 2.7.2 Tank Control

Tanks use:

- High-threat abilities
- Taunts
- Shield/brace abilities
- Positional control

---

## 2.7.3 Aggro Threshold

To pull aggro:

- Melee must exceed tank threat by ~10%
- Ranged must exceed tank threat by ~30%

Enforces controlled DPS, not reckless spam.

---

# 2.8 MOVEMENT, KITING, LEASHING & LOS

---

## 2.8.1 Movement

Movement is a combat mechanic:

- Kiting
- Gap closing
- Terrain control
- Corner pulls

---

## 2.8.2 Leashing

Enemies reset when:

- Pulled too far
- Leash radius exceeded

Health and threat reset.

---

## 2.8.3 Line of Sight (LoS)

- Required for ranged and spells
- Breaks casts
- Forces casters to reposition
- Creates tactical play in dungeons and overworld

---

# 2.9 CONTROL, DEBUFFS & AURAS

---

## 2.9.1 CC Categories

Soft CC: slows, snares, light knockbacks

Hard CC: stuns, sleeps, fears, roots, disarms, silences

Bosses may have immunities or diminishing returns.

---

## 2.9.2 Debuff Limit

High-end enemies may enforce a debuff cap (Classic-inspired 16-debuff limit):

- Only X unique debuffs may be active at once
- New debuffs push off the oldest

This enforces:

- Coordination
- Class synergy
- Pre-planned group composition

---

## 2.9.3 Buffs & Auras

- Long-duration passive buffs
- Short-duration combat auras
- Party-wide support effects
- Must obey priority/stacking rules (defined in Chapter 4)

---

# 2.10 DEATH, RECOVERY & DURABILITY

---

## 2.10.1 Death

On death:

- Spirit respawns at a grave/safe point
- Player must run back to recover body
- Spirit healers may resurrect with penalties

Death is a setback, not a reset button.

---

## 2.10.2 Durability

- Gear loses durability on damage and death
- Repairs cost gold
- Gold scarcity makes death meaningful

---

# 2.11 DESIGN CONSTRAINTS (LAWS)

Every future ability, encounter, class, boss, weapon, and mechanic must obey these laws:

1. Table-Resolved Combat Only
2. No Violations of Class Schemas (Chapter 1)
3. Weapon Skill Always Matters
4. Threat System Cannot Be Circumvented
5. No Convenience That Removes Danger or Social Interaction
6. All Math Must Follow Chapter 4 Formulas
7. No ability may bypass armor ceilings, weapon families, or niche protection

If any design idea conflicts with these laws:

the idea is invalid.

---

End of CHAPTER 2 — CORE COMBAT SYSTEM (FINAL).