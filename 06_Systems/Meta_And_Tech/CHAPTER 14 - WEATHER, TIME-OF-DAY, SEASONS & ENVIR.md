# CHAPTER 14 — WEATHER, TIME-OF-DAY, SEASONS & ENVIRONMENTAL IMPACT SYSTEM

---

# CHAPTER 14 — WEATHER, TIME, SEASONS & ENVIRONMENTAL IMPACT SYSTEM

This chapter defines every global environmental system in Emberwild and how those systems influence creatures, rare spawn behavior, tracking, professions, travel, and combat.

This is a mechanical chapter, not cosmetic.

Nothing overrides this except Chapter 1.

────────────────────────────────

# 14.0 — PURPOSE OF THIS CHAPTER

This chapter establishes:

- Global time-of-day cycle
- Seasonal cycle
- Weather architecture per biome
- Environmental hazards
- How weather influences:
    - creature behavior
    - rare spawns
    - Ultra-Rare logic
    - player stamina + visibility
    - profession gathering
    - tracking
    - travel difficulty
- Interaction with World Pulses

This system forms the backbone of the world’s “living” behavior.

────────────────────────────────

# 14.1 — TIME-OF-DAY CYCLE

Emberwild uses a 24-minute = 24-hour cycle (tunable).

### Periods

1. Dawn (06:00–08:00)
2. Day (08:00–18:00)
3. Dusk (18:00–20:00)
4. Night (20:00–06:00)

### Global Rules

- Visibility decreases sharply at night
- No direct stat changes, but environmental danger increases
- NPC schedules change Classic-style
- Rare spawns shift patrol routes at dusk
- Some families are more active at night:
    - Wolves (pack patrols widen)
    - Great Cats (ambush range increases)
    - Serpents (temperature-dependent behavior)
    - Canines (scavenging peaks)

### Night Danger Increase

- More predators active
- Patrol paths lengthen
- Higher ambush probability
- Rare spawns move more aggressively
- Tracking becomes harder (visual cues reduce)

No “spirit creatures.”

No magical “spirit phase.”

────────────────────────────────

# 14.2 — SEASONAL CYCLE

The world cycles through four seasons, ~10 real-world days each (configurable):

1. Spring — regrowth, prey abundance
2. Summer — heat stress in deserts, storms in highlands
3. Autumn — migration, high fishing yield
4. Winter — cold exposure, slowed travel in snow

Each season has mechanical effects aligned with v4.1’s grounded realism.

---

## Spring

- Herb gathering +15%
- Mild weather
- Increased prey activity
- Some rare wildlife only spawns in spring (e.g., certain stags)

## Summer

- Desert heat reduces stamina regen
- Shade locations concentrate prey
- Highland storms become frequent
- Rare desert reptiles emerge more often

## Autumn

- Plains creatures migrate
- Hunting paths become predictable
- Fishing yield increases
- Bears (family 2) become pre-hibernation aggressive

## Winter

- Snow slows travel in tundra/mountain zones
- Cold reduces stamina regeneration
- Wolves form larger packs
- Rare elites in cold zones stay near shelter
- Heartland beasts become more territorial

No magic.

No supernatural storm effects.

No “spirit season.”

────────────────────────────────

# 14.3 — WEATHER ARCHITECTURE

Every biome has a unique weather table:

- Forest: rain, fog, storms
- Tundra: blizzards, clear cold, whiteouts
- Plains: strong winds, heat haze
- Swamp: heavy fog, humidity bursts
- Desert: sandstorms, mirage heat
- Highlands: thunderstorms, gale winds
- Coastal: heavy surf, sea storms
- Mountains: icy winds, snow, thin air

### Weather affects:

- Visibility
- Travel speed
- Ranged accuracy (slight)
- Creature behavior by family
- Rare spawn chances
- Profession node appearance
- Tracking difficulty
- World Pulse triggers

Weather never directly increases enemy stats.

────────────────────────────────

# 14.4 — ENVIRONMENTAL HAZARDS (v4.1 GROUNDED RULESET)

Environmental hazards are Classic-style environmental penalties, not survival meters.

## Cold Exposure

Occurs in: tundra, mountains, winter events

- Reduces stamina regeneration
- Increases stagger risk
- Fire sources, shelters, and warm meals counter it

## Heat Exposure

Occurs in: deserts, summer heatwaves

- Reduces stamina recovery
- Forces prey animals toward shade/water
- Certain foods grant mild “heat comfort” (NOT hydration mechanics)

No “water consumption” system.

No hydration bars.

## Fog / Low Visibility

- Reduces draw distance
- Increases ambush probability
- Reduces ranged max effective distance

## Rain / Storms

- Reduces sound detection distance
- Slightly reduces bow/throw accuracy
- Increases beast agitation
- Footprints become muddied

## Sandstorms

- Extreme visibility reduction
- Cuts ranged accuracy significantly
- Causes desert creatures (serpents, canines, lizards) to move unpredictably

All hazards affect creatures and players equally.

────────────────────────────────

# 14.5 — WEATHER → CREATURE BEHAVIOR INTERACTIONS

Weather dynamically alters AI behavior using World Pulses.

This replaces all old magical or fantasy behavior.

## Rainy Forest

- Wolves widen patrol paths
- Great Cats change ambush points
- Boars become restless
- Birds of Prey reduce flight height

## Tundra Blizzard

- Bears remain sheltered
- Wolves form larger pack clusters
- Horned Beasts (stags/elk) move slowly and predictably
- Rare elites remain stationary near shelter

## Desert Heatwave

- Serpents become more active
- Lizards sun-seek early, shade-seek mid-day
- Canines scavenge closer to camps
- Rare desert creatures congregate under cliffs

## Swamp Fog

- Crabs and turtles move inland
- Serpents use reduced visibility as ambush cover
- Boars become territorial around thick brush

## Highland Storm

- Raptors disengage more often
- Great Cats avoid cliff edges
- Storm lightning is purely cosmetic (no elemental damage)

No spiders.

No scorpions.

No fantasy creatures.

────────────────────────────────

# 14.6 — WEATHER → PROFESSION INTERACTIONS

These interactions use v4.1 profession rules.

## Herbalism

- Rain boosts herb yield in forests
- Fog increases mushroom and fungus spawns
- Winter reduces herb frequency except evergreens

## Mining

- Desert storms uncover shallow deposits
- Mountain blizzards reduce visibility but raise ore cluster chance

## Fishing

## (aligned with your Chapter 26)

- Rain improves bite rate
- Storms reduce frequency but increase rare chance
- Autumn: increased migratory fish yield

## Hunting / Tracking

- Snow highlights tracks
- Rain obscures tracks
- Heat pushes prey to shade/water
- Winter forces predictable migration paths

────────────────────────────────

# 14.7 — RARE & ULTRA-RARE SPAWN MODIFIERS (v4.1)

These rules now match:

- Your grounded creature families
- Your Rare → Mini-Boss → Boss structure
- Your 1-in-X Ultra-Rare global tracking

## Night

- Rare spawn frequency: +20–30%
- Ultra-Rare slightly increased
- Wolf & Great Cat patrol routes expand
- Serpents emerge more in warm zones

## Blizzards / Thunderstorms

- Rare elites stay near shelter points
- Mini-bosses temporarily anchor near caves or cliffs
- Creature detection range drops

## Heatwaves

- Desert rares appear in shade pockets
- Lizards + serpents become more active
- Canines cluster around carcass sites

## Spring / Autumn Migration Pulses

- Horned Beasts migrate
- Birds of Prey circle known routes
- Rare spawns may move across zones
- Ultra-Rare ground clusters appear (exposed roots, driftwood caches, frost cracks)

No magical containers.

No spirit activity.

────────────────────────────────

# 14.8 — PLAYER IMPACT SUMMARY

## Positive

- Snow = easier tracking
- Rain = better fishing
- Spring = better herb yield
- Autumn = predictable migrations
- Storms = higher rare fish chance

## Negative

- Fog = high ambush risk
- Blizzards = low visibility, slow travel
- Heatwaves = stamina regen reduction
- Sandstorms = ranged combat difficulty
- Winter = slowed movement in tundra

Environmental danger = strategy, not punishment.

────────────────────────────────

# 14.9 — DESIGN CONSTRAINTS (v4.1 LOCKED)

1. Weather NEVER scales monster levels
2. Weather NEVER increases monster stats
3. All effects must feel Classic — subtle but meaningful
4. No modern survival meters or hydration systems
5. Environmental rules affect creatures and players equally
6. Weather creates opportunities (more rares, better tracking, new routes)
7. Weather NEVER introduces magical effects
8. Weather ALWAYS ties to World Pulses for systemic consistency

────────────────────────────────

# END OF CHAPTER 14 — FINAL, CLEANED v4.1