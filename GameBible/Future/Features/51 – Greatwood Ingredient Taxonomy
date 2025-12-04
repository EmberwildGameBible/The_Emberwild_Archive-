# 51 – Greatwood Ingredient Taxonomy & Rarity Table (Greatwood 1–20)

## Purpose

Define a **single canonical list of ingredients** for the Greatwood 1–20 slice so that:

- Cooking (docs 52 / 53) pulls from the same pool as hunts, dungeons, and events
- Alchemy (58) and future brews use the *same* plants, parts, and liquids
- Loot tables, quest rewards, and profession content don’t invent new names ad-hoc
- Future regions can extend this taxonomy instead of retconning it

This doc is **design reference**, not implementation code.  
Implementation will live in data tables / Lua modules that mirror this spec.

---

## Design Goals

1. **Tight but deep**  
   - 60–100 ingredients for Greatwood, not 500 meaningless ones  
   - Each entry has identity, biome, and profession hooks

2. **Cross-system reuse**  
   - Every ingredient should be referenced in at least **two** of:
     - Cooking, alchemy, professions, hunts, trophies, quests, decor

3. **Region identity**  
   - “Tastes like Greatwood”: game meat, heavy stews, smoked salts, wet forest herbs, fungal weirdness, sap

4. **Expandable forward**  
   - Easy to bolt on Ashen Ridge / later regions without renaming anything here  
   - New regions add *new* prefixes, not reskins of these IDs

5. **Implementable**  
   - IDs are stable, snake_case, and clean  
   - Clear rarity / drop expectations so designers don’t guess

---

## Ingredient Schema

Each ingredient should be fully defined in data using the following fields:

- **id** – canonical internal ID  
  - `snake_case`, region-scoped where needed (e.g. `gw_deer_meat_raw`)
- **display_name** – player-facing name  
  - Brief, flavorful, not jokey
- **category** – primary group
  - `meat`, `fish`, `herb`, `mushroom`, `root`, `fruit`, `nut_seed`, `monster_part`, `liquid`, `pantry`, `other`
- **subtype** – tighter classification for sorting & recipes
  - Examples: `stag`, `boar`, `poultry`, `river`, `cave`, `bitter_herb`, `aromatic`, `hearty_root`, `sweet_fruit`, `corrupted`, `boss_part`
- **rarity** – how often this shows up in normal play
  - `common`, `uncommon`, `rare`, `exotic`, `corrupted`, `quest`
- **primary_uses** – tags for main systems
  - Examples: `cook_core`, `cook_luxury`, `cook_travel`, `alchemy_core`, `alchemy_corruption`, `profession_woodworker`, `profession_hunter`, `lodge_decor`, `quest_hook`
- **stat_profile** – what it tends to do when cooked / processed
  - Shorthand tags: `hp_flat`, `hp_max`, `stamina_regen`, `stamina_max`, `res_fire`, `res_cold`, `res_corruption`, `move_speed`, `skill_boost_cooking`, etc.
- **biome_tags** – where it lives
  - Examples: `greatwood_core`, `riverbank`, `hollowroot`, `burn_scar`, `wardstone_hill`, `swamp_pocket`, `lodge_only`
- **source** – where the player actually gets it
  - `hunt_deer`, `hunt_boar`, `world_drop`, `gather_node_herb`, `gather_node_mushroom`, `fishing_node_river`, `boss_black_sap_devourer`, `vendor_lodge`, `quest_chain`, etc.
- **notes** – 1–2 lines of identity flavor / extra rules

Implementation note:  
In code, this becomes a Lua table keyed by `id` with the above fields.

---

## Rarity Bands & Expectations (Greatwood 1–20)

These are **design targets**, not hard drop rules.  
Exact percentages are enforced in loot tables / encounter specs.

- **Common**
  - Bread-and-butter staples
  - Roughly 60–70% of ingredient drops from animals / nodes
  - Should feel safe and predictable in recipes
- **Uncommon**
  - More interesting flavor or niche stat hooks
  - Roughly 20–25% of ingredient drops
  - Often tied to specific biomes or time of day
- **Rare**
  - Distinct identity, often needed for “signature” dishes / brews
  - Roughly 7–10% of ingredient drops
  - Frequently tied to elites, mini-bosses, dungeons, or advanced nodes
- **Exotic**
  - Region-defining, low-supply ingredients
  - Roughly 2–3% of ingredient drops in relevant content
  - Often from Signature Hunts, world events, or deep pockets
- **Corrupted**
  - Off-axis ingredients: dangerous but powerful
  - The raw form may apply debuffs / corruption unless cleansed
  - Used for high-risk, high-reward alchemy / cooking
- **Quest**
  - Generally **not** in standard loot tables
  - Spawned via quests / event logic; may share art with normal items but use different IDs

---

## Category Overview (Greatwood 1–20)

High-level buckets and what they’re for:

- **Meats**
  - Core HP / stamina foods, heavy lodge dishes, travel rations
- **Fish**
  - Lighter regen, precision buffs, future hooks into riverside content
- **Herbs**
  - Flavor, minor buffs, alchemy bases, lodge identity
- **Mushrooms**
  - Risk / reward, resistances, weirder stat profiles
- **Roots & Tubers**
  - Hearty stews, longer-duration buffs, winter identity
- **Fruits, Berries & Nuts**
  - Shorter buffs, sprint food, desserts, and sauces
- **Monster Parts & Oddities**
  - Hunts, trophies, high-end cooking and alchemy
- **Liquids, Oils & Extracts**
  - Stocks, reductions, bases for potions and tonics
- **Lodge Pantry Basics**
  - Flour, salt mixes, fats – almost always sourced from lodge vendors

---

## Greatwood Ingredient List – v1.0

> Note: IDs assume a future data pass may add a region prefix (`gw_`).  
> The names here are canonical for Greatwood 1–20.

---

### 1. Meats – Core Game (Common / Uncommon)

- `deer_meat_raw` – Fresh Deer Meat – Common (meat; cook_core; source: hunt_deer; default stew/roast base)  
- `boar_meat_raw` – Wild Boar Meat – Common (meat; cook_core; source: hunt_boar; fattier, better for long-burn stews)  
- `forest_fowl_raw` – Forest Fowl – Common (meat; cook_core; source: hunt_fowl; lighter meat, good for regen soups)  
- `stringy_game_meat` – Stringy Game Meat – Common (meat; cook_travel; low-quality fallback, weak buffs, common on small critters)  
- `river_hare_meat` – River Hare Cut – Uncommon (meat; cook_core; source: hunt_hare_near_river; faster-acting stamina buffs)  
- `young_stag_cut` – Young Stag Cut – Uncommon (meat; cook_luxury; source: non-elder stags; higher max HP dishes)  
- `blackfeather_grouse_meat` – Blackfeather Grouse Meat – Uncommon (meat; cook_luxury; richer lodge dishes, small crit chance buffs later)  
- `lean_wolf_flank` – Lean Wolf Flank – Uncommon (meat; cook_travel; source: common wolves; stamina/crit profile, travel jerky)  
- `river_fox_ribs` – River Fox Ribs – Uncommon (meat; cook_core; rare from foxes; short burst sprint / move speed buffs)  
- `stag_bone_shank` – Stag Bone Shank – Uncommon (meat; cook_core; used in bone stews and broths, longer durations)  
- `lodge_sausage_links_raw` – Lodge Sausage Links – Uncommon (meat; cook_travel; crafted lodge ingredient, uses boar fat + spice)  
- `smoked_game_trimmings` – Smoked Game Trimmings – Uncommon (meat; cook_travel; by-product of lodge smoking, used in packed rations)  

---

### 2. Meats – Rare / Exotic / Hunt-Tied

- `elder_stag_meat` – Elder Stag Meat – Rare (meat; cook_luxury; source: elder_stag_hunts; strong HP/max HP buffs)  
- `corrupted_boar_meat` – Corrupted Boar Meat – Rare (meat; corrupted; source: corrupted_boars; powerful but risky buffs, requires cleansing)  
- `ashen_beast_cut` – Ash-Touched Beast Meat – Exotic (meat; cook_luxury, res_fire; source: burn_scar_beasts; best in wildfire-themed stews)  
- `dire_wolf_flank` – Dire Wolf Flank – Rare (meat; cook_luxury; elites; stamina_max + move_speed dishes)  
- `ward_bear_haunch` – Ward-Bear Haunch – Rare (meat; cook_luxury; mini-boss; huge max HP / regen stews)  
- `greatwood_howler_rib` – Greatwood Howler Rib – Rare (meat; boss_part; used in signature raid-style feast recipes)  
- `ragged_king_shank` – Ragged King Shank – Exotic (meat; boss_part; single-use high-end feast unlock, late Greatwood)  
- `shadow_stag_loin` – Shadow-Marked Stag Loin – Rare (meat; res_corruption; drops where wards are thin; used in protective feasts)  
- `hollowroot_serpent_fillet` – Hollowroot Serpent Fillet – Exotic (meat; cook_luxury, alchemy_core; dropped in Hollowroot warrens)  
- `voleswarm_skewer_meat` – Voleswarm Cluster Meat – Rare (meat; cook_experimental; weird stat mix, niche alchemy hooks)  
- `black_sap_gland_meat` – Black-Sap Gland Meat – Corrupted (meat; alchemy_corruption; signature hunt Black-Sap Devourer, usually processed not eaten)  

---

### 3. Fish – River, Stream, and Cave

- `river_trout_fillet` – River Trout Fillet – Common (fish; cook_core; riverbank nodes; gentle stamina regen, basic fry recipes)  
- `ashstream_carp_fillet` – Ashstream Carp Fillet – Common (fish; cook_core; rivers near burn scars; HP + res_fire profile)  
- `emberfin_fillet` – Emberfin Fillet – Uncommon (fish; cook_luxury; slightly glowing fins; precision or crit-leaning buffs)  
- `pale_cavefish_fillet` – Pale Cavefish Fillet – Uncommon (fish; res_corruption; caves / Hollowroot pockets)  
- `duskscale_eel_slice` – Duskscale Eel Slice – Uncommon (fish; cook_travel; fast-acting, short duration stamina boosts)  
- `thornscale_pike_fillet` – Thornscale Pike Fillet – Rare (fish; cook_luxury; higher risk fight to catch; HP + damage buff)  
- `wardstone_lamprey_strip` – Wardstone Lamprey Strip – Rare (fish; alchemy_core; rivers near Wardstone Hill; used in odd tonics)  
- `silverback_char_fillet` – Silverback Char Fillet – Rare (fish; cook_luxury; slotted into mid-tier lodge “show dishes”)  
- `blackcurrent_sprat_fillet` – Blackcurrent Sprat Fillet – Uncommon (fish; cook_core; small schools; cheap filler in fish stews)  
- `shadowpool_koi_slice` – Shadowpool Koi Slice – Exotic (fish; boss/event; only from rare shadow pools; powerful regen + resist dishes)  

---

### 4. Herbs & Leaves

- `bitterpine_needle` – Bitterpine Needle – Common (herb; cook_core, alchemy_core; basic bittering agent, minor stamina buffs)  
- `emberleaf` – Emberleaf – Uncommon (herb; cook_core; spicy; small res_cold / res_corruption hooks)  
- `hollowroot_sprig` – Hollowroot Sprig – Uncommon (herb; alchemy_core; caves / root clusters; core alchemy base)  
- `mossy_tongue` – Mossy Tongue – Common (herb; cook_core; damp tree roots; HP regen over time, mild taste)  
- `whisperfern` – Whisperfern – Rare (herb; res_corruption, alchemy_core; night/mist; used in wards and subtle dishes)  
- `silver_sedge` – Silver Sedge – Uncommon (herb; cook_core; open glades; move_speed / lightness-leaning buff)  
- `thornmint` – Thornmint – Uncommon (herb; cook_core; sharp flavor; focus / precision hooks at higher tiers)  
- `smokebloom_petals` – Smokebloom Petals – Rare (herb; cook_luxury; burn scars; smoky lodge signature dishes)  
- `ravencap_leaf` – Ravencap Leaf – Rare (herb; alchemy_core; grows near carrion trees; used in poison and antidote branches)  
- `wandersage_bundle` – Wandersage Bundle – Uncommon (herb; cook_travel; bundled lodge seasoning, travel buffs)  
- `lowlight_clover` – Lowlight Clover – Common (herb; cook_core; underbrush; small luck/crit micro-buffs if stacked)  

---

### 5. Mushrooms & Fungi

- `glowcap` – Glowcap – Uncommon (mushroom; cook_core, alchemy_core; dark/damp areas; gentle res_corruption and light sources)  
- `hollowcap` – Hollowcap – Rare (mushroom; alchemy_core; Hollowroot-adjacent; core in Hollowroot brews, dangerous raw)  
- `ashcurl` – Ashcurl Mushroom – Rare (mushroom; res_fire; grow in burn_scar; signature wildfire-resist stews)  
- `red_vein_morel` – Red Vein Morel – Exotic (mushroom; cook_luxury; picky growth; high-end lodge dishes)  
- `stagstool` – Stagstool Cap – Common (mushroom; cook_core; basic meat stews; minor HP buffs)  
- `embertruffle` – Embertruffle – Rare (mushroom; cook_luxury; deep roots; value in lodge economy, strong stat combos)  
- `ghostsail_mushroom` – Ghostsail Mushroom – Rare (mushroom; alchemy_corruption; pale fans in caverns, used for visions/warding)  
- `wardstone_bracket` – Wardstone Bracket – Uncommon (mushroom; alchemy_core; grows on old ward stumps)  
- `swampreed_toadstool` – Swampreed Toadstool – Uncommon (mushroom; cook_experimental; odd movement/regen profiles)  
- `blacktongue_chanterelle` – Blacktongue Chanterelle – Exotic (mushroom; dangerous raw; high-tier corruption recipes and unique foods)  

---

### 6. Roots & Tubers

- `stonepotato` – Stonepotato – Common (root; cook_core; basic starchy stew filler, HP + duration)  
- `emberroot_tuber` – Emberroot Tuber – Common (root; cook_core; mildly warming, res_cold)  
- `riverreed_rhizome` – Riverreed Rhizome – Uncommon (root; cook_core; found at riverbanks; stamina_regen focus)  
- `sweet_bramble_root` – Sweet Bramble Root – Uncommon (root; cook_luxury; dessert and glaze recipes)  
- `white_ember_turnip` – White Ember Turnip – Common (root; cook_core; hearty lodge stews, HP/max HP baseline)  
- `hollowroot_core_chunk` – Hollowroot Core Chunk – Rare (root; alchemy_core; from Hollowroot Matron content)  
- `ironbark_taproot` – Ironbark Taproot – Rare (root; res_stun / res_knockdown; deep-dig nodes)  
- `mistfen_tuber` – Mistfen Tuber – Uncommon (root; cook_travel; works well for long-duration road meals)  

---

### 7. Fruits, Berries & Nuts

- `brightreach_berries` – Brightreach Berries – Common (fruit; cook_core; short-duration stamina / move buffs)  
- `nightglass_berries` – Nightglass Berries – Uncommon (fruit; res_corruption; found near thin ward spots, dangerous huge doses)  
- `orchardwild_apple` – Orchardwild Apple – Common (fruit; cook_core; simple snacks and pies)  
- `smokebriar_berries` – Smokebriar Berries – Uncommon (fruit; cook_luxury; grilled meats and sauces)  
- `hollowvine_grapes` – Hollowvine Grapes – Rare (fruit; cook_luxury; used in high-end sauces and future wine systems)  
- `greatwood_walnut` – Greatwood Walnut – Uncommon (nut_seed; cook_core; fats + HP sustain in travel food)  
- `emberhazel_nut` – Emberhazel Nut – Rare (nut_seed; cook_luxury; luxury desserts, high vendor value)  
- `shadowplum` – Shadowplum – Rare (fruit; quest_hook; appears in certain events; small stealth / detection interactions later)  
- `dawnpeel_citrus` – Dawnpeel Citrus – Uncommon (fruit; res_disease/poison; imported but seeded in lodge gardens)  

---

### 8. Monster Parts & Oddities (Hunts, Dungeons, Events)

- `boar_tusk_plain` – Plain Boar Tusk – Common (monster_part; profession_hunter, decor; generic part, some cooking stock)  
- `wolf_fang_common` – Common Wolf Fang – Common (monster_part; profession_hunter; trophies, minor alchemy reuses)  
- `ashen_hide_strip` – Ashen Hide Strip – Uncommon (monster_part; alchemy_core, decor; burn_scar beasts; fire-resist tonics)  
- `howler_alpha_fang` – Howler Alpha Fang – Rare (monster_part; boss_part; core in Greatwood Howler hunt rewards)  
- `ragged_king_bone_shard` – Ragged King Bone Shard – Exotic (monster_part; boss_part; part of top-end lodge trophies / recipes)  
- `black_sap_nodule` – Black-Sap Nodule – Corrupted (monster_part; alchemy_corruption; refined from Black-Sap Devourer)  
- `hollowroot_resin` – Hollowroot Resin – Rare (monster_part; alchemy_core; dungeon/event reward from Hollowroot content)  
- `corrupted_heart_tissue` – Corrupted Heart Tissue – Rare (monster_part; alchemy_corruption; from heavily corrupted beasts)  
- `wardstone_crust_flake` – Wardstone Crust Flake – Rare (monster_part; alchemy_core; chipped from damaged ward anchors)  
- `sapstained_antler` – Sap-Stained Antler – Uncommon (monster_part; decor, alchemy_core; from elder stags / corrupted variants)  
- `emberscarred_talon` – Emberscarred Talon – Rare (monster_part; hunt_trophy; from airborne threats, used in niche recipes)  

---

### 9. Liquids, Oils & Extracts

- `forest_stock_light` – Light Forest Stock – Common (liquid; cook_core; bone + veg stock, base for most soups)  
- `bone_broth_thick` – Thick Bone Broth – Uncommon (liquid; cook_core; stronger HP/max HP hooks, longer duration)  
- `bitterpine_extract` – Bitterpine Extract – Uncommon (liquid; cook_core, alchemy_core; concentrates Bitterpine)  
- `emberleaf_oil` – Emberleaf Oil – Rare (liquid; cook_luxury; used to sear meats, fire-leaning buffs)  
- `glowcap_reduction` – Glowcap Reduction – Rare (liquid; alchemy_core; alchemical base from Glowcaps)  
- `black_sap_reduction` – Black Sap Reduction – Corrupted (liquid; alchemy_corruption; dangerous, used in high-tier brews)  
- `hollowroot_tonic_base` – Hollowroot Tonic Base – Rare (liquid; alchemy_core; foundation for Hollowroot elixirs)  
- `river_herb_infusion` – River Herb Infusion – Common (liquid; cook_core; blends basic herbs + river water; used widely)  
- `ashwater_brine` – Ashwater Brine – Uncommon (liquid; cook_core; used for brining meats / preserving travel food)  

---

### 10. Lodge Pantry Basics (Vendor-Lean)

- `lodge_salt_mix` – Lodge Salt Mix – Common (pantry; cook_core; sold by lodge vendors; appears in most savory recipes)  
- `smoked_salt_flakes` – Smoked Salt Flakes – Uncommon (pantry; cook_luxury; finishing salt for show dishes)  
- `ground_barley_flour` – Ground Barley Flour – Common (pantry; cook_core; breads, dumplings, batter coatings)  
- `rendered_boar_fat` – Rendered Boar Fat – Common (pantry; cook_core; frying base, high HP sustain)  
- `lodge_cheese_block` – Lodge Cheese Block – Uncommon (pantry; cook_core/luxury; comfort food, mid-tier stamina buffs)  
- `pickling_brine_base` – Pickling Brine Base – Common (pantry; cook_travel; extends shelf life of meats/veg)  
- `honeybrick_ration_slab` – Honeybrick Ration Slab – Uncommon (pantry; cook_travel; sweet compact rations, long shelf life)  
- `simple_herb_bundle` – Simple Herb Bundle – Common (pantry; cook_core; generic herb “catch-all” used in starter recipes)  

---

## Next Steps & Integration Hooks

1. **Lock IDs**  
   - Once you wire these into data / Lua, avoid renaming IDs.  
   - New regions extend with their own prefixes rather than overwriting Greatwood.

2. **Wire into 52 / 53**  
   - Use the `primary_uses` and `stat_profile` intents here to build:
     - Early Cooking 1–10 basics (52)
     - Advanced / lodge signature dishes 10–20 (53)

3. **Connect to 55 & Hunts (B103–B120)**  
   - Signature hunts should drop 1–2 *unique* ingredients from the rare/exotic/monster-part lists above.

4. **Alchemy Stub (58)**  
   - Use herbs, mushrooms, monster parts, and liquids here as the starter alchemy ingredient pool.

5. **Loot / Node Tagging**  
   - Drop tables for Greatwood nodes and beasts should **only** reference ingredient IDs from this file for 1–20 content.

As the region grows, you can still add more entries, but this gives a solid A–Z backbone for professions, cooking, and loot.
