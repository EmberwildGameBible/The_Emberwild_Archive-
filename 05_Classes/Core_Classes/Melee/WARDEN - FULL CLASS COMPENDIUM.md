# WARDEN — FULL CLASS COMPENDIUM

---

## SECTION 1 — CLASS OVERVIEW & IDENTITY

### Warden — FULL REMASTER (Grounded, Non-Pet, Environmental Protector Class)

────────────────────────────────────────

# 1.1 CLASS FANTASY — THE EARTHBOUND SENTINEL

The Warden is Emberwild’s grounded environmental protector:

a lightly-armored, stamina-driven melee defender who anchors, roots, slows, and controls the battlefield through terrain mastery, nature-born resilience, and zone guardianship.

The Warden is not:

- a pet class (no summons)
- a druid
- a shaman
- a caster
- a ranged hybrid
- a spirit manipulator

The Warden is:

- a frontline survivalist
- a zone-based melee controller
- a root/snare specialist
- a guardian of natural terrain
- a sustained bruiser with positional lockdown tools

### Visual Fantasy

- hardened leathers / bark plating
- thorny gauntlets, vine wraps
- dust/moss/earth effects on swings
- ground rumbles on heavy roots
- slow-growing vines for CC

### Identity Pillars

- terrain mastery over raw damage
- roots over charges
- control over burst
- resilience over armor
- endurance over evasion
- choke-hold control over mobility

### Where Warden excels

- single-target control
- multi-root combo setups
- zone anchoring
- slow, grinding duels
- boss add control
- dungeon choke fights
- anti-melee disruption

### Where Warden struggles

- ranged mobile enemies
- heavy-burst DPS races
- open-field kiting
- multi-elite ranged groups
- high-mobility assassins

────────────────────────────────────────

# 1.2 COMBAT IDENTITY

Primary Role:

- Control Bruiser / Terrain Guardian

(low burst, high sustain)

Secondary Role:

- Off-Tank / Zone Lockdown

Combat Profile:

- low–moderate direct damage
- high root uptime
- slow stacking mitigation
- sustained pressure
- anti-mobility specialist
- stable attrition fighter

Weaknesses:

- no ranged opener
- little burst
- vulnerable to kiting
- dependent on ground placement

Combat Rewards:

- positioning
- choke selection
- root weave timing
- stamina pacing
- sustained pressure windows

────────────────────────────────────────

# 1.3 ARMOR & WEAPON PROFICIENCIES

### Armor:

- Leather → Scale → Chain

(never plate — grounded survival, not knight)

### Allowed Weapons

Primary

- 1H Axes
- 2H Axes
- 1H Maces
- 2H Maces
- Polearms
- Staves

Off-Hand

- Shields
- Totems (non-magical utility totems; stat-sticks only)

Forbidden

- Swords
- Daggers
- Spears (except polearm-type)
- Bows
- Crossbows
- Firearms
- Spell foci

────────────────────────────────────────

# 1.4 RESOURCE — STAMINA & GUARD

### Stamina

### (primary)

- fuels melee skills
- regenerates quickly out of combat
- regenerates slowly in combat
- big skills cost 20–40
- light skills cost 8–15

### Guard

### (secondary)

A stacking defensive buffer:

- gained when rooting enemies
- gained when standing in natural terrain (grass, dirt, stone)
- lost when struck by heavy attacks

Guard effects:

- reduces incoming damage
- increases CC strength
- increases root duration scaling
- resource for select abilities (not spent, used as a requirement)

Guard tiers:

- 0–24 = Minor Guard
- 25–49 = Firm Guard
- 50+ = Iron Guard (capstone tier)

────────────────────────────────────────

# 1.5 EXPLORATION & ENVIRONMENT SPECIALIZATION

Warden is the best overworld controller in Emberwild.

Strengths:

- detects weak terrain
- collapses brittle stone
- reveals choke roots
- uproots hidden pathways
- stabilizes collapsing ledges
- reduces stamina drain on slopes
- gains Guard when grounded

Weaknesses:

- no spirit-realm interactions
- no ranged detection
- poor in wide, flat arenas

────────────────────────────────────────

# 1.6 GROUP ROLE — DUNGEONS & TEAM PLAY

Wardens provide:

- roots
- slows
- knockdowns
- choke positioning
- sustained off-tank durability
- DR auras in natural terrain
- anti-mobility control
- consistent boss add shuts

Weaknesses:

- contributes little burst
- requires terrain to operate
- struggles in fast pulls
- weak ranged pressure

────────────────────────────────────────

# 1.7 DAMAGE PROFILE & SCALING

Damage Sources:

- fracture strikes
- bleed-thorns
- root-pulse detonations
- heavy swings
- low bleed stacking

Primary Scaling Stats:

- Strength
- Stamina
- Guard tier scaling
- Minor skill coefficients for bleed thorns

Damage Shape:

- low opener
- slow climbing stability
- root → heavy → pulse flow
- high CC, low burst
- moderate attrition DPS

────────────────────────────────────────

# 1.8 ROLE SUMMARY (AT DESIGN INTENT)

Warden should feel like:

- the immovable frontline wall
- the rooted anchor in chaos
- the class that refuses to be moved
- the one that controls melee flow
- the protector of natural terrain

Not flashy.

Not bursty.

Not high-DPS.

A tactical, grounded, defensive brawler.

────────────────────────────────────────

# 1.9 DESIGN INTENT SUMMARY

This remaster removes:

- pet confusion
- outdated Druid-like spells
- irrelevant shielding logic
- bad 1–60 scaling
- poor identity cohesion

And establishes:

- a pure grounded bruiser
- nature-based control
- zone anchoring
- stamina + Guard dual-resource
- real defensive identity
- viable 1–60 progression
- three coherent talent trees

────────────────────────────────────────

## SECTION 2 — CORE MECHANICS & ROOT ENGINE

────────────────────────────────────────

# 2.0 MECHANICAL OVERVIEW

The Warden is built on three interconnected engines:

1. Root Engine — immobilization, lockdown, terrain-based CC
2. Guard Engine — sustained defensive stacking, CC amplification
3. Stamina Engine — pacing, pressure, attrition-based combat

These define the class’s slow, steady, grinding playstyle.

Warden = melee control + terrain anchoring + sustained bruiser pressure.

────────────────────────────────────────

# 2.1 ROOT ENGINE — PRIMARY CONTROL SYSTEM

Roots are the Warden’s signature mechanic.

### Root Trigger Conditions

Warden can root enemies via:

- Rootbind Strike
- Uproot
- Nature’s Grip
- Tremor Pulse
- Crushlash (when target is slowed)
- specific talent bonuses

### Root Rules

- roots immobilize target fully
- roots do not silence
- roots break on:

– 3 hits in 2.5s

– heavy boss attacks

– movement abilities

- bosses: roots become Cripple (–40% movement)

### Root Scaling (Guard Interaction)

Root power increases with Guard tier:

Minor Guard (0–24):

- root duration: 1.0s
- break threshold: 3 hits

Firm Guard (25–49):

- root duration: 1.3s
- break threshold: 4 hits
- root pulses deal +15% damage

Iron Guard (50+):

- root duration: 1.5s
- break threshold: 5 hits
- root pulses deal +25% damage
- root break retaliates with a knockback

### Root Pulse Damage

When root expires or breaks, it detonates:

- 4m radius
- nature/earth damage
- small stagger
- scales with Strength + Guard

────────────────────────────────────────

# 2.2 GUARD ENGINE — STACKED DAMAGE MITIGATION

Guard = Warden’s defensive backbone.

### How Guard Is Gained

+2 Guard when:

- you root a target
- you stand in natural terrain for 2s
- you use Timberguard
- you successfully block with a shield
- you dodge with Firm Footwork talent
- you are struck while braced

### How Guard Is Lost

–10 Guard when hit by a boss heavy

–5 when hit by elite heavy

–3 when struck by a ranged crit

–1 when hit by normal attacks (1s ICD)

### Guard Tiers & Effects

Minor Guard (0–24):

- +4% DR
- +5% root effectiveness

Firm Guard (25–49):

- +8% DR
- +10% root effectiveness
- +10% stagger resistance

Iron Guard (50+):

- +14% DR
- +20% root effectiveness
- immune to soft knockbacks
- next heavy attack applies Ground Slam (AoE)

Guard is NOT spent — it is a stateful defense engine.

────────────────────────────────────────

# 2.3 STAMINA ENGINE — PACE OF COMBAT

Warden uses Stamina for all skills.

### Core Rules

- 100 stamina pool
- regenerates:

– out of combat: 25/sec

– in combat: 10/sec

- heavy skills: 25–40 stamina
- light skills: 8–15 stamina
- roots cost low stamina
- DR/brace abilities cost high stamina

### Stamina Breakpoints

- >70 stamina: heavy attacks empowered
- <30 stamina: you gain +4 Guard/sec but deal –10% damage
- 0 stamina: you cannot root or brace

────────────────────────────────────────

# 2.4 TERRAIN ENGINE — NATURAL GROUND ADVANTAGE

Wardens receive major benefits while fighting on grass, stone, dirt, roots, overgrowth.

### Terrain Buffs

Standing on natural terrain grants:

- +2 Guard/sec
- +5% DR
- +10% root strength
- +10% stamina regen
- roots deal +15% pulse damage

### Terrain Weaknesses

Standing on unnatural floors (metal, tile, smooth sandstone, magical surfaces):

- no Guard regen
- –5% root duration
- –5% DR from Minor/Firm Guard
- Uproot deals 20% less

────────────────────────────────────────

# 2.5 CONTROL PULSE ENGINE

When certain CC or terrain effects expire, they emit pulses:

Pulse sources:

- Root break
- Uproot
- Ground Slam
- Stonecrack
- Naturehold (talent)

Pulse effects:

- 4–6m radius
- earth damage
- 0.2–0.4s stagger
- +1 Guard for each enemy hit
- +10 stamina

Pulse scaling = Strength + Guard tier.

────────────────────────────────────────

# 2.6 BRACE ENGINE — MITIGATION STANCE

Warden uses Bracing instead of blocks/parries.

### Brace Rules

- lasts 2s
- reduces damage by 20% (baseline)
- cannot move faster than walk
- roots applied during Brace are +0.2s longer
- breaking Brace early refunds 10 stamina

Talent scaling may increase DR, duration, pulse retaliation, or Guard gain.

────────────────────────────────────────

# 2.7 AI INTERACTION LOGIC — WARDEN AS ENEMY

### Melee AI vs Warden

- avoids rooting zones
- uses gapclosers after roots break
- attacks during low stamina windows
- avoids BRACE stance when pulsing

### Ranged AI vs Warden

- moves away from roots
- focuses during low Guard tiers
- keeps line-of-sight angles wide

### Boss AI

- breaks roots faster
- avoids choke points
- uses heavy attacks to strip Guard
- attempts to force stamina drain

────────────────────────────────────────

# 2.8 AI INTERACTION — WARDEN AS ALLY

- protects allies in chokes
- positions roots to protect healer
- maintains Iron Guard against elites
- creates CC windows for DPS classes
- never breaks Sand Strider blinds

────────────────────────────────────────

# 2.9 POSITIONAL MECHANICS

Warden gains:

- +6% damage vs rooted targets
- +4% DR while surrounded by 3+ enemies
- +10 stamina upon rooting an enemy
- +1 Guard per enemy inside pulse range

────────────────────────────────────────

## SECTION 3 — LEVEL 1–60 TRAINER SPELLBOOK

### Warden — Full Remaster (No talking. Pure output.)

────────────────────────────────────────

# LEVEL 1–10 — FOUNDATION TIER

(Basic roots, stamina pacing, early Guard formation)

### LEVEL 1 — Rootbind Strike (Rank 1)

- light melee strike
- applies 1.0s root
- +2 Guard
- 8 stamina

### LEVEL 2 — Brace (Rank 1)

- 2s stance
- –20% damage taken
- roots applied during Brace last +0.2s
- 20 stamina

### LEVEL 3 — Thornlash (Rank 1)

- light bleed (3s)
- +1 Guard
- 10 stamina

### LEVEL 4 — Timberguard (Rank 1)

- +4 Guard
- +2 stamina regen for 6s
- 25 stamina

### LEVEL 5 — Guard Meter (Class Unlock)

Warden now gains Guard from:

- rooting
- terrain
- bracing
- blocking
- taking heavy bursts

### LEVEL 6 — Fracture Swing (Rank 1)

- heavy hit
- bonus damage vs rooted targets
- 30 stamina

### LEVEL 7 — Uproot (Rank 1)

- 4m knock-up → root (0.8s)
- 25 stamina
- +3 Guard

### LEVEL 8 — Stonepulse (Rank 1)

- 3m AoE pulse
- 10 stamina
- +2 stamina per enemy hit

### LEVEL 9 — Timberstep (Rank 1)

- short dash
- next root +0.2s
- 15 stamina

### LEVEL 10 — Rootbind Strike (Rank 2)

- +10% damage
- +0.1s root duration

────────────────────────────────────────

# LEVEL 11–20 — CONTROL ONLINE

(Guard becomes relevant, roots and pulses ramp)

### LEVEL 11 — Thornlash (Rank 2)

- bleed damage +15%

### LEVEL 12 — Nature’s Grip (Rank 1)

- ranged vine pull (6m)
- applies Cripple (–40% move)
- 20 stamina
- +2 Guard

### LEVEL 13 — Brace (Rank 2)

- DR increased to –25%

### LEVEL 14 — Grounded Focus (Passive)

- standing still 1s → +3 Guard

### LEVEL 15 — Fracture Swing (Rank 2)

- +10% damage
- rooted bonus +5%

### LEVEL 16 — Rootbind Strike (Rank 3)

- +0.1s root
- +3 Guard on hit

### LEVEL 17 — Barkhide (Rank 1)

- 6s buff
- +8% DR
- +3 Guard
- 25 stamina

### LEVEL 18 — Stonepulse (Rank 2)

- radius +1m
- +10 stamina on hit

### LEVEL 19 — Uproot (Rank 2)

- knock-up radius +1m
- root +0.2s

### LEVEL 20 — Nature’s Grasp (Rank 1)

- cone-root (5m)
- 35 stamina
- +4 Guard

────────────────────────────────────────

# LEVEL 21–30 — TERRAIN MASTERY TIER

(terrain bonuses unlock, Guard flows steadily)

### LEVEL 21 — Timberguard (Rank 2)

- duration +3s

### LEVEL 22 — Vinehold (Rank 1)

- immobilize: 1.2s
- 20 stamina
- scales strongly with Guard

### LEVEL 23 — Brace (Rank 3)

- DR increased to –30%

### LEVEL 24 — Stonecrack (Rank 1)

- fracture ground under target → stagger
- 30 stamina
- bonus damage vs elites

### LEVEL 25 — Thornlash (Rank 3)

- bleed damage +20%

### LEVEL 26 — Nature’s Grip (Rank 2)

- Cripple → root for 0.6s if Guard ≥25

### LEVEL 27 — Ground Slam (Rank 1)

- 6m earth shock
- stagger 0.3s
- requires Guard ≥25

### LEVEL 28 — Fracture Swing (Rank 3)

- +15% damage
- +10% vs rooted targets

### LEVEL 29 — Timberstep (Rank 2)

- dash range +1m
- next root +0.3s

### LEVEL 30 — Ironroots (Rank 1)

- while standing on natural terrain:
- +2 Guard/sec
- +5% DR
- +10% root duration

────────────────────────────────────────

# LEVEL 31–40 — ROOT DOMINANCE TIER

(Longer roots, stronger pulses, Guard tier progression)

### LEVEL 31 — Rootbind Strike (Rank 4)

- +0.2s root

### LEVEL 32 — Uproot (Rank 3)

- root becomes 1.2s
- +4 Guard

### LEVEL 33 — Pulseweave (Passive)

- all pulses +20% damage if Guard ≥25

### LEVEL 34 — Barkhide (Rank 2)

- DR +12%

### LEVEL 35 — Stonepulse (Rank 3)

- radius +1m
- stagger +0.1s

### LEVEL 36 — Vinehold (Rank 2)

- immobilize 1.4s
- +1 Guard per target hit

### LEVEL 37 — Thornlash (Rank 4)

- bleed +25%

### LEVEL 38 — Nature’s Grasp (Rank 2)

- cone-root +0.2s

### LEVEL 39 — Brace (Rank 4)

- DR increased to –35%

### LEVEL 40 — Grounded Aegis (Rank 1)

- while Guard ≥50:
- +8% DR
- roots apply stagger on break

────────────────────────────────────────

# LEVEL 41–50 — EARTHWARDEN TIER

(Guard mastery, choke control, AoE roots)

### LEVEL 41 — Fracture Swing (Rank 4)

- +20% damage

### LEVEL 42 — Stonecrack (Rank 2)

- +20% stagger duration

### LEVEL 43 — Vinehold (Rank 3)

- immobilize 1.6s

### LEVEL 44 — Uproot (Rank 4)

- knock-up +0.1s
- +6 Guard

### LEVEL 45 — Ironroots (Rank 2)

- terrain DR bonus +3%

### LEVEL 46 — Rootbind Strike (Rank 5)

- +0.1s duration
- +5 Guard

### LEVEL 47 — Nature’s Grip (Rank 3)

- Cripple → root 0.8s if Guard ≥25

### LEVEL 48 — Thornlash (Rank 5)

- bleed +30%

### LEVEL 49 — Barkhide (Rank 3)

- DR +16%

### LEVEL 50 — EARTHEN HOLD (Rank 1)

- 6s buff
- roots last +0.5s
- pulses +25% damage
- +5 Guard/sec while active

────────────────────────────────────────

# LEVEL 51–60 — EARTH ASCENDANT TIER

(Max-control identity, root → slam → pulse combos)

### LEVEL 51 — Ground Slam (Rank 2)

- +15% damage

### LEVEL 52 — Nature’s Grasp (Rank 3)

- cone-root +0.3s

### LEVEL 53 — Stonepulse (Rank 4)

- +20% damage

### LEVEL 54 — Vinehold (Rank 4)

- immobilize 1.7s

### LEVEL 55 — Fracture Swing (Rank 5)

- +25% damage
- +15% vs rooted

### LEVEL 56 — Uproot (Rank 5)

- root 1.4s
- +8 Guard

### LEVEL 57 — Thornlash (Rank 6)

- bleed +35%

### LEVEL 58 — Brace (Rank 5)

- DR increased to –40%

### LEVEL 59 — Ironroots (Rank 3)

- terrain DR +3%
- terrain root bonus +5%

### LEVEL 60 — NATURE’S JUDGMENT (Capstone)

- 8m eruption
- roots all enemies 1.5s
- deals heavy earth damage
- stagger 0.4s
- grants Iron Guard instantly

────────────────────────────────────────

## SECTION 3 — LEVEL 1–60 TRAINER SPELLBOOK

────────────────────────────────────────

# LEVEL 1–10 — FOUNDATION TIER

(Basic roots, stamina pacing, early Guard formation)

### LEVEL 1 — Rootbind Strike (Rank 1)

- light melee strike
- applies 1.0s root
- +2 Guard
- 8 stamina

### LEVEL 2 — Brace (Rank 1)

- 2s stance
- –20% damage taken
- roots applied during Brace last +0.2s
- 20 stamina

### LEVEL 3 — Thornlash (Rank 1)

- light bleed (3s)
- +1 Guard
- 10 stamina

### LEVEL 4 — Timberguard (Rank 1)

- +4 Guard
- +2 stamina regen for 6s
- 25 stamina

### LEVEL 5 — Guard Meter (Class Unlock)

Warden now gains Guard from:

- rooting
- terrain
- bracing
- blocking
- taking heavy bursts

### LEVEL 6 — Fracture Swing (Rank 1)

- heavy hit
- bonus damage vs rooted targets
- 30 stamina

### LEVEL 7 — Uproot (Rank 1)

- 4m knock-up → root (0.8s)
- 25 stamina
- +3 Guard

### LEVEL 8 — Stonepulse (Rank 1)

- 3m AoE pulse
- 10 stamina
- +2 stamina per enemy hit

### LEVEL 9 — Timberstep (Rank 1)

- short dash
- next root +0.2s
- 15 stamina

### LEVEL 10 — Rootbind Strike (Rank 2)

- +10% damage
- +0.1s root duration

────────────────────────────────────────

# LEVEL 11–20 — CONTROL ONLINE

(Guard becomes relevant, roots and pulses ramp)

### LEVEL 11 — Thornlash (Rank 2)

- bleed damage +15%

### LEVEL 12 — Nature’s Grip (Rank 1)

- ranged vine pull (6m)
- applies Cripple (–40% move)
- 20 stamina
- +2 Guard

### LEVEL 13 — Brace (Rank 2)

- DR increased to –25%

### LEVEL 14 — Grounded Focus (Passive)

- standing still 1s → +3 Guard

### LEVEL 15 — Fracture Swing (Rank 2)

- +10% damage
- rooted bonus +5%

### LEVEL 16 — Rootbind Strike (Rank 3)

- +0.1s root
- +3 Guard on hit

### LEVEL 17 — Barkhide (Rank 1)

- 6s buff
- +8% DR
- +3 Guard
- 25 stamina

### LEVEL 18 — Stonepulse (Rank 2)

- radius +1m
- +10 stamina on hit

### LEVEL 19 — Uproot (Rank 2)

- knock-up radius +1m
- root +0.2s

### LEVEL 20 — Nature’s Grasp (Rank 1)

- cone-root (5m)
- 35 stamina
- +4 Guard

────────────────────────────────────────

# LEVEL 21–30 — TERRAIN MASTERY TIER

(terrain bonuses unlock, Guard flows steadily)

### LEVEL 21 — Timberguard (Rank 2)

- duration +3s

### LEVEL 22 — Vinehold (Rank 1)

- immobilize: 1.2s
- 20 stamina
- scales strongly with Guard

### LEVEL 23 — Brace (Rank 3)

- DR increased to –30%

### LEVEL 24 — Stonecrack (Rank 1)

- fracture ground under target → stagger
- 30 stamina
- bonus damage vs elites

### LEVEL 25 — Thornlash (Rank 3)

- bleed damage +20%

### LEVEL 26 — Nature’s Grip (Rank 2)

- Cripple → root for 0.6s if Guard ≥25

### LEVEL 27 — Ground Slam (Rank 1)

- 6m earth shock
- stagger 0.3s
- requires Guard ≥25

### LEVEL 28 — Fracture Swing (Rank 3)

- +15% damage
- +10% vs rooted targets

### LEVEL 29 — Timberstep (Rank 2)

- dash range +1m
- next root +0.3s

### LEVEL 30 — Ironroots (Rank 1)

- while standing on natural terrain:
- +2 Guard/sec
- +5% DR
- +10% root duration

────────────────────────────────────────

# LEVEL 31–40 — ROOT DOMINANCE TIER

(Longer roots, stronger pulses, Guard tier progression)

### LEVEL 31 — Rootbind Strike (Rank 4)

- +0.2s root

### LEVEL 32 — Uproot (Rank 3)

- root becomes 1.2s
- +4 Guard

### LEVEL 33 — Pulseweave (Passive)

- all pulses +20% damage if Guard ≥25

### LEVEL 34 — Barkhide (Rank 2)

- DR +12%

### LEVEL 35 — Stonepulse (Rank 3)

- radius +1m
- stagger +0.1s

### LEVEL 36 — Vinehold (Rank 2)

- immobilize 1.4s
- +1 Guard per target hit

### LEVEL 37 — Thornlash (Rank 4)

- bleed +25%

### LEVEL 38 — Nature’s Grasp (Rank 2)

- cone-root +0.2s

### LEVEL 39 — Brace (Rank 4)

- DR increased to –35%

### LEVEL 40 — Grounded Aegis (Rank 1)

- while Guard ≥50:
- +8% DR
- roots apply stagger on break

────────────────────────────────────────

# LEVEL 41–50 — EARTHWARDEN TIER

(Guard mastery, choke control, AoE roots)

### LEVEL 41 — Fracture Swing (Rank 4)

- +20% damage

### LEVEL 42 — Stonecrack (Rank 2)

- +20% stagger duration

### LEVEL 43 — Vinehold (Rank 3)

- immobilize 1.6s

### LEVEL 44 — Uproot (Rank 4)

- knock-up +0.1s
- +6 Guard

### LEVEL 45 — Ironroots (Rank 2)

- terrain DR bonus +3%

### LEVEL 46 — Rootbind Strike (Rank 5)

- +0.1s duration
- +5 Guard

### LEVEL 47 — Nature’s Grip (Rank 3)

- Cripple → root 0.8s if Guard ≥25

### LEVEL 48 — Thornlash (Rank 5)

- bleed +30%

### LEVEL 49 — Barkhide (Rank 3)

- DR +16%

### LEVEL 50 — EARTHEN HOLD (Rank 1)

- 6s buff
- roots last +0.5s
- pulses +25% damage
- +5 Guard/sec while active

────────────────────────────────────────

# LEVEL 51–60 — EARTH ASCENDANT TIER

(Max-control identity, root → slam → pulse combos)

### LEVEL 51 — Ground Slam (Rank 2)

- +15% damage

### LEVEL 52 — Nature’s Grasp (Rank 3)

- cone-root +0.3s

### LEVEL 53 — Stonepulse (Rank 4)

- +20% damage

### LEVEL 54 — Vinehold (Rank 4)

- immobilize 1.7s

### LEVEL 55 — Fracture Swing (Rank 5)

- +25% damage
- +15% vs rooted

### LEVEL 56 — Uproot (Rank 5)

- root 1.4s
- +8 Guard

### LEVEL 57 — Thornlash (Rank 6)

- bleed +35%

### LEVEL 58 — Brace (Rank 5)

- DR increased to –40%

### LEVEL 59 — Ironroots (Rank 3)

- terrain DR +3%
- terrain root bonus +5%

### LEVEL 60 — NATURE’S JUDGMENT (Capstone)

- 8m eruption
- roots all enemies 1.5s
- deals heavy earth damage
- stagger 0.4s
- grants Iron Guard instantly

────────────────────────────────────────

## SECTION 4 — TALENT TREES (FULL 9-TIER REBUILD)

### Warden — Timberheart / Earthshatter / Rootweaver

────────────────────────────────────────

# 4.0 TALENT OVERVIEW

Warden talent design principles:

- heavy emphasis on roots, Guard, terrain, brace, stamina pacing
- no pets
- no spellcasting
- no fantasy drift (pure grounded bruiser)
- classic 9-tier / 40-point deep structure
- 3 trees: Defense, Offense, Control

Trees:

1. Timberheart — defensive guard mastery / survival / mitigation
2. Earthshatter — bruiser offense / heavy swings / pulses
3. Rootweaver — pure control / roots / slows / pulses / chokeholding

────────────────────────────────────────

# 4.1 TIMBERHEART — DEFENSE / GUARD / SURVIVAL TREE

### TIER 1 (0 Points Required)

Barkplate — 5 Ranks

+2/4/6/8/10% Armor while Guard ≥25.

Firm Footwork — 3 Ranks

Dodging an attack grants +1/2/3 Guard (1s ICD).

Naturebound — 1 Rank

+5% DR while on natural terrain.

──────────────────

### TIER 2 (5 Points Required)

Deep Roots — 5 Ranks

Roots you apply last +0.05/0.1/0.15/0.2/0.25s longer.

Timbershield — 2 Ranks

After using Brace, gain +4/8 Guard.

Earthen Fortitude — 1 Rank

While Guard ≥50, gain +5% max HP.

──────────────────

### TIER 3 (10 Points Required)

Stonehide — 5 Ranks

–1/2/3/4/5% damage taken while stationary.

Rooted Will — 3 Ranks

Cannot be knocked back below 25/40/50 Guard.

Pulse Recovery — 1 Rank

Every pulse heals you for 1% max HP.

──────────────────

### TIER 4 (15 Points Required)

Ironbark Brace — 5 Ranks

Brace DR increased by +2/4/6/8/10%.

Tremor Ward — 3 Ranks

Breaking a root grants 2/4/6 Guard.

Nature’s Resilience — 1 Rank

Taking heavy damage grants +10 Guard (10s ICD).

──────────────────

### TIER 5 (20 Points Required)

Heartwood Regrowth — 5 Ranks

While Guard ≥25, regenerate 0.5/1/1.5/2/2.5% HP every 6 seconds.

Timber Surge — 1 Rank

Using Timberguard grants +15 stamina instantly.

──────────────────

### TIER 6 (25 Points Required)

Earthen Endurance — 5 Ranks

–1/2/3/4/5% damage taken per enemy within 5m (max 3 stacks).

Stoneform — 3 Ranks

When Guard ≥50, receive 2/4/6% more healing.

Forest Sentinel — 1 Rank

+10 Guard when entering combat.

──────────────────

### TIER 7 (30 Points Required)

Shell of the Ancients — 5 Ranks

+1/2/3/4/5% DR for 6s after rooting a target.

Solid Ground — 3 Ranks

Standing on natural terrain grants +2/4/6% extra DR.

Steadfast Step — 1 Rank

You cannot be slowed below 70% move speed while Guard ≥50.

──────────────────

### TIER 8 (35 Points Required)

Heart of Oak — 2 Ranks

While Guard ≥50 → +4/8% DR and +10/20 stamina regen.

Timber Pulse — 3 Ranks

When you Brace, emit a 4m pulse dealing 5/10/15% weapon damage.

Nature’s Patience — 1 Rank

Root durations reduced 20% on you.

──────────────────

### TIER 9 (40 Points Required) — CAPSTONE

THE TIMBERHEART

For 10 seconds:

- Guard cannot fall below 25
- +15% DR
- +6 Guard/sec
- roots applied have +0.4s duration
- Brace lasts 1s longer
- pulses deal +35% damage

────────────────────────────────────────

# 4.2 EARTHSHATTER — OFFENSE / PULSES / HEAVY STRIKES TREE

### TIER 1 (0 Points Required)

Shatterforce — 5 Ranks

Fracture Swing deals +3/6/9/12/15% more damage.

Pulse Edge — 3 Ranks

Pulse damage +5/10/15%.

Groundline — 1 Rank

Your first attack after moving 3m deals +8% damage.

──────────────────

### TIER 2 (5 Points Required)

Rendstone — 5 Ranks

Thornlash bleed damage +4/8/12/16/20%.

Cracked Earth — 2 Ranks

Using Stonecrack increases next heavy attack by 6/12%.

Force of Nature — 1 Rank

Heavy attacks grant +3 Guard.

──────────────────

### TIER 3 (10 Points Required)

Tremor Might — 5 Ranks

Ground Slam deals 4/8/12/16/20% more damage.

Pulverize — 3 Ranks

Heavy attacks deal +1/2/3% more damage per 10 Guard.

Stonewind — 1 Rank

Heavy attacks cost 10 less stamina.

──────────────────

### TIER 4 (15 Points Required)

Fracturing Roots — 5 Ranks

You deal +2/4/6/8/10% more damage to rooted targets.

Seismic Rhythm — 3 Ranks

After a pulse → next attack +10/20/30% speed.

Ironknell — 1 Rank

Roots that break deal +25% pulse damage.

──────────────────

### TIER 5 (20 Points Required)

Bladed Stone — 5 Ranks

Bleeds tick 3/6/9/12/15% faster.

Crack the Earth — 1 Rank

Stonecrack radius +2m.

Earthen Weight — 1 Rank

Heavy attacks slow enemy by 30% for 2s.

──────────────────

### TIER 6 (25 Points Required)

Slam Momentum — 5 Ranks

Ground Slam grants +2/4/6/8/10 stamina on hit.

Tectonic Might — 3 Ranks

+1/2/3% damage per enemy in pulse radius.

Worldsplitter — 1 Rank

Fracture Swing deals +15% bonus damage on natural terrain.

──────────────────

### TIER 7 (30 Points Required)

Rupture — 5 Ranks

Thornlash initial hit +5/10/15/20/25% damage.

Shatterstep — 3 Ranks

After Timberstep, next attack crits for +10/20/30% damage bonus.

Earthrage — 1 Rank

Ground Slam pulses twice.

──────────────────

### TIER 8 (35 Points Required)

Quakeflow — 2 Ranks

Every 4 pulses → next heavy attack +20/40% damage.

Stoneheart Fury — 3 Ranks

When Guard ≥50 → heavy attacks +4/8/12% damage.

Crushing Presence — 1 Rank

Enemies within 5m deal –8% damage.

──────────────────

### TIER 9 (40 Points Required) — CAPSTONE

THE EARTHSHATTER

For 8 seconds:

- heavy attacks crit
- pulses deal +50% damage
- Stonepulse has no cooldown
- Ground Slam becomes free
- all heavy attacks cause mini-quakes (2m AoE)

────────────────────────────────────────

# 4.3 ROOTWEAVER — CONTROL / ROOTS / CHOKE SPECIALIST TREE

### TIER 1 (0 Points Required)

Quickroot — 5 Ranks

Rootbind Strike cooldown –2/4/6/8/10%.

Binding Vines — 3 Ranks

Roots apply –2/4/6% damage debuff for 3s.

Snarecraft — 1 Rank

First root applied in combat lasts +0.3s.

──────────────────

### TIER 2 (5 Points Required)

Deep Grasp — 5 Ranks

Nature’s Grip Cripple duration +0.1/0.2/0.3/0.4/0.5s.

Chokewood — 2 Ranks

Roots apply 10/20% slow for 2s after ending.

Entangler’s Sense — 1 Rank

+4% accuracy vs slowed/rooted targets.

──────────────────

### TIER 3 (10 Points Required)

Thornbite — 5 Ranks

Roots deal +3/6/9/12/15% pulse damage.

Binding Pressure — 3 Ranks

Each root applied grants +1/2/3 Guard.

Cradle of Earth — 1 Rank

Roots applied while Guard ≥25 stagger targets 0.2s.

──────────────────

### TIER 4 (15 Points Required)

Coiling Roots — 5 Ranks

Root duration +0.05/0.1/0.15/0.2/0.25s.

Underbark — 3 Ranks

Roots break threshold +1/2/3 hits.

Grasp of Stone — 1 Rank

Roots break with a 4m pulse.

──────────────────

### TIER 5 (20 Points Required)

Naturehold — 5 Ranks

Nature’s Grasp root radius +1/2/3/4/5m.

Briarweb — 1 Rank

Applying 3 roots within 6s creates a 6m snare zone.

Grabbing Earth — 1 Rank

Roots spread to a second nearby enemy (8m).

──────────────────

### TIER 6 (25 Points Required)

Vineburst — 5 Ranks

Roots that expire deal +6/12/18/24/30% pulse damage.

Entangling Force — 3 Ranks

When rooting an enemy → +4/7/10 stamina.

Tangleform — 1 Rank

Using Brace extends all active roots by +0.3s.

──────────────────

### TIER 7 (30 Points Required)

Crippling Spirits — 5 Ranks

Rooted enemies deal 3/6/9/12/15% less damage.

Rough Terrain — 3 Ranks

Enemies moving through your roots are slowed 10/20/30%.

Earthbind Veins — 1 Rank

Roots refresh when target is struck by Ground Slam.

──────────────────

### TIER 8 (35 Points Required)

Thornweb — 2 Ranks

Applying a root → deals 15/30% of Thornlash’s bleed instantly.

Chokeburst — 3 Ranks

Breaking a root emits a second pulse at 25/50/75% power.

Earth Snarl — 1 Rank

Roots also apply a 1s silence (bosses immune).

──────────────────

### TIER 9 (40 Points Required) — CAPSTONE

THE ROOTWEAVER

For 10 seconds:

- all roots become AoE (5m splash)
- root duration +0.4s
- pulses ×2 hits
- Nature’s Grip becomes instant
- Thornlash auto-applies on root
- enemies rooted by you take +12% more damage

────────────────────────────────────────

## SECTION 5 — CLASS QUESTLINES (LEVEL 10 → 60)

### Warden — Trials of Bark, Stone, and Root

────────────────────────────────────────

# LEVEL 10 — TRIAL OF FIRST BARK

Questline: “The Barkbound Rite”

Purpose: teach Guard → Brace fundamentals, natural-terrain bonuses, and first rooting rhythm.

### Part 1 — “Stand Firm”

Objectives:

- Use Brace to withstand 3 trainee strikes.
- Maintain Guard above 20 for 5 seconds.

Systems taught:

- Guard stability
- Brace DR

Reward:

- Brace Rank 2 confirmation
- Bark-etched bracer (cosmetic)

### Part 2 — “Root the Wildling”

Objectives:

- Root 2 training dummies using Rootbind Strike.
- Prevent them from reaching you for 3 seconds.

Systems taught:

- root → spacing
- root uptime timing

Reward:

- Rootbind Strike mastery tip

### Part 3 — “Grounded Heart”

Objectives:

- Fight on natural ground.
- Keep Guard above 25 for 10 seconds.

Systems taught:

- natural-terrain interaction

Reward:

- Passive: +1% DR on natural terrain (minor narrative unlock)

────────────────────────────────────────

# LEVEL 20 — TRIAL OF EARTH & RESOLVE

Questline: “The Tremor Path”

Purpose: teach pulses, heavy tools, and Guard-stamina pacing.

### Part 1 — “Shatter the Stone Effigy”

Objectives:

- Use Ground Slam on 3 stone targets.
- Trigger at least 2 pulses.

Systems taught:

- pulse radius
- pulse spacing

Reward:

- Ground Slam Rank 2

### Part 2 — “Hold the Line”

Objectives:

- Stand in a choke and root 3 advancing trainees.
- Maintain Guard above 30 while doing so.

Systems taught:

- choke-control identity
- root → Guard synergy

Reward:

- Rootbind Strike Rank 2

### Part 3 — “The Guarded Flow”

Objectives:

- Alternate Brace → Heavy Attack → Brace.
- Complete the sequence twice without dropping Guard below 15.

Systems taught:

- stamina pacing
- Brace → attack rhythm

Reward:

- Timberguard (Rank 1)

────────────────────────────────────────

# LEVEL 30 — TRIAL OF THE THREE WOODS

Questline: “Bark, Briar, Stone”

Purpose: introduce full rotation: root → pulse → heavy → Guard cycle.

### Part 1 — “Briar Loop”

Objectives:

- Apply Thornlash bleed.
- Root the target within 3 seconds.
- Trigger pulse from root break.

Systems taught:

- bleed → root → pulse linking

Reward:

- Thornlash Rank 2

### Part 2 — “Stone Rhythm”

Objectives:

- Use Stonecrack to weaken an enemy.
- Land 2 heavy attacks during the debuff.

Systems taught:

- short damage windows

Reward:

- Stonecrack Rank 2

### Part 3 — “The Timber Cycle”

Objectives:

- Achieve Guard 50.
- Spend stamina until Guard drops below 20.
- Regain Guard using Timberguard.

Systems taught:

- full Guard cycle

Reward:

- Timberguard Rank 2

────────────────────────────────────────

# LEVEL 40 — TRIAL OF THE ANCIENTS

Questline: “The Oldwood’s Patience”

Purpose: teach advanced choke control and multi-root rotations.

### Part 1 — “The Living Snare”

Objectives:

- Root 3 enemies within 8 seconds.
- Maintain at least one root active for 10 consecutive seconds.

Systems taught:

- root chaining

Reward:

- Nature’s Grip Cripple (Rank 2)

### Part 2 — “Pulse of the Mountain”

Objectives:

- Use Ground Slam to hit 3 enemies at once.
- Trigger 2 pulses.

Systems taught:

- AoE interaction fundamentals

Reward:

- Ground Slam Rank 3

### Part 3 — “The Guarded Heart”

Objectives:

- Reach Guard 60.
- Maintain it for 6 seconds while under attack.

Systems taught:

- high-Guard defensive windows

Reward:

- Warden title: “Stone-Held”

────────────────────────────────────────

# LEVEL 50 — TRIAL OF IRONBARK ASCENT

Questline: “The Burden of Roots”

Purpose: learn elite control, multi-target roots, and pulse-burst sequencing.

### Part 1 — “The Many Grasped”

Objectives:

- Apply 5 roots in under 10 seconds.
- Land a Ground Slam to refresh at least one root (if talented).

Systems taught:

- high-volume rooting
- root → slam refresh loop

Reward:

- Rootbind Strike Rank 4

### Part 2 — “The Pulse Tide”

Objectives:

- Emit 4 pulses in 8 seconds.
- Must include at least 2 heavy-attack pulses.

Systems taught:

- pulse chaining

Reward:

- Stonepulse (Rank 2)

### Part 3 — “The Ironbark Stand”

Objectives:

- Survive an elite foe for 15 seconds.
- Guard must not drop below 20.

Systems taught:

- Guard maintenance under elite pressure

Reward:

- Ironbark cosmetic crest

────────────────────────────────────────

# LEVEL 60 — TRIAL OF THE WARDEN

Questline: “Rooted in the World’s Spine”

Purpose: capstone mastery of root → pulse → Guard loops under raid-style pressure.

### Part 1 — “The Endless Snare”

Objectives:

- Maintain at least one root on targets for 20 straight seconds.
- Break at least 3 roots manually (via pulses or heavy attacks).

Reward:

- Rootweaver mastery (cosmetic effect)

### Part 2 — “Pulse of the Deep”

Objectives:

- Emit 8 pulses in 12 seconds.
- Must include at least 1 Ground Slam, 1 Stonepulse, and 1 root-break pulse.

Reward:

- Stonepulse Rank 3

### Part 3 — “The Warden’s Verdict”

Objectives:

- Reach Guard 60.
- Use every major tool: Brace → Root → Heavy → Pulse → Timberguard in one sequence.

Reward:

- Title: “Warden of the Oldworld”
- Class capstone narrative completion.

────────────────────────────────────────

## SECTION 6 — CLASS SYSTEMS & AI INTERACTION

### Warden — Root Engine / Guard Engine / Pulse Engine / Terrain Engine

────────────────────────────────────────

# 6.0 SYSTEM OVERVIEW

Warden combat is governed by four interconnected engines:

1. Root Engine — hard control, stagger windows, heavy-attack empowerment
2. Guard Engine — defensive meter controlling DR, pulse scaling, and stance access
3. Pulse Engine — AoE pressure bursts from earth-based strikes
4. Terrain Engine — natural-ground bonuses that shape positioning and pacing

These engines establish Warden as Emberwild’s pure control bruiser, defined by:

- immobilization
- stagger
- choke dominance
- Guard-scaling durability
- pulse-based AoE
- rooted-target execution

────────────────────────────────────────

# 6.1 ROOT ENGINE

Warden is the strongest root/control class in Emberwild.

### Root Triggers

Roots are applied by:

- Rootbind Strike
- Vinehold
- Nature’s Grip
- Uproot (root on landing)
- Ground Slam (root if Guard ≥25 with talents)
- Cone-root abilities (Nature’s Grasp)

### Root Standard Rules

- baseline root durations from 0.8s → 1.7s
- roots do not DR in PvE
- roots apply Cripple if Guard ≥25
- roots break on:

– heavy movement attempts

– leap abilities

– certain boss mechanics

### Root Break Effects

When a root breaks:

- triggers a root-break pulse (small earth burst)
- enables Fracture Swing bonus damage
- may trigger Grounded Aegis stagger (Rank 40 passive)

### Root Benefits to the Player

Wardens deal:

- +8–25% damage to rooted targets (Fracture scaling)
- +15–35% bonus bleed uptime if Thornlash is active
- +Guard on root application (2–6 depending on skill)

### AI Response to Roots

Mobs try to:

- break roots by shifting threat
- cast ranged abilities if immobilized
- enraged mobs ignore roots for 1–2 seconds
- elites save “shake-off” abilities for long roots
- bosses break after EXACT set control windows

Root Engine defines Warden’s tempo, dictating when bursts and Guard swings happen.

────────────────────────────────────────

# 6.2 GUARD ENGINE

Guard is the core of Warden identity — a defensive meter that fuels DR, stances, and damage windows.

### Guard Gain Sources

- rooting enemies
- using Brace
- using Timberguard
- taking structured damage (heavy hits give more)
- grounding on natural terrain
- Uproot (guaranteed Guard generation)
- heavy-attack pulses

### Guard Tiers

0–19 Guard — Low Stability

- minimal DR
- basic roots
- pulse damage baseline

20–39 Guard — Stable

- roots gain 0.1–0.2s
- pulses stronger
- stamina regen slightly higher

40–59 Guard — Deep Guard

- DR +6%
- stagger added to heavy abilities
- pulses +20%

60+ Guard — Iron Guard Tier

- DR +12%
- roots cause stagger
- root breaks cause heavy pulses
- eligibility for capstone buffs

### Guard Decay

- out of combat: –5 every 4s
- in combat (no block/bracing or rooting for 5s): –3 every 6s
- standing still: reduces decay by 50%
- being on natural terrain: reduces decay by 65%

Guard Engine ensures Warden feels durable only with correct pacing, not by default.

────────────────────────────────────────

# 6.3 PULSE ENGINE

Pulses are small earth-shock AoE bursts.

### Pulse Sources

- Stonepulse
- Ground Slam
- root breaks
- certain Guard thresholds
- Earthen Hold + Brace synergy

### Pulse Rules

- radius: baseline 5m → 7m with leveling
- damage moderate, but frequent
- pulses cannot stagger bosses, only stun trash
- pulses scale with Guard:

– +10% at Guard ≥20

– +20% at Guard ≥40

– +35% at Guard ≥60 (Iron Guard)

### Pulse Interactions

- pulses refresh Thornlash bleed for 1s
- pulses count as AoE hits for stamina refund
- pulses open Fracture Swing bonus window
- pulses hit unlimited targets (reduced after 5 for load balance)

Pulse Engine defines Warden’s AoE identity, replacing flashy magic with raw earth force.

────────────────────────────────────────

# 6.4 TERRAIN ENGINE

Warden gains meaningful bonuses only on real terrain, not stone floors or tiles.

### Eligible Terrain Types

- soil
- rock
- forest ground
- swamp earth
- hillside stone
- grassland
- dunes (Sandstrider overlap synergy)

### Terrain Bonuses

While standing on qualifying terrain:

- +1–3 Guard/sec (scales by level)
- +5–8% DR
- +10–15% root duration
- +5–10% pulse radius
- Guard decay reduced by 65%
- stamina regen +10%

### Terrain Lockouts

No bonuses in:

- dungeons with stone floors
- metal platforms
- spirit/void realms
- indoor planks

Warden is positionally dependent but rewarded more than anyone else for disciplined footwork.

────────────────────────────────────────

# 6.5 CONTROL & COMBO ENGINE

### Standard Combo (Baseline)

root → pulse → heavy → pulse → Brace → root

### Elite Combo

root → Stonecrack → Fracture Swing → pulse → Brace → Vinehold → slam

### Maximum Burst Combo (Level 60)

Nature’s Judgment → root AoE → Ground Slam → Stonepulse → Fracture Swing (rooted bonus) → pulse chain

These combos define the “momentum controller” playstyle.

────────────────────────────────────────

# 6.6 AI INTERACTION — WARDEN AS ENEMY

When an NPC Warden fights players:

### Melee AI behavior

- roots aggressively
- pulses on cooldown
- uses Brace at HP thresholds
- tries to force fights on terrain spots

### Ranged AI behavior

- attempts pulls (Nature’s Grip)
- roots and walks forward
- prioritizes pulse → root → heavy

### Elite AI

- saves Uproot for interrupts
- chains pulses in 3-hit cycles
- uses Brace during player burst

### Boss AI

- ignores roots except for timing windows
- uses anti-control shakes
- treats Guard like a stagger meter — burst when low

────────────────────────────────────────

# 6.7 AI INTERACTION — WARDEN AS ALLY

AI-controlled Warden allies:

- hold choke points
- prioritize rooting packs
- keep Guard 40–60 using Brace cycles
- use Ground Slam on 3+ targets
- stay on terrain patches that give bonuses
- protect ranged allies using pulsed stagger

────────────────────────────────────────

# 6.8 EDGE CASES & SPECIAL RULES

### If Warden is stunned:

- Guard does NOT decay
- roots remain active
- pulses disabled

### If Warden is silenced:

- rooting still works
- heavy attacks still work
- pulses still work

### If displaced (knockback):

- Guard pauses decay for 2 seconds
- terrain bonus re-checks instantly

### If immobilized:

- gains +3 Guard/sec
- cannot pulse unless hit

### If kited:

- Timberstep + grip solves gap
- roots extend slightly under Brace

────────────────────────────────────────

# 6.9 ROOT SPIKE WINDOWS

These are Warden’s equivalents to Priest Sanctity tiers.

### Root Spike A (short roots 0.8–1.0s)

- baseline
- unlocks heavy-attack bonus

### Root Spike B (1.1–1.3s)

- pulses +15%
- Guard +4

### Root Spike C (1.4–1.7s)

- pulses +30%
- stagger on break
- unlocks full combo chain

Spike windows define Warden’s power pacing.

────────────────────────────────────────

## SECTION 7 — VISUAL, AUDIO & ANIMATION IDENTITY

### Warden — Earthbound Control / Rootmaster / Guardbruiser Aesthetic

────────────────────────────────────────

# 7.1 VISUAL IDENTITY

Warden visuals express earth-rooted strength, terrain mastery, and controlled brutality — never flashy magic.

### Core Aesthetic Themes

- bark-woven armor
- layered leathers
- muted earth tones (greens, browns, slate)
- stone-runic accents
- controlled, grounded movements
- roots, soil, dust, bark fragments
- pulses shown as ground-shock ripples

### Silhouette Language

Warden must always be visually readable by:

- wide, grounded stance
- heavier boots / greaves
- bark-woven shoulders
- vines wrapped around forearms
- heavy melee tools (club, hammer, axe)
- thick belts + tool pouches
- slight forward lean in combat

No robes, no glowing crystals, no animated magical sigils.

The Warden is purely physical with subtle natural resonance.

### Root Visuals

Roots are:

- sharp, fast, earth-colored
- appear from the ground (never from hands)
- snap upward in tension lines
- break apart into dust + bark splinters

Root duration tier telegraphs:

short roots → quick, sharp vines

mid roots → thicker branches

long roots → multiple roots + ground crack halo

### Pulse Visuals

Pulse identity = groundburst shockwaves

- low, wide ripples of dirt
- dust rings expanding outward
- small rock fragments lift off ground
- brighter crack-lines at Guard ≥ 60

Pulse color remains natural — no radiant magic.

### Guard Visuals

Guard is shown through subtle cues:

Guard <20 → faint glow around boots

Guard 20–39 → visible bracing posture

Guard 40–59 → subtle dust-lift around feet

Guard ≥60 → ground fissures faintly glow under stance

No traditional “shields” — Guard is stance + pressure.

### Terrain Visuals

When Warden stands on natural terrain:

- slight color correction around feet
- faint dust curls inward
- roots twitch subtly beneath the soil

This makes terrain dependency visually clear.

### Ultimate Visuals

Nature’s Judgment (Level 60 Capstone)

- ground cracks open in a 120° arc
- roots lash upward in a synchronized burst
- dust cloud erupts
- full-body braced posture
- rocks fall inward after the eruption

────────────────────────────────────────

# 7.2 ANIMATION THEMES

### General Movement

- heavy, grounded steps
- low center of gravity
- shoulders and hips stay square
- slight “weight shift” before all heavy abilities

### Combat Readiness

Idle combat stance:

- feet planted wide
- weapon slightly lowered
- torso angled forward
- breathing visibly deep

### Root Animations

All rooting animations originate from legs/stance, not hands.

- stomping motion
- heel-twist into soil
- downward shove toward ground
- strong feeling of exertion

Nature’s Grip pull:

- backstep or brace stance
- vine latches outward via ground path

### Pulse Animations

Pulse = impact + recoil

- weapon slam into ground
- brief crouch + explosive extension
- shoulder recoil as earth bursts outward

### Heavy Attacks

- full torso rotation
- hip-driven swings
- feel “slow but overwhelming”
- dust lifts at impact point

### Brace Animation

- shield stance
- knees bent
- shoulder lowered
- torso flex
- subtle tremor effect when struck

### Terrain Stance Animation

When terrain bonuses activate:

- toes grip / dig slightly
- dust kicks up
- posture settles downward

### Uproot

- forward stomp
- both arms braced outward
- ground cracks as target lifts

### Nature’s Judgment (Ultimate)

- staff/weapon planted into soil
- massive torque wind-up
- wide left-to-right eruption
- torso twists violently
- recoil pushes Warden slightly back

────────────────────────────────────────

# 7.3 AUDIO IDENTITY

The Warden’s entire soundscape is earth, weight, pressure, and strain.

### Core Sound Families

### Roots

- sharp wooden snaps
- splintering bark
- subtle underground rumble
- vine crack sounds

### Pulses

- deep, concussive thumps
- low-frequency shockwaves
- debris scattering
- sub-bass rumbles at Guard ≥60

### Heavy Attacks

- stone-on-wood impact
- heavy swoosh + grunt
- ground-thud recovery

### Brace

- armored creak
- compressed-air pressure sound
- dull “thud” when attacked

### Terrain Connection

- soft soil crunch
- granular raking noise
- faint low-end resonance

### Movement

- heavy boots
- weighted cloth movement
- gear clattering lightly

### Ultimate — Nature’s Judgment

- deep rumbling swell (1 second)
- explosive crack-boom
- cascading rockfall echoes
- widening dust-blast sound

This audio identity reinforces that Warden is a physical dominator, not a magical caster.

────────────────────────────────────────

## SECTION 8 — BUILD THEORY, META, AND ENDGAME PATHING

### Warden — Control Bruiser / Rootmaster / Terrain Sentinel

────────────────────────────────────────

# 8.1 STAT PRIORITIES (BY BUILD)

### A. Rootmaster Control (DPS-Controller Hybrid)

1. Strength
2. Stamina
3. Control Power (root duration / stagger strength)
4. Armor
5. Haste (to fit roots between pulses)

### B. Pulsebreaker (AoE / Dungeon Control)

1. Strength
2. Stamina
3. Pulse Damage
4. Guard Generation
5. Heavy Attack Power

### C. Ironbark Warden (Tank Variant)

1. Stamina
2. Armor
3. Strength
4. Guard Retention
5. Haste

### D. Terrain Sentinel (Terrain Specialist / Raids)

1. Stamina
2. Terrain Bonus Mods
3. Strength
4. Guard Retention
5. Pulse Radius

────────────────────────────────────────

# 8.2 WEAPON SYNERGY

### Heavy Axes / Great Clubs

Best for DPS-control hybrid.

- highest baseline Strength
- large rooted-target bonus on Fracture Swing
- powerful pulses on heavy attacks

### Warhammers

Tank-favored.

- highest stagger chance
- more Guard per heavy
- slow, controlled pacing

### One-Hand + Shield

- best for choke control
- Brace uptime enhanced
- root durations more consistent

### Dual-Wield Light Tools (rare builds)

- faster root cycling
- weaker pulses
- used only for niche PvP builds

────────────────────────────────────────

# 8.3 ABILITY SYNERGY (REAL ROTATIONS)

### A. Rootmaster Rotation (Core DPS-Control)

root → bleed → pulse → heavy → pulse → brace → root refresh

Best for: boss control, elite fights.

### B. Pulsebreaker Rotation (AoE packs)

slam → pulse → pulse → root cone → heavy → pulse chain

Full dungeon identity.

### C. Ironbark Tank Rotation

Brace → root → heavy → Guard50 stance → slam → brace reset

Uses Guard to stay alive while controlling entire packs.

### D. Terrain Sentinel Rotation (advanced)

fight on terrain → root chain → heavy → pulse → terrain Guard regen → slam → repeat

Ideal for outdoor bosses and overworld elites.

────────────────────────────────────────

# 8.4 ENDGAME ARCHETYPES (OFFICIAL)

### BUILD A — ROOTMASTER EXECUTIONER

(40 Root / 14 Pulse)

Role: Elite killer / small-group control DPS

Strengths: strongest rooted-target burst

### BUILD B — IRONBARK GUARDIAN

(40 Guard / 14 Root)

Role: Defensive tank bruiser

Strengths: best DR + Guard uptime

### BUILD C — PULSEBREAKER DRUID

(40 Pulse / 14 Guard)

Role: AoE dungeon destroyer

Strengths: unmatched trash-pack control

### BUILD D — TERRAIN SENTINEL

(32–36 Root / 18–22 Guard)

Role: overworld master

Strengths: terrain bonuses → best sustain

### BUILD E — THE CHOKEMASTER

(28–32 Root / 22–26 Pulse)

Role: hallway dominance

Strengths: unbeatable in narrow corridors

### BUILD F — IRONFRACTURE

(40 Guard / 14 Pulse)

Role: mixed tank/control hybrid

Strengths: best Guard flow, best stability

────────────────────────────────────────

# 8.5 LEVELING PATH (1–60)

### Fastest Leveling

Pulse → Root

Reason: pulse AoE + roots prevent chip damage.

### Safest Leveling

Guard → Root

Reason: Brace cycles protect you constantly.

### Group Leveling

Root → Pulse

Reason: teammates benefit heavily from grouped roots.

────────────────────────────────────────

# 8.6 MATCHUP ANALYSIS (TUNED)

### Warden vs Melee

S-tier

- roots punish movement
- pulses interrupt combos
- heavy hits crush rooted targets

### Warden vs Ranged

C-tier

- grip helps, but uptime inconsistent
- kite-able
- terrain bonuses may not apply indoors

### Warden vs Casters

B-tier

- roots useful unless cleansed
- pulses interrupt some cast windows
- struggles vs long-range spirit classes

### Warden vs Tanks

A-tier

- roots invalidate positional DR
- pulses good for chip pressure

### Warden vs High-Mobility Classes

C-tier

- leap-breakers counter roots

────────────────────────────────────────

## SECTION 9 — PASSIVE SYSTEMS & ROLE SUMMARY (TUNED EDITION)

### Warden — Earthbound Controller / Guardbruiser / Root Sentinel

────────────────────────────────────────

# 9.1 PASSIVE SYSTEMS (TUNED)

### 1. Earthen Weight (Core Passive)

Warden takes 4% less physical damage baseline.

Reinforces bruiser identity.

### 2. Rootmaster Instinct

Every time the Warden applies a root:

- +2 Guard
- root duration +5%
- pulses deal +5% for 3s

### 3. Guarded Posture

While Guard ≥40:

- +8% DR
- rooted targets take +10% damage
- stamina regen +15%

### 4. Unbroken Soil (Terrain Mastery)

Standing on natural terrain grants:

- +2–5 Guard/sec (scales with level)
- +5% DR
- +10% root duration
- –65% Guard decay

### 5. Barkflesh Resilience

When Barkhide is active:

- Warden gains 5% reduction from ranged attacks
- bleed durations increased by 10%

### 6. Earthpulse Momentum

Landing a pulse grants:

- +2 stamina
- +5% pulse damage for 4 seconds
- refreshes Thornlash bleed

### 7. Rootbreaker Aegis

When a root breaks:

- triggers small stagger
- Guard +3
- pulses deal +10% for 3s

### 8. Stonehold Discipline

During Brace:

- Guard decay paused
- next heavy attack deals +15%
- roots gain +0.1s duration

### 9. Grip of the Wild

Pull abilities (Nature’s Grip) gain:

- +15% range
- snare duration increased to 1.5s
- +2 Guard on successful pull

────────────────────────────────────────

# 9.2 ROLE SUMMARY AT LEVEL 60 (TUNED)

### Primary Role — CONTROL BRUISER (Root + Pulse Dominance)

Warden excels at:

- locking enemies in place
- staggering elites
- controlling choke points
- punishing movement attempts
- heavy hits on rooted targets
- area denial via pulses

Damage model:

- moderate opener
- strong mid-game
- brutal rooted-target spike windows
- sustained AoE through pulses

Warden wins by dictating pace and position.

---

### Secondary Role — TERRAIN SENTINEL (Outdoor Specialist)

- best outdoor overworld controller
- strong elite-hunter in forests, hills, dunes
- Guard retention high on terrain
- root duration bonus powerful outdoors

---

### Tertiary Role — FRONTLINE SUPPORT (Tank-Adaptive)

- not a main tank
- but can frontline for small groups
- Guard consumption keeps Warden durable
- pulses interrupt trash packs
- roots provide controlled protection
- Brace + Barkhide gives short defensive windows

---

### Quaternary Role — BLEED WEAVER (Minor DoT Hybrid)

- Thornlash bleeds gain uptime from pulses
- useful on bosses that can be rooted or staggered

────────────────────────────────────────

# 9.3 COMBAT STRENGTHS (TUNED)

Warden is exceptionally strong in:

- 1v1 melee duels
- dungeon hallways
- elite packs
- overworld boss fights
- any terrain-heavy combat zone

Strengths:

- best roots in the game
- best stagger uptime
- top-tier pulse AoE
- best choke control
- Guard makes sustain predictable
- terrain bonuses reward mastery
- safe, consistent leveling path
- clean identity: physical control, not magic

────────────────────────────────────────

# 9.4 COMBAT WEAKNESSES (TUNED)

Warden deliberately struggles with:

- sustained ranged pressure
- indoor dungeon floors (no terrain bonuses)
- pure DPS races vs top classes
- high-mobility opponents
- spirit/caster snare break mechanics
- long-range kiting
- classes that ignore roots

These keep Warden in-check and prevent dominance.

────────────────────────────────────────

# 9.5 DESIGN INTENT SUMMARY — FINAL TUNED EDITION

Warden is not:

- a pet class
- a nature-mage
- a druid
- a ranged controller
- a healer

Warden IS:

- Emberwild’s master of roots
- the physical choke point controller
- the Guard-based bruiser
- the terrain sentinel
- the pulse-heavy AoE disrupter
- a methodical, grounded fighter
- a tank-adjacent controller, not a full tank

This tuned Section 9 finalizes Warden as a fully grounded, fully physical, positionally disciplined control bruiser, balanced under Patch 1.0 Combat Lock and aligned to the Priest reference model.

────────────────────────────────────────

WARDEN CLASS — COMPLETE.