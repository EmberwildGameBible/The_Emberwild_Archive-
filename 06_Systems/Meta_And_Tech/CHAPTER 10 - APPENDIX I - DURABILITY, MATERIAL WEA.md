# CHAPTER 10 — APPENDIX I — DURABILITY, MATERIAL WEAR & REPAIR ECONOMY (FINAL)

---

Emberwild: Long-Term Gear Maintenance, Item Degradation & Gold Sink Logic

This appendix defines:

- Durability loss
- Repair costs
- Material wear tables
- Item break-states
- Profession-based repair bonuses
- Items that cannot be repaired
- Dungeon/rare durability modifiers
- Hardcore-slow economy sinks
- “True Classic” death-penalty logic

This is a core gold sink and progression system.

Nothing may contradict it.

---

# I.0 PURPOSE

Durability is a gold sink, maintenance requirement, and world-friction mechanic.

This appendix establishes:

- How items degrade
- How often
- How repair costs scale
- What players must do to maintain gear
- Why gear choice, death, and travel matter

This supports Chapter 1’s “slow, weighty progression” and “dangerous world” pillars.

---

# I.1 WHAT DURABILITY REPRESENTS

Durability = structural integrity of gear:

- Weapons
- Armor
- Tools
- Certain trinkets
- Profession gear

Durability reduces slowly during normal play and sharply when dying.

Items perform normally until they reach 0, at which point they enter a Broken State.

---

# I.2 DURABILITY SCALE (0–200)

Items have a fixed durability value based on rarity and material:

| Rarity | Durability Range |
| --- | --- |
| Poor (Gray) | 20–40 |
| Common (White) | 40–60 |
| Uncommon (Green) | 50–80 |
| Rare (Blue) | 70–120 |
| Epic (Purple) | 100–150 |
| Legendary (Gold) | 150–200 |

Higher rarity = higher durability.

No modern “indestructible items.”

---

# I.3 DURABILITY LOSS: GENERAL PLAY

Items lose durability via:

### I.3.1 Taking Physical Damage

When the player is hit:

- Chest armor loses the most durability
- Legs, shoulders, gloves, boots lose moderate
- Weapon loses small amount
- Shield loses high amount

### I.3.2 Using Abilities

Certain heavy abilities (e.g., shield slams, heavy strikes, environment-breaking moves) increase durability loss by 10–20%.

### I.3.3 Blocking

Shields degrade faster than weapons:

- 2–3× durability loss per block

---

# I.4 DURABILITY LOSS: DEATH

When the player dies:

- All worn equipment loses ~10% of maximum durability
- Bags/inventory items lose 5%
- Certain fragile items lose 15–25%

This is the primary death penalty outside repair costs and runbacks.

No corpse-loot loss, no item deletion.

---

# I.5 BROKEN STATE (0 DURABILITY)

When durability reaches 0:

- Item stats = 0
- Damage = reduced to ~20%
- Armor = reduced to ~20%
- Cannot use certain abilities
- Visual cracks/glow/FX appear
- Item can still be repaired

Broken items are NOT destroyed

—but are nearly useless until repaired.

---

# I.6 REPAIR COSTS

Repairing requires:

- Gold
- Profession-based discounts or surcharges

### I.6.1 Baseline Repair Gold Formula

RepairCost = (ItemLevel × RarityMultiplier × DurabilityLost × 0.01)

RarityMultipliers:

| Rarity | Multiplier |
| --- | --- |
| Poor | 0.5 |
| Common | 1.0 |
| Uncommon | 1.25 |
| Rare | 1.75 |
| Epic | 3.0 |
| Legendary | 6.0 |

Repairs get very expensive for high-end gear.

---

# I.7 REPAIR LOCATIONS

Repairs require trained NPCs:

- Blacksmiths
- Leatherworkers
- Artificers
- Spiritwrights (for Spirit gear)

No global repair button.

No “repair everywhere.”

Certain remote hubs cannot repair certain gear types.

---

# I.8 PLAYER PROFESSION REPAIR BONUSES

Professions give perks:

### Blacksmithing

- 10% discount to metal armor/weapon repairs
- Can repair metal gear in the field (limited uses/day)

### Leatherworking

- 10% discount to leather repairs
- Can repair leather gear (limited uses/day)

### Artistry / Spiritcraft

- Can repair Spirit-infused gear
- Might require reagents

### Engineering

- Can temporarily repair ANY gear for 5 minutes
- Durability returns to broken afterward
- Used during raids/emergencies

---

# I.9 ITEMS THAT CANNOT BE REPAIRED

Certain items are non-repairable to create meaningful gear turnover:

- Primitive scavenged weapons
- Makeshift tools
- Rusted/ruined rares
- Certain dungeon relics
- Spirit-unstable gear
- Early-game disposable weapons

These are intended to be temporary.

Non-repairable items break permanently at 0.

---

# I.10 MATERIAL WEAR SYSTEM

Advanced layer:

Items have hidden Material Wear rating:

- Determines how quickly durability drops over time
- Heavy metals last longest
- Bone, hide, chitin degrade faster
- Spirit-infused materials degrade differently depending on flux

Material wear tables are defined in Chapter 10 Appendix K (Ultra-Rare Materials).

---

# I.11 DUNGEON / RARE BOSS DURABILITY MODIFIERS

Bosses may have attacks that:

- Deal high durability damage
- Ignore durability mitigation
- Apply “Shatter” afflictions
- Temporarily reduce max durability
- Permanently scar gear (rare)

These mechanics encourage:

- Preparation
- Special gear loadouts
- Field-repair tools
- Team coordination

---

# I.12 DURABILITY & ECONOMY

Durability is a major gold sink:

- Regular repairs control inflation
- Death costs discourage reckless play
- High-end gear becomes expensive to maintain
- Crafting & repairing keeps professions relevant

This matches Classic principles.

---

# I.13 DESIGN LOCKS

Durability system must obey:

- No indestructible gear
- No modern “permanent repair kits”
- No trivial repair access
- No removal of death repair penalties
- No infinite field repairs
- No bypass of repair gold
- Durability loss must be meaningful

This is a core long-term progression loop.

---

# APPENDIX I COMPLETE.