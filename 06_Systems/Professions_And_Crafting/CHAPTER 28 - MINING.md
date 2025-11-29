# CHAPTER 28 — MINING

---

Ore Extraction, Smelting, Ultra-Rare Finds, and Environmental Rules

Mining gathers ore, stone, and metallic reagents from veins scattered across Emberwild.

It is a combat-adjacent, physically demanding profession with Classic-style danger, slow progression, and strong ties to Blacksmithing, Engineering, Armorsmithing, and Weaponsmithing.

This chapter defines:

- Ore tiers
- Node placement and danger
- Tools & smelting
- Profession perks
- Ultra-Rare mining drops
- Material distribution logic
- Environmental depth (Herbalism parity)

If any later system conflicts with this chapter, this chapter overrides it.

⸻

# 28.1 ROLE & IDENTITY OF MINING

Mining is a primary gathering profession with the following identity pillars:

1. Heavy, Physical, and Dangerous
    
    Veins are often in caves, cliffs, ravines, mines, ruins, or guarded by elites.
    
2. Ore → Bars Conversion (Smelting)
    
    Raw ore is converted into metal bars at a forge or smelter.
    
    Smelting provides Mining skill-ups in early-mid tiers.
    
3. Foundational Crafting Input
    
    Ore feeds:
    
    - Blacksmithing
    - Armorsmithing
    - Weaponsmithing
    - Engineering
    - Some late-game survival tools
    - Certain ultra-rare recipes
4. Ultra-Rare Chance Source
    
    Mining veins have a very small chance to yield Ultra-Rare fragments, used for cosmetic tools, vanity crafts, and late-game upgrades.
    

⸻

# 28.2 TOOLS, REQUIREMENTS & PRACTICE

### Required Tools

Mining requires:

- Mining Pick (mandatory)
- Mining Bags (optional, profession-specific bag type)
- Access to a Forge or Smelter for processing ore

Mining Picks have no attack power and cannot be used as weapons.

### Node Interaction

To mine a node, a player must:

- Have Mining skill equal to or higher than node requirement
- Possess a Mining Pick
- Clear nearby enemies (many node areas are intentionally dangerous)

### Skill Progression

Mining skill increases:

- By gathering ore
- By smelting bars (limited window—low/mid tiers only)
- Slowly and inconsistently at high tiers

Maximum Mining skill = 300.

⸻

# 28.3 ORE TIERS & NODE REQUIREMENTS

Classic-style ore progression, adapted to Emberwild:

### Tier 1 — Copper

- Skill 1
- Very common in early zones
- Smelts into Copper Bars
- Occasionally drops Rough Stone

### Tier 2 — Tin

- Skill 65
- Mid-level foothills and rocky valleys
- Smelts into Tin Bars
- Drops Coarse Stone

### Tier 3 — Bronze (Smelt Only)

- Not found in the world
- Copper + Tin → Bronze Bar
- Low skill-ups; foundational alloy

### Tier 4 — Iron

- Skill 125
- Mines, caves, ruins
- Smelts into Iron Bars
- Drops Heavy Stone

### Tier 5 — Steel (Smelt Only)

- Iron + Coal-like reagent → Steel Bar
- Used for weapons and late-mid armor

### Tier 6 — Mithril

- Skill 175
- Higher-level zones, mountains, deep caves
- Smelts into Mithril Bars
- Drops Solid Stone

### Tier 7 — Truesilver

- Skill 230
- Rare clusters among Mithril nodes
- Smelts into Truesilver Bars
- Can drop rare gems

### Tier 8 — Thorium

- Skill 245 (Small) / 275 (Rich)
- Endgame mountains, volcanic biomes, dangerous ruins
- Smelts into Thorium Bars
- Drops Dense Stone, rare gems, rare reagents

### Ultra-Rare Mining Finds

Every ore tier (except Bronze/Steel which are smelted) has a very low chance to yield:

- Ultra-Rare Gem Fragment
- Ultra-Rare Metallic Relic
- Ultra-Rare Material (cosmetic or upgrade input)

These drops are 1-of-X tracked globally (see Section 28.8).

⸻

# 28.4 NODE PLACEMENT & DANGER LOGIC

Mining nodes follow strict Classic rules:

### 28.4.1 Node Placement Themes

Nodes are placed:

- Inside caves (high density)
- Along cliff walls
- Near elite dens
- Inside mines or dwarven ruins
- In dangerous ravines
- In volcanic, tundra, desert, or corrupted zones

Mining is intentional risk-reward.

### 28.4.2 Add Aggro Design

- Most ore nodes have enemies guarding them
- Some are inside tight corridors that force small pulls
- Elite ore zones require group effort

### 28.4.3 Zone-Based Tier Mapping

- Lower zones → Copper
- Mid zones → Tin / Iron
- High zones → Mithril → Truesilver
- Endgame zones → Thorium

Exact regional maps are defined in the World Atlas chapter.

⸻

# 28.5 SMELTING & FORGE USAGE

### Smelting Rules

- Requires a Forge
- Converts Ore → Bars
- Some recipes require additional reagents (Coal-like items, Flux, special fuels)
- Smelting gives skill-ups only until each bar type becomes trivial

### Why smelting remains important

- Bars stack cleaner than ore
- Bars are used in all mid–high crafts
- Smelting is essential to Blacksmithing and Engineering progression
- Ultra-Rare recipes occasionally require smelted components

⸻

# 28.6 SECONDARY OUTPUTS (STONE, GEMS, MATERIALS)

Mining also produces:

### Stone

Used in:

- Sharpening stones
- Weightstones
- Engineering explosives
- Defensive consumables
- Some high-end crafting tools

### Gems (Classic-style)

Rare drops inside:

- Iron
- Mithril
- Truesilver
- Thorium

Includes:

- Small colored gems
- Larger quality gems
- Ultra-Rare fragments (see 28.8)

### Special Materials

Certain nodes may yield:

- Fire-touched ore
- Frost-veined ore
- Spirit-infused rocks (rare)
- Volcanic core fragments (very rare, tied to specific zones)

⸻

# 28.7 MINING PROFESSION PERKS

Mining provides subtle profession bonuses (Classic-inspired, non-powercreep):

1. Increased Toughness
    
    Mining high-level ore grants a small passive Stamina bonus, scaling lightly with Mining skill.
    
2. Stoneworking Knowledge
    
    Smelting efficiency increases slightly at higher skill, reducing waste.
    
3. Occasional Ore Awareness
    
    At high Mining skill, the player receives short-range ore detection (not a full minimap node finder).
    
4. Access to Ultra-Rare Crafting Lines
    
    Ultra-Rare fragments enable:
    
    - Cosmetic pickaxes
    - Decorative lanterns
    - Special smelted bars
    - Rare recipes used by Armorsmiths/Weaponsmiths

⸻

# 28.8 ULTRA-RARE MINING DROPS (GLOBAL 1-of-X)

Ultra-Rare items follow strict rules:

### 1. Drop Sources

Ultra-Rares can drop from:

- Any ore vein above Copper
- Elite ore clusters
- Named mining-rich caves
- Specific mini-boss miners or constructs
- Very rare thorium clusters in endgame

### 2. Global Counter

Each Ultra-Rare has:

- A global drop counter
- Limited “1-of-X” cap per item type

Examples:

- 1 in 200,000 per node
- Or a global cap like 12 per server per month

Exact tuning appears in the Loot Math chapter.

### 3. Item Identity

Ultra-Rare mined items:

- Have a unique name color
- Slightly altered prefix/suffix
- May allow one minor modifiable property (cosmetic or tiny stat variance—never power creep)

### 4. Ultra-Rare Categories

- Ultra-Rare Gem Fragment
- Ultra-Rare Ore Chunk
- Ultra-Rare Metal Relic
- Ultra-Rare Crafting Token

All used across endgame cosmetic recipes, prestige crafts, and special crafting lines.

⸻

# 28.9 MINING BAG TYPES

Mining bags allow:

- Large ore stacks
- Large stone stacks
- Rare gem storage

No equipment bonuses.

Just Classic-style convenience and identity.

⸻

# 28.10 DESIGN CONSTRAINTS

Mining must follow:

1. No teleport-to-node convenience
2. No modern map node tracking
3. No Nuggets/Fragments spam systems
4. No profession daily resets
5. Ultra-Rare system stays tiny and global
6. Ore distribution follows Classic’s risk-first placement

⸻

# End of Chapter 28 — Mining