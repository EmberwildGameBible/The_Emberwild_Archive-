# CHAPTER 1 — CORE DESIGN FOUNDATIONS (FINAL)

---

Emberwild: Structural Law & World Philosophy

This chapter overrides all future chapters. Nothing may contradict it.

---

# 1.0 PURPOSE OF THIS CHAPTER

This chapter establishes the immutable design laws of Emberwild.

All systems—combat math, stat scaling, class kits, weapon rules, itemization, encounters, progression, economy, and world friction—must obey this chapter.

If any later idea contradicts Chapter 1, Chapter 1 wins automatically.

Emberwild is grounded in World of Warcraft Classic (Patch-era) design philosophy adapted into a slower, more tactical open-world hunting RPG.

No modern conveniences.

No action-combat.

No flattened classes.

No homogenization.

This is Classic-core logic reshaped for a grounded survival fantasy.

---

# 1.1 CORE DESIGN PILLARS

Emberwild is built on five mandatory pillars:

---

## 1.1.1 Class Identity Over Perfect Balance

Classes have:

- Fixed, permanent weapon families
- Fixed armor ceilings
- Fixed resource models
- Fixed roles and gameplay identities
- Three talent trees, only two of which may be fully committed to

Balance target = “fair enough,” not esports symmetry.

Class fantasy and uniqueness override mathematical equality.

If forced to choose, identity > balance.

---

## 1.1.2 The World Is Dangerous

The world itself is a hostile character:

- Over-pulling is punished, not rewarded
- One elite enemy is a legitimate fight
- Terrain, LoS, elevation, tight corridors, rivers, and ruins matter
- Movement, pulling, and preparation are part of the game loop
- Zerging is not expected or supported

Everything from travel time to food to ammo is part of the challenge.

---

## 1.1.3 Slow, Weighty Progression

Leveling from 1–60 is the game. It is not a tutorial.

- XP gains are slow and deliberate
- Gold is scarce and always valuable
- Travel is meaningful
- Gear upgrades matter
- Talent points are major decisions
- Weapon skill must be leveled by use
- Professions, reputations, and crafting progress slowly

There is no fast path.

No catch-up mechanics.

No account-wide boosts.

Progress is earned.

---

## 1.1.4 Social Interdependence

Emberwild uses the Trinity (Tank / Healer / DPS) plus Utility/Control roles.

- No class can do everything
- Group content assumes complementary toolkits
- Hard CC, interrupts, armor debuffs, resist buffs, and support abilities matter
- Reputation with other players matters
- Travel to dungeon entrances is manual
- Group formation is manual

No automated finder.

No instant teleportation.

No convenience that erases cooperation.

---

## 1.1.5 Classic-Style Hidden Depth

Emberwild inherits Classic WoW’s mathematical DNA:

- Weapon Skill
- Hit Chance / Spell Hit
- Crit Chance scaling
- Glancing Blows
- AP/14 weapon damage scaling
- Armor mitigation formula
- Resistances
- Threat as a hidden metric
- Spirit-based regen and the “not casting” rule
- Positional rules (parry/block from front only)
- Min/max ranges and dead zones for ranged classes

Players do not see all the math, but theorycrafters can optimize it.

No modern “flat scaling.”

No artificial smoothing.

---

# 1.2 CLASS ARCHITECTURE & IDENTITY

---

## 1.2.1 Fixed Class Schemas (Permanent)

Every class has a permanent schema defining:

- Allowed weapon families (Chapter 3)
- Maximum armor type (Cloth → Leather → Mail → Plate)
- Armor progression levels
- Primary and secondary class roles
- Primary resource model (Vitality, Focus/Mana, Resolve, Current, etc.)
- Three talent trees (choose only two)
- Combat identity (ranged control, melee pressure, tanking, healing, hybrid utility, etc.)

These are locked at launch.

No trainer, patch, item, quest, or update may expand a class’s allowed weapon families or armor ceilings.

Changing these rules = creating a new class.

---

## 1.2.2 Hybrid Tax & Clear Niches

Following Classic philosophy:

- Pure DPS classes achieve the highest theoretical DPS ceiling
- Hybrids pay a DPS tax but bring utility, control, support, healing, or tanking
- Every class must have a role, a niche, and at least one non-damage contribution

If a class does not have a meaningful purpose in 1-player, 4-player, and 8-player content, the class is invalid and must be redesigned.

---

# 1.3 WORLD, TRAVEL & STRUCTURAL FRICTION

---

## 1.3.1 The World as a Character

The world is not scaled to the player.

- High-level zones are objectively lethal
- Travel time is expected and part of the experience
- Terrain is a combat mechanic
- Line of sight matters
- Kiting paths matter
- Corner pulls matter
- Narrow passages matter
- Elevation advantages matter
- Mobs leash realistically
- Over-pulling kills

The world is not decoration.

It is gameplay.

---

## 1.3.2 Intentional Lack of Convenience

The following systems do not exist:

- Dungeon/Group Finder
- Free teleports to dungeons or hunting zones
- Global mailbox access
- Unlimited free respeccing
- Infinite stealth, infinite sprint, infinite crowd control
- Instant travel or fast mounts early on

Friction is intentional. It makes:

- Social behavior essential
- Danger real
- Decisions meaningful
- Preparation required

---

# 1.4 PRIMARY ATTRIBUTES & DERIVED STATS

This section defines the Classic 5 primary stats adapted to Emberwild.

Final formulas appear in Chapter 4.

---

## 1.4.1 Primary Attributes (5-Stat Classic System)

### Strength (STR)

Universal:

- Increases melee Attack Power (AP)

Class-specific AP gains:

- Warriors, Paladins, Shamans, Druids: 1 STR = 2 AP
- Rogues, Hunters, Priests, Mages, Warlocks: 1 STR = 1 AP

Additional:

- Increases Block Value (shield users only)

---

### Agility (AGI)

Universal:

- Grants armor (2 armor per AGI equivalent)
- Increases dodge chance
- Increases crit chance (ratio varies by class)

Class-specific:

- Hunters gain 2 Ranged AP per 1 AGI
- Rogues gain melee/ranged AP per AGI
- Certain hybrid classes gain partial AP from AGI

---

### Stamina (STA)

Universal:

- Increases maximum Health
- Core survival stat for every class

Baseline:

- 1 STA = 10 Health (modifiable by class)

---

### Intellect (INT)

Universal:

- Increases maximum Focus/Mana
- Increases spell crit chance (ratio varies by class)

Baseline:

- 1 INT = 15 Focus/Mana (unless defined otherwise for class)

Also:

- Slightly increases weapon skill learning rate (Classic system reflection)

---

### Spirit (SPI)

Universal:

- Governs out-of-combat health regeneration
- Governs out-of-combat Focus/Mana regeneration
- Governs “5-second rule” regen behavior for casters/Focus users

Key effects:

- Higher Spirit = faster regen outside of combat
- Caster regen resumes 5 seconds after last spellcast
- Critical for long engagements, healers, and sustained explorers

Spirit is a major pillar stat, not optional.

---

## 1.4.2 Derived Stats (Summarized)

Derived stats are produced from primary attributes:

- Attack Power (AP)
    
    AP/14 = bonus DPS added to weapon baseline
    
- Crit Chance
    
    Derived from AGI or INT (depending on physical vs spell)
    
- Hit Chance / Spell Hit
    
    Determines reliability on the hit table
    
    Crucial for DPS and threat
    
- Armor
    
    Reduces physical damage using Classic-style formula
    
- Resistances
    
    Partial resist tables for Fire, Frost, Nature, Shadow, Arcane
    
- Weapon Skill
    
    Determines hit chance, glancing blow penalty, dodge/parry rates
    
    Max = 5 × character level
    

All formulas are defined in Chapter 4.

---

# 1.5 PROGRESSION & ECONOMY

---

## 1.5.1 Experience & Leveling Pace

Leveling is intentionally slow:

- Quest XP = primary source
- Creature XP = secondary
- Exploration, professions, discoveries = supplemental

Rested XP may exist, but the intended pace remains slow and Classic-like.

---

## 1.5.2 Gold Scarcity

Gold remains valuable at all levels:

- Repairs
- Ammo
- Food
- Lodging
- Class training
- Travel
- Professions
- Mount costs
- Portal access fees

No inflation-treadmill.

No easy gold faucets.

---

# 1.6 SOCIAL, COMMUNITY & META SYSTEMS

---

## 1.6.1 Reputation Systems

Reputation tiers:

- Neutral
- Friendly
- Honored
- Revered
- Exalted

Used for:

- Recipes
- Mounts
- Cosmetics
- Profession unlocks
- Utility items

---

## 1.6.2 Debuff Limits & Group Composition

High-end content uses:

- A debuff cap (Classic 16-debuff philosophy)
- Group compositions assuming:
    - 1 tank
    - 1 healer
    - 2–6 DPS/support (depending on group size)

This enforces synergy, planning, and specialization.

---

# 1.7 ALIGNMENT WITH CLASSIC WOW

Emberwild aligns with Classic by using:

- Fixed class schemas and weapon families
- Armor progression (Cloth → Leather → Mail → Plate)
- 5-stat system (STR, AGI, STA, INT, SPI)
- Weapon skill
- Hit tables
- Glancing blows
- Armor/resistance formulas
- Slow economy
- Slow leveling
- Real danger
- Social interdependence
- No automated grouping or travel
- Deep mathematical underpinnings

All other systems MUST remain compatible with this chapter.

---

End of CHAPTER 1 — CORE DESIGN FOUNDATIONS (FINAL).