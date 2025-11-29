# CHAPTER 10 — APPENDIX P — TREASURE CHESTS, WORLD CONTAINERS, AND SAFECACHE LOGIC

---

This appendix defines the spawn rules, interaction rules, loot tables, and respawn logic for all non-creature loot sources in Emberwild.

This system must follow Classic WoW logic:

static placements, slow respawns, predictable but rewarding, and zero modern conveniences.

No randomness-for-randomness.

No scaling.

No dynamic loot inflation.

---

# P.0 PURPOSE

To define:

- Treasure chests
- Locked chests
- Safecaches
- Satchels
- Herb bundles
- Ore caches
- Lost packs
- Tribal stashes
- Environmental containers (barrels, crates, urns)

Including:

- Spawn locations
- Respawn windows
- Loot tiers
- Ultra-Rare interactions
- Profession integration

---

# P.1 CHEST & CONTAINER CLASSES

Emberwild supports seven world container classes and nothing beyond this list.

## 1. Simple Chest (Wooden Chest)

- Equivalent to Classic’s low-tier wooden chest
- Appears in low-to-mid level zones
- Contains: coins, basic materials, low-level gear

## 2. Reinforced Chest

- Mid-tier
- Slightly better stat budget
- Appears in contested or elite zones
- Contains: moderate materials, mid-tier gear, small chance rare gear

## 3. Locked Chest

- Requires:
    - Lockpicking or
    - A Lockbreaker consumable
- Contains elevated loot table
- Can include Rare item drops (not Rare Elite level)

## 4. Safecache

- A sealed, interlocked chest with factional markings
- Usually found in camps, ruins, or guarded areas
- Contains curated sets:
    - Profession materials
    - Zone-relevant crafting supplies
    - Low chance: Rare gear

## 5. Satchels / Lost Packs

- Small, single-roll containers
- Contain consumables, reagents, small supplies
- Higher appearance rate than chests
- Never contain equippable items (Classic rule)

## 6. Profession-Specific Caches

- Herb bundle
- Ore cache
- Hunter’s bag
- Ritual urn
- Alchemist’s kit

Require the profession to fully loot.

Otherwise, only partial loot is available.

## 7. Ultra-Rare Glimmer Cache

- Not a creature drop
- Not tied to any enemy tier
- THIS IS THE primary world container tied to Ultra-Rare chances
- Very low spawn density
- Can only appear in:
    - Hard-to-reach ledges
    - Waterfalls
    - Abandoned huts
    - Caves
    - Ruins
    - Remote biomes
- Contains:
    - Small chance Ultra-Rare item
    - Common materials otherwise

Only 1–3 exist server-wide at any time.

---

# P.2 SPAWN RULES (CLASSIC LOGIC)

## P.2.1 Static Spawn Nodes

Every chest/container has:

- A static set of spawn points
- Only 1 point is active at a time
- Respawn never randomizes new nodes

Nodes do not move.

The world is learnable.

## P.2.2 Respawn Timers

Classic-style windows:

Simple Chest:

- 45–75 minutes

Reinforced Chest:

- 90–120 minutes

Locked Chest:

- 120–240 minutes

Safecache:

- 3–6 hours
- Only 1 active per region (not per zone)

Satchels / Packs:

- 20–45 minutes

Profession Caches:

- 1–2 hours
- Some require local event triggers

Glimmer Cache (Ultra-Rare):

- 24–72 hours
- Global count dynamically limits their presence (Appendix J system)

---

# P.3 LOOT TABLES (CHEST-FAMILY)

### P.3.1 Simple Chest

- 15–30 copper/silver
- 1–3 basic materials
- 5% chance: minor green item
- 1% chance: low-tier rare material
- 0% Ultra-Rare

### P.3.2 Reinforced Chest

- 40–90 copper/silver
- 1–3 mid-tier materials
- 10% chance: green item
- 2% chance: rare material
- 0.1% Ultra-Rare attempt

### P.3.3 Locked Chest

- Always better than Reinforced
- 4–8 materials
- 15% chance: rare item
- 3% chance: rare recipe
- Ultra-Rare check allowed (0.1%)

### P.3.4 Safecache

- 5–12 curated materials
- 1–3 profession items
- 8% chance: rare gear
- 5% chance: rare recipe
- Ultra-Rare: locked out by default (unless specified by region)

### P.3.5 Satchels / Packs

- Consumables only
- No gear
- No Ultra-Rare attempt
- Intended for Classic-style flavor only

### P.3.6 Profession Caches

Follow profession rarity logic:

- Herb bundles → herb rarity rolls
- Ore caches → ore rarity rolls
- Etc.
    
    May include:
    
- Low chance Ultra-Rare profession material, not Ultra-Rare gear

### P.3.7 Glimmer Cache (Ultra-Rare container)

This is the ONLY world container with true Ultra-Rare gear access.

- Contains exactly one item from its table
- Rolls Ultra-Rare at:
    - 0.005% to 0.0001% (configurable)
- Always logs into global 1-of-X counter
- Gear is slightly variant:
    - Slight color shift
    - Slight stat adjustment
    - Parent signature in tooltip

---

# P.4 ULTRA-RARE RULES FOR CONTAINERS

Ultra-Rare gear may only come from:

1. Glimmer Caches
2. Rare chance via Reinforced / Locked chest (very tiny)
3. Creature-based Ultra-Rare logic (Appendix J)

But:

- Satchels do NOT roll Ultra-Rare.
- Safecaches do NOT roll Ultra-Rare gear.
    
    Only Ultra-Rare profession materials (rarely).
    

---

# P.5 PLAYER INTERACTION RULES

## P.5.1 No Shared Loot

- Chest ownership is first-interact
- Party members may share depending on party rules
- No global open chests

## P.5.2 Lockpicking

Only classes with lockpicking:

- Can open Locked Chests
    
    Otherwise require:
    
- Lockbreaker consumable
- Profession tool

## P.5.3 Traps (Optional)

Some chests may include:

- Poison trap
- Explosive trap
- Alarm call
    
    Classic flavor only. Not excessive.
    

---

# P.6 DESIGN SAFETY CONSTRAINTS

1. No dynamic spawn scaling.
2. No chest mini-map icons.
3. No sparkles through walls.
4. No “daily chests” or modern rotating systems.
5. No scaling reward inflation.
6. No forced Ultra-Rare drops. Ever.
7. Profession caches cannot contain gear.
8. Glimmer caches obey global Ultra-Rare limits.

---