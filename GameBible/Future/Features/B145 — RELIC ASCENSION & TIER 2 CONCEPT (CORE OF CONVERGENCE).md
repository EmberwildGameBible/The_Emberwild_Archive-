# B145 — RELIC ASCENSION & TIER 2 CONCEPT (CORE OF CONVERGENCE)
1. Goals of Tier 2

Tier 2 is not just bigger numbers.

It should:

Keep Level 60 as the cap (for now).

Use Tier 1 legendaries + sets as the foundation, not trash.

Introduce Ascended paths for legendaries that are:

~10–15% stronger overall,

but more importantly, more specialized (defense vs support, single-target vs AoE, etc.).

Use rare Tier 2 mats (Core of Convergence) dropped from Citadel of Convergence and future content.

The fantasy is:

“You beat Tier 1. Now you bend the Convergence to your will and rewrite what your relic actually is.”

2. Relic Ascension System — Overview

Relic Ascension = transforming a Tier 1 legendary into a Tier 2 Ascended relic, by:

Owning the Tier 1 relic (e.g. Emberheart Aegis).

Collecting 1+ Core of Convergence and some zone-specific mats.

Completing a short but hard Ascension trial (scenario/ritual).

Choosing one of two specialization paths for that relic.

Key rules:

Ascended relics are new items (e.g. EMBERHEART_AEGIS_ASCENDED_BULWARK).

You can only have one branch active per relic per character:

If you want the other branch, you do a “Reforging” quest or collect another copy, depending on how punishing you want it.

Tier 1 relic is consumed in the process, but:

Its appearance stays unlocked for transmog.

Its Relic Mastery progress is retained and applied to the new form (same relicId family).

Ascension is T2, sitting above:

T1 Legendaries (B137–B139)

T1 Legendary Armor Sets (B141)

T1 Raids / Dungeons (B142)

Relic Mastery & Feats (B144)

3. Data Model (Design + Lua)
3.1 Relic Ascension Definitions

Conceptual fields:

baseRelicId — the Tier 1 relic (e.g. EMBERHEART_AEGIS).

ascendedRelics — 1 or 2 branches with new item IDs.

requirements — mats, quest IDs, achievements.

trialInstance — which scenario you must complete.

sharedMasteryId — ID linking to same mastery track (so XP doesn’t reset).

Example:

RelicAscension = RelicAscension or {}

RelicAscension.Definitions = {
    EMBERHEART_AEGIS = {
        baseRelicId = "EMBERHEART_AEGIS",
        sharedMasteryId = "EMBERHEART_AEGIS", -- same mastery track

        ascendedRelics = {
            BULWARK = {
                id   = "EMBERHEART_AEGIS_ASCENDED_BULWARK",
                name = "Aegis of the First Bulwark",
            },
            VANGUARD = {
                id   = "EMBERHEART_AEGIS_ASCENDED_VANGUARD",
                name = "Aegis of the Ember Vanguard",
            },
        },

        requirements = {
            coreCount = 1,
            items = {
                { id = "MAT_CORE_OF_CONVERGENCE", count = 1 },
                { id = "MAT_SOVEREIGNS_SHADOWCORE", count = 1 },
                { id = "MAT_ETERNAL_FROSTHEART_CORE", count = 1 },
                { id = "MAT_EMBERFORGE_HEART", count = 1 },
            },
            achievements = {
                "FEAT_EMBERHEART_WALL",  -- optional: require feat
            },
        },

        trialInstance = "INSTANCE_EMBERHEART_ASCENSION_TRIAL",
    },
}


Player flow:

Turn in base relic + mats to NPC → unlocks trial.

Beat trial → choose branch → get ascended relic.

4. Example: Emberheart Aegis Ascension (Tank)
4.1 Base Reminder

Emberheart Aegis (T1):

DR proc: Emberheart Bulwark on block/parry/dodge.

Elemental Temper: extra AP while taking elemental DoTs.

Tier 2 Ascension splits into:

Aegis of the First Bulwark — pure defensive wall.

Aegis of the Ember Vanguard — more group-protective / offensive support.

4.2 Aegis of the First Bulwark (T2 · Ultra-Tank)

Aegis of the First Bulwark
Tier 2 Legendary · Shield · Tank

Stats (relative bump):

+36 Strength

+74 Stamina

+260 Armor

+6% Block Chance

+52 Block Value

Passive — Prime Bulwark:

Replaces Emberheart Bulwark:

When you block, parry, or dodge a boss-level attack:

Gain Prime Bulwark for 8 seconds:

+12% damage reduction.

50% of that DR also applies to all nearby allies within 10 studs (6% DR).

Internal cooldown: 20 sec (same as T1, just stronger + group effect).

Passive — Unshakable Root:

While Prime Bulwark is active:

You are immune to knockback and displacement.

Movement slows are 50% less effective.

This path is for “hardcore anchor tank” players.

4.3 Aegis of the Ember Vanguard (T2 · Support Tank)

Aegis of the Ember Vanguard
Tier 2 Legendary · Shield · Tank/Support

Stats:

+32 Strength

+68 Stamina

+240 Armor

+4% Block Chance

+40 Block Value

+1% Hit Chance

Passive — Vanguard’s Oath:

When Emberheart Bulwark (T1 effect) would trigger, it now grants:

+8% DR to you for 8 seconds (same as T1), and

Vanguard’s Resolve to the lowest-HP nearby ally (within 15 studs):

+8% damage reduction for 6 seconds.

Internal cooldown: 20 sec.

Passive — Forward Flame:

While Vanguard’s Oath is active:

Your melee attacks apply Emberbrand to enemies:

+5% damage taken from allies’ attacks for 6 seconds.

Stacks up to 1 per target.

This path sacrifices some personal bulk for group DR and group damage.

4.4 Ascension Trial: Emberheart’s Reckoning

Instance: INSTANCE_EMBERHEART_ASCENSION_TRIAL

Structure:

Solo-tank-focused scenario, but group allowed.

Phases:

Elemental gauntlet (Fire/Frost/Shadow waves).

Dual-boss: one physical, one magical, testing your positioning.

Final “Echo of the First Bulwark”.

Mechanics:

Must:

Soak key hits,

Avoid cheese (no kiting everything forever),

Keep NPCs alive (for Vanguard path objectives).

At the end:

You are offered a choice: Bulwark or Vanguard.

That choice determines the ascended relic you receive.

5. Evershatter Colossusblade Ascension (STR 2H)

Base T1:

Shatter the Earth proc (AoE burst + slow).

Giant’s Resolve (reduced knockback).

Ascended forms:

Evershatter, Ruin of Ramparts — AoE/control monster.

Evershatter, Edge of Ruin — single-target boss masher.

5.1 Evershatter, Ruin of Ramparts (AoE)

Evershatter, Ruin of Ramparts
Tier 2 Legendary · 2H Sword · STR DPS (AoE)

Stats:

+56 Strength

+46 Stamina

+132 Attack Power

+4% Crit Chance

Passive — Cataclysmic Shatter:

Shatter the Earth now:

Deals 40% more damage.

Radius increased by 25%.

Applies a stacking 10% slow, up to 50% slow, for 5 seconds.

Passive — Avalanche Momentum:

Each enemy hit by Shatter:

Grants +2% damage (up to +10%) for 8 seconds.

Encourages hitting many targets for big ramp.

5.2 Evershatter, Edge of Ruin (Single-Target)

Evershatter, Edge of Ruin
Tier 2 Legendary · 2H Sword · STR DPS (ST)

Stats:

+56 Strength

+40 Stamina

+132 Attack Power

+3% Crit Chance

+1% Hit Chance

Passive — Focused Shatter:

Shatter the Earth is now:

A single-target heavy blow on crit,

Dealing double the original Shatter damage to that target only,

Applying a 10% armor reduction debuff for 8 seconds.

Passive — Giant’s Execution:

When attacking an enemy below 20% HP:

You deal +8% increased damage.

If Focused Shatter procs during this window, it deals +20% additional damage.

6. Star-Eater Conduit Ascension (Caster)

Base T1:

Stack building (Star-Eater) → empowered spell with bonus damage + mana.

Ascended:

Star-Eater, Weaver of Paths — control/sustain caster.

Star-Eater, Heart of Collapse — pure nuke / glass cannon.

6.1 Star-Eater, Weaver of Paths

Star-Eater, Weaver of Paths
Tier 2 Legendary · Staff · Caster DPS / Control

Stats:

+56 Intellect

+40 Spirit

+32 Stamina

+110 Spell Power

+4% Spell Crit

+16 Mana per 5 sec

Passive — Gentle Parallax:

When consuming 5 stacks:

Empowered spell deals +25% damage (same as base),

AND briefly slows time around you:

Enemy projectiles near you move slower,

Your cast times are reduced by 10% for 5 seconds.

Passive — Lattice of Stars:

Each time you consume 5 stacks without dying or leaving combat:

Gain a stacking +1% spell haste (up to +5) until combat ends.

6.2 Star-Eater, Heart of Collapse

Star-Eater, Heart of Collapse
Tier 2 Legendary · Staff · Caster DPS (Burst)

Stats:

+60 Intellect

+34 Spirit

+28 Stamina

+120 Spell Power

+5% Spell Crit

Passive — Gravitic Collapse:

When consuming 5 stacks:

Empowered spell deals +40% increased damage instead of 25%.

If it critically strikes, it creates a collapse zone under target:

Deals small recurring damage to nearby enemies for 4 sec.

Internal cooldown: still 20 sec.

Passive — Star-Hungry:

While below 50% mana:

Your spells gain +5% crit chance.

Encourages riskier, “burn harder” play.

7. Skyshatter Huntbow & Nightveil Prowler Ascension (AGI)

You can mirror the pattern:

Skyshatter:

Stormstrider Skyshatter — more kiting/mobility, extended slow, safer.

Skyshatter, Apex Fang — higher single-target burst + brief vuln window.

Nightveil:

Nightveil, Knife in the Dark — stronger openers, Bleed-focused, surgical.

Nightveil, Street of Knives — more cleave/AoE, chain-pull assassination.

(You can fill these out later in B146 if you want an entire chapter just for the AGI ascensions.)

8. Dawnsong Covenant & Heartroot Reliquary Ascension (Healer)

Similar dual paths:

Dawnsong:

Dawnsong, Beacon of the Faithful — heavier single-target saving and personal DR.

Dawnsong, Choir of Dawn — raid-wide throughput and HoT amplification.

Heartroot:

Heartroot, Bloom Eternal — stronger HoT blooms, more reactive healing.

Heartroot, Seed of Sanctuary — adds small group DR aura, regen niche.

Again, prime candidates for B146/B147 to go deep into healer T2.

9. Relic Ascension & Mastery/Feats Integration

Important connections:

Same Mastery Track:

Ascended relic shares sharedMasteryId with Tier 1 version.

Players keep their Mastery Rank and cosmetics.

New Feats:

Each Ascended relic gets 1 extra Feat (e.g. “Clear Citadel on hard mode with X ascended relic path equipped”).

Reward: new high-prestige title or cosmetic variant.

Codex:

Relic Codex shows:

“Relic Ascension Paths” section.

For each relic: Base, Ascended A, Ascended B + completion states.

10. Where Tier 2 Content Actually Happens

Even though Ascension is systemic, you anchor it in actual content:

Re-use:

Citadel of Convergence on a higher difficulty (T2 mode).

New mini-wings / side-bosses.

Add:

1–2 new T2 scenarios (smaller than T1 chains, purely around Ascension trials).

“Convergence Storms” open-world events where Core of Convergence can be earned.

That’s the “Tier 2 spine”:

Beat T1 (have relics + sets).

Unlock T2 raid/dungeon difficulties that drop Core of Convergence.

Use Core + mats + trials to Ascend your relics into specialized T2 forms.

Keep climbing via new Feats/Mastery for these ascended forms.
