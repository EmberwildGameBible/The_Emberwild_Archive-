# 51 – Greatwood Ingredient Taxonomy & Rarity Table

## Purpose

Define a clean, reusable list of ingredients in Greatwood (meats, herbs, mushrooms, spices, monster parts) with clear rarity and tagging so Cooking, future Alchemy, and loot tables all reference the same source of truth.

This doc is not implementation code. It’s the canonical design reference for all ingredients that exist in the Greatwood 1–20 slice.

---

## Structure

Each ingredient entry should have:

- **ID:** short internal name (e.g. `deer_meat_raw`)
- **Display Name:** what the player sees (e.g. “Fresh Deer Meat”)
- **Category:** meat / fish / herb / mushroom / spice / monster_part / other
- **Biome Tags:** forest, river, cliff, lodge, road, cave, etc.
- **Time Tags:** day, night, anytime
- **Season Tags:** any, spring, summer, autumn, winter
- **Rarity Tier:** Common / Uncommon / Rare / Exotic
- **Primary Uses:** cooking, alchemy (future), quest, trade, trophy
- **Notes / Lore:** 1–2 lines max to nail the vibe

Example format:

- ID: `deer_meat_raw`  
  - Display Name: Fresh Deer Meat  
  - Category: meat  
  - Biome Tags: forest, clearing  
  - Time Tags: anytime  
  - Season Tags: any  
  - Rarity: Common  
  - Uses: cooking  
  - Notes: “Standard Greatwood game meat. Hunters bring this back in bulk.”

---

## Ingredient Categories

### 1. Meats

Base animal proteins from hunted creatures.

Examples:

- Deer, boar, small game (rabbit, hare, forest fowl)
- Tougher meats from larger or more dangerous beasts (great stags, corrupted boar)
- Special variants from rare or boss creatures (Elder Hollow Stag, unique beasts)

Use cases:

- Core sustenance recipes (stews, roasts, jerky)
- Mid-tier buffs to stamina, regen, max health
- Specialty dishes at higher tiers (boss / elite meat)

### 2. Fish (Future Greatwood Hook)

Even if fishing isn’t fully implemented yet, define a few fish types so we don’t have to retcon later.

Examples:

- River trout, emberfin, pale cavefish

Use cases:

- Lighter food, regen, niche buffs
- Future alchemy components (oils, toxins)

### 3. Herbs

Plants used for flavor, medicine, and magic.

Examples:

- Bitterpine Needle
- Emberleaf
- Hollowroot Sprig
- Mossy Tongue
- Whisperfern

Use cases:

- Cooking buffs (resistance, perception, focus)
- Future alchemy (tonics, balms)
- Quest items / rituals

### 4. Mushrooms

Risky but powerful ingredients.

Examples:

- Glowcap
- Hollowcap
- Ashcurl
- Red Vein Morel

Use cases:

- Stronger buffs with downsides
- Night vision, tracking boost, limited-time madness effects (for story beats)
- Alchemical reagents

### 5. Spices and Flavorings

Stuff that makes food feel real and gives light secondary effects.

Examples:

- Lodge Salt Mix
- Ember Pepper
- Smoked Bark Shavings
- River Herb Bundle

Use cases:

- Small extra buffs when added to recipes
- Zone-specific flavor (Greatwood cuisine identity)

### 6. Monster Parts

Bits from beasts used in advanced recipes and crafts.

Examples:

- Wolf Fang
- Stag Antler Sliver
- Corrupted Heart Tissue
- Hollowroot Resin

Use cases:

- High-end cooking (stews with dangerous side effects)
- Alchemy (tonics, poisons)
- Trophy + crafting components for professions

---

## Rarity Tiers

- **Common:** things you should see frequently while playing normally  
- **Uncommon:** require light intention (specific biome, time, or enemy type)  
- **Rare:** need a condition (weather, event, elite enemy, specific location)  
- **Exotic:** tied to bosses, special events, or very tight conditions

---

## Greatwood Ingredient List – Draft Pass

Below is a **draft list** you’ll fill out and tune. For now, just stubs:

### Meats (Common / Uncommon)

- `deer_meat_raw` – Fresh Deer Meat – Common  
- `boar_meat_raw` – Wild Boar Meat – Common  
- `forest_fowl_raw` – Forest Fowl – Common  
- `stringy_game_meat` – Stringy Game Meat – Common (less effective)

### Meats (Rare / Exotic)

- `elder_stag_meat` – Elder Stag Meat – Rare  
- `corrupted_boar_meat` – Corrupted Boar Meat – Rare  
- `ashen_beast_cut` – Ash-Touched Beast Meat – Exotic

### Herbs

- `bitterpine_needle` – Bitterpine Needle – Common  
- `emberleaf` – Emberleaf – Uncommon  
- `hollowroot_sprig` – Hollowroot Sprig – Uncommon (cave / root cluster)  
- `whisperfern` – Whisperfern – Rare (night, misty areas)

### Mushrooms

- `glowcap` – Glowcap – Uncommon (dark, damp areas)  
- `hollowcap` – Hollowcap – Rare (Hollowroot-adjacent)  
- `ashcurl` – Ashcurl Mushroom – Rare (burnt patches, near wildfire scars)  
- `red_vein_morel` – Red Vein Morel – Exotic (very specific conditions)

### Spices

- `lodge_salt_mix` – Lodge Salt Mix – Common (vendor / basic drop)  
- `ember_pepper` – Ember Pepper – Uncommon (traders, rare herb patches)  
- `smoked_bark_shavings` – Smoked Bark Shavings – Uncommon (woodworker byproduct)

### Monster Parts

- `wolf_fang` – Wolf Fang – Common (wolves)  
- `stag_antler_sliver` – Stag Antler Sliver – Uncommon (elites)  
- `corrupted_heart_tissue` – Corrupted Heart Tissue – Rare (corrupted beasts)  
- `hollowroot_resin` – Hollowroot Resin – Rare (dungeon / event reward)

---

## Next Steps

- Expand each category into a full list (40–80 ingredients total).
- For each ingredient, write a full entry with all tags filled out.
- Sync this list with:
  - Early Cooking 1–10 recipes  
  - Advanced Cooking 10–20 recipes  
  - Future Alchemy stub doc  
  - Greatwood dungeons / bosses (for monster parts)
