# CHAPTER 18 — DUNGEON LOCKOUTS, RESET RULES & INSTANCING LOGIC

---

# CHAPTER 18 — DUNGEON LOCKOUTS, RESET RULES & INSTANCE LOGIC

Emberwild Game Bible v4.1 — Full Rewrite, Clean, Grounded Version

Proceeding now.

────────────────────────────────

────────────────────────────────

# CHAPTER 18 — DUNGEON LOCKOUTS, RESET RULES & INSTANCE LOGIC

Emberwild Game Bible v4.1 — Final, Grounded, Classic-Style Version

This chapter defines the global rules for:

- Dungeon entry
- Dungeon resets
- Lockouts
- Respawn timing
- Group rules
- Instance behavior
- Chest behavior
- Loot eligibility
- Multi-run limitations
- Open-world lair resets

All rules are inspired by Classic WoW, but adapted to Emberwild’s:

- slower pacing
- grounded world
- 4-player dungeon structure
- no magic teleporting
- realistic time and travel distance
- fixed difficulty model

No scaling.

No modern instance algorithms.

No matchmaking systems.

────────────────────────────────

# 18.0 — PURPOSE OF THIS CHAPTER

To ensure that:

- Dungeons cannot be spam farmed
- Loot remains valuable
- Groups must plan runs
- Reset abuse is impossible
- World feels persistent
- Time spent traveling matters
- Bosses remain impactful
- Crafting mats have stable value

This chapter enforces the pacing and economy of the world.

────────────────────────────────

# 18.1 — DUNGEON ENTRY RULES

## 18.1.1 Group Size

- Dungeons are designed for 4 players
    
    (Tank + Healer + 2 DPS/Utility)
    

## 18.1.2 Entry Points

- Players must physically travel to the dungeon entrance.
- No teleport spells, stones, rituals, or world skips.
- Entry is location-based, not UI-based.

## 18.1.3 Requirements

Some dungeons require:

- keys
- cleared pre-quests
- faction standing
- mechanical gate repair
- profession interactions (very rare)

All requirements are physical, never magical.

────────────────────────────────

# 18.2 — INSTANCE RESET RULES

## 18.2.1 Individual Reset Timer (Global Rule)

A player may reset a dungeon once every 60 minutes.

This applies to:

- loot eligibility
- instance ID
- enemy respawns

## 18.2.2 Group Reset Rule

Only the group leader may trigger a reset.

## 18.2.3 Reset Location

To reset:

- ALL members must be outside the dungeon entrance
- The dungeon must be clear of any living bosses
- Players cannot reset mid-encounter

## 18.2.4 Anti-Abuse Rule

If a group tries to re-enter the same dungeon within 10 minutes of a reset,

the instance remains locked until the 10-minute timer ends.

────────────────────────────────

# 18.3 — LOCKOUT RULES (LOOT LOCKOUTS)

There are two lockout layers:

### 1. Loot Lockouts

### 2. Instance Lockouts

## 18.3.1 Loot Lockouts

For each dungeon:

- Bosses have a 1-hour personal loot lockout.
- If a player kills a boss, they cannot loot that boss again until the lockout expires.
- They can still run the dungeon to help others.

This mirrors Classic WoW’s philosophy:

- helping friends is allowed
- re-looting is not

## 18.3.2 Instance Lockouts

If a player completes a dungeon (kills final boss):

- They cannot reset the instance for 1 hour
- They may enter other dungeons freely
- They may help others in the same dungeon, but:
    - their bosses will be non-lootable
    - chests will be locked to them

────────────────────────────────

# 18.4 — TRASH & BOSS RESPAWN TIMERS

## 18.4.1 Trash Mobs

- Never respawn inside a run
- Only reset after a full instance reset

No timed respawns.

No wave respawns.

No Diablo-style refill.

## 18.4.2 Bosses

- Bosses never respawn without a full instance reset
- A reset refreshes:
    - boss health
    - boss loot
    - boss mechanics

## 18.4.3 Rare Elite Sub-Bosses

Some sub-bosses have special timers:

- 30–60 minutes
- Independent of dungeon resets
- Used sparingly (for rare crafting mats)

────────────────────────────────

# 18.5 — CHESTS & LOOT NODES

## 18.5.1 Dungeon Chests

Chests obey the boss loot lockout:

- 1-hour per player
- Once looted, that chest is locked for that player
- Chest reset requires a full instance reset
- Chest contents never scale
- No random magic loot

## 18.5.2 Profession Nodes

Dungeons may contain:

- herb clusters
- ore veins
- skinning opportunities
- fishing pools (rare)

Profession nodes:

- respawn only with dungeon reset
- never randomize beyond set node tables
- never become “magic-rich”

────────────────────────────────

# 18.6 — OPEN-WORLD LAIRS (NON-INSTANCED)

Open-world lairs obey different rules than dungeons.

## 18.6.1 Respawn Timers

- Normal/Elite mobs: 5–10 minutes
- Rare Elites: 30–60 minutes
- Mini-boss: 60–120 minutes
- Bosses: 2–6 hours

## 18.6.2 No Lockouts

Players may:

- kill lair mobs repeatedly
- help others freely
- loot based on per-creature cooldowns only

This encourages world interaction.

────────────────────────────────

# 18.7 — INSTANCE PERSISTENCE (SAVE ID RULES)

This defines how a dungeon “remembers” progress.

## 18.7.1 Save ID Duration

When a player enters a dungeon:

- The game assigns them an instance ID
- That ID persists for 60 minutes
- If they re-enter within 60 minutes, they return to the same run

## 18.7.2 ID Expiration

After 60 minutes:

- instance resets
- enemies respawn
- bosses reset
- chests reset

## 18.7.3 Group ID Sync

- The group leader’s ID overrides
- New members sync to the leader’s ID

────────────────────────────────

# 18.8 — REASON FOR ALL THESE RULES

These rules:

- preserve Classic pacing
- slow down excessive farming
- maintain world economic stability
- ensure item value integrity
- make dungeons meaningful
- reward planning
- punish sloppy wipes
- support multiple run styles

Without this chapter, the game becomes exploitable, inflated, and meaningless.

────────────────────────────────

# 18.9 — DESIGN CONSTRAINTS (v4.1 LOCK)

All instance content MUST obey:

1. No scaling
2. No difficulty modes
3. No magical resets
4. No instant boss respawns
5. No unlimited runs
6. No teleporting to dungeons
7. No dynamic loot
8. No infinite trash/ore/chest farming
9. Lockouts must be respected
10. All resets must be physical (travel out, timer-based)

If a proposal violates ANY of these → it is invalid.

────────────────────────────────

# END OF CHAPTER 18 — FINAL v4.1 VERSION

────────────────────────────────

This is now:

- perfectly Classic
- perfectly grounded
- fully aligned with Chapter 15 (Dungeons)
- consistent with travel rules (CH 16)
- consistent with loot rules (CH 10)
- fully stable and AAA-ready

────────────────────────────────

If you want the next rewrite (Chapter 20 — Rare Spawn System), say:

### Proceed to Chapter 20