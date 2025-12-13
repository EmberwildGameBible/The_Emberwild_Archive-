# 55 – Specialty Ingredients from Hunts, Bosses, and Events

## Purpose

Create a set of specialty ingredients that only drop from specific
hunts, bosses, dungeons, and world events in Greatwood. These ingredients:

- Make big encounters feel economically meaningful
- Feed directly into advanced Cooking (52, 53) and Intro Alchemy (58)
- Show up explicitly in signature Hunts (B117–B121) and Contracts (B115–B116)
- Help differentiate "normal hunting" from "serious Hunts / dungeons / events"

This is a design list + ruleset, not implementation code.

---

## Design Goals

1. Memorable sources  
   When you see a specialty ingredient, you should remember exactly  
   what you killed, survived, or triggered to get it.

2. Tightly scoped uses  
   Each specialty ingredient should have 1–3 specific, high-value uses,
   not be tossed into every recipe or brew.

3. Early but expandable  
   Focus on Greatwood 1–20 content now, but make patterns that can be
   reused in later regions.

4. Reinforce fantasy  
   Names, effects, and sources should reinforce the hunter / forest /
   Lodge / corruption / fire themes.

5. Avoid mandatory grind  
   These ingredients should feel special and rewarding, not a required
   grind for baseline progression. They are "nice to have, very good",
   not "you cannot function without this".

---

## Structure For Each Specialty Ingredient

Each specialty ingredient entry defines:

- ID: `spec_ingr_<theme>` (e.g. `spec_ingr_elder_stag_marrow`)
- Display Name
- Base Ingredient Link:
  - Which core 51-ingredient it extends (if any), e.g. `elder_stag_meat`, `black_sap_nodule`
- Source Type:
  - Signature Hunt / World Boss / Dungeon Boss / Elite / Event / Weather / Questline
- Source Details:
  - Specific enemy, event, or POI
- Rarity Within Source:
  - Guaranteed / Common / Uncommon / Rare / Very Rare
- Suggested Uses:
  - 1–3 concrete hooks:
    - Cooking recipes (52–53)
    - Alchemy brews (58)
    - Profession combo crafts (57)
    - Trophies / decor (86, B122)
- Effect Theme:
  - What it tends to do mechanically (HP, stamina, corruption, fire, perception, etc.)
- Flavor:
  - One or two lines of in-world flavor / lodge gossip

Implementation detail:  
Specialty ingredients are *items* built on top of the taxonomy in 51.  
Some map 1:1 to an existing ID from 51 (flagged as "specialty"), others are
more refined variants (marrow, cores, essences) that sit beside the base.

---

## Global Rules For Specialty Ingredients (Greatwood 1–20)

1. All specialties are from:
   - Signature Hunts (B117–B121)
   - Major world bosses
   - Dungeon bosses / capstones
   - Major dynamic events (62)
   - Rare weather / time-of-day events

2. Most have:
   - A guaranteed drop on first completion (per account or per character)
   - A lower chance on repeat clears
   - Occasionally an extra rare "perfect" variant for bragging rights

3. Usage rules:
   - Each specialty ingredient should be referenced in:
     - At least one advanced Cooking recipe (53) OR
     - At least one Alchemy brew (58) OR
     - A Profession combo craft (57)
   - Some are dual-purpose (e.g. can be eaten or brewed)
   - A small subset is *primarily* trophy/decor but still usable in one recipe

4. Economic role:
   - Specialty ingredients should be trade-centric for whatever economy we allow:
     - Hunt players farm them
     - Cooks / alchemists / woodworkers craft high-end items
   - Prices should feel "aspirational" but not unreachable.

5. UX rules:
   - Loot popups and Codex entries should clearly show:
     - Source (e.g. "Drops from: Black-Sap Devourer – Signature Hunt")
     - Suggested uses ("Used in: Black Sap Purge, Hollowroot Fortifying Draught variant")
   - No completely mysterious dead-end items.

---

## Category Breakdown

For Greatwood 1–20 we define:

1. Elder Stag & Great Beasts (World / Signature Hunts)
2. Ward-Bear and Defensive Hunts
3. Ashen Beasts & Fire-Scar Creatures
4. Hollowroot & Corruption Pockets
5. Black-Sap Devourer (Signature Hunt B117)
6. Greatwood Howler (Signature Hunt B119)
7. The Ragged King (Signature Hunt B120)
8. Shadow Under the Wardstone (B121) & Wardline Threats
9. Dynamic Weather / Event Ingredients
10. Lodge / Social Specialties (Festival / Ember Pot hooks)

---

## 1. Elder Stag & Great Beasts

### 1.1 Elder Stag Marrow

- ID: `spec_ingr_elder_stag_marrow`
- Display Name: Elder Stag Marrow
- Base Ingredient Link: derives from `elder_stag_meat` (51)
- Source Type: World Boss / Signature Hunt
- Source Details:
  - Elder Hollow Stag world event / hunt chain (Greatwood deep glades)
- Rarity Within Source:
  - First clear: guaranteed 1
  - Repeat clears: 30–40% chance for 1, small chance for 2 on high-rank completions
- Suggested Uses:
  - Cooking:
    - High-tier upgrade to `gw_elder_stag_crown_roast` (53) variant
    - Used in a “Marrow Feast” stew for small group feasts (later expansion)
  - Alchemy:
    - Optional additive in `brew_hollowroot_fortifying_draught` variant (58)
- Effect Theme:
  - Max HP, fortitude, subtle tracking / awareness
- Flavor:
  - "Old hunters say the stag remembers every arrow it’s ever carried, and all of that weight ends up in the marrow."

---

### 1.2 Heartwood Antler Core

- ID: `spec_ingr_heartwood_antler_core`
- Display Name: Heartwood Antler Core
- Base Ingredient Link: tied to `sapstained_antler` (51)
- Source Type: World Boss / Signature Hunt
- Source Details:
  - Rare carve from Elder Hollow Stag antlers when felled near Wardstone radiance
- Rarity Within Source:
  - First completion with special condition (within ward-light): guaranteed
  - Otherwise: ~10% chance
- Suggested Uses:
  - Alchemy:
    - Component in `brew_wardstone_skin_tonic` powerful variant
    - High-end reagent for future ward-channeling potions
  - Lodge:
    - Trophy material for high-prestige antler mounts (86, B122)
- Effect Theme:
  - Corruption resistance, ward alignment, minor magic resistance
- Flavor:
  - "The inner ring of the antler glows faintly in the dark, like tree-rings from a forest that remembers too much."

---

### 1.3 Elder Stag Veil-Torn Hide

- ID: `spec_ingr_elder_stag_veil_hide`
- Display Name: Veil-Torn Elder Stag Hide
- Base Ingredient Link: conceptually attached to `shadow_stag_loin` and general stag pelts
- Source Type: World Boss / Signature Hunt
- Source Details:
  - Drops only if Elder Stag is brought down during a “thin ward” phase event
- Rarity Within Source:
  - Very Rare (5–8% chance on qualifying kills)
- Suggested Uses:
  - Profession Combo (57):
    - Woodworker + Cook + Hunter craft:
      - Veil-lined Lodge cloak with small corruption resist and move speed bonuses
  - Lodge Decor:
    - Rare pelt for rooms, with small passive comfort/rep gain hooks later
- Effect Theme:
  - Stealth, soft movement, corruption edge protection
- Flavor:
  - "You can’t quite tell where the hide ends and the air begins when it’s hung in low light."

---

## 2. Ward-Bear & Defensive Hunts

### 2.1 Ward-Bear Gelatinous Fat

- ID: `spec_ingr_ward_bear_gelatin`
- Display Name: Ward-Bear Gelatinous Fat
- Base Ingredient Link: derived from `ward_bear_haunch` (51)
- Source Type: Signature Hunt / Elite Boss
- Source Details:
  - Rendered from the thick fat pads of Ward-Bear during butchering at the Lodge
- Rarity Within Source:
  - First completion of Ward-Bear Hunt chain: guaranteed
  - Subsequent kills: 40% chance
- Suggested Uses:
  - Cooking:
    - Upgrade component for `food_ward_bear_hearth_feast` (53) “Heavy Stock” variant
  - Alchemy:
    - Thickening agent in `brew_ward_bear_guard_draught` (58) for longer duration
- Effect Theme:
  - Max HP, slow but solid regen, physical toughness
- Flavor:
  - "Rendered down, it sets into something halfway between fat and stone. You can stand a spoon in it."

---

### 2.2 Ward-Bear Spine Shard

- ID: `spec_ingr_ward_bear_spine_shard`
- Display Name: Ward-Bear Spine Shard
- Base Ingredient Link: conceptually tied to `boar_tusk_plain` / heavy bone category
- Source Type: Signature Hunt
- Source Details:
  - Spinal fragments taken during careful butchering; one per bear at most
- Rarity Within Source:
  - 25% chance on any successful Ward-Bear Hunt
- Suggested Uses:
  - Profession Combo:
    - Woodworker crafts reinforced hafts or shield cores using this
    - Combined with cooking/alchemy buffs to form a “Guardian’s Kit”
  - Lodge:
    - Mounted Spine segment trophy
- Effect Theme:
  - Knockback resistance, stagger resistance, posture bonuses
- Flavor:
  - "The Lodge bone-saw leaves shiny scars where it tried to bite through."

---

### 2.3 Old Warden’s Clotted Blood

- ID: `spec_ingr_old_warden_clot`
- Display Name: Old Warden’s Clotted Blood
- Base Ingredient Link: uses `corrupted_heart_tissue` style monster part (51)
- Source Type: Hunt / Story Boss
- Source Details:
  - Dropped from a unique Ward-Bear variant in a Warden story questline
- Rarity Within Source:
  - One-time guaranteed on quest resolution
- Suggested Uses:
  - Alchemy:
    - One-off recipe unlocking a stronger variant of `brew_wardstone_skin_tonic`
- Effect Theme:
  - Defensive stamina, stubborn resistance to being moved or broken
- Flavor:
  - "It dries in the jar in the shape of a shield, no matter how often you shake it."

---

## 3. Ashen Beasts & Fire-Scar Creatures

### 3.1 Ashen Beast Ember Core

- ID: `spec_ingr_ashen_beast_ember_core`
- Display Name: Ashen Beast Ember Core
- Base Ingredient Link: derived from `ashen_beast_cut` and `ashen_hide_strip` (51)
- Source Type: Signature Hunt / Elite
- Source Details:
  - Found lodged inside the ribcage of certain Ashen beasts in burn scar zones
- Rarity Within Source:
  - First time killing the named Ashen target: guaranteed
  - Afterwards: 20–25% chance
- Suggested Uses:
  - Cooking:
    - High-end variant of `food_ashen_beast_ember_roast` (53) with stronger fire resist
  - Alchemy:
    - Key reagent in `brew_ashen_ember_draft` rare version (58)
- Effect Theme:
  - Fire resistance, warmth, small HP spike
- Flavor:
  - "Still warm long after the body cools, as if it never believed the fire went out."

---

### 3.2 Charred Bone Fragment

- ID: `spec_ingr_charred_bone_fragment`
- Display Name: Charred Bone Fragment
- Base Ingredient Link: generic bone/monster_part in 51
- Source Type: Dungeon Boss / Burn-Scar Mini-boss
- Source Details:
  - Dropped from skeletal or heavily-burned hunters / beasts in a burn-scar dungeon
- Rarity Within Source:
  - Common (60–70% chance) but low stack count
- Suggested Uses:
  - Alchemy:
    - Catalyst in lesser fire resist tonics
  - Professions:
    - Component in fire-scarred decor items for lodge rooms
- Effect Theme:
  - Fire resist when powdered; slight fragility / HP penalty if overused
- Flavor:
  - "The black never flakes off, even when you scrub. It just moves around."

---

### 3.3 Stormseared Pelt Strip

- ID: `spec_ingr_stormseared_pelt_strip`
- Display Name: Stormseared Pelt Strip
- Base Ingredient Link: variant on wolf / stag pelts
- Source Type: Event + Elite
- Source Details:
  - Only drops from beasts hunted during a specific thunderstorm event in burn-scar zones
- Rarity Within Source:
  - Rare (10–12% chance) while event is active
- Suggested Uses:
  - Profession Combo:
    - Used in crafting cloaks or grips that slightly help with fire and shock in future regions
- Effect Theme:
  - Fire + storm prep, future-proof defensive niche
- Flavor:
  - "The fur never quite lays flat, as if it remembers standing on end when the sky split."

---

## 4. Hollowroot & Corruption Pockets

### 4.1 Hollowroot Heart-Fiber

- ID: `spec_ingr_hollowroot_heart_fiber`
- Display Name: Hollowroot Heart-Fiber
- Base Ingredient Link: extends `hollowroot_core_chunk` and `hollowroot_resin` (51)
- Source Type: Signature Hunt / Dungeon Boss (Hollowroot Matron – B118)
- Source Details:
  - Carefully harvested from the central knot of the Matron’s root mass
- Rarity Within Source:
  - First kill: guaranteed 1
  - Later: 20–25% chance
- Suggested Uses:
  - Cooking:
    - Added to `food_hollowroot_protectors_pot` variant for stronger corruption resist
  - Alchemy:
    - Premium variant of `brew_hollowroot_fortifying_draught`
- Effect Theme:
  - Corruption resistance, anchor, heavier feel
- Flavor:
  - "Coiled like a fist, and just as reluctant to open."

---

### 4.2 Matron’s Root-Eye

- ID: `spec_ingr_matron_root_eye`
- Display Name: Matron’s Root-Eye
- Base Ingredient Link: unique monster part (eye-like core)
- Source Type: Signature Hunt (Hollowroot Matron – B118)
- Source Details:
  - Rare drop when the killing blow is dealt while the Matron is channeling
- Rarity Within Source:
  - Very Rare (5–8% chance)
- Suggested Uses:
  - Alchemy:
    - High-tier reagent for `brew_whisperglass_purge_tonic` variant
  - Lodge:
    - Placed as a “watching” trophy in certain rooms
- Effect Theme:
  - Detection, perception, niche anti-corruption cleanse
- Flavor:
  - "Some hunters swear it follows them around the room if they drink near it."

---

### 4.3 Hollowroot Mire Sludge

- ID: `spec_ingr_hollowroot_mire_sludge`
- Display Name: Hollowroot Mire Sludge
- Base Ingredient Link: muddied variant of `hollowroot_tonic_base`
- Source Type: Dungeon / Corruption Pocket Event
- Source Details:
  - Collected from sluggish pools deep in Hollowroot pockets during events
- Rarity Within Source:
  - Uncommon (30–40% chance from specific interactable nodes)
- Suggested Uses:
  - Alchemy:
    - Cheap, risky stand-in for proper Hollowroot base in low-skill brews
  - Cooking:
    - Never used directly; food recipes that try to use it should be flagged as "tainted"
- Effect Theme:
  - Slight resist mixed with higher risk of minor corruption debuffs
- Flavor:
  - "The Lodge keeps a barrel of it behind the real stocks as a training warning."

---

## 5. Black-Sap Devourer (B117)

### 5.1 Black-Sap Seed Nodule

- ID: `spec_ingr_black_sap_seed_nodule`
- Display Name: Black-Sap Seed Nodule
- Base Ingredient Link: `black_sap_nodule` (51)
- Source Type: Signature Hunt (Black-Sap Devourer – B117)
- Source Details:
  - Core nodules pried from the Devourer’s body after a successful hunt
- Rarity Within Source:
  - First clear: guaranteed 2
  - Subsequent clears: 40–50% chance to drop 1–2
- Suggested Uses:
  - Alchemy:
    - Core reagent for `brew_black_sap_purge` (58)  
    - Optional risk ingredient in `brew_black_sap_insight_tincture`
- Effect Theme:
  - Strong corruption manipulation, both defensive and risky offensive
- Flavor:
  - "Like holding a rotten tooth made of tar. Hard to say whether it’s dead or just resting."

---

### 5.2 Devourer Eye Resin

- ID: `spec_ingr_black_sap_eye_resin`
- Display Name: Devourer Eye Resin
- Base Ingredient Link: derived from worst of `black_sap_reduction`
- Source Type: Signature Hunt (B117)
- Source Details:
  - Rare distillate taken from the Devourer’s eye-pits during a Lodge alchemy sequence
- Rarity Within Source:
  - Rare (10–15% chance; maybe increased with optional objective)
- Suggested Uses:
  - Alchemy:
    - Ultra-rare variant of Black Sap brews with improved magnitude, worse side effects
  - Lodge:
    - Key resource for a high-tier wall trophy with faint moving light
- Effect Theme:
  - Perception, visions, light manipulation, corruption flirting
- Flavor:
  - "The resin catches torchlight and bends it, like it’s trying to remember sunlight."

---

### 5.3 Sap-Engorged Antler

- ID: `spec_ingr_sap_engorged_antler`
- Display Name: Sap-Engorged Antler
- Base Ingredient Link: upgrade of `sapstained_antler` (51)
- Source Type: Signature Hunt / Special Condition
- Source Details:
  - Dropped if the Devourer is lured near a corrupted stag before death
- Rarity Within Source:
  - Very Rare (requires special setup; otherwise does not drop)
- Suggested Uses:
  - Profession Combo:
    - High-end ward-touched decor item
    - Optional component in a future relic or set-piece weapon quest
- Effect Theme:
  - Wardlines under strain, either boosting or destabilizing them
- Flavor:
  - "You can feel it thrum in your hand, like holding a knot of nerves."

---

## 6. Greatwood Howler (B119)

### 6.1 Howler Throat Bundle

- ID: `spec_ingr_howler_throat_bundle`
- Display Name: Greatwood Howler Throat Bundle
- Base Ingredient Link: tied to `howler_alpha_fang` and `greatwood_howler_rib` (51)
- Source Type: Signature Hunt (Greatwood Howler – B119)
- Source Details:
  - Harvested from the tense cords of the Howler’s throat post-kill
- Rarity Within Source:
  - First clear: guaranteed 1
  - Later: 25–35% chance
- Suggested Uses:
  - Alchemy:
    - Direct component in `brew_howler_warbrew` (58)
  - Cooking:
    - Special variant of `food_howler_pack_stew` that pushes move speed further
- Effect Theme:
  - Stamina, movement, a sense of directed aggression
- Flavor:
  - "Even off the bone it feels like it’s straining to howl again."

---

### 6.2 Echo-Laden Ear Fragment

- ID: `spec_ingr_howler_ear_fragment`
- Display Name: Echo-Laden Ear Fragment
- Base Ingredient Link: elite ear/monster_part
- Source Type: Signature Hunt (B119)
- Source Details:
  - Rare drop from the Howler if specific sound-based mechanics are respected in the fight
- Rarity Within Source:
  - Very Rare (5–8% chance)
- Suggested Uses:
  - Alchemy:
    - Optional component in perception / detection brews
  - Lodge:
    - Hung from beams near the Hunt Board for a small atmospheric audio stinger
- Effect Theme:
  - Awareness, sound-based detection, possible future stealth counters
- Flavor:
  - "You can hear storm-wind in it if you put it to your ear. Or maybe that’s just your blood."

---

## 7. The Ragged King (B120)

### 7.1 Ragged King Bone Shard (Elevated)

- ID: `spec_ingr_ragged_king_bone_shard`
- Display Name: Ragged King Bone Shard
- Base Ingredient Link: `ragged_king_bone_shard` (51)
- Source Type: Signature Hunt (The Ragged King – B120)
- Source Details:
  - Always drops once per successful Hunt completion
- Rarity Within Source:
  - Guaranteed 1, low chance (10%) for a second shard on high-ranking completions
- Suggested Uses:
  - Cooking:
    - Core ingredient in `food_ragged_king_gravepot` and `food_ragged_king_wake_cake` (53)
  - Alchemy:
    - Part of `brew_ragged_king_quiet` (58)
- Effect Theme:
  - Corruption resistance, death-echo theming, heavy defensive posture
- Flavor:
  - "The marrow holes whistle faintly in bad weather."

---

### 7.2 Ragged King Shank (Prime Cut)

- ID: `spec_ingr_ragged_king_shank`
- Display Name: Ragged King Prime Shank
- Base Ingredient Link: `ragged_king_shank` (51)
- Source Type: Signature Hunt (B120)
- Source Details:
  - Special, higher-grade cut carved only if butchered at the Lodge with the right tools
- Rarity Within Source:
  - First complete Hunt chain: guaranteed 1
  - Afterwards: 15–20% chance
- Suggested Uses:
  - Cooking:
    - High-end variant of gravepot stew with feast-level HP and corruption resist
- Effect Theme:
  - HP max, slow, very steady recovery, a feeling of being "hard to move"
- Flavor:
  - "The butchers say it feels like carving old oak, not meat."

---

### 7.3 Ragged King Ashen Fragment

- ID: `spec_ingr_ragged_king_ashen_fragment`
- Display Name: Ragged King Ashen Fragment
- Base Ingredient Link: niche extension of `wardstone_crust_flake`
- Source Type: Signature Hunt (B120) – conditional drop
- Source Details:
  - Drops if the Ragged King is killed while specific wardstones are active
- Rarity Within Source:
  - Very Rare
- Suggested Uses:
  - Alchemy:
    - Rare additive in Black Sap or Hollowroot lines for "echo ward" variants
  - Lodge:
    - Embedded in wall plaques or altars
- Effect Theme:
  - Wardlines, echoes, interacting with dead / memory systems
- Flavor:
  - "Feels like it should be hot. It never is."

---

## 8. Shadow Under The Wardstone (B121) & Ward Threats

### 8.1 Shadow-Ward Core

- ID: `spec_ingr_shadow_ward_core`
- Display Name: Shadow-Ward Core
- Base Ingredient Link: extension of `wardstone_crust_flake`
- Source Type: Signature Encounter (B121)
- Source Details:
  - Condensed fragment from the entity beneath Wardstone Hill when stabilized
- Rarity Within Source:
  - One-time reward per character; later only through specific high-end contracts
- Suggested Uses:
  - Alchemy:
    - Future high-tier ward brews beyond Greatwood scope
  - Lodge:
    - Key trophy in the Wardens’ chamber
- Effect Theme:
  - Wards, heavy corruption, metaphysics of the hill
- Flavor:
  - "It hums on a frequency you feel in your molars more than your ears."

---

### 8.2 Clipped Shadow Tendril

- ID: `spec_ingr_clipped_shadow_tendril`
- Display Name: Clipped Shadow Tendril
- Base Ingredient Link: unique corrupted monster part
- Source Type: B121 / Corrupted Ward Events
- Source Details:
  - Cut from manifested shadows during specific ward failure events
- Rarity Within Source:
  - Uncommon per event, but events themselves are rare
- Suggested Uses:
  - Alchemy:
    - Experimental components in corruption and stealth brews
- Effect Theme:
  - Stealth, detection, corruption risk
- Flavor:
  - "Laid on a table, it still suspects there’s a ceiling above it."

---

## 9. Dynamic Weather & Event Ingredients

### 9.1 Storm-Caught River Fish

- ID: `spec_ingr_storm_caught_riverfish`
- Display Name: Storm-Caught River Fish
- Base Ingredient Link: variant of `river_trout_fillet` or `ashstream_carp_fillet`
- Source Type: Event / Weather
- Source Details:
  - Fishing at river POIs only during thunderstorms (62)
- Rarity Within Source:
  - 15–20% chance per successful catch
- Suggested Uses:
  - Cooking:
    - Storm-laced chowders/soups with better stamina or perception
  - Alchemy:
    - Minor storm / static resist brews (future region hooks)
- Effect Theme:
  - Energy, restlessness, electrical / storm prep
- Flavor:
  - "The flesh flakes in bright arcs instead of neat lines."

---

### 9.2 Emberfall Ash Flake

- ID: `spec_ingr_emberfall_ash_flake`
- Display Name: Emberfall Ash Flake
- Base Ingredient Link: related to `ashcurl` and `ashwater_brine`
- Source Type: Event (Emberfall – ash rain scenario)
- Source Details:
  - Collected from specific ash drifts that appear during Emberfall events
- Rarity Within Source:
  - Gathered via limited-time nodes; moderate yield but event rare
- Suggested Uses:
  - Cooking:
    - Optional seasoning in Ashen stews or roasts for flavor + small fire resist
  - Alchemy:
    - Mild fire-resist tonics when regular Ashcurl is scarce
- Effect Theme:
  - Fire, ash, smoke; low-level resist, flavor identity
- Flavor:
  - "Leaves a soft grit on the teeth and a memory of distant fires."

---

### 9.3 Fog-Bloom Petal Cluster

- ID: `spec_ingr_fog_bloom_cluster`
- Display Name: Fog-Bloom Petal Cluster
- Base Ingredient Link: cousin to `smokebloom_petals`
- Source Type: Event / Time-of-Day
- Source Details:
  - Appears at dawn in specific Greatwood pockets when fog density is high
- Rarity Within Source:
  - Nodes appear rarely, but clusters yield 2–3 items
- Suggested Uses:
  - Alchemy:
    - Ingredient for low-risk visibility / perception brews
  - Cooking:
    - High-end aromatic addition to fish dishes
- Effect Theme:
  - Soft vision, calm, mild awareness
- Flavor:
  - "Smells like wet stone and pine needles just before the sun fully commits."

---

## 10. Lodge / Social Specialties

### 10.1 Ember Pot Seasoning Stone

- ID: `spec_ingr_ember_pot_seasoning_stone`
- Display Name: Ember Pot Seasoning Stone
- Base Ingredient Link: none; unique Lodge item
- Source Type: Lodge Event / Ember Pot Quests (85, 56)
- Source Details:
  - Earned through Lodge cooking questline “The Ember Pot Never Empties” (56)
- Rarity Within Source:
  - One per questline completion; possibly upgradable versions later
- Suggested Uses:
  - Cooking:
    - When placed in the Ember Pot, it passively upgrades many stews by a small margin
  - Lodge:
    - Unlocks cosmetic glow / status on the Ember Pot
- Effect Theme:
  - Slight boosts to HP/stamina regen from Ember Pot dishes, communal buff feel
- Flavor:
  - "No one remembers who placed the first one in the Pot. No one wants to take it out."

---

### 10.2 Festival Spice Bundle

- ID: `spec_ingr_festival_spice_bundle`
- Display Name: Festival Spice Bundle
- Base Ingredient Link: extension of `wandersage_bundle` and `simple_herb_bundle`
- Source Type: Lodge Festival Events (64)
- Source Details:
  - Given as a reward during seasonal Lodge games / festivals
- Rarity Within Source:
  - Common during event, unavailable outside it
- Suggested Uses:
  - Cooking:
    - Swaps into almost any lodge dish to create "Festival" variants with small social / rep modifiers
  - Economy:
    - Tradeable during the festival for other limited items
- Effect Theme:
  - Social buffs, Lodge reputation, "feel-good" regen
- Flavor:
  - "Smells like every good night at the Lodge, all at once."

---

### 10.3 Old Cook’s Apron String

- ID: `spec_ingr_old_cooks_apron_string`
- Display Name: Old Cook’s Apron String
- Base Ingredient Link: none; unique charm item
- Source Type: Personal Quest / Lodge Storyline
- Source Details:
  - Reward from siding with or helping a specific Cook NPC in a Lodge storyline
- Rarity Within Source:
  - One-time per character, non-tradeable
- Suggested Uses:
  - Profession Combo:
    - Used as a minor charm ingredient in certain Cook-only recipes or tools (54, 57)
- Effect Theme:
  - Tiny quality-of-life bonuses, better "feel" for cooking minigames
- Flavor:
  - "Frayed, stained, and somehow lucky. It smells faintly of onions and smoke."

---

## How To Wire This Into The Rest Of Greatwood

1. Ingredient Data (51)
   - Mark each specialty ingredient as:
     - `is_specialty = true`
     - `source_tag = <hunt/region/event>`
   - Keep them in the same taxonomy tables used by Cooking (52–53) and Alchemy (58).

2. Hunts & Encounters (B115–B121)
   - Each signature Hunt should list:
     - Its guaranteed specialty ingredients
     - Its rare specialty ingredients
     - Their primary recipe / brew hooks

3. Cooking (52–53)
   - Advanced recipes should call out when they use a specialty:
     - Example: "Upgrades with Elder Stag Marrow" in description
   - Some feasts should be strictly specialty-gated to feel prestigious.

4. Alchemy (58)
   - Hollowroot, Wardstone, Fire, and Black Sap lines all have:
     - A basic version (core ingredients from 51)
     - An improved or risky version (specialty ingredients from 55)

5. Professions & Combo Crafts (54, 57)
   - Specialty ingredients appear in:
     - Multi-profession recipes (Hunter + Woodworker + Cook)
     - Lodge room decor, trophies, and weapon hafts

6. Progression & Economy
   - Signature Hunts and Dungeons feel valuable beyond loot tables:
     - Even if you don’t need the armor, the specialties still matter.
   - Contract packs (B115–B116) can occasionally target specialties explicitly:
     - “Bring back 2 Storm-Caught River Fish and 1 Ashen Beast Ember Core.”

---

## Next Actions

- Confirm final specialty ingredient list for Greatwood 1–20 launch.
- For each ingredient, wire:
  - Drop rules into Hunts, bosses, and events
  - At least one Cooking or Alchemy use (and mark future use placeholders)
- Ensure Codex / UI surfaces:
  - Source and primary uses clearly
- Align with future systems:
  - Trophy Hall & Quarters (86, B100)
  - Ember Pot and Lodge festivals (56, 64, 85)
  - Reputation and circles (59)
