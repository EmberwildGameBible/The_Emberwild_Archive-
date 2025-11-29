# CHAPTER 10 — APPENDIX K — DAMAGE SCHOOLS, MAGIC TYPES & RESISTANCE SYSTEM

---

Mandatory canonical reference for all abilities, creatures, resist checks, environmental hazards and item affixes.

---

# K.0 PURPOSE OF THIS APPENDIX

This appendix defines:

- All damage schools in Emberwild
- All healing schools
- All resistance categories
- The partial resist math model
- How abilities are tagged and resolved
- How creatures, zones, and gear interact with these schools
- How Ultra-Rare items may use school-based attunements

This is a core foundational system and cannot be contradicted by any future class, item, rare, dungeon, or world rule.

---

# K.1 DAMAGE SCHOOLS (7 TOTAL)

Emberwild uses a Classic-style hybrid elemental/physical system grounded in realism and spirit-world logic.

### PHYSICAL SCHOOLS

These are mitigated by ARMOR, not magical resistance.

1. Physical
    - All weapon attacks, melee abilities, ranged autos, thrown weapons.
    - Mitigated via Armor → uses full Chapter 4 formula.
    - Affected by block, dodge, parry, glance.
2. Piercing
    - Sub-school of Physical.
    - Spears, arrows, bullets, bolts, stabs.
    - Reduced slightly less by armor (armor penetration hooks).
3. Blunt
    - Sub-school of Physical.
    - Maces, hammers, impact abilities.
    - Interacts strongly with stagger/poise systems.

---

### ELEMENTAL SCHOOLS

Mitigated by Elemental Resistance.

1. Frost
    - Frost Guard’s full elemental identity.
    - Slows, chills, brittle effects.
    - Frozen enemies may take extra shatter damage.
    - Resist sources: cold-adapted creatures, tundra beasts, undead warriors.
2. Fire
    - Rare in Emberwild except environmental hazards, spirit enemies, and special abilities.
    - DOT-focused.
    - Resist sources: volcanic creatures, fire-affinity spirits.
3. Nature
    - Poisons, venoms, thorns, diseases.
    - Used by Swamper-style beasts, Farmer/Alchemist talents, corrupted areas.
    - Resist sources: insects, swamp beasts, fungal creatures.

---

### SPIRITUAL/SPECTRAL SCHOOLS

1. Spirit
    - True Emberwild magic.
    - Used by Witch, some high-level bosses, spirit-world anomalies.
    - Not “holy.” Not “arcane.”
    - Includes fear, soul rend, ethereal bursts.
    - Resist sources: spirits, specters, ancestral guardians.

---

# K.2 HEALING SCHOOLS (NON-DAMAGE)

Emberwild defines two healing schools:

1. Restorative
    - Natural healing, medicine, physical repairs.
    - Farmer class, Warden mend-type abilities, food-based heals.
2. Spiritual Healing
    - Spirit, charm-based heals, ancestral reverence, spirit channeling.
    - Not affected by any resist.
    - Affected only by anti-magic fields or silence-like effects.

Healing does not interact with resistances.

---

# K.3 RESISTANCE TYPES (6 TOTAL)

Resistances reduce elemental or spirit damage through a partial-resist system.

### Available Resistances

- Frost Resistance
- Fire Resistance
- Nature Resistance
- Spirit Resistance
- Physical Resistance (rare; used by stone-based or armored creatures)
- Universal Resistance (Boss-only exceptional cases)

### NO Arcane, NO Shadow, NO Light/Holy

Those systems do not exist in Emberwild’s grounded tone.

---

# K.4 PARTIAL RESIST MATH (CLASSIC-STYLE)

Resistances do not work like armor.

They instead roll per-hit to determine:

- 0% resisted
- 25% resisted
- 50% resisted
- 75% resisted
- (rare) 100% resisted

Formula (Classic-style):

```
Chance to partial resist = clamp(Resistance / (5 × AttackerLevel), 0, 0.75)
```

Meaning:

- At equal levels, 75 resistance = ~50% partial resist rate
- 150 resistance = near-capped 75% partial resist
- Full immunity does NOT exist except scripted bosses.

DOT ticks roll individually.

---

# K.5 ABILITY SCHOOL TAGGING (MANDATORY RULE)

Every single damaging ability in the entire game MUST have one and only one damage school.

Examples:

- Hunter “Predator’s Shot” → Piercing
- Tamer pet “Bite” → Physical
- Frost Guard “Ice Lance” → Frost
- Witch “Spirit Rend” → Spirit
- Farmer “Rotting Brew” → Nature

If an ability uses multiple effects (e.g., Physical hit + Nature DOT), it is treated as two separate rolls, each with their own type.

---

# K.6 CREATURE FAMILY RESIST PROFILES

These define world identity.

### Beasts

- Low Spirit Resist
- Moderate Nature Resist (depending on biome)
- Low Fire/Frost Resist except extreme environments.

### Undead

- High Frost Resist
- High Spirit Resist
- Low Nature Resist
- Low Fire Resist

### Constructs / Golems / Guardians

- High Physical Resist (stone/iron variants)
- Medium Frost/Fire Resist
- Low Spirit Resist

### Insects / Swarmers

- Very high Nature Resist
- Low Frost Resist
- Low Physical Resist (but sometimes swarm-based damage reduction)

### Spirits / Specters

- High Spirit Resist
- Moderate Frost Resist
- Immune to certain physical CC (like bleeds or poisons)

### Primordial Fauna

- High Nature Resist
- Medium Frost Resist
- Low Fire Resist

### Bosses

- Can have curated resistance profiles
- Cannot be immune to entire schools unless explicitly designed
- Partial resists still apply

---

# K.7 ULTRA-RARE INTERACTION RULES

Ultra-Rare items may have:

School Affinity Lines:

Example:

- “Frost-Tuned Edge: +3% Frost Damage, +8 Frost Resistance.”
- “Spirit-Warded Charm: Converts 8% of Physical damage taken into Spirit damage (resistible).”

Color Tier:

- UI border = shifting shimmer, not the same as Boss gear
- Title color = iridescent silver-blue.

Drop Logic:

- Small chance from:
    - Rare
    - Rare Elite
    - Mini-Boss
    - Boss
    - Some world nodes (fishing, mining, herbalism)
    - Some profession crafting breakthroughs
- Global 1-in-X counter maintained server-wide.

---

# K.8 ENVIRONMENTAL DAMAGE SCHOOLS

Regions use schools to define environmental hazards:

- Tundra → Frost ticks
- Swamp → Nature disease
- Ruins/Spirit Zones → Spirit pulses
- Volcanic Rifts → Fire jets
- Storm Peaks → Physical + Piercing hail

These hazards always use partial resist logic.

---

# K.9 CLASS SCHOOL ALIGNMENT

Final, canonical mapping:

### Hunter

- Physical / Piercing
- Some abilities may use Nature (poisons, traps)

### Animal Tamer

- Physical (pet hits)
- Nature (venomous pets)
- Spirit (very rare, beast-bond abilities)

### Farmer

- Restorative
- Nature (brew, rot, soil, spores)
- Physical (melee tools)

### Highlander

- Physical / Blunt
- Some Spirit via oaths (minor)
- No fantasy nukes

### Frost Guard

- Frost (primary)
- Physical (heavy armor hits)

### Witch / Spirit Binder

- Spirit (primary)
- Shadow DOES NOT EXIST
- Nature (secondary for curses)

### Seaborn

- Physical
- Nature (storm/wind flavor)

### Others (as added)

- Must map to one of the 7 damage schools without introducing new ones.

---

# K.10 DESIGN CONSTRAINTS

1. No new damage schools may be added after launch.
2. No class may bypass resistances via “true damage.”
3. Boss resistances must be curated per-encounter.
4. Ultra-Rare items may enhance or tweak school interactions, but cannot break them.
5. All abilities MUST define one primary school.

---

## END OF APPENDIX K — DAMAGE SCHOOLS & RESISTANCE SYSTEM (FINAL)

---