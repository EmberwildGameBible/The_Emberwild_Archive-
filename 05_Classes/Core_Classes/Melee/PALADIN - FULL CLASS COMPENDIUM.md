# PALADIN — FULL CLASS COMPENDIUM

---

## SECTION 1 — CLASS OVERVIEW & IDENTITY

### 1.1 CLASS FANTASY — THE RADIANT VOW

The Paladin is Emberwild’s holy knight:

a heavily armored warrior who wields steel and sacred light together.

Not a cloistered priest.

Not a wild druid.

Not a pure tank.

A frontline fighter who:

- Swears oaths to protect and uphold order.
- Channels radiant magic through weapon, shield, and voice.
- Blends melee combat, auras, blessings, and healing.

Visual fantasy:

- Plate armor etched with sun and sigil motifs
- Shields that flare with brief light on blocks
- Strikes that release short bursts of golden radiance
- Hands that glow during heals and wards

Identity pillars:

- Oath over rage (disciplined, not berserk)
- Radiance over shadow
- Protection over slaughter
- Discipline over chaos
- Support over selfishness

Where Paladin excels:

- Support tanking (off-tank / aura tank)
- Single-target healing & spot-saving
- Group buffs via auras & blessings
- Anti-undead / anti-spirit combat
- Holding the line around allies

Where Paladin struggles:

- High-mobility kiting fights
- Sustained ranged damage
- Burst DPS races vs true DPS classes
- Resource (mana) management in very long encounters

Paladin sits between:

- Highlander / Frost Guard (pure heavy tanks)
- Priest / Witch (pure or primary casters/healers)
- Mercenary / Sandstrider (aggressive melee)

---

### 1.2 COMBAT IDENTITY

Primary Role: Support Tank / Frontline Healer

Secondary Role: Melee support DPS / Anti-undead specialist

Combat profile:

- Heavy armor + shield baseline
- Strong mitigation spikes via defensive cooldowns
- Spot heals + shields to keep priority targets alive
- Auras that buff the whole party
- Seals & Judgments that shape their rotation and target debuffs

Damage shape:

- Low–medium sustained white damage
- Holy bursts via Judgments and smites
- Extra damage vs undead / spirit / corrupted enemies

Weaknesses:

- No real gap closer
- Almost no ranged DPS (short mid-range only)
- Mana-limited in long fights
- Less raw DPS than Mercenary / Sandstrider / Hunter

---

### 1.3 ARMOR & WEAPON PROFICIENCIES

Armor:

- ✔ Cloth — Level 1
- ✔ Leather — Level 1
- ✔ Mail — Level 1
- ✔ Plate — Level 1 (core identity)
- ✔ Shields — all types, including tower shields

Weapons (main fantasy: swords / maces / hammers):

- ✔ 1H Swords
- ✔ 1H Maces / Warhammers
- ✔ 1H Axes
- ✔ 2H Swords
- ✔ 2H Maces / Mauls
- ✔ 2H Axes
- (Optional) Polearms allowed but not core fantasy

Forbidden:

- ✖ Daggers
- ✖ Fist Weapons
- ✖ Dual-wielding
- ✖ Bows / Guns / Crossbows
- ✖ Thrown weapons
- ✖ Wands / staves as casting foci (those are for mages/witches)

Paladin = plate + shield + holy steel as the default look.

---

### 1.4 RESOURCES — HEALTH + MANA

Paladin uses standard MMO resources:

- Health — damage taken; affected by armor and defensive CDs.
- Mana — used for all holy spells:
    - Seals & Judgments
    - Heals
    - Wards
    - Auras (talented, not baseline)
    - Smite abilities

Melee auto-attacks and some light combat techniques cost no mana or a tiny amount so the Paladin can still contribute when OOM.

Mana model:

- Starts with moderate pool
- Regens slowly in combat
- Faster outside of combat
- Improved by:
    - Intellect
    - Spirit / Willpower equivalents
    - Talents
    - Potions / consumables

---

### 1.5 CORE PALADIN MECHANICS (OVERVIEW)

1. Seals — short self-buffs (30 sec) that empower your melee and shape Judgments.
2. Judgments — mid-range holy strikes (6–10m) that consume the active Seal for a burst + debuff.
3. Auras — party-wide passive buffs (one active at a time).
4. Blessings & Wards — targeted buffs / shields on allies.
5. Holy Smites — direct-damage and anti-undead nukes.
6. Classic mana economy — you can go OOM if you spam.

---

### 1.6 EXPLORATION & WORLD UTILITY

Paladins excel at:

- Wearing heavy armor for hazard regions (thorns, rubble, minor traps).
- Resisting fear / charm effects in scripts.
- Providing light in dark spaces (radiant flicker around them).
- Calming or inspiring town/NPC events (script hooks).
- Acting as frontline NPC escort anchors.

They do not:

- Track beasts (Hunter/Tamer role)
- Sneak or stealth
- Teleport or blink
- Manipulate the terrain like Warden/Farmer

---

### 1.7 GROUP ROLE

In a party, Paladin brings:

- Support tank capabilities (off-tanking, add control)
- Backup or main healing, depending on build
- Auras for party-wide buffs (DR, mana regen, etc.)
- Blessings on key allies (tank / DPS / healer focus)
- Judgment debuffs on kill targets
- Good safety vs undead/spirit-heavy dungeons

Group weaknesses:

- Cannot match pure tank durability of Highlander/Frost Guard if fully specced into healing.
- Cannot match Priest throughput if fully specced into tanking/DPS.
- Must choose two trees → role bias is real.

---

### 1.8 DAMAGE PROFILE & SCALING

Sources of damage:

1. White swings with 1H/2H (Strength + weapon skill)
2. Judgments (mana-based, holy)
3. Holy smite abilities
4. Seals’ on-hit effects
5. AoE holy effects (consecration-style, if talented)

Primary scaling stats:

- Strength (weapon damage, block)
- Intellect (mana pool, spell crit)
- Spirit / Willpower (mana regen, some talents)
- Armor (mitigation for tank builds)
- Crit & Spellpower equivalents for some builds

Damage shape:

- Moderate white DPS
- Holy spikes when Judgments and smites are used on cooldown
- Strong bonus vs undead/spirit targets (multipliers, not flat crazy numbers)

---

## SECTION 2 — CORE MECHANICS (DETAIL)

---

### 2.1 SEALS (SELF-BUFFS, 30s DURATION)

Only one Seal can be active at once.

All cost Mana, low to moderate.

They buff the Paladin and define the effect of Judgment.

Examples (baseline):

Seal of Courage

- +4% damage reduction
- +5% block chance
- Judgment of Courage: small holy damage + -8% damage debuff on target (8s)

Seal of Justice

- On-hit: small holy damage
- Slight slow on enemies who hit you
- Judgment of Justice: holy nuke + short stun vs undead / spirit (PvE)

Seal of Zeal

- +6% weapon damage
- +3% attack speed
- Judgment of Zeal: holy strike + short holy DoT

Seal of Mercy

- +6% healing done
- +4% healing received
- Judgment of Mercy: holy “burst” healing to one ally or self

Talents will unlock/augment more versions or power.

---

### 2.2 JUDGMENTS (SEAL-CONSUMING HOLY STRIKES)

- Cost: Moderate Mana
- Range: 6–10m
- GCD-locked, not spammable spam (cooldown ~6–8s baseline)
- Consume your active Seal → apply damage + debuff or heal

Baseline behavior:

- If cast on enemy → holy damage + debuff tied to Seal
- If cast on ally (where applicable) → convert into a defensive/heal version

This is your main:

- Burst button
- Debuff window maker
- Rotational anchor (you play “around” your current seal & Judgment CD)

---

### 2.3 AURAS (PARTY-WIDE PASSIVES)

One Aura active at a time. Costs no mana once learned.

Examples:

Devotion Aura

- +X% armor to all party members within 20m

Sanctity Aura

- +X% holy damage done by you
- Slight spell damage reduction from shadow/curse sources

Hope Aura

- +X% healing received
- Small out-of-combat mana regen bonus

Zeal Aura (talent)

- +X% melee attack speed for party

Swapping Auras is GCD-locked but no mana cost → tactical, not spammy.

---

### 2.4 BLESSINGS & WARDS

Single-target buffs / shields, shorter duration than auras.

Blessing of Might

- +Attack Power for 10 min (Classic-style)

Blessing of Wisdom

- +Mana regen

Blessing of Protection

- Physical damage reduction or full immunity vs physical for short duration (cannot attack while active, PvP tuned later)

Holy Ward

- Short-duration absorb shield on an ally
- Generates threat if applied to self in combat

---

### 2.5 HOLY HEALS & SMITES

Heals:

- Holy Light — big casted heal, efficient but slow.
- Flash of Light — faster, weaker, less efficient.
- Renewing Grace — small HoT (heal over time).

Smites:

- Holy Strike / Smite — direct-damage holy spell.
- Consecration (if included) — ground AoE holy damage around you.
- Exorcism — high-damage vs undead/spirit.

These all cost Mana and define your healer vs DPS flavor.

---

### 2.6 MANA ECONOMY

General rules:

- Paladin can OOM if healing hard or spamming smites.
- Auto-attacks + small abilities allow decent contribution even low on mana.
- Talents offer:
    - Reduced mana costs
    - Mana return on crits, blocks, or Judgments
    - Bonus regeneration out of combat or during certain windows.

---

## SECTION 3 — LEVEL 1–60 TRAINER SPELLBOOK

Classic pacing:

- No spell every level
- Ranks expand throughput slowly
- Big milestones at 10 / 20 / 30 / 40 / 50 / 60

I’ll outline the important new abilities and how the ranks progress.

---

### LEVEL 1–10 — FOUNDATION

Level 1

- Melee Auto Attack
- Seal of Courage (Rank 1)
    - Small DR + block buff
- Holy Light (Rank 1)
    - 2.0s cast, basic heal

Level 2

- Blessing of Might (Rank 1)
    - Small AP buff (10 min)

Level 3

- Holy Strike (Rank 1)
    - Small melee-range holy-damage nuke (no seal interaction yet)

Level 4

- Flash of Light (Rank 1)
    - 1.5s fast, weaker heal

Level 5

- Judgment (Rank 1)
    - Consumes active Seal; for now just a stronger Holy Strike flavored by Seal of Courage (small damage + minor DR debuff)

Level 6

- Devotion Aura (Rank 1)
    - Party armor buff

Level 7

- Seal of Mercy (Rank 1)
    - Healing-oriented self-buff (small bonus to healing done/received)

Level 8

- Blessing of Wisdom (Rank 1)
    - Mana regen buff (10 min)

Level 9

- Holy Light (Rank 2)

Level 10 — CLASS MILESTONE

- Righteous Defense (Rank 1)
    - Short CD defensive: -20% damage taken for 6s
- Questline begins: “Oath at Dawn”

---

### LEVEL 11–20 — CORE KIT ONLINE

Level 11

- Judgment (Rank 2) (better scaling)

Level 12

- Seal of Zeal (Rank 1)
    - +weapon damage, attack speed

Level 13

- Holy Strike (Rank 2)

Level 14

- Renewing Grace (Rank 1)
    - 12s HoT

Level 15

- Blessing of Protection (Rank 1)
    - Short physical immunity/DR, disarms offensive actions (Classic bubble-like behavior but not total invuln to everything)

Level 16

- Flash of Light (Rank 2)

Level 17

- Devotion Aura (Rank 2)

Level 18

- Holy Light (Rank 3)

Level 19

- Seal of Justice (Rank 1)
    - Control-focused Seal, tiny slow on attackers; Judgment can stun undead/spirit briefly

Level 20 — MAJOR MILESTONE

- Consecration (Rank 1)
    - Ground AoE holy damage around you (small radius, low DPS, good for tanking)
- Questline: “Trial of the Three Vows”

---

### LEVEL 21–30 — SUPPORT TANKING & HEALING TIER

Level 21

- Judgment (Rank 3)

Level 22

- Blessing of Might (Rank 2)

Level 23

- Holy Ward (Rank 1)
    - Absorbs a small amount of damage on an ally (short duration)

Level 24

- Holy Strike (Rank 3)

Level 25

- Seal of Courage (Rank 2)

Level 26

- Flash of Light (Rank 3)

Level 27

- Renewing Grace (Rank 2)

Level 28

- Blessing of Wisdom (Rank 2)

Level 29

- Righteous Defense (Rank 2)

Level 30 — MILESTONE

- Second Aura Unlock: Hope Aura (Rank 1) OR Sanctity Aura (Rank 1)
    
    (your choice via class quest)
    
- Questline: “Shield of the Faithful”

---

### LEVEL 31–40 — ADVANCED PALADIN TIER

Level 31

- Holy Light (Rank 4)

Level 32

- Seal of Mercy (Rank 2)

Level 33

- Consecration (Rank 2)

Level 34

- Judgment (Rank 4)

Level 35

- Exorcism (Rank 1)
    - Holy nuke with bonus vs undead/spirit

Level 36

- Blessing of Protection (Rank 2)

Level 37

- Holy Ward (Rank 2)

Level 38

- Devotion Aura (Rank 3)

Level 39

- Flash of Light (Rank 4)

Level 40 — MAJOR MILESTONE

- Lay on Hands (Rank 1)
    - Once-per-long-CD massive full heal (very high mana or long CD, your choice later)
- Unlocks: 2H specialization (tuned via talents, not default)
- Questline: “The Forging at Noonlight”

---

### LEVEL 41–50 — ENDGAME POWER TIER

Level 41

- Holy Light (Rank 5)

Level 42

- Blessing of Might (Rank 3)

Level 43

- Seal of Zeal (Rank 2)

Level 44

- Exorcism (Rank 2)

Level 45

- Consecration (Rank 3)

Level 46

- Judgment (Rank 5)

Level 47

- Renewing Grace (Rank 3)

Level 48

- Blessing of Wisdom (Rank 3)

Level 49

- Righteous Defense (Rank 3)

Level 50 — CAPSTONE ABILITY

- Avenging Light (Rank 1)
    - Consumes a chunk of mana to:
        - Deal high holy damage to one enemy
        - Heal nearby allies for a % of that damage
    - Long cooldown, huge “big moment” button.

---

### LEVEL 51–60 — FINAL RANKS

Level 51

- Seal of Courage (Rank 3)

Level 52

- Holy Light (Rank 6)

Level 53

- Flash of Light (Rank 5)

Level 54

- Devotion Aura (Rank 4)

Level 55

- Exorcism (Rank 3)

Level 56

- Consecration (Rank 4)

Level 57

- Holy Ward (Rank 3)

Level 58

- Renewing Grace (Rank 4)

Level 59

- Judgment (Rank 6)

Level 60 — FINAL SPELL

- Avenging Light (Rank 2)
    - Damage & heal scaling increased
    - Slightly reduced cooldown

---

## SECTION 4 — TALENT TREES (3 TREES, 54 POINTS)

Global Talent Rules (same as your other classes):

- 3 trees
- 54 total points
- Tier unlocks at 0 / 5 / 10 / 15 / 20 / 25 / 30 / 35 / 40 points in that tree.
- You can only seriously commit to two trees; one can reach the Tier 9 capstone.
- Nodes have 1–5 ranks.

Paladin Trees:

1. Guardian of the Crown — Tanking, block, auras, mitigation
2. Crusader — Melee DPS, Judgments, Zeal, holy bursts
3. Lightbringer — Healing, mana efficiency, support auras

I’ll give full structure but keep descriptions reasonably tight.

---

### 4.1 GUARDIAN OF THE CROWN — TANK / MITIGATION

Theme: Shield, plate, defensive cooldowns, ward strength, aura DR.

Tier 1 — 0 Points

- Shield Training — 5 ranks
    
    +1/2/3/4/5% Block Chance.
    
- Stoic Guard — 3 ranks
    
    Righteous Defense DR +2/4/6%.
    

Tier 2 — 5 Points

- Solid Plate — 5 ranks
    
    +2/4/6/8/10% armor from Plate.
    
- Bulwark Aura — 1 rank
    
    Devotion Aura DR +2%.
    

Tier 3 — 10 Points

- Reinforced Wards — 5 ranks
    
    Holy Ward absorb +3/6/9/12/15%.
    
- Firm Footing — 3 ranks
    
    While you are not moving, damage taken –2/4/6%.
    

Tier 4 — 15 Points

- Patterned Defense — 5 ranks
    
    Blocking an attack reduces next Holy Ward mana cost by 4/8/12/16/20%.
    
- Unyielding — 1 rank
    
    When below 30% HP, gain extra 10% armor for 6s (30s ICD).
    

Tier 5 — 20 Points

- Guardian’s Heart — 5 ranks
    
    Max health +2/4/6/8/10%.
    
- Shared Aegis — 1 rank
    
    Righteous Defense also reduces damage taken by one nearby ally by 10%.
    

Tier 6 — 25 Points

- Shining Bastion — 5 ranks
    
    Consecration grants you +1/2/3/4/5% DR while standing in it.
    
- Threat of the Crown — 2 ranks
    
    Your holy damage generates 10/20% more threat.
    

Tier 7 — 30 Points

- Tower Wall — 5 ranks
    
    Block value +4/8/12/16/20%.
    
- Faith in Steel — 1 rank
    
    While Blessing of Protection is on someone else, you take 5% less damage.
    

Tier 8 — 35 Points

- Aura Mastery: Devotion — 3 ranks
    
    Devotion Aura +1/2/3% extra DR and radius +2/4/6m.
    
- Last Stand of the Crown — 2 ranks
    
    Once per 3 min when you drop below 20% HP, you gain +20% max HP for 10s.
    

Tier 9 — 40 Points (Capstone)

UNBREAKABLE GUARDIAN

For 8 seconds after activating Righteous Defense:

- Damage taken –25%
- Block chance +25%
- Holy Ward costs 0 mana
- Consecration auto-refreshes beneath you
- You generate 30% more threat
    
    This is the “tank Paladin” defining button.
    

---

### 4.2 CRUSADER — MELEE DPS / JUDGMENT BURST

Theme: Holy weapon, Zeal, strong Judgments, bonus vs undead.

Tier 1 — 0 Points

- Zealous Strikes — 5 ranks
    
    Auto-attack damage +2/4/6/8/10%.
    
- Judgment Focus — 3 ranks
    
    Judgment damage +3/6/9%.
    

Tier 2 — 5 Points

- Seal Mastery: Zeal — 5 ranks
    
    Seal of Zeal weapon damage bonus +2/4/6/8/10%.
    
- Sure-Handed — 1 rank
    
    +3% melee hit.
    

Tier 3 — 10 Points

- Crusader’s Tempo — 5 ranks
    
    After casting Judgment, attack speed +4/8/12/16/20% for 4s.
    
- Fervent Blows — 3 ranks
    
    Holy Strike damage +5/10/15%.
    

Tier 4 — 15 Points

- Purging Flame — 5 ranks
    
    Exorcism damage +4/8/12/16/20%.
    
- Punishing Light — 1 rank
    
    Judgment deals 20% extra damage to targets above 70% HP.
    

Tier 5 — 20 Points

- Two-Hand Specialization — 5 ranks
    
    If using a 2H weapon: +2/4/6/8/10% damage.
    
- Zealous Rush — 1 rank
    
    After hitting a target with Judgment, your next move speed is increased 30% for 3s.
    

Tier 6 — 25 Points

- Holy Executioner — 5 ranks
    
    Judgment deals +4/8/12/16/20% damage to targets under 30% HP.
    
- Light’s Reprisal — 2 ranks
    
    When you crit with Holy damage, regenerate 1/2% max mana.
    

Tier 7 — 30 Points

- Consecrated Blades — 5 ranks
    
    While standing in your Consecration, melee attacks deal +3/6/9/12/15% extra holy damage.
    
- Smoldering Verdict — 1 rank
    
    Judgment leaves a 4s holy DoT dealing 20% of its damage.
    

Tier 8 — 35 Points

- Aura Mastery: Sanctity — 3 ranks
    
    Sanctity Aura increases all your holy damage by an extra 2/4/6%.
    
- Relentless Zeal — 2 ranks
    
    Every third Judgment in 20s window costs 50% mana.
    

Tier 9 — 40 Points (Capstone)

CRUSADER’S ASCENT

For 10 seconds after casting Judgment:

- Judgment has no cooldown
- Holy Strike is instant and costs 50% mana
- Your auto-attacks cleave 2 extra targets for 50% damage
- Exorcism is instant cast
    
    This is the “wings” moment, tuned to be strong but finite in Emberwild pacing.
    

---

### 4.3 LIGHTBRINGER — HEALING / SUPPORT

Theme: Efficient healing, mana economy, wards, aura support.

Tier 1 — 0 Points

- Gentle Radiance — 5 ranks
    
    Holy Light healing +3/6/9/12/15%.
    
- Quick Grace — 3 ranks
    
    Flash of Light mana cost –3/6/9%.
    

Tier 2 — 5 Points

- Flow of Faith — 5 ranks
    
    Mana regeneration +3/6/9/12/15%.
    
- Soothing Light — 1 rank
    
    Renewing Grace initial tick healed immediately on application.
    

Tier 3 — 10 Points

- Efficient Channeling — 5 ranks
    
    Holy Light mana cost –4/8/12/16/20%.
    
- Shared Radiance — 3 ranks
    
    Overhealing from Holy Light converts 10/20/30% into a small shield.
    

Tier 4 — 15 Points

- Blessed Coals — 5 ranks
    
    Crit heals restore 1/2/3/4/5% of your maximum mana over 5s.
    
- Lantern’s Favor — 1 rank
    
    Your next Flash of Light after a critical heal is instant.
    

Tier 5 — 20 Points

- Aura Mastery: Hope — 5 ranks
    
    Hope Aura healing received bonus +1/2/3/4/5% and radius +2/4/6/8/10m.
    
- Guardian Prayer — 1 rank
    
    When Renewing Grace is on a target below 30% HP, its ticks are 20% stronger.
    

Tier 6 — 25 Points

- Twin Blessings — 3 ranks
    
    You may have Blessing of Might and Wisdom on the same target at 33/66/100% power each.
    
- Light’s Respite — 3 ranks
    
    After exiting combat, mana regeneration is increased by 20/40/60% for 10s.
    
- Merciful Hands — 1 rank
    
    When you cast Holy Ward, it also heals for a small amount.
    

Tier 7 — 30 Points

- Enduring Radiance — 5 ranks
    
    Renewing Grace duration +1/2/3/4/5s.
    
- Lay’s Favor — 1 rank
    
    Lay on Hands cooldown reduced by 20%.
    

Tier 8 — 35 Points

- Beacon of Duty — 3 ranks
    
    15/30/45% of your heals on others also heal you.
    
- Mass Grace — 2 ranks
    
    Every 20s, your next Holy Light splashes 30/60% healing to allies within 6m.
    

Tier 9 — 40 Points (Capstone)

LIGHT OF THE COVENANT

For 8 seconds after casting Lay on Hands or Avenging Light:

- All healing spells are instant
- Mana costs of healing reduced by 50%
- Renewing Grace ticks twice as fast
- Holy Ward can be cast on 2 targets
    
    This is your raid healing emergency mode.
    

---

## SECTION 5 — CLASS QUESTLINES (10 → 60)

Short, grounded, classic-style milestones.

Level 10 — “Oath at Dawn”

- Learn: Seals, basic Judgment usage, Devotion Aura.
- Reward: Cosmetic tabard / cloak; Righteous Defense (already in kit).

Level 20 — “Trial of the Three Vows”

- Survive three staged tests: defense, healing, justice.
- Reward: Consecration and improved Seals.

Level 30 — “Shield of the Faithful”

- Escort and defend a caravan / NPC line.
- Reward: Second Aura unlock (Hope or Sanctity) and cosmetic shield edging.

Level 40 — “The Forging at Noonlight”

- Participate in forging of a sacred weapon/shield.
- Reward: Lay on Hands; optional 2H specialization flavor.

Level 50 — “Avenging the Fallen”

- Hunt an undead/spirit lieutenant in a small multi-phase encounter.
- Reward: Avenging Light (Rank 1).

Level 60 — “The Crown and the Light”

- Final test: tank, heal, and smite in one chain encounter.
- Reward:
    - Title: “Dawnward”
    - +3% Judgment damage
    - Unique radiant cloak / crest cosmetic

---

## SECTION 6 — PASSIVE SYSTEMS

Always-on flavor and micro-mechanics.

- Holy Bearing
    
    +3% block chance baseline.
    
- Radiant Echo
    
    Every 20s, your next Judgment or heal restores a small % of mana.
    
- Sunsteel
    
    Wearing full Plate: –2% damage taken.
    
- Sanctified Step
    
    Out of combat, Vitality regen +10% (helps pacing between pulls).
    

---

## SECTION 7 — VISUAL / AUDIO IDENTITY

- Short, controlled golden/white light effects
    
    (no anime lasers, no angels).
    
- Seals: small rotating sigil near weapon or around hand.
- Auras: subtle ring of light, not obnoxious.
- Consecration: soft glowing ring and faint holy pattern on ground.
- Heals: palm glow → ribbon of light.
- Audio: low choir pad, muted chimes, metal + light whoosh.

---

## SECTION 8 — ROLE SUMMARY / PLAYSTYLES

Pure Tank Paladin (Guardian-focused)

- Holds packs with Consecration + Holy Strike + Judgments.
- Stays mana-light (uses more physical tools).
- Keeps Holy Ward and Righteous Defense for spikes.

Healer Paladin (Lightbringer-focused)

- Classic single-target healer, strong tank-healing.
- Uses Holy Light / Flash / Renewing Grace + Blessings & Auras.
- Lower DPS, high mana management.

Crusader Paladin (DPS hybrid)

- Plays like a holy warrior: 2H weapon, Zeal Seals, big Judgments.
- Strong vs undead/spirit.
- Can off-heal, but not main-heal.

Hybrid Support Paladin

- Mix Guardian + Lightbringer for off-tank healer.
- Or Crusader + Lightbringer for melee-healer battle cleric.

---

## SECTION 9 — EXAMPLE ENDGAME BUILDS (LEVEL 60)

Each uses 40/14 or hybrid patterns like your other classes.

- Build A — Crown Guardian
    
    40 Guardian / 14 Lightbringer
    
    Dungeon/raid off-tank, very safe party anchor.
    
- Build B — Radiant Healer
    
    40 Lightbringer / 14 Guardian
    
    High single-target healing, sturdy under pressure.
    
- Build C — Crusader of Dawn
    
    40 Crusader / 14 Guardian
    
    Melee DPS with Judgment/nuke focus, good off-tank utility.
    
- Build D — Battle Cleric
    
    23 Guardian / 23 Lightbringer / 8 Crusader
    
    Hybrid support, small group specialist, strong solo.