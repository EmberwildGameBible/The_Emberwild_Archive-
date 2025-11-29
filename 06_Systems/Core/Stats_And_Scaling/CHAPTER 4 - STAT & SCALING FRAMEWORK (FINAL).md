# CHAPTER 4 — STAT & SCALING FRAMEWORK (FINAL)

---

Emberwild: Classic Mathematical Backbone

Nothing in this chapter may contradict Chapters 1–3.

This is the definitive source of truth for all combat math in Emberwild.

---

# 4.0 PURPOSE OF THIS CHAPTER

This chapter defines all numerical rules governing:

- Primary Attribute scaling
- Derived stats (AP, Crit, Hit, etc.)
- Armor mitigation
- Resistances
- Weapon Skill formulas
- Auto-attack vs ability damage
- Resource regeneration
- Threat multipliers
- Normalization and hidden combat operations

Every calculation in the game—class abilities, items, weapons, enemies, encounters—must obey these formulas.

If something contradicts Chapter 4, the contradiction is invalid.

---

# 4.1 PRIMARY ATTRIBUTES (STR / AGI / STA / INT / SPI)

These rules follow Classic WoW philosophy with Emberwild modifications where required for clarity or consistency.

---

## 4.1.1 Strength (STR)

### Universal Function

- Increases Melee Attack Power (AP)

### Class-Specific AP Gains

- Heavy/Hybrid Physical Classes:
    
    1 STR = 2 AP
    
    (Warrior-like, Paladin-like, Shaman-like, Druid-like)
    
- Light/Precision/Non-physical classes:
    
    1 STR = 1 AP
    
    (Hunter-like, Rogue-like, Priest-like, Mage-like, Warlock-like)
    

### Secondary Function

- Increases Block Value when using a shield
    
    (Scaling defined per class item budget)
    

---

## 4.1.2 Agility (AGI)

### Universal Functions

- Grants 2 Armor per 1 AGI (or equivalent)
- Increases Dodge chance
- Increases Crit chance (ratio varies by class)

### Class-Specific AP Gains

- Hunters: 1 AGI = 2 Ranged AP
- Rogues: 1 AGI = 1 Melee AP
- Some Hybrids: partial AP contributions

### Crit Formula (Per Class)

- Crit chance per Agility depends on archetype (defined in class chapters)
- Examples (Classic reference, not binding):
    - Rogue-like: ~29 AGI ≈ 1% crit
    - Warrior-like: ~20 AGI ≈ 1% crit
    - Hunter-like: ~53 AGI ≈ 1% crit

Exact conversion is set per class, but must remain:

- Linear
- Class-dependent
- Theorycraftable

---

## 4.1.3 Stamina (STA)

### Universal Function

Increases maximum Health.

Baseline:

- 1 STA = 10 Health (modifiable by class passive)

All classes rely on Stamina.

---

## 4.1.4 Intellect (INT)

### Universal Functions

- Increases maximum Focus/Mana
- Increases Spell Crit Chance (ratio class-dependent)

Baseline:

- 1 INT = 15 Focus/Mana

### Secondary Effects

- Slightly increases Weapon Skill learning rate (Classic-reflection)

---

## 4.1.5 Spirit (SPI)

### Universal Functions

Spirit governs:

- Out-of-combat Health regeneration
- Out-of-combat Focus/Mana regeneration
- The “5-second rule” for casters/Focus users

### 5-Second Rule

After spending Focus/Mana:

- Natural Spirit regen resumes 5 seconds after last spellcast
- Regeneration rate = Spirit × regen coefficient per class

### Spirit Regen Applies To

- Health (all classes)
- Focus/Mana (precision/caster classes)

Spirit is mandatory for:

- Long fights
- Sustain
- Slow tactical pacing

---

# 4.2 DERIVED STATS

---

## 4.2.1 Attack Power (AP)

AP determines bonus weapon damage:

Bonus DPS = AP ÷ 14

Bonus Damage per Hit = (AP ÷ 14) × WeaponSpeed

Applied to:

- Melee auto attacks (white damage)
- Ranged auto attacks (Auto Shot)
- Many physical abilities (yellow damage, normalized speed may apply)

---

## 4.2.2 Crit Chance

Two categories:

### Physical Crit

- Derived from Agility
- Multiplier = 200% (unless modified per class or ability)

### Spell/Technique Crit

- Derived from Intellect or spell crit rating
- Multiplier varies by ability (150–200%)
- Defined per class in its class chapter

---

## 4.2.3 Hit Chance / Spell Hit

Improves reliability on the combat table.

- Physical Hit: reduces Miss/Dodge/Parry (parry only from front)
- Spell Hit: reduces Resist and Partial Resist

Hit/Spell Hit caps are defined per level-difference rules.

---

## 4.2.4 Weapon Skill

Weapon Skill modifies:

- Miss chance
- Dodge/Parry/Block
- Glancing blow chance
- Glancing blow damage reduction
- Effective crit chance (indirectly)
- Smoothness of damage output

Max Weapon Skill = 5 × Character Level.

Weapon Skill is one of the strongest stats in the entire game.

---

## 4.2.5 Armor

Armor reduces physical damage through Classic-style formula:

Damage Reduction % = Armor ÷ (Armor + 400 + 85 × AttackerLevel)

Properties:

- Armor effectiveness decreases vs higher-level enemies
- Plate > Mail > Leather > Cloth
- A level 60 attacking a level 60 uses same formula; bosses adjust via level offset

---

## 4.2.6 Resistances (Fire, Frost, Nature, Shadow, Arcane)

Resistances use partial resist tables:

Each incoming spell may result in:

- Full Resist (0 damage)
- 25% resist
- 50% resist
- 75% resist
- Full damage

Distribution determined by:

- Target resistance
- Spell level
- Attacker level

Resistances do not operate like armor.

---

# 4.3 DAMAGE & HIT TABLE LOGIC

---

## 4.3.1 Single-Roll Hit Table (Physical Attacks)

Order:

1. Miss
2. Dodge
3. Parry (front only)
4. Block (front only)
5. Glancing Blow (vs higher-level mobs)
6. Crit
7. Normal Hit

One roll determines outcome.

Server-side only.

---

## 4.3.2 Glancing Blows

Triggered only when:

- Target’s level > Player level
- Most common vs elites/bosses

Glancing Blow:

- Always deals reduced damage
- Reduction determined by weapon skill
- Better weapon skill = smaller penalty

---

## 4.3.3 Spell/Technique Table

Spells do not use physical hit table.

Resolution:

- Resist
- Partial Resist
- Crit
- Hit

---

# 4.4 NORMALIZATION (YELLOW DAMAGE)

Certain abilities use normalized weapon speed, not actual weapon speed.

Purpose:

- Prevent slow weapons from over-scaling
- Maintain class identity and weapon flavor

Normalized speeds:

- 1H: ~2.4
- 2H: ~3.3
- Daggers: ~1.7
- Ranged: ~2.8

Exact values can be tuned per ability family.

---

# 4.5 RESOURCE REGENERATION

---

## 4.5.1 Health Regen

- Governed entirely by Spirit unless modified per class
- No in-combat regen except class abilities or effects

---

## 4.5.2 Focus/Mana Regen

Two states:

### 1. Not Casting (5-second rule active)

Regen = Spirit × class-specific coefficient

Full Spirit value applies.

### 2. Casting (active regen locked)

- Minimal or zero regen depending on class
- Ends 5 seconds after last spellcast

This enforces deliberate pacing and prevents spam.

---

# 4.6 THREAT CALCULATIONS

---

## 4.6.1 Damage Threat

1 damage = ~1 threat

(before modifiers)

---

## 4.6.2 Healing Threat

3 healing = ~1 threat,

distributed across all mobs engaged with the group.

---

## 4.6.3 Tank Multipliers

Tank stances/auras multiply threat.

Values are class-specific, but must follow Classic-tier logic (example 1.3–1.8× multipliers).

---

# 4.7 LEVEL DIFFERENCE SCALING

Higher-level enemies:

- Increase player miss chance
- Increase dodge/parry/block chances
- Increase glancing blow frequency
- Increase resist chances
- Reduce crit chance effectiveness

Weapon Skill is the primary counter-scaling mechanic.

---

# 4.8 DESIGN CONSTRAINTS

Any ability, item, weapon, class, or monster must obey all formulas:

1. AP/14 weapon scaling
2. Classic hit tables
3. Armor mitigation formula
4. Spirit-based resource regeneration
5. Level-based glancing blow logic
6. Weapon skill relationships
7. No ignoring armor ceilings
8. No ignoring class schemas
9. No non-Classic resource spam
10. No modern convenience shortcuts

If a mechanic violates these rules, it is invalid.

---

End of CHAPTER 4 — STAT & SCALING FRAMEWORK (FINAL).