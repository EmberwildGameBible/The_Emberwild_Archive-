# CHAPTER 10 — APPENDIX O — CORPSE LOOT, SKINNING, AND RESOURCE EXTRACTION RULESt

---

This appendix defines exactly how looting, skinning, harvesting, and post-kill resource extraction works in Emberwild.

It follows Classic WoW logic with zero modernization and zero shortcuts.

These rules apply to all creature tiers:

- Normal
- Rare
- Elite
- Rare Elite
- Mini-Boss
- Boss
- (Ultra-Rare = item category, not creature tier)

---

# O.0 PURPOSE

To establish a global, unified, Classic-style system for:

- Looting
- Skinning
- Salvaging
- Butchering
- Herbal collection from creatures where relevant
- Mining salvage from stone/ore creatures

This ensures every class, profession, and zone obeys the same coherent rules.

---

# O.1 CORPSE LOOT RULES

## O.1.1 First Tag = Loot Rights

- Whoever tags (first damaging action) gets loot rights.
- Party tag = entire party shares loot access.
- No public/shared loot.

## O.1.2 Loot Window Behavior

- Default: single corpse window.
- No AoE looting (Classic rule).
- Every corpse must be looted manually.

## O.1.3 Loot Lockout

When a creature dies:

- Loot is locked to tag owner(s) for 2 minutes.
- After 2 minutes, becomes “free-for-all” if unlooted.
- After 5 minutes, corpse despawns (skinning/extaction chances lost).

---

# O.2 LOOT CONTENT RULES

Loot is always generated from:

### 1. Creature Tier Table

- Normal
- Rare
- Elite
- Rare Elite
- Mini-Boss
- Boss

### 2. Creature Family Table

Examples:

- Wolf
- Boar
- Insect
- Undead
- Humanoid
- Elemental
- Spirit
- Construct
- Bandit
- Raptor
- Bear
- Etc.

### 3. Zone Tier Modifier

Zone difficulty adds:

- Level adjustments
- Material rarity adjustments
- Ultra-Rare global weighting
- Profession material weighting

### 4. Global Loot Modifiers

- Ultra-Rare system (Appendix J)
- Profession tags (skinnable / mineable / harvestable)

No loot is ever random in a vacuum.

Everything is deterministic within Classic-style tables.

---

# O.3 SKINNING RULES

Skinning is tied to the Skinning profession.

Classic logic, no exceptions.

## O.3.1 Eligible Creature Families

Skinnable:

- Wolves
- Bears
- Boars
- Cats
- Raptors
- Reptiles
- Insects (chitin)
- Certain magical beasts
- Rare Elites of beast families
- Mini-Bosses of beast families (yield extra)

Not skinnable:

- Humanoids
- Undead
- Constructs
- Spirits
- Elementals
- Bosses (except special-case exotic creatures)

## O.3.2 Skinning Requires

- Profession level matching creature level
- Skinning knife equipped (simple tool)

## O.3.3 Yield

Yields include:

- Raw hides
- Thick hides
- Rare pelts
- Ultra-Rare hides (Appendix J low-chance roll)
- Beast organs for alchemy
- Chitin/scales for armor crafting
- Rare materials from Rare / Rare Elite creatures

Mini-Bosses:

- Always yield 3× baseline
- Always roll for at least one profession rarity

---

# O.4 BUTCHERING / MEAT HARVEST RULES

This is tied to Cooking & Provisioning professions.

## O.4.1 Eligible Families

- Beasts
- Wildlife
- Raptors
- Birds
- Aquatic creatures
- Some monstrous humanoids (optional cases)

## O.4.2 Yield Types

- Meat (common)
- Tender meat (rare)
- Exotic cuts (very rare)
- Ultra-Rare culinary material (extremely rare, Appendix J rule)

## O.4.3 Mini-Boss / Boss Yield

Mini-Boss:

- Guaranteed rare meat
- Small chance Ultra-Rare culinary drop

Boss (non-humanoid, non-undead):

- 100% multi-roll table
- 100% rare materials

---

# O.5 SALVAGING (ORE / STONE CREATURES)

Creatures made of stone, crystal, or metal can be “mined” after death.

## O.5.1 Requires

- Mining profession
- Pickaxe tool

## O.5.2 Eligible Families

- Stone constructs
- Crystal beasts
- Iron/bronze constructs
- Living ore
- Elemental earth creatures (Classic-style)

## O.5.3 Yields

- Ore
- Crystals
- Metal shards
- Rare ore clusters
- Ultra-Rare ore (Ultra-Rare system)

Rare Elites:

- Roll twice
    
    Mini-Boss:
    
- Roll three times

---

# O.6 HERBAL EXTRACTION (PLANT CREATURES)

Certain enemies are plantlife and can be harvested.

## O.6.1 Requires

- Herbalism

## O.6.2 Eligible Families

- Living vines
- Mushrooms
- Spriggans
- Corrupted groves
- Saplings / dryads
- Swamp flora creatures

## O.6.3 Yields

- Herbs (common & zone-appropriate)
- Rare roots
- Spores
- Toxic glands
- Ultra-Rare botanical material

---

# O.7 MULTI-PROFESSION EXTRACTION (SPECIAL CASE)

Some enemy types allow multiple profession extractions, Classic-style logic.

Examples:

- Dragon-like creature → Skinning + Butchering
- Stone serpent → Skinning + Mining
- Fungal bear → Skinning + Herbal extract

Ultra-Rare rolls are per profession, not shared.

---

# O.8 BOSS EXTRACTION RULES

Bosses do NOT follow normal rules.

### Bosses typically allow:

- Salvage (if construct/stone)
- Carving (if beast)
- Skinning (if beast)
- Butchering

### Bosses do NOT allow:

- Standard Ultra-Rare rolls
    
    Unless explicitly designed as a world beast.
    

Bosses use curated loot, not algorithmic Ultra-Rares.

---

# O.9 ULTRA-RARE EXTRACTABLES

Ultra-Rare profession materials follow the same global “one-in-X” system as Ultra-Rare gear (Appendix J):

- They have extremely low drop rates
- Global counters ensure they are tracked
- Slightly variant “parent item identity” is applied
- Slight stat variance permitted (tiny, flavor-only)

But only certain creature families can yield Ultra-Rare profession materials.

---

# O.10 DESIGN SAFETY RULES

### 1. No profession yields from creatures that shouldn’t have them

No free resources.

### 2. No AoE looting

No modern mass loot.

### 3. No dynamic multi-roll inflation

Every extra roll must come from a legitimate creature tier upgrade.

### 4. No free Ultra-Rare attempts

Reset / evade kills = invalid.

### 5. All extraction is manual

Player must loot → then extract.

Classic fidelity at all times.

---