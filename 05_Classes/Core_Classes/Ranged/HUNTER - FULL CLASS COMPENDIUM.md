# HUNTER — FULL CLASS COMPENDIUM

---

# HUNTER — CLASS BIBLE (UNIFIED, PATCHED VERSION)

### Emberwild Design Document — FINAL REFERENCE FOR HUNTER

⸻

## SECTION 1 — CLASS OVERVIEW & IDENTITY

### **1.1 CLASS FANTASY**

The Hunter is Emberwild’s foundational ranged-combat archetype.

A master of line-of-sight, weak-point targeting, terrain control, and trap placement, the Hunter fights by reading the land, setting the pace, and striking from advantage — not by brute force.

**Identity pillars:**

- Precision over chaos
- Preparation over reaction
- Positioning over face-tanking
- Awareness over spam

Hunters excel in open fields, forests, high ridges, and long sightlines.

They struggle when cornered or overwhelmed, reinforcing deliberate, Classic-style tactical play.

⸻

## **1.2 COMBAT IDENTITY**

**Primary Role:**

- Ranged DPS / Control

**Secondary Role:**

- Scouting / Terrain Manipulation / Weak-Point Specialist

**Combat profile:**

- Strong sustained ranged DPS via Auto Shot + core shots
- High spike damage on weak points (head, heart, joints, glands)
- Best trap-based control in the class roster
- High mobility and kiting potential
- Extremely high “knowledge value” in group play

**Weaknesses:**

- Limited melee capabilities
- Vulnerable when enemies get inside dead-zone range
- Resource-dependent (ammo, Focus, Stamina)
- Requires good positioning to avoid line-of-sight breaks
- Light-to-medium armor only

The Hunter is the most Classic-like class in Emberwild: simple foundation, enormous mastery ceiling.

---

## **1.3 ARMOR & WEAPON PROFICIENCIES**

**Armor progression**

- Cloth — Level 1
- Leather — Level 1 (starts in Leather)
- Mail — Unlockable from a mid-level trainer (Hunter maximum is Mail; never Plate)

This mirrors Classic Hunters.

**Weapon families (fixed schema)**

**Ranged:**

- Bows
- Crossbows
- Guns
- Thrown weapons

**Melee:**

- One-Handed Swords
- One-Handed Axes
- Daggers
- Fist Weapons
- Two-Handed Axes
- Polearms (includes spears)
- Staves (utility/“walking staff” – not a main DPS option)

**Never allowed:**

- Any Maces (1H or 2H)
- Wands
- Plate armor
- Shields

**Weapon trainers**

Hunters start with only 1–2 weapon proficiencies depending on heritage.

All other allowed proficiencies must be purchased from weapon trainers in major hubs (Classic-style).

⸻

## **1.4 RESOURCES (FOCUS & STAMINA)**

**FOCUS — primary ranged resource**

- Derived from Intellect
- Regenerates steadily out of combat
- In-combat regen is partially reduced (“caster tax” rule)
- Spent on:
- Shots
- Aspects (certain stances)
- Tracking abilities
- Tactical utilities

Hunters have **medium Focus pools** and **high efficiency**.

**STAMINA — physical exertion / movement resource**

Spent on:

- Sprint bursts
- Trap placement tempo (getting traps down under pressure)
- Melee emergency abilities
- Brace / quick defensive reactions

Stamina regenerates quickly out of combat, slowly in combat.

**NO MANA**

Hunters do **not** use mana. They follow a Classic-style hybrid of:

- Ammo
- Auto Shot pacing
- Focus
- Stamina
- Movement-based advantage

⸻

## **1.5 EXPLORATION, TRACKING & TERRAIN MASTERY**

The Hunter is Emberwild’s **dedicated pathfinder**.

**Built-in exploration strengths:**

- Track footprints
- Track recent enemy scent trails
- Track blood
- Track rare creatures
- Identify weak points on physical enemies
- Reveal hidden terrain paths and shortcuts
- See spirit echoes (after a level-20+ class quest)
- Read approximate enemy level/difficulty by sound and movement patterns
- Gain small combat bonuses from elevation and natural cover

No other class has more raw exploration utility.

⸻

## **1.6 GROUP ROLE (DUNGEONS & OPEN WORLD)**

**Primary role**

- Ranged DPS with exceptional weak-point burst

**Secondary role**

- Control & utility via traps, roots, slows, kiting routes, and tracking intel

**In group content, Hunters:**

- Call and assign weak points for melee classes
- Maintain elevation-based DPS when possible
- Slow/control dangerous trash packs and patrols
- Handle environment-dependent mechanics (line-of-sight pulls, lure setups)
- Provide tracking info in dark, twisting, or narrow spaces
- Handle long-range pulls with precision
- Design and maintain kiting routes for tanks during resets or dangerous phases

Hunters shine in outdoor dungeons, tunneled spaces with windows/breaks, and any multi-path zone.

⸻

## **1.7 DAMAGE PROFILE & SCALING RULES**

**Core damage sources**

1. Auto Shot (ranged white damage)
2. Core shots (yellow damage)
3. Weak-Point Shots
4. DoT-style bleed and cripple effects
5. Trap damage (bleeds, minor spikes)
6. Finisher at high levels (Predator’s Shot)

**Primary scaling stats**

- Agility (crit, armor, ranged Attack Power)
- Weapon DPS (with Auto Shot speed normalized)
- Ammo tier
- Weapon skill (ranged)
- Focus efficiency (talents, Aspects)

**Damage shape**

- Consistent white-damage baseline
- High yellow-damage spikes
- High crit scaling
- Very high weak-point multipliers
- Medium trap damage, **very** high trap control

Hunters are among the strongest single-target ranged classes, but weaker at sustained AoE outside trap setups and carefully managed Multi-Shot windows.

⸻

## **SECTION 2 — CORE MECHANICS, CLASS SYSTEMS & BASELINE ABILITIES**

## **2.0 OVERVIEW**

The Hunter’s internal engine has six mechanical pillars:

1. Auto Shot Engine (ranged auto-attacks)
2. Weak-Point Logic (critical anatomy detection)
3. Trap System (control and terrain-based skill checks)
4. Tracking & Awareness (environmental reads)
5. Aspects (stances/toggles with bonuses and penalties)
6. Focus Economy (resource flow and shot pacing)

Every Hunter ability plugs into one or more of these pillars.

⸻

## **2.1 AUTO SHOT ENGINE**

### **2.1.1 What Auto Shot Is**

Auto Shot is the Hunter’s foundational ranged attack:

- Fires automatically when the Hunter stands still
- Uses weapon speed + ammo damage + ranged AP
- Consumes ammo
- Runs on its own timer, independent of the GCD
- Can be clipped or delayed by movement
- Is affected by weapon skill
- Respects dead-zones and line-of-sight

This intentionally mirrors Classic WoW’s ranged auto system.

### **2.1.2 Auto Shot Rules**

- Auto Shot continues during on-GCD abilities **if** the Hunter is stationary when the shot is due to fire.
- Auto Shot **cancels** if:
- The Hunter moves during the wind-up
- The Hunter loses line-of-sight
- The target leaves maximum range
- Auto Shot cannot be used at point-blank dead-zone range.

### **2.1.3 Auto Shot Scaling**

Auto Shot damage uses:

- Base weapon damage
- Plus: (Ranged AP / 14 × weapon speed)
- Plus: Ammo bonus

Crits are full ranged crits (2.0× baseline unless modified).

Glancing blows can occur when using under-skilled ranged weapons against higher-level enemies.

⸻

## **2.2 WEAK-POINT SYSTEM**

Hunters are Emberwild’s canonical **weak-point masters**.

### **2.2.1 What Weak Points Are**

Every physical creature has anatomical weak points:

•	Head

•	Heart

•	Joints

•	Glands

•	Spirit-Echo organs (post-20 content)

Weak points appear only if:

•	The Hunter has line-of-sight

•	Lighting is sufficient

•	The target is not in extremely erratic motion

•	The Hunter has the appropriate rank of **Tracking Vision**

•	Positional rules are met (some weak points only from flanks or behind)

### **2.2.2 Weak-Point Shot Rules**

When the Hunter fires **Weak-Point Shot** at a valid weak point:

•	Very high bonus to crit chance

•	Very high bonus to crit damage

•	Reduced glancing-blow chance

•	Reduced dodge/parry when shot from behind

•	Partial armor bypass on physical mitigation

Hunters have the **strongest weak-point multipliers** of any class.

⸻

## **2.3 TRAP SYSTEM**

Traps are primarily **control tools**, not raw DPS.

### **2.3.1 Trap Rules**

•	Traps cost **Stamina** to place.

•	Traps have an arming time (0.5–2.0 seconds depending on rank).

•	Traps cannot be placed while sprinting at full speed.

•	Traps are persistent world objects; enemies must physically step on them.

•	Trap placement interacts with terrain; steep/uneven terrain can cause mis-placement or failure.

### **2.3.2 Trap Categories**

1.	**Snare Traps** — slows, roots, general movement control

2.	**Bleed Traps** — light bleed DoT plus small slow

3.	**Bind Traps** — immobilize targets; often break on damage

4.	**Utility Traps** — distraction, sound lures, scent lures, caltrops-style fields

### **2.3.3 Number of Active Traps**

•	Early game: 1 active trap at a time

•	Midgame: up to 2 active traps

•	With Trapper talents: up to **3** active traps

⸻

## **2.4 TRACKING & AWARENESS SYSTEM**

Hunters gain new tracking modes by level milestones and class quests.

### **2.4.1 Tracking Types**

•	Tracks Beasts

•	Tracks Humanoids

•	Tracks Rare Creatures

•	Tracks Injured Creatures (blood trails)

•	Tracks Movement Trails (footprints, scent)

•	Tracks Fallen Items (key objects, dropped gear, clues)

•	Tracks Spirit Echoes (post-20 world mechanic)

### **2.4.2 Tracking Vision**

**Tracking Vision** is a Focus-drain toggle:

•	Consumes a small amount of Focus per second

•	Highlights visible weak points

•	Highlights movement trails and blood paths

•	Shows trap radius indicators

•	Reveals hidden terrain hazards and safe routes

Tracking Vision is the Hunter’s signature exploration and hunting UI.

⸻

## **2.5 ASPECTS (STANCE SYSTEM)**

Hunters use stances called **Aspects**. Only one Aspect can be active at a time.

Core Aspects (with ranks detailed in the Spellbook):

•	**Aspect of the Hawk**

•	Ranged Attack Power ↑

•	Focus regeneration ↓

•	**Aspect of the Wolf**

•	Movement speed ↑

•	Trap arming time ↓

•	Ranged AP ↓

•	**Aspect of the Viper**

•	Focus regeneration massively ↑

•	All damage ↓

•	**Aspect of the Spirit-Track** (late-game upgrade)

•	Weak-point reveal greatly enhanced

•	Constant Focus drain

•	No direct damage bonuses

⸻

## **2.6 FOCUS ECONOMY & SHOT PACING**

### **2.6.1 Focus Basics**

•	Focus is a mana-like resource for physical ranged combat.

•	Derived from Intellect.

•	Regenerates slower in combat than out of combat.

•	Most shots cost Focus; weak-point and special shots cost more.

•	Traps always cost **Stamina**, not Focus.

### **2.6.2 Focus Regen Rules**

•	High regeneration out of combat.

•	Reduced regeneration in combat.

•	Additional “pressure penalty” when spamming expensive shots.

•	**Aspect of the Viper** partially bypasses the pressure penalty by significantly increasing Focus regen at the cost of damage.

### **2.6.3 Shot Cadence**

The Hunter is **not** a spam class. Cadence is determined by:

•	Auto Shot timer

•	Focus pool and regen

•	Weak-point exposure windows

•	Trap cooldowns and arming logic

•	Positioning and dead-zone management

The Hunter plays like a hybrid of **Classic WoW** and **Monster Hunter**, not a modern twitch shooter.

⸻

## **2.7 DEAD ZONE**

Classic hunter dead-zone logic is preserved.

**Dead Zone** = minimum range where ranged weapons cannot fire.

•	Any enemy inside the minimum range causes Auto Shot and most shots to be unusable.

•	The Hunter must respond by:

•	Swapping to melee

•	Using traps at close range

•	Sprinting out of the dead zone

•	Using terrain (ledges, corners) to break pursuit

Managing the dead zone is a core skill test and identity mechanic.

⸻

## **2.8 MELEE SUBSYSTEM (EMERGENCY KIT)**

The Hunter is **not** a melee class but must survive close-range.

Melee toolkit:

•	Simple melee auto-attack chain

•	Short-range stun/interrupt

•	Short-range bleed

•	Quick dodge (Stamina-based)

•	Brief brace (short damage-reduction window)

This kit is intentionally modest. Its purpose is to buy time and space, not to win prolonged trades.

⸻

## **2.9 LEVEL-50 FINISHER — PREDATOR’S SHOT**

**Predator’s Shot** is the Hunter’s execute-tier finishing ability.

Core rules:

•	Only usable when the target is under a defined % of max HP

•	Cannot be blocked

•	Cannot glance

•	Has greatly increased crit chance

•	Refunds partial Focus on kill

•	Has a long cooldown

•	Provides very high execution burst

Predator’s Shot is thematically and mechanically the Hunter’s level-50 identity finisher.

It is unlocked via the level-50 **Grand Hunt** class questline and then learned at a trainer.

⸻

## **2.10 PET SYSTEM (OVERVIEW)**

Pet mechanics are shared across Hunters and deepened by the **Beastcraft** talent tree.

•	Hunters can tame eligible beasts via the level-10+ class quest chain.

•	Each Hunter can have one active pet and multiple stabled pets.

•	Pets have:

•	Health, armor

•	Attack speed and base damage

•	Mood/Happiness

•	Basic abilities (bite, claw, gore, etc.)

Pet performance is heavily influenced by:

•	Beastcraft talent investment

•	Proper upkeep (feeding, not letting the pet repeatedly die)

•	Appropriate pet family choice (wolf, cat, bear, etc.)

Full details are reinforced by the Hunter questlines (Section 5) and the Beastcraft talent tree (Section 4.3).

⸻

# **SECTION 3 — LEVEL 1–60 TRAINER SPELLBOOK (RANKED)**

This is the **canonical Hunter spellbook**.

All other descriptions and examples must reference this list.

**Format per entry:**

•	Level learned

•	Resource cost

•	Range

•	GCD usage (implied; everything here uses the global cooldown unless stated)

•	Effect summary

•	Rank upgrade notes (where relevant)

⸻

## **3.1 LEVEL 1–10 — FOUNDATION TIER**

**Level 1**

**Auto Attack**

•	Cost: none (swing timer only)

•	Range: melee

•	Baseline melee swing; scales with melee weapon and stats.

**Tracking Vision (Rank 1)**

•	Cost: very low Focus per second while active

•	Reveals weak points at close range only

•	Reveals recent movement trails within ~10m

**Auto Shot (Rank 1)**

•	Cost: none

•	Range: weapon range

•	Ranged auto-attack with bow/crossbow/gun

•	Cancels if the Hunter moves during wind-up

⸻

**Level 2**

**Steady Shot (Rank 1)**

•	Cost: 8 Focus

•	Range: 30m

•	Basic yellow-damage shot (weapon damage + small bonus)

⸻

**Level 3**

**Sprint Step (Rank 1)**

•	Cost: 20 Stamina

•	Duration: 3 seconds

•	Movement speed +30%

•	Short-duration escape/mobility tool

⸻

**Level 4**

**Hunter’s Mark (Rank 1)**

•	Cost: 12 Focus

•	Range: 35m

•	Marks a target, increasing all ranged damage it takes by a small amount (Hunter and allies)

⸻

**Level 5**

**Piercing Arrow / Bullet (Rank 1)**

•	Cost: 15 Focus

•	Range: 30m

•	Instant shot

•	Applies a small physical armor reduction for a short duration

⸻

**Level 6**

**Trap: Snare Trap (Rank 1)**

•	Cost: 20 Stamina

•	Duration on ground: 15 seconds

•	On trigger: snares the target by ~40% for 6 seconds

•	Cooldown: 30 seconds

⸻

**Level 7**

**Tracking: Beasts**

•	Passive toggle; reveals nearby beasts on the minimap.

⸻

**Level 8**

**Steady Shot (Rank 2)**

•	Increased damage compared to Rank 1.

⸻

**Level 9**

**Hunter’s Mark (Rank 2)**

•	Increased damage bonus compared to Rank 1.

⸻

**Level 10 — CLASS MILESTONE**

**Aspect of the Hawk (Rank 1)**

•	Cost: 10 Focus to activate + small ongoing upkeep

•	Increases ranged Attack Power

•	Reduces Focus regeneration while active

**Weak-Point Shot (Rank 1)**

•	Cost: 25 Focus

•	Range: 30m

•	Only usable when a weak point is visible

•	High crit chance and crit damage

•	Cooldown: 12 seconds

**Class Quest: “Path of the Hunter”**

•	Unlocks the **pet/taming path** (Tame Beast, Feed Beast, Mend Beast, Call/Dismiss Beast, pet bar).

•	These pet abilities are obtained via this questline rather than as standard trainer purchases.

⸻

## **3.2 LEVEL 11–20 — CONTROL & TERRAIN TIER**

**Level 11**

**Trap: Bleed Trap (Rank 1)**

•	Cost: 20 Stamina

•	On trigger: light bleed DoT for 6 seconds + ~20% movement snare

⸻

**Level 12**

**Multi-Shot (Rank 1)**

•	Cost: 18 Focus

•	Hits up to 2 additional nearby targets for yellow damage

⸻

**Level 13**

**Tracking: Humanoids**

•	Toggle; reveals humanoids on the minimap.

⸻

**Level 14**

**Concussive Shot (Rank 1)**

•	Cost: 12 Focus

•	Applies a 6-second slow

•	Deals no damage (pure control)

⸻

**Level 15**

**Steady Shot (Rank 3)**

•	Increased damage compared to Rank 2.

⸻

**Level 16**

**Aspect of the Wolf (Rank 1)**

•	Movement speed increased

•	Trap placement time decreased

•	Ranged AP decreased

⸻

**Level 17**

**Trap: Bind Trap (Rank 1)**

•	Cost: 25 Stamina

•	Roots the target for 4 seconds

•	Root breaks on damage

⸻

**Level 18**

**Weak-Point Shot (Rank 2)**

•	Lower cooldown and higher crit scaling than Rank 1

⸻

**Level 19**

**Tracking: Rare Creatures**

•	Reveals rare beasts/creatures on the minimap

•	Major Hunter class advantage

⸻

**Level 20 — MAJOR MILESTONE**

**Aspect of the Viper (Rank 1)**

•	Focus regeneration massively increased

•	All damage dealt reduced

**Spirit-Track (Rank 1)**

•	Constant Focus cost while active

•	Reveals spirit echoes and hidden weak points in specific zones

•	Tied to a level-20 class quest chain

⸻

## **3.3 LEVEL 21–30 — MIDGAME DPS & UTILITY TIER**

**Level 21**

**Explosive Shot (Rank 1)**

•	Cost: 25 Focus

•	Deals small impact damage plus a short fire/impact DoT

⸻

**Level 22**

**Multi-Shot (Rank 2)**

•	Increased damage compared to Rank 1.

⸻

**Level 23**

**Aspect of the Hawk (Rank 2)**

•	Stronger ranged AP bonus.

⸻

**Level 24**

**Trap: Snare Trap (Rank 2)**

•	Improved snare strength and/or duration compared to Rank 1.

⸻

**Level 25**

**Steady Shot (Rank 4)**

•	Increased damage.

⸻

**Level 26**

**Concussive Shot (Rank 2)**

•	Stronger slow or longer duration than Rank 1.

⸻

**Level 27**

**Tracking: Injured Creatures**

•	Detects blood trails left by wounded creatures and players.

⸻

**Level 28**

**Weak-Point Shot (Rank 3)**

•	Higher crit bonus and/or lower cooldown compared to Rank 2.

⸻

**Level 29**

**Trap: Bleed Trap (Rank 2)**

•	Stronger bleed and/or enhanced snare compared to Rank 1.

⸻

**Level 30 — MAJOR MILESTONE**

**Aspect of the Hawk (Rank 3)**

**Multi-Shot (Rank 3)**

**Special Shot: Crippling Arrow (Rank 1)**

•	Cost: 22 Focus

•	Reduces target movement speed and attack speed

•	Deals small direct damage

⸻

## **3.4 LEVEL 31–40 — TRAP MASTERY & HIGH MOBILITY TIER**

**Level 31**

**Trap Mastery (Passive, Rank 1)**

•	Trap arming speed increased

•	Trap cooldowns slightly reduced

⸻

**Level 32**

**Aspect of the Wolf (Rank 2)**

•	Stronger movement/trap bonuses and/or lower penalties.

⸻

**Level 33**

**Steady Shot (Rank 5)**

•	Increased damage.

⸻

**Level 34**

**Explosive Shot (Rank 2)**

•	Increased damage or improved DoT compared to Rank 1.

⸻

**Level 35**

**Weak-Point Shot (Rank 4)**

•	Further improved crit scaling / cooldown.

**Tracking: Spirit Echoes (Rank 2)**

•	Extends the range and clarity of spirit-echo detection.

⸻

**Level 36**

**Trap: Bind Trap (Rank 2)**

•	Longer root or improved reliability vs higher-level enemies.

⸻

**Level 37**

**Hunter’s Mark (Rank 3)**

•	Stronger damage done increase than Rank 2.

⸻

**Level 38**

**Trap: Utility Trap — Sound Lure (Rank 1)**

•	Creates a sound lure that pulls enemies within a radius

•	Deals no damage

•	Ideal for clean, Classic-style pulls

⸻

**Level 39**

**Aspect of the Viper (Rank 2)**

•	Improved Focus regen and/or slightly reduced damage penalty.

⸻

**Level 40 — MAJOR MILESTONE**

**Mail Armor Proficiency**

•	Learnable at a major hub trainer; allows equipping Mail armor.

**Aspect of the Hawk (Rank 4)**

**Multi-Shot (Rank 4)**

**Tracking: All Creatures**

•	Broad detection mode; reveals most creature types at reduced detail.

⸻

## **3.5 LEVEL 41–50 — ENDGAME PREP TIER**

**Level 41**

**Explosive Shot (Rank 3)**

⸻

**Level 42**

**Steady Shot (Rank 6)**

⸻

**Level 43**

**Concussive Shot (Rank 3)**

⸻

**Level 44**

**Trap: Snare Trap (Rank 3)**

⸻

**Level 45**

**Aspect of the Wolf (Rank 3)**

**Weak-Point Shot (Rank 5)**

⸻

**Level 46**

**Trap: Bleed Trap (Rank 3)**

⸻

**Level 47**

**Spirit-Track (Rank 2)**

•	Improved range and clarity vs Rank 1.

⸻

**Level 48**

**Explosive Shot (Rank 4)**

⸻

**Level 49**

**Steady Shot (Rank 7)**

⸻

**Level 50 — CAPSTONE MILESTONE**

**Predator’s Shot (Rank 1)**

•	Execute-style finisher

•	High crit bonus

•	Cannot glance

•	Reduces Weak-Point Shot cooldown on kill

•	Unlocked via the level-50 “Grand Hunt” class questline, then trained

**Aspect of the Spirit-Track (Rank 1)**

•	Massive weak-point visibility boost

•	Heavy Focus drain while active

•	Also tied to the level-50 class questline

**Class Quest: “The Eye of the Wild”**

•	Rewards unique Hunter cosmetic + tracking boost

•	Gates access to Predator’s Shot and Aspect of the Spirit-Track at the trainer

⸻

⸻

•	Allows learning one additional ranged weapon family (Gun, Bow, or Crossbow) for free if not already known.

•	Ranged Weapon Proficiency Token

**Reward:**

•	Defeat a mid-level elite using only ranged abilities and traps — no melee allowed.

**Part 3 — The Heart of the Hunt**

⸻

•	Marksman’s Scope (small crit bonus on ranged weapons)

**Reward:**

•	Aimed Shot and Auto Shot weaving

•	Classic-style swing/shot timers

•	Predictive movement

Teaches:

•	Land 5 Weak-Point Shots in a row on moving targets in a controlled arena.

# **Part 2 — The Weak-Point Challenge**

⸻

•	Reinforcement of stand-still, line-up-your-shot behavior

•	Aimed Shot (if not already trained) or cosmetic/scoped variant depending on design

**Reward:**

•	Breaking stillness or losing line-of-sight resets the attempt.

•	Hold a 3-second aim without moving while a roaming beast wanders in and out of sight.

## **Part 1 — A Trial of Stillness**

**Purpose:** Teach Aimed/long-cast shots, weak-point timing, and precision positioning.

**Questline:** *“Stillness of the Silent Arrow”*

**LEVEL 30 — THE PATH OF THE MARKSMAN**

⸻

•	Lure Tool (Reusable) — a persistent pull/control utility

**Reward:**

•	If the pull fails, the pack fully respawns (Classic consequence).

•	Use a Sound Lure to isolate an elite beast from its pack.

## **Part 3 — Lure Mastery Test**

⸻

•	Trap Launcher (Passive) — increases trap placement radius (e.g., 5m out from the Hunter)

**Reward:**

3.	Snare Trap — split a double pull or hold a runner.

2.	Bleed Trap — finish fleeing enemies.

1.	Bind Trap — root a fast-moving beast.

Use 3 trap types on designated targets:

## **Part 2 — The Three Lessons**

⸻

•	Trap Kit (required to lay traps in certain dangerous zones)

**Reward:**

Use these to craft 3 basic traps manually.

•	Fangs from local predators

•	Iron fragments from a ruined camp

•	Resin from forest trees

Collect:

### **Part 1 — Foraging the Elements**

**Purpose:** Teach trap timing and environmental manipulation.

**Questline:** *“Cat’s Patience, Wolf’s Bite”*

**LEVEL 20 — THE PATH OF TRAPS**

⸻

•	Early introduction to pet-driven solo play

•	Snare Trap (Rank 1) is reinforced as a core solution in instance-style content

**Reward:**

•	The Hunter must maintain distance and deal with adds using traps.

•	Enter a small instance with hostile critters; the pet must tank.

### **Part 3 — Trial of Bond**

⸻

•	Mend Beast (Rank 1)

**Reward:**

•	That pets are not flat UI companions — they are persistent systems.

•	Loyalty levels

•	Pet mood (Happy/Content/Unhappy)

Teaches:

•	Feed the pet until it reaches **Content** mood.

•	Track and obtain food using Tracking Vision and terrain knowledge.

## **Part 2 — Hunger & Loyalty**

⸻

•	Tame Beast, Feed Beast, basic pet command bar

**Reward:**

•	Not overpulling

•	Line-of-sight breaks

•	Kiting behavior

•	Leash mechanics

Teaches:

•	Must calm the beast using positioning, non-lethal tools, and restraint.

•	Learn the basics of taming through scripted encounters with a low-threat beast.

# **Part 1 — Calm the Wild**

**Unlocked:** Level 10 class trainer.

**Purpose:** Teach control, patience, distance, and the foundation of pet mechanics.

**Questline:** *“Hands of the Wild”*

**LEVEL 10 — THE FIRST PATH: TAMING & DISCIPLINE**

⸻

Every quest teaches a core Hunter system.

Classic-style. Grounded. Slow. No modern shortcuts.

## **SECTION 5 — CLASS QUESTS (LEVEL 10 → 60)**

⸻

•	Cooldown: 2 minutes.

•	Immune to crowd control

•	+20% damage

•	+25% attack speed

•	Pet enters a 6-second frenzy:

•	**King of Beasts — 1 rank**

**Tier 9 (40 points required) — CAPSTONE**

⸻

•	While within 10m of your pet, you and your pet take 2/4/6/8/10% less damage.

•	**Enduring Bond — 5 ranks**

**Tier 8 (35 points required)**

⸻

•	When you land a Weak-Point Shot, your pet’s next attack is guaranteed to crit.

•	**Coordinated Hunt — 1 rank**

•	Pet attack speed +1/2/3/4/5%

•	Pet damage +2/4/6/8/10%

•	**Alpha’s Presence — 5 ranks**

**Tier 7 (30 points required)**

⸻

•	Every 6th pet basic attack repeats for 40/80/120% additional damage.

•	**Predator Twinstrike — 3 ranks**

•	While Mend Beast is active, pet gains +4/8/12/16/20% movement speed.

•	**Mend Mastery — 5 ranks**

**Tier 6 (25 points required)**

⸻

•	Pet threat generation +4/8/12%.

•	**Beast Instinct — 3 ranks**

•	Pet dodge chance +2/4/6/8/10%.

•	**Wild Reflexes — 5 ranks**

**Tier 5 (20 points required)**

⸻

•	After your pet crits, party damage is increased by 1/2/3/4/5% for 4 seconds.

•	**Tactical Howl — 5 ranks**

•	Pet ability: short-duration stun on a moderate cooldown.

•	**Intimidation — 1 rank**

**Tier 4 (15 points required)**

⸻

•	Pet mood decay reduced by 10/20/30%.

•	**Loyal Heart — 3 ranks**

•	Pet armor +3/6/9/12/15%.

•	**Thick Hide — 5 ranks**

**Tier 3 (10 points required)**

⸻

•	Feeding your pet restores +10/20/30% more mood/happiness.

•	**Fast Feed — 3 ranks**

•	Pet basic attack damage +3/6/9/12/15%.

•	**Ferocity Training — 5 ranks**

**Tier 2 (5 points required)**

⸻

•	Mend Beast healing +5/10/15%.

•	**Gentle Bond — 3 ranks**

•	Pet Health +2/4/6/8/10%.

•	**Beast Endurance — 5 ranks**

**Tier 1 (0 points required)**

Focus: pet-driven DPS, safe leveling, Classic companion identity.

## **4.3 BEASTCRAFT — PET DOMINANCE & COMPANION MASTERY**

⸻

•	Cooldown: 45 seconds.

•	Applies a 30% slow for 4 seconds

•	Trap damage always crits (if it deals damage)

•	Instantly arms

•	Activating Trap Launcher empowers your next trap:

•	**Hunter’s Gauntlet — 1 rank**

**Tier 9 (40 points required) — CAPSTONE**

⸻

•	After standing still for 2 seconds, your next trap gains +20/40/60/80/100% trigger radius.

•	**Perfect Placement — 5 ranks**

**Tier 8 (35 points required)**

⸻

•	Enemies standing inside any of your trap zones take +3/6% damage from all sources.

•	**Territory Claim — 2 ranks**

•	Using Disengage drops a mini-snare on the ground that slows enemies for 1/2/3 seconds.

•	**Reactive Scatter — 3 ranks**

**Tier 7 (30 points required)**

⸻

•	While standing within the radius of your own trap, damage taken is reduced by 10/20/30%.

•	**Grounding Instinct — 3 ranks**

•	Damage dealt to enemies who are slowed, rooted, snared, or trapped is increased by 2/4/6/8/10%.

•	**Environmental Hunter — 5 ranks**

**Tier 6 (25 points required)**

⸻

•	The first physical ability used after a trap triggers gains +4/8/12/16/20% crit chance.

•	**Sawtooth Edges — 5 ranks**

•	Trap Launcher range +3/6/10 studs.

•	**Trap Launcher Mastery — 3 ranks**

**Tier 5 (20 points required)**

⸻

•	Enemies triggering any trap are slowed by an additional 10/20/30%.

•	**Sticky Pitch — 3 ranks**

•	Bind Trap root duration +5/10/15/20/25%.

•	**Bind Strength — 5 ranks**

**Tier 4 (15 points required)**

⸻

•	Sound/Scent Lure radius increased by 10/20/30%.

•	**Lure Mastery — 3 ranks**

•	Bleed Trap damage +6/12/18/24/30%.

•	**Bleed Warden — 5 ranks**

**Tier 3 (10 points required)**

⸻

•	The first hit after any trap trigger deals +3/6/9% bonus damage.

•	**Impact Resin — 3 ranks**

•	Traps arm 10/20/30/40/50% faster.

•	**Trap Arming — 5 ranks**

**Tier 2 (5 points required)**

⸻

•	Trap Stamina cost reduced by 5/10/15%.

•	**Efficient Traps — 3 ranks**

•	Snare/slow/root duration from Snare Trap increased by 8/16/24/32/40%.

•	**Improved Snare Trap — 5 ranks**

**Tier 1 (0 points required)**

Focus: battlefield control, terrain setup, bleed pressure.

## **4.2 TRAPPER — CONTROL, TERRAIN & METHODICAL PLAY**

⸻

•	Internal cooldown: 12 seconds.

•	Your Weak-Point Shot **always crits** if used within 1.5 seconds of a new weak-point exposure.

•	**Heartseeker — 1 rank**

**Tier 9 (40 points required) — CAPSTONE**

⸻

•	If standing still for 2 seconds, your next Aimed/long-cast shot gains +4/8/12/16/20% crit chance.

•	**Sniper’s Patience — 5 ranks**

**Tier 8 (35 points required)**

⸻

•	+2/4/6% damage to enemies above 70% HP.

•	**True North Sight — 3 ranks**

•	Reduces minimum ranged distance (dead zone) by 10/20%.

•	**Dead Zone Mastery — 2 ranks**

**Tier 7 (30 points required)**

⸻

•	Reduces ranged pushback by 15/30/45%.

•	**Breath Control — 3 ranks**

•	After a ranged crit, your next Steady Shot is 20/40/60/80/100% faster.

•	**Kill Rhythm — 5 ranks**

**Tier 6 (25 points required)**

⸻

•	Multi-Shot hits 1 additional target at 40% damage per 2 ranks (up to +3 extra targets at rank 5).

•	**Multi-Shot Barrage — 5 ranks**

•	Multi-Shot damage +8/16/24%.

•	**Piercing Barrage — 3 ranks**

**Tier 5 (20 points required)**

⸻

•	While casting or firing shots, movement speed cannot be reduced below 70/80/90%.

•	**Surefooted — 3 ranks**

•	Aimed/long-cast shots (e.g., Aimed Shot) deal +4/8/12/16/20% damage.

•	**Deep Aim — 5 ranks**

**Tier 4 (15 points required)**

⸻

•	Weak-Point Shot damage +3/6/9%.

•	**Sharpened Arrows — 3 ranks**

•	+1/2/3/4/5% ranged crit chance.

•	**Eagle Eye Discipline — 5 ranks**

**Tier 3 (10 points required)**

⸻

•	When Weak-Point Shot crits, it refunds 2/4/6 Focus.

•	**Focus Carve — 3 ranks**

•	Reduces Steady Shot cast/aim time by 2/4/6/8/10%.

•	**Steady Hands — 5 ranks**

**Tier 2 (5 points required)**

⸻

•	+1% ranged hit chance per rank.

•	**Hunter’s Poise — 5 ranks**

•	Steady Shot damage +2/4/6/8/10%.

•	**Improved Steady Shot — 5 ranks**

**Tier 1 (0 points required)**

Focus: ranged DPS, weak-point reliability, burst windows.

## **4.1 MARKSMAN — PRECISION & EXECUTION**

⸻

The third tree becomes permanently locked when the second tree is chosen.

A Hunter may fully commit to **any two** of these trees.

3.	**Beastcraft** — Pet dominance & companion mastery

2.	**Trapper** — Control, terrain, methodical play

1.	**Marksman** — Precision & execution (ranged DPS, weak-point reliability)

**Hunter talent trees:**

•	Tier 9 (Capstone): 40 points

•	Tier 8: 35 points

•	Tier 7: 30 points

•	Tier 6: 25 points

•	Tier 5: 20 points

•	Tier 4: 15 points

•	Tier 3: 10 points

•	Tier 2: 5 points

•	Tier 1: 0 points

•	Tier unlock thresholds within **each** tree:

•	54 total talent points (earned from levels 10–60)

•	3 talent trees per class

**Global rule (for all classes, including Hunter):**

## **SECTION 4 — TALENT TREES (3 TREES, 54 POINTS)**

⸻

**Weak-Point Shot (Rank 7)**

**Multi-Shot (Rank 6)**

**Steady Shot (Rank 9)**

•	Increases spirit-echo detection radius

•	Reveals weak points instantly once in range

**Tracking Vision (Rank 3)**

•	Slightly improved AP scaling

•	Higher crit bonus

•	Lower cooldown than Rank 1

**Predator’s Shot (Rank 2)**

**Level 60 — FINAL RANKS**

⸻

**Aspect of the Wolf (Rank 4)**

**Aspect of the Hawk (Rank 5)**

**Level 59**

⸻

**Trap: Snare Trap (Rank 4)**

**Level 58**

⸻

**Concussive Shot (Rank 4)**

**Level 57**

⸻

**Explosive Shot (Rank 5)**

**Level 56**

⸻

**Steady Shot (Rank 8)**

**Level 55**

⸻

**Weak-Point Shot (Rank 6)**

**Level 54**

⸻

**Aspect of the Viper (Rank 3)**

**Level 53**

⸻

**Trap: Bind Trap (Rank 3)**

**Level 52**

⸻

**Multi-Shot (Rank 5)**

**Level 51**

**3.6 LEVEL 51–60 — LATE GAME, FINAL RANKS**

**LEVEL 40 — THE PATH OF THE PATHFINDER**

*(Questline name only; not a talent tree.)*

**Questline:** *“Walk the Hidden Roads”*

**Purpose:** Teach terrain mastery, elevation usage, and dead-zone control.

**Part 1 — Trail of the Wilds**

•	Long trek across multiple biomes **without** using roads or main paths.

•	Must survive:

•	Ambush predators

•	Weather-based stamina reductions

•	River crossings that slow movement

Teaches environmental advantage and Classic world danger.

**Reward:**

•	Sprint Step (Rank 2), or a terrain-based stamina/regen passive depending on tuning

⸻

**Part 2 — The Dead Zone Lesson**

•	Fight three enemies scripted to sit in the Hunter’s dead zone as much as possible.

•	Must:

•	Use traps at close range

•	Tease distance with Sprint Step

•	Use elevation and corners to manage dead-zone entries and exits

**Reward:**

•	Dead Zone Mastery (Passive) — reduces dead zone by a small, fixed amount (e.g., 1m)

⸻

**Part 3 — High Ground Test**

•	Snipe three targets from high platforms without taking a hit.

•	Failure restarts the sequence.

**Reward:**

•	Longshot Harness (+Max Range) or similar gear reward emphasizing elevation and range

⸻

**LEVEL 50 — THE PATH OF THE GRAND HUNT**

**Questline:** *“Trials of Silent Thunder”*

**Purpose:** Teach raid-tier fundamentals: controlled burst, threat understanding, and predator-style patience.

**Part 1 — Threat is Law**

•	Fight an enemy alongside an NPC tank.

•	If the Hunter exceeds 130% of the tank’s threat, the tank loses aggro and the test fails.

**Reward:**

•	Threat Tracker (Passive) — a small UI indicator for Hunter threat vs. target

⸻

**Part 2 — Burst Discipline**

•	Use cooldowns to burn down a spirit-marked target **without** pulling aggro from the tank.

•	The sequence punishes reckless crit chains and unplanned Heartseeker windows.

**Reward:**

•	Cooldown Bracer Strap (minor haste or crit-window item)

⸻

**Part 3 — The Spirit Eyes**

•	Activate Spirit-Track in a corrupted zone and avoid roaming spirit predators while hunting a marked prey.

•	Stealthy, low-tempo survival mission.

**Reward:**

•	Spirit Sight (Passive) — weak-point visibility +X% in low-light environments

⸻

**Grand Hunt Completion (Meta-Reward)**

•	Unlocks **Predator’s Shot (Rank 1)** and **Aspect of the Spirit-Track (Rank 1)** at the trainer at level 50.

•	This keeps the Spellbook and questline consistent: quest completion gates access; trainer provides the formal learn.

⸻

**LEVEL 60 — PATH OF THE TRUE HUNTER**

**Questline:** *“Echoes of the Old Hunt”*

**Purpose:**

•	Tie together weak-points, threat, traps, kiting, and long-range mastery

•	Provide final class flavor rewards (title, cosmetic, passive)

**Part 1 — Three Hunts, Three Lessons**

Hunt three different targets, each built around a different mastery:

1.	**The Cliffstalker** — demands perfect elevation usage and line-of-sight control.

2.	**The Night-Talon** — tests weak-point accuracy under pressure and low-light conditions.

3.	**The Boulderback** — emphasizes trap synergy, stamina management, and positional patience.

Failure results in punishing resets, mirroring Classic raid wipes.

⸻

**Part 2 — The Echo Hunt**

•	A large roaming mini-boss that cycles:

•	Immunities

•	Movement patterns

•	Threat resets

The Hunter must adapt using the full toolkit (traps, aspects, kiting, Weak-Point Shots, Predator’s Shot).

⸻

**Part 3 — The Final Lesson**

•	Speak with the Elder Hunter NPC after completing all hunts.

**Rewards:**

•	**Title:** *“The Tracker”*

•	**Class Cosmetic Cloak:** Hunter motif (leathers, bone, feathers, trophy marks)

•	**Permanent Passive:**

•	+2% crit damage on weak-point hits

This final passive stacks cleanly with talents and items and does not conflict with Predator’s Shot or Heartseeker.

⸻

**SECTION 8 — HUNTER TALENT THEORY, BUILDS & PLAYSTYLE PROFILES**

This section explains how the three Hunter trees interact and what archetypal builds look like from level 1–60.

⸻

**8.0 PURPOSE**

This section provides:

•	Clear archetypes

•	Leveling builds

•	Endgame builds

•	Playstyle breakdowns

•	Stat priorities

•	Weapon type synergies

•	Pet recommendations

•	Simple Classic-style rotation guidelines

All builds obey:

•	54 total points

•	Maximum of 2 trees per character

•	Access to 40-point capstones in one tree

•	Classic pacing and danger

•	Weapon-skill dependency

•	Ammo-based economies

⸻

**8.1 STAT PRIORITIES BY BUILD**

**Marksman-focused builds (MM/X)**

Priority:

1.	Agility

2.	Hit chance

3.	Ranged weapon skill

4.	Ranged Attack Power

5.	Crit

6.	Stamina

Reasoning: Agility is the core Hunter stat (RAP + crit + armor) and Marksman scales hard from crit and weapon skill.

⸻

**Trapper-focused builds (TR/X)**

Priority:

1.	Hit chance

2.	Agility

3.	Stamina

4.	Ranged Attack Power

5.	Spirit (for downtime regen if trap-heavy, slow hunts)

Reasoning: These Hunters kill with **setup over burst**; they need reliability, control, and the HP to maintain distance.

⸻

**Beastcraft builds (BC/X)**

Priority:

1.	Stamina (for both Hunter durability and sustained pet play)

2.	Agility

3.	Pet-impact stats (wherever available — attack speed, pet damage)

4.	Spirit (long hunts, frequent Mend Beast)

5.	Hit

Reasoning: Pet damage can account for 40–60% of total output depending on investment.

⸻

**8.2 WEAPON SYNERGY BY BUILD**

**Marksman**

Best:

•	Slow bows

•	Slow guns

•	Crossbows

Reason: Slow weapons maximize AP/14 scaling and create chunky weak-point crits.

⸻

**Trapper**

Best:

•	Medium-speed bows

•	Thrown weapons for opening pulls/utility

Reason: Reliable cadence and predictable proc timing with traps and control windows.

⸻

**Beastcraft**

Best:

•	Medium-speed bows or guns

Reason: The Hunter supplements the pet; moderate pace supports stable threat and uptime without requiring deep hardcast windows.

⸻

**8.3 PET FAMILY RECOMMENDATIONS**

**Marksman**

•	Wolf — provides crit/attack buffs

•	Bird of Prey — armor shred utility

**Trapper**

•	Spider — slow/snare synergy

•	Boar — charge interruption and early threat help

**Beastcraft**

•	Cat — high baseline DPS

•	Bear — high armor, tanky play pattern

Each pet family has slight stat and utility tweaks, Classic-aligned.

⸻

**8.4 PRIMARY ENDGAME BUILDS**

**BUILD A — Pure Marksman (40 MM / 14 TR)**

•	**Role:** Ranged burst and weak-point execution

•	**Capstone:** Heartseeker

Structure:

•	40 points into Marksman (Heartseeker)

•	14 into Trapper (e.g., Trap Arming + Environmental Hunter)

**Strengths:**

•	Hardest single-shot burst windows

•	Strongest Weak-Point Shot exploitation

•	Excellent ranged execution

**Weaknesses:**

•	Limited hard control (compared to full Trapper)

•	Very ammo-dependent

•	Requires strict dead-zone and positioning discipline

**Rotation (simplified):**

•	Maintain Hunter’s Mark

•	Use Steady Shot as main filler

•	Use Weak-Point Shot on every exposure (and especially within Heartseeker window)

•	Use Aimed Shot when safe to stand still

•	Use Multi-Shot only when you can afford the Focus and threat

⸻

**BUILD B — Marksman / Beast Hybrid (31 MM / 23 BC)**

•	**Role:** Balanced DPS with strong pet pressure

•	**Capstone:** None (2 deep but non-capstone trees)

**Strengths:**

•	More forgiving movement than pure MM

•	Pet tanks extremely well for solo

•	Good mix of burst and sustain

**Weaknesses:**

•	No Heartseeker

•	Weaker control compared to Trapper builds

•	Lower absolute burst than pure MM

**Rotation:**

•	Keep pet on target; maintain pet uptime

•	Steady Shot filler, Weak-Point Shot on exposure

•	Use Aimed Shot during safe windows

•	Use pet stuns/howls as mini cooldowns (Intimidation, Tactical Howl)

⸻

**BUILD C — Traplord (40 TR / 14 MM)**

•	**Role:** Control, terrain denial, bleed pressure

•	**Capstone:** Hunter’s Gauntlet

**Strengths:**

•	Best control toolkit of any Hunter build

•	Traps can trivialize many elite encounters when used well

•	Excellent synergy between slows, bleeds, and Weak-Point windows

**Weaknesses:**

•	Setup time required

•	Weak in highly mobile boss fights

•	Requires knowledge of terrain and enemy patrols

**Rotation/Loop:**

•	Pre-place traps ahead of pulls

•	Pull enemies through optimal terrain and trap zones

•	Use Weak-Point Shot during slowed/rooted states

•	Maintain bleeds and armor-reducing effects

•	Use Hunter’s Gauntlet for high-impact trap bursts on key mobs

⸻

**BUILD D — Beastmaster Dominance (40 BC / 14 MM)**

•	**Role:** Pet-driven pressure, safest solo/leveling build

•	**Capstone:** King of Beasts

**Strengths:**

•	Easiest leveling path (pet does heavy lifting)

•	High safety and sustain in long hunts

•	Very forgiving for new players

**Weaknesses:**

•	Lowest raw burst vs. pure MM

•	Pet deaths are heavily punishing

•	Less impressive on very high-mechanic bosses without careful play

**Rotation:**

•	Open with pet engage; let pet establish threat

•	Maintain Mend Beast as needed

•	Use Steady Shot filler and Weak-Point Shot on exposure

•	Trigger King of Beasts + Coordinated Hunt during planned burst windows

⸻

**8.5 LEVELING PATHS (1–60)**

**Fastest Leveling: Beastcraft-First**

•	1–20: Core Beast Endurance, Ferocity Training, Thick Hide

•	20–40: Deep into Alpha’s Presence and pet survivability

•	40+: Pick up Marksman nodes for better personal DPS

⸻

**Safest Leveling: Traplord Path**

•	Go deep into Trapper up to Tier 5 before branching

•	Pull 1–2 mobs at a time into prepared trap zones

•	Use Bind/Snare/Bleed traps to dismantle enemies methodically

⸻

**Highest Skill-Cap Leveling: Pure Marksman**

•	Weak-Point uptime must be near perfect

•	Weapon skill and ammo management are critical

•	Very rewarding but punishing if misplayed

⸻

**8.6 THE WEAK-POINT LOOP**

Every Hunter build ultimately uses the same core loop:

1.	Create or wait for a weak-point exposure (via crits, trap immobilization, or tracking windows).

2.	Fire **Weak-Point Shot** as quickly as possible during the exposure.

3.	If you have Heartseeker, ensure you line it up within the 1.5s window for guaranteed crit.

4.	Return to Steady Shot and control tools while waiting for the next window.

This loop is the backbone of advanced Hunter play.

⸻

**8.7 AMMO MANAGEMENT**

Ammo matters, especially at high levels.

Guidelines:

•	Expect to spend 200–300 arrows/rounds in a long hunt.

•	Reserve **Ultra-Rare** or high-tier ammo for bosses or major rares.

•	Use standard ammo for leveling and routine grinding.

•	Carry thrown weapons as an emergency or utility backup.

⸻

**8.8 GEAR BENCHMARKS**

**Level 10:**

•	Green-quality bow/gun

•	Leather set with +Agility

**Level 30:**

•	Blue-tier bow/gun with slow speed

•	Hit rating starts to matter

**Level 45+:**

•	Accuracy and crit stacking becomes important

•	Weapon skill should be near cap

•	Ultra-Rare ammo and specialized quivers/cartridges become relevant

⸻

**8.9 MATCHUPS**

**Vs. Melee mobs:**

•	Kiting, slows, and traps dominate

•	Control wins fights more than pure DPS

**Vs. Casters:**

•	Line-of-sight pulls and terrain usage

•	Interrupt via Counter Shot or pet stuns where available

**Vs. Elites:**

•	Terrain, trap setups, and pet/talent choice matter heavily

•	Trapper and Beastcraft variants are recommended for early elite content

⸻

**8.10 FINAL SUMMARY**

•	**Marksman** = burst execution and weak-point crit mastery

•	**Trapper** = terrain control and methodical kill setups

•	**Beastcraft** = pet dominance and safe, steady progression

All three trees are:

•	Fully viable from 1–60

•	Consistent with Classic identity and pacing

•	Aligned with the global 3-tree / 54-point rule

The Hunter remains the **reference class** for Emberwild balance and pacing.

⸻

**SECTION 9 — PASSIVE SYSTEMS & ROLE SUMMARY (NO DUPLICATE SPELLBOOK)**

**9.1 PASSIVE SYSTEMS (BUILT INTO THE CLASS)**

**Weak-Point Exposure System**

Triggered by:

•	Certain crits

•	Specific ranged windows

•	Trap immobilizations

•	Selected Marksman/Trapper talents

During an exposure window (~1.2 seconds):

•	Weak-Point Shot becomes usable (if line-of-sight and range allow)

•	All weak-point multipliers apply, plus any Heartseeker bonuses if active

This system is the glue between tracking, traps, and ranged precision.

⸻

**Pet Happiness / Loyalty System**

•	Pets deal more damage and obey more reliably when **Happy**.

•	They deal less damage and can even abandon the Hunter if **Unhappy**.

•	Mood is managed through:

•	Feeding (food items, Endurance Feed)

•	Not letting the pet die repeatedly without care

•	General uptime and treatment

This mirrors Classic energy: pets are companions, not disposable UI.

⸻

**Ammo Economy**

•	All ranged auto-attacks consume ammo.

•	Ammo tiers are gated by level or crafting tiers.

•	**Ultra-Rare ammo** exists but is not baseline; intended for bosses, ultra-rares, or special hunts.

•	Swapping to lower-tier ammo immediately reduces overall damage output, in a predictable, Classic-style way.

⸻

**9.2 ROLE SUMMARY AT LEVEL 60**

At maximum level, Hunter builds settle into these roles:

•	**Marksman:**

•	Long-range burst and execution windows

•	Heartseeker weak-point dominance

•	High ceiling, high punishment for mistakes

•	**Trapper:**

•	Control and kiting specialist

•	Prepares kill zones with traps and terrain usage

•	Can trivialize certain encounters with planning

•	**Beastcraft:**

•	Safest leveling and soloing

•	Pet-driven damage and protection

•	Strong in endurance hunts and open-world content

All are:

•	Fully aligned with Classic-style restraint and identity

•	Plugged into the same core combat math (stats, armor, crit, weak-point multipliers)

•	Compatible with Emberwild’s global systems: Ultra-Rare items, rarities, and world loot math

This document is the **final, unified Hunter reference** — no extra spellbooks, no extra trees, and no stray systems.