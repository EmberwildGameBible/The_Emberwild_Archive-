# CHAPTER 29 — SKINNING

---

Beast Harvesting, Hide Tiers, Rare Pelts, and Ultra-Rare Natural Drops

Skinnig is one of Emberwild’s three Classic-style gathering professions.

It is the profession tied directly to hunting, exploration, corpse economy, and the mastery of animal-based materials.

No modern retail systems.

This is a grounded, Classic WoW–accurate Skinning system adapted to Emberwild’s slower world, rare spawns, and lethal outdoor zones.

⸻

# 29.0 PURPOSE OF THIS CHAPTER

This chapter defines:

- Hide tiers
- How and when enemies can be skinned
- Skill requirements and progression
- Tool logic
- Ultra-Rare natural drop logic from beasts
- Special pelts and rare pelt tables
- Hide → Leather conversion

Skinning is as foundational to leatherworking as Mining is to metalwork.

⸻

# 29.1 IDENTITY OF SKINNING

Skinning is defined by:

1. Direct Combat Integration
    
    You must kill the creature to harvest it.
    
    Danger, travel, and corpse positioning matter.
    
2. Biome-Specific Results
    
    A tundra wolf does not give the same pelt as a swamp crawler.
    
    Hide families vary by region, creature type, and level.
    
3. Heavy Leatherworking Dependency
    
    All leatherworker crafts, tailoring-laced armors, quivers, bags, and mid-tier armor rely on skinning outputs.
    
4. Ultra-Rare Beast Drops
    
    Rare creatures and certain elite beasts can yield ultra-rare fangs, pelts, glands, and primal fragments.
    

⸻

# 29.2 REQUIRED TOOLS & SKILL PROGRESSION

### Tools

- Skinning Knife (mandatory)
- Skinning bags (optional, profession-specific)

### Skill Progression

Skinning skill increases by:

- Skinning corpses with sufficient level
- Occasional rare harvest bonuses
- Higher level beasts give slower skill increases

Maximum Skinning skill = 300.

If your skill is too low, you cannot skin the corpse.

⸻

# 29.3 WHICH CREATURES CAN BE SKINNED

Not all monsters are skinnable.

### Skinnable Families

- Wolves, foxes, dire wolves
- Bears
- Lynxes, cougars, big cats
- Boars
- Bisons, stags, elk
- Reptiles (scaled hides)
- Raptors, thunder lizards
- Serpents
- Crabs & massive crustaceans (shell plating)
- Certain insects (carapace plates)
- Turtles (heavy shells)

### Non-Skinnable

- Humanoids
- Spirits
- Constructs
- Undead
- Any creature with no physical hide or flesh structure

⸻

# 29.4 HIDE & LEATHER TIER PROGRESSION

Classic-style hide tiers adapted to Emberwild’s world zones and biomes:

---

### Tier 1 — Light Hide

Skill 1

From low-level beasts.

Used in early leatherworking, bags, kits, and simple armor.

### Tier 2 — Medium Hide

Skill ~100

Found in mid-level forests, plains, and desert regions.

### Tier 3 — Heavy Hide

Skill ~150

From higher-level beasts, tundra stalkers, large predators.

### Tier 4 — Thick Hide

Skill ~200

From high-level bears, raptors, elite plains beasts.

### Tier 5 — Rugged Hide

Skill ~250

From endgame high-level beasts, rare predators and rare elite animals.

---

### Scaled Hides (Side Branch)

Skill varies based on zone:

- Light Scales
- Medium Scales
- Heavy Scales
- Thick Scales
- Rugged Scales

Scales feed specialized leatherworking and some weapon crafts.

### Carapace Plates

From giant insects, crustaceans, armored mantids.

Used in high-end armor reinforcements.

### Shell Plating

From turtles, massive crustaceans, reef creatures.

Used in heavy armor crafting schemas.

⸻

# 29.5 SKILL REQUIREMENTS & CORPSE LEVEL LOGIC

To skin a corpse:

- Skinning skill must be ≥ required skill for creature level
- If too low → “You lack the skill to skin this beast”

Corpses decay slowly but consistently.

If another player tagged the mob and you did not contribute damage in a group-eligible way, you cannot skin it.

⸻

# 29.6 SECONDARY OUTPUTS (MEAT, GLANDS, BONES, ETC.)

Skinning yields more than hides.

### Secondary Materials

- Bones
- Fangs
- Feathers
- Tendons
- Glands (venom, frost, shock)
- Sinew
- Beast Blood
- Fat/Tallow
- Claws
- Chitin Fragments
- Shell chips

These materials feed:

- Cooking
- Alchemy
- Engineering (certain gadgets)
- Survival tools
- Ammo manufacturing (bowstrings, sinew bindings)

⸻

# 29.7 RARE PELTS (& RARE ELITE DROPS)

Rare beasts and rare elites drop rare pelts.

Rare pelts have:

- Higher crafting value
- Unique name color (not Ultra-Rare rarity)
- Stronger base stats on craft results
- Limited drop pools
- Only drop from specific beasts

Examples:

- Nightstalker Pelt
- Frostmane Alpha Hide
- Rift-Touched Carapace
- Blackclaw Bear Fur
- Ashfur Dire Hide

Each rare pelt is tied to a species and region.

⸻

# 29.8 ULTRA-RARE NATURAL DROPS (GLOBAL 1-OF-X COUNTER)

Ultra-Rare beast drops mirror the system used for Mining and Herbalism.

### Sources

- Any mid → high-tier beast
- Rare spawns
- Rare elites
- Certain high-level predators
- Specific mini-boss animals

### Drop Types

- Ultra-Rare Primal Pelt
- Ultra-Rare Fang/Tooth
- Ultra-Rare Resonant Gland
- Ultra-Rare Beast Relic

### Drop Logic

- Very low chance
- 1-of-X global drops (tracked across server)
- Helps maintain economy rarity
- Slight cosmetic/stat variation
- Used in prestige crafting (no power creep)

⸻

# 29.9 TERRAIN & ENVIRONMENTAL LOGIC

Skinning obeys biome rules.

### Cold Zones

- Thicker hides
- More fur yields
- More sinew

### Desert Zones

- Tough scaled hides
- Dried glands
- Leaner leather yield

### Swamp Zones

- Amphibious hides
- Toxic glands
- Chitin-heavy results

### Highlands

- Sturdy heavy pelts
- High-density sinew

### Volcanic Zones

- Heat-hardened scales
- Rare fire glands

⸻

# 29.10 PROFESSION PERKS

Skinning grants:

### 1. Master of Beasts (Minor Tracking Perk)

High-level skinners occasionally gain passive short-range detection of beasts.

### 2. Hide Conversion Efficiency

High skill leads to extra leather yield when converting hides.

### 3. Tanning Expertise

Certain pelts convert to leather types unavailable from vendors.

### 4. Access to Ultra-Rare Crafting

Ultra-Rare pelts unlock prestige crafts for leatherworkers and armorers.

⸻

# 29.11 SKINNING BAGS

Skinning bags allow:

- High hide stack counts
- Secondary-material storage
- No stats; pure Classic-style profession identity

⸻

# 29.12 DESIGN CONSTRAINTS

Skinning must obey:

1. No auto-loot convenience
2. No modern tracking systems
3. No skinning from tagged mobs without participation
4. Ultra-Rare drops remain extremely rare and globally limited
5. Hide tiers follow Classic’s slow profession progression

⸻

# End of CHAPTER 29 — Skinning