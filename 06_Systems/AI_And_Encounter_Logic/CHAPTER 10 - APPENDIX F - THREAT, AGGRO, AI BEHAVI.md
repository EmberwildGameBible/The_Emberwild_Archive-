# CHAPTER 10 — APPENDIX F — THREAT, AGGRO, AI BEHAVIOR & TANK FORMULAS

---

# CHAPTER 10 — APPENDIX F

# THREAT, AGGRO, & AI BEHAVIOR SYSTEM (FULL REWRITE)

FINAL — Emberwild Game Bible v4.1

(Replaces all outdated AI logic)

────────────────────────

# SECTION F.0 — PURPOSE

This appendix defines:

- how creatures detect the player
- how they choose targets
- how they behave in combat
- when they flee, pursue, or disengage
- how pack and herd dynamics work
- how companions interact with AI
- how threat is calculated without MMO “aggro tables”

Everything is grounded in real animal behavior, not fantasy game rules.

────────────────────────

────────────────────────

# SECTION F.1 — DETECTION MODEL

Creatures detect the player by three senses:

### 1. Sight

- strongest in daylight
- weaker at night, in fog, or bushes
- prey = wider peripheral vision
- predators = strong front cone

### 2. Hearing

- triggered by footsteps, sprinting, weapon fire, combat
- varies by family (wolves > bears > boars)

### 3. Scent

- affected by:
    - wind direction
    - rain
    - player’s recent kills
    - open wounds
    - cooking fire smoke

### Detection rules:

- herbivores → flee on detection
- carnivores → stalk, warn, or charge
- scavengers → approach cautiously, test player behavior
- territorial predators → immediate aggression inside boundary

No magical detection, no sixth sense.

Everything feels natural.

────────────────────────

────────────────────────

# SECTION F.2 — THREAT EVALUATION

Threat is the AI’s internal “risk vs reward” calculation.

Creatures evaluate:

### 1. Player posture

- standing still = low threat
- crouched/moving carefully = low threat
- sprinting = medium threat
- drawing weapon = high threat
- attacking companion = extremely high threat

### 2. Player size profile

Influenced by:

- armor worn
- torch held
- number of players present
- companion presence

### 3. Creature state

- injured creatures are more desperate
- hungry creatures more aggressive
- mothers more protective
- pack leaders more bold
- Rare/Elite variants more confident

### 4. Territory

Inside territory = aggression +50%

Outside = baseline or defensive

### 5. Companion presence

Certain Family types react strongly to specific companions.

Examples:

- Cats fear boars
- Wolves fear bears
- Raptors fear larger cats
- Grazers fear all predators

────────────────────────

────────────────────────

# SECTION F.3 — ENGAGE / FLEE LOGIC (AGGRO RULES)

There are no MMO agro tables.

Creatures behave like animals.

### CREATURES ENGAGE IF:

- you enter their territory
- you wound them
- you threaten their pack/herd
- companions harass them
- you are near their food
- you move aggressively toward them

### CREATURES FLEE IF:

- injured (below certain HP thresholds)
- morale collapses
- pack leader dies
- the player fires warning shots
- fire sources are introduced (torches)
- other predators appear

### FLEE THRESHOLDS BY TIER:

| Tier | HP Threshold to Consider Fleeing |
| --- | --- |
| Normal | 40–50% |
| Rare | 30–40% |
| Elite | 20–30% |
| Rare Elite | 15–25% |
| Mini-Boss | 0–10% (almost never flee) |
| Boss | Never flee (dungeon) |

Rare Elites flee later but panic harder once they lose morale.

────────────────────────

────────────────────────

# SECTION F.4 — PACK AI SYSTEMS

Pack-based creatures (wolves, raptors, hyenas):

### Pack Size

- Outer zones: 2–3
- Inner: 3–5
- Heartlands: 4–6

### Pack Roles

- Leader: initiates aggression, highest HP
- Flankers: attack from sides
- Pressurers: stagger/harass
- Tail: prevents escape

### Pack AI Behavior:

- circle before attacking
- test the player’s positioning
- coordinate charges
- retreat if leader dies
- howl to call reinforcements (within limits)
- avoid fire and explosives

Pack AI is predictable but deadly when reading positional weakness.

────────────────────────

────────────────────────

# SECTION F.5 — TERRITORIAL BEHAVIOR

Some families create “territory bubbles.”

These can overlap in Heartlands.

### Warning Sequence:

1. Stare
2. Growl / Call
3. Step forward
4. Charge

If the player backs away during steps 1–2, aggro resets.

If not, engagement begins.

Territorial creatures include:

- boars
- bears
- large cats
- elite wolves
- serpents
- raptors

────────────────────────

────────────────────────

# SECTION F.6 — COMBAT AI (GROUND RULES)

### NO magical abilities.

Creatures only use realistic:

- charges
- swipes
- bites
- grabs
- pins
- leaps
- rakes
- tail whips (reptiles)

### NO “rotation cycles.”

AI reacts dynamically based on:

- player stance
- companion behavior
- hitbox proximity
- creature fatigue
- environmental obstacles

### Creatures use Stamina-like logic:

- they can’t attack endlessly
- they pause to breathe
- they can stagger
- they retreat if overwhelmed

### Positioning logic:

- predators try to reach your back
- grazers try to run past you
- burrowers pop from specific angles
- snakes coil before striking (wind-up telegraph)

All animations have clear, fair tells.

────────────────────────

────────────────────────

# SECTION F.7 — COMPANION INTERACTION WITH AI

Creatures react to companions differently by family:

### Fear reactions

- grazers flee at sight of wolves/cats
- small predators avoid bears
- certain reptiles avoid boars
- birds avoid large felines

### Aggression reactions

- predators target weaker companions
- Rare/Elite predators challenge companions
- pack hunters may try to isolate your companion

### Hate table (not MMO, but behavioral):

Some creatures have instinctive “hate” priorities:

1. Threatening player actions (weapon draw)
2. Companion harassment
3. Player positioning (blocking path)
4. Existing wounds (fresh blood increases aggression)
5. Scents (meat in inventory can provoke predators)

This is grounded, not gamified.

────────────────────────

────────────────────────

# SECTION F.8 — DISENGAGE LOGIC (LEASHING)

Creatures do not magically reset like MMO mobs.

They disengage when:

- the player leaves territory
- they lose morale
- their pack retreats
- the injury threshold is crossed
- the chase distance becomes too long
- fire or noise scares them off

When retreating:

- predators flee to dens
- grazers flee to herds
- scavengers disperse
- serpents return to cover

Creatures do NOT reset HP instantly — they recover naturally over time.

────────────────────────

────────────────────────

# SECTION F.9 — AI VARIATION BY TIER

### NORMAL

- simple patterns
- predictable aggression

### RARE

- slightly faster reaction times
- smarter flee decisions

### ELITE

- more aggression
- more stamina
- feint behaviors (small jukes)

### RARE ELITE

- best natural AI in overworld
- tight flanking
- persistent pursuit
- less predictable cooldowns
- more territorial

### MINI-BOSS

- handcrafted AI
- multiple staged behaviors
- environmental usage
- large wind-ups
- cannot be tamed

### BOSS

Dungeon-only:

- handcrafted multi-phase fights
- multi-angle attacks
- complex collision logic

────────────────────────

────────────────────────

# SECTION F.10 — DESIGN INTENT

AI should make encounters feel:

- natural
- fair
- readable
- tense
- skill-based
- grounded

The world doesn’t revolve around the player —

creatures behave like real wildlife with their own needs, territories, fears, and instincts.

────────────────────────