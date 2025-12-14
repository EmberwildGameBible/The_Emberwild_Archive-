Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B115 – Greatwood Materials, Ingredients & Loot Profiles (1–20)

## Purpose

Expand and standardize **ingredients, materials, and basic loot** for Greatwood 1–20:

- What drops from **creatures, plants, rocks, wood, camps, caches**.
- How those drops feed into:
  - **Cooking & Ember Pot** (85)
  - **Professions & crafting** (52–57, 60)
  - **Alchemy & salves** (58)
  - **Trophies & decor** (86, B100)
- How drops are themed by:
  - **Creature families** (B114)
  - **Regions & pockets** (63, B113)
  - **Events & secrets** (62, 90)

Think of this as the **“Greatwood loot grammar”**: the consistent language of what you actually pick up and why it matters.

---

## 1. Design Goals

1. **Few ingredients, many uses**

   - Avoid: 200 nearly-identical herbs.
   - Aim: 30–50 well-defined items with:
     - Multiple uses (cooking, alchemy, crafting, quests).

2. **The forest teaches recipes**

   - Where you hunt / gather:
     - Tells you what recipes, salves, and crafts become possible.
   - Ash-Edge vs Low-Eaves vs Hollowroot border drop **different flavors** of materials.

3. **Everything says something**

   - Each item should imply:
     - What creature/area it came from.
     - What it’s probably for:
       - Tough hides → armor.
       - Aromatic herbs → food/tea.
       - Black-sap goo → “this is probably bad but powerful”.

4. **Tiered but grounded**

   - **Common → Fine → Rare → Signature** tiers.
   - Even rare stuff feels like:
     - A natural extension of the world, not MMO glitter.

---

## 2. Material Categories & Tags

Every ingredient/material has **tags** that define where it plugs in:

### 2.1 Core Categories

1. **Meat & Edible Parts**  
   - Tags: `meat`, `cooking`, `ember_pot`, `ration`, `festival`
2. **Hides, Pelts & Fibers**  
   - Tags: `hide`, `leather`, `armor`, `tailor`
3. **Bone, Horn, Tooth**  
   - Tags: `bone`, `trophy`, `craft`, `fletching`
4. **Organs & Glands**  
   - Tags: `organ`, `alchemy`, `lab`, `risk`
5. **Herbs & Plants**  
   - Tags: `herb`, `seasoning`, `healing`, `poison`, `tea`
6. **Fungi & Spores**  
   - Tags: `fungus`, `alchemy`, `corruption_adjacent`
7. **Wood & Bark**  
   - Tags: `wood`, `construction`, `attunement`, `forester`
8. **Stone, Clay & Ores**  
   - Tags: `stone`, `clay`, `ore`, `pottery`, `inlay`
9. **Ash & Scar Materials**  
   - Tags: `ash`, `burn`, `ember_aligned`, `edge`
10. **Human-made Scraps**  
    - Tags: `scrap`, `metalwork`, `poacher`, `contraband`
11. **Tokens & Trophies**  
    - Tags: `trophy`, `hall`, `decor`, `title_hook`

Each item can have 2–5 tags, controlling:

- **Who uses it** (professions)
- **Where it shows up** (Hunts, caches)
- **Which recipes it’s in**

---

## 3. Tiering & Rarity

### 3.1 Rarity Tiers (Functional)

1. **Common**
   - You see these regularly:
     - Basic meats, pelts, herbs, simple wood.
2. **Fine**
   - Good quality / special conditions:
     - “Fine Greyback Pelt”, “Clear River Herb”.
3. **Rare**
   - Limited drops:
     - Alpha beasts, Deed marks, specific pockets/events.
4. **Signature**
   - One-offs or very limited:
     - White Stag blessing item, unique Deed trophies.

### 3.2 Tier Effects

- **Common**:
  - Everyday recipes, low-end crafts.
- **Fine**:
  - Better Ember Pot dishes, mid-tier gear.
- **Rare**:
  - High-end potions, special food, unique crafts.
- **Signature**:
  - Trophies, titles, late-game hooks.

---

## 4. Creature-Derived Materials (By Family)

### 4.1 Greyback Wolves (`wolf_greyback`)

**Core Drops**

1. **Greyback Meat**
   - Tags: `meat`, `cooking`, `ember_pot`
   - Tier: Common / Fine
   - Uses:
     - Hearty stews, jerky, travel rations.
   - Notes:
     - Fine variant from:
       - Healthy, non-corrupted adults.

2. **Greyback Pelt / Fine Greyback Pelt**
   - Tags: `hide`, `leather`, `armor`, `decor`
   - Tier: Common / Fine
   - Uses:
     - Light armor, cloaks, room rugs.

3. **Greyback Fang**
   - Tags: `bone`, `trophy`, `craft`
   - Tier: Common
   - Uses:
     - Charms, necklace teeth, knife inlay.

**Rare / Special**

4. **Alpha Greyback Fang**
   - Tags: `trophy`, `hall`, `title_hook`
   - Tier: Rare
   - Hooks:
     - Trophy Hall object.
     - Title like “Greyback-Breaker”.

5. **Night-Howl Bone Shard**
   - Tags: `bone`, `alchemy`, `fear`
   - Tier: Rare
   - Uses:
     - Alchemy for fear-resistance or nightmare-tonics.

---

### 4.2 Greatwood Boars (`boar_greatwood`)

**Core Drops**

1. **Boar Meat**
   - Tags: `meat`, `cooking`, `ember_pot`, `festival`
   - Tier: Common / Fine
   - Uses:
     - Ember Pot “Boar Hunter’s Feast”.
     - Festival Ember Stew meat component (94).

2. **Boar Hide**
   - Tags: `hide`, `leather`, `armor`
   - Tier: Common
   - Uses:
     - Heavy leather boots, belts, bracers.

3. **Boar Tusks**
   - Tags: `bone`, `trophy`, `craft`
   - Tier: Common / Fine
   - Uses:
     - Lodge decor (wall tusks).
     - Knife handles, ceremonial tools.

4. **Boar Bristles**
   - Tags: `fiber`, `craft`, `brush`
   - Tier: Common
   - Uses:
     - Brushes for carpentry finishing.
     - Cooking basting brushes.

**Rare / Deed-Specific**

5. **The Boar That Wouldn’t Die’s Tusks**
   - Tags: `trophy`, `hall`, `signature`
   - Tier: Signature
   - Hooks:
     - D-GW-001 reward; Hall display.
     - Unique Ember Pot recipe unlock if offered at the Pot.

---

### 4.3 Deer & Stags (`deer_greatwood`, `stag_white`)

**Core Drops**

1. **Deer Meat**
   - Tags: `meat`, `cooking`, `ember_pot`
   - Tier: Common / Fine
   - Uses:
     - Lighter stews, smoked meats.

2. **Deer Hide**
   - Tags: `hide`, `leather`, `tailor`
   - Tier: Common
   - Uses:
     - Light cloaks, gloves, lining for armor.

3. **Antlers / Cut Antler Segments**
   - Tags: `bone`, `trophy`, `craft`
   - Tier: Common / Fine
   - Uses:
     - Chair accents, horn-style ornaments.
     - Fancier Lodge decor.

**White Stag**

4. **White Stag Relic (Non-Lethal Version)**
   - Tags: `signature`, `blessing`, `trophy`
   - Tier: Signature
   - If you **don’t** kill it:
     - A shed antler tip or tuft of luminous hair.
     - Grants a long-tail buff / narrative blessing.

5. **White Stag Horn (Lethal Version)**
   - Tags: `signature`, `trophy`, `controversial`
   - Tier: Signature
   - Hooks:
     - Trophy Hall entry with divisive NPC reactions.
     - Unique but morally heavy item.

---

### 4.4 Spiders (`spider_greatwood`)

**Core Drops**

1. **Spider Silk**
   - Tags: `fiber`, `tailor`, `craft`, `alchemy`
   - Tier: Common / Fine
   - Uses:
     - High-tensile thread, bowstrings, trap components.

2. **Venom Sac**
   - Tags: `organ`, `alchemy`, `poison`
   - Tier: Common / Rare (larger spiders)
   - Uses:
     - Poison coating for weapons.
     - Antidotes / venom research.

3. **Chitin Plates (Large Spider)**
   - Tags: `armor`, `craft`, `inlay`
   - Tier: Fine
   - Uses:
     - Reinforcement plates in armor.
     - Decorative inlay on shields, helms.

**Rare**

4. **Matriarch Silk Cluster**
   - Tags: `fiber`, `trophy`, `signature`
   - Tier: Rare
   - Hooks:
     - Special cloak / garment.
     - Unique hammock / bedding decor in quarters.

---

### 4.5 Ash-Eaters & Burn-Scar Beasts (`ash_eater`)

**Core Drops**

1. **Ash-Hardened Plate**
   - Tags: `armor`, `ash`, `burn`
   - Tier: Fine
   - Uses:
     - Armor pieces with ash-resistance.
     - Shield edging.

2. **Ash-Eater Gland**
   - Tags: `organ`, `alchemy`, `ember_aligned`
   - Tier: Rare
   - Uses:
     - Ash-steeped potions.
     - Ash-Edge Vigil stew variants.

3. **Ash-Dusted Meat (questionable)**
   - Tags: `meat`, `ash`, `risk`
   - Tier: Rare
   - Uses:
     - Edible with heavy preparation:
       - Might be an Ember Pot experiment.
       - Story hook: “Should we be eating this?”

**Alpha / Deed-specific**

4. **Alpha Ash-Burrow Core**
   - Tags: `signature`, `lab`, `trophy`
   - Tier: Signature
   - Hooks:
     - D-GW-003 trophy.
     - Warding/Lab experiments.
     - Lore about deeper burn-scar.

---

### 4.6 Hollowroot Brood – Early (`hollowroot_brood`)

**Core Drops**

1. **Mycelial Spore Sac**
   - Tags: `fungus`, `alchemy`, `corruption_adjacent`
   - Tier: Fine / Rare
   - Uses:
     - Dangerous reagents.
     - Maybe anti-corruption brews if handled right.

2. **Fungal Chitin / Husk Fragments**
   - Tags: `armor`, `lab`, `weird`
   - Tier: Common / Fine
   - Uses:
     - Light armor pieces.
     - Experimental attuned gear in Labs.

**Rare**

3. **Hollowroot Seed Fragment**
   - Tags: `signature`, `corruption`, `lab`
   - Tier: Rare
   - Hooks:
     - D-GW-004 / Hollowroot arc.
     - Warding research.

---

### 4.7 Birds of Prey & Flocks (`raptor_greatwood`, `flock_small`)

**Core Drops**

1. **Raptor Meat**
   - Tags: `meat`, `cooking`
   - Tier: Common
   - Uses:
     - Minor food items, rarely main dishes.

2. **Raptor Feathers**
   - Tags: `feather`, `fletching`, `decor`
   - Tier: Common / Fine
   - Uses:
     - Arrow fletching.
     - Decorative feathers in Lodge / clothing.

3. **Raptor Talons**
   - Tags: `bone`, `craft`, `trophy`
   - Tier: Common
   - Uses:
     - Jewelry.
     - Tiny trophies / keychains.

**Hooked to Hunts**

- CH-GW-003 “Sentries in the Boughs”:
  - Fine feathers used for:
    - Better arrows.
    - Fancy hood / mantle.

---

### 4.8 Human / Humanoid Threats (`human_poacher`, `human_rogue`, etc.)

**Core Drops**

1. **Scrap Metal**
   - Tags: `scrap`, `metalwork`, `repair`
   - Tier: Common
   - Uses:
     - Tool repairs.
     - Simple weapons.

2. **Poacher Snares / Trap Parts**
   - Tags: `trap`, `craft`, `contraband`
   - Tier: Common / Fine
   - Uses:
     - Reused traps (if allowed).
     - Smelted down.

3. **Contraband Pelts**
   - Tags: `hide`, `contraband`, `rep_hook`
   - Tier: Fine / Rare
   - Hooks:
     - Turn in to Lodge:
       - Rep with Foresters / Kitchen.
     - Sell in grey markets (in later content).

4. **Letters, Maps, Notes**
   - Tags: `lore`, `quest_item`, `scribe`
   - Uses:
     - Scribe rep.
     - Deed progression.

---

## 5. Plants, Herbs, and Fungi (By Region Flavor)

### 5.1 Low-Eaves & Turned Fields

1. **Fieldroot**
   - Tags: `herb`, `cooking`, `stamina`
   - Tier: Common
   - Uses:
     - Basic stews and mash.
     - Early-game Ember Pot staples.

2. **Sweetgrain Heads**
   - Tags: `grain`, `cooking`, `bread`, `festival`
   - Tier: Common
   - Uses:
     - Bread, dumplings.
     - Festival Ember Stew thickening.

3. **Edge-Mint**
   - Tags: `herb`, `healing`, `tea`
   - Tier: Fine
   - Uses:
     - Teas for minor wound comfort.
     - Freshening food (helps with gamey meats).

4. **Sun-Thistle**
   - Tags: `herb`, `cooking`, `buff`
   - Tier: Fine
   - Uses:
     - Light buff to stamina regen.
     - Colorful garnish in festival dishes.

### 5.2 Mid-Greatwood Ridges & Clearings

5. **Ridge Sage**
   - Tags: `herb`, `clarity`, `fieldcraft`
   - Tier: Fine / Rare
   - Uses:
     - Tracking-awareness tea.
     - Mildly sharpen fieldcraft (67) for a short time.

6. **Stonecap Mushrooms**
   - Tags: `fungus`, `cooking`, `hearty`
   - Tier: Common
   - Uses:
     - Stews, skewers.
     - Slight HP regen emphasis.

7. **Bloodfern**
   - Tags: `herb`, `healing`, `bandage`
   - Tier: Fine
   - Uses:
     - Mixed into bandages for better wound recovery.

### 5.3 Riverbend & Wet Pockets

8. **Riverweed**
   - Tags: `herb`, `cooling`, `burn_relief`
   - Tier: Common / Fine
   - Uses:
     - Burn-soothing salves.
     - Cooling stews.

9. **Mirecaps**
   - Tags: `fungus`, `alchemy`, `risk`
   - Tier: Fine
   - Uses:
     - Sleep or sedative brews (tiny).
     - Potential poison if misprepared.

10. **Clearwater Reed**
    - Tags: `fiber`, `craft`
    - Tier: Common
    - Uses:
      - Basketry, small containers.
      - Some Ember Pot storage/straining tools.

### 5.4 Ash-Edge & Smoking Hollows

11. **Ash-Reed**
    - Tags: `herb`, `ash`, `breathing`
    - Tier: Fine / Rare
    - Uses:
      - Smoke-filter tea.
      - Tonics to reduce ash-lung penalties.

12. **Cinderbloom**
    - Tags: `herb`, `ember_aligned`, `burn`
    - Tier: Rare
    - Uses:
      - Fire-resistance dishes or potions.
      - Rare Ember Pot festival stew ingredient.

13. **Charshroom**
    - Tags: `fungus`, `ash`, `alchemy`
    - Tier: Rare
    - Uses:
      - Potent ash-based reagents.
      - Dangerous if cooked wrong.

### 5.5 Hollowroot Border & Whispershade

14. **Whispersap Vine**
    - Tags: `herb`, `corruption_adjacent`, `hallucination`
    - Tier: Rare
    - Uses:
      - Whisper-touched potions (story).
      - Lab specimens.

15. **Veinshroom**
    - Tags: `fungus`, `corruption_adjacent`, `risk`
    - Tier: Rare
    - Uses:
      - Corruption-alchemy.
      - Potential Whisper-scar interactions.

---

## 6. Wood, Stone, Clay, and “Stuff”

### 6.1 Wood Types

1. **Greatwood Timber**
   - Tags: `wood`, `construction`
   - Tier: Common
   - Uses:
     - General building, simple hafts.

2. **Straightgrain Yew**
   - Tags: `wood`, `bowcraft`, `fine`
   - Tier: Fine
   - Uses:
     - Bows, staves.

3. **Ash-Line Oak**
   - Tags: `wood`, `ash`, `attunement`
   - Tier: Rare
   - Uses:
     - Attuned beams (60).
     - Wards at Ash-Edge Stand.

### 6.2 Stone & Clay

4. **Riverstone**
   - Tags: `stone`, `toolhead`, `decor`
   - Tier: Common
   - Uses:
     - Simple tools, grindstones.
     - Fireplace rocks.

5. **Greatwood Clay**
   - Tags: `clay`, `pottery`, `ember_pot`
   - Tier: Common / Fine
   - Uses:
     - Bowls, pots, Ember Pot linings.

6. **Overfull Clay**
   - Tags: `clay`, `weird`, `event_item`
   - Tier: Rare
   - Hooks:
     - Overfull Clay incident & quests.
     - Lab experiments.

---

## 7. Coin, Trinkets, and “Junk” Loot

### 7.1 Coin & Currency

- **Lodge Marks**
  - Script/credits used inside the Lodge.
- **Old Coin**
  - Found in caches / ruins.
  - Turn-in for coin or lore rep with Scribes.

### 7.2 Trinkets

- **Hunter’s Tokens**
  - Bone/wood chips with carved notches.
  - Used to mark kills, can be pinned to Fang & Feather Wall.
- **Broken Charms**
  - Half-effective trinkets that become materials for attuned items.

### 7.3 Junk with Flavor

- **Bent Nails, Old Hinges, Cracked Mugs**
  - Tags: `scrap`, `flavor`
  - Low value but world-building.
- Some can be used in:
  - Festival Emberwake “Junk Trading” mini-games.

---

## 8. Data Model & Integration

### 8.1 Item Data

Each item:

- `item_id`
- `name`
- `rarity`
- `tags[]`
- `source[]` (creatures, regions, events)
- `uses[]` (lists of recipe/crafting IDs)
- `flavor_text`

Example:

```yaml
item_id: "meat_boar_greatwood"
name: "Greatwood Boar Meat"
rarity: "common"
tags: ["meat", "cooking", "ember_pot", "festival"]
source: ["boar_greatwood"]
uses:
  - "recipe_ember_pot_boar_hunter_stew"
  - "recipe_travel_jerky_hearty"
flavor_text: "Dense, rich meat. If you cook it wrong, it sits like a stone; if you cook it right, it carries you through three hunts."
