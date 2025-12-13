# B144 — RELIC MASTERY, FEATS & COSMETIC UPGRADES (TIER 1)
1. Purpose

Once a player gets a legendary, the game needs to keep giving them reasons to use it:

Keep playing that item’s fantasy (block, bleed, crit, kite, heal, etc).

Unlock cosmetic upgrades, titles, and small prestige things.

Hook into Relic Codex so people can see what they’ve done.

This system adds:

Relic Mastery — ranks per legendary, based on how you actually play with it.

Relic Feats — one or two tough challenges per relic that grant titles.

Cosmetic Upgrades — visual variants and VFX earned via mastery / feats.

Mechanically, it’s all just data tables and simple triggers.

2. Relic Mastery System
2.1 Concept

For each Tier 1 legendary:

Track Mastery Rank from 0 → 5.

Each rank is earned by gaining Relic XP from relevant actions while the item is equipped.

Mastery gives:

Mostly cosmetics + Codex badges.

If you want power bonuses, keep them very small (1–2% flavor, not new tiers).

Example ranks:

Rank 0 — You own it.

Rank 1 — “Attuned” (you’ve actually used it).

Rank 2 — “Seasoned”

Rank 3 — “Adept”

Rank 4 — “Master”

Rank 5 — “Mythic” (max, for prestige only).

2.2 Relic Mastery Data Model (Lua Structure)
RelicMastery = RelicMastery or {}

RelicMastery.Definitions = {
    EMBERHEART_AEGIS = {
        id      = "EMBERHEART_AEGIS",
        maxRank = 5,

        -- XP per rank (cumulative or per-step, up to you)
        rankXp = { 200, 600, 1200, 2000, 3000 },

        -- What actions give XP while the relic is equipped
        xpSources = {
            -- Example: each "significant block/parry/dodge vs boss" event
            { event = "BLOCK_SIGNIFICANT_HIT", xp = 5 },
            { event = "PARRY_SIGNIFICANT_HIT", xp = 5 },
            -- Completing endgame boss fights as main tank
            { event = "BOSS_KILL_TANKING", xp = 20 },
        },

        -- Optional tiny, mostly-flavor bonuses (keep small or cosmetic only)
        bonuses = {
            [1] = { id = "EMBERHEART_ATTUNED", description = "Unlocks Emberheart shield glow cosmetic." },
            [3] = { id = "EMBERHEART_ADEPT",   description = "+1% additional Fire/Frost/Shadow DR." },
            [5] = { id = "EMBERHEART_MYTHIC",  description = "Unlocks Emberheart Aegis mythic skin and title token." },
        },
    },
}


Player state:

RelicMastery.PlayerState = {
    [player.UserId] = {
        EMBERHEART_AEGIS = {
            xp   = 0,
            rank = 0,
        },
        -- etc...
    },
}

2.3 Example Event Hooks
function RelicMastery.AddXp(player, relicId, xp)
    local state = RelicMastery.PlayerState[player.UserId]
    if not state then
        state = {}
        RelicMastery.PlayerState[player.UserId] = state
    end

    local relicState = state[relicId] or { xp = 0, rank = 0 }
    relicState.xp = relicState.xp + xp

    local def = RelicMastery.Definitions[relicId]
    if def then
        local newRank = relicState.rank
        while newRank < def.maxRank and relicState.xp >= def.rankXp[newRank + 1] do
            newRank = newRank + 1
        end
        relicState.rank = newRank
    end

    state[relicId] = relicState
end


You’d call RelicMastery.AddXp from combat scripts:

When Emberheart blocks a big hit,

When Star-Eater consumes full stacks,

When Skyshatter lands empowered shots, etc.

3. Mastery Tracks For Each Tier 1 Relic

You don’t need every detail implemented right now, but here’s the design intent for each.

3.1 Emberheart Aegis (Tank)

XP Sources:

Blocking, parrying, or dodging significant hits from bosses.

Completing boss encounters as active tank with the shield equipped.

Rank Flavor:

R1 — Emberheart Attuned: shield gains subtle ember veins.

R3 — Emberheart Adept: +1% extra elemental DR (Fire/Frost/Shadow).

R5 — Emberheart Mythic: unlock “Emberheart Bastion” mythic skin, plus a title token (see Feats).

3.2 Evershatter Colossusblade (STR 2H)

XP Sources:

Landing melee crits that trigger Shatter the Earth.

Killing blows on elites/bosses with Shatter active.

Rank Flavor:

R1 — Faint ground crack decals on Shatter impacts.

R3 — Minor cosmetic shimmer on blade edge after each Shatter.

R5 — Mythic skin: blade gains visible fractures filled with light.

3.3 Star-Eater Conduit (Caster Staff)

XP Sources:

Casting spells that consume 5 Star-Eater stacks.

Boss kills where the staff’s empowered hit landed within last 10 seconds.

Rank Flavor:

R1 — Subtle star trail on empowered casts.

R3 — Slight increase to mana return on the consumption (e.g. +1%, if you want tiny power).

R5 — Mythic skin: staff crystal looks like a small orbiting constellation.

3.4 Skyshatter Huntbow (AGI Ranged)

XP Sources:

Empowered shots from Hunter’s Focus hitting bosses or elites.

Killing blows on apex beasts in all zones with the bow equipped.

Rank Flavor:

R1 — Light “sky crack” sound layering on big shots.

R3 — Cosmetic quiver trail effect on the player while Focus is maxed.

R5 — Mythic skin: limbs and string streak with faint arc of sky fracture.

3.5 Nightveil Prowler (AGI Melee)

XP Sources:

Opening from stealth and applying Nightveil Bleed to valid targets.

Killing marked or boss targets while Nightveil Bleed is active.

Rank Flavor:

R1 — Blood shimmer along edge when exiting stealth.

R3 — Slightly increased Bleed cap (if you want a tiny numeric bonus) or just more distinct bleed VFX.

R5 — Mythic skin: faint smoky trail when moving in stealth.

3.6 Dawnsong Covenant (Healer Mace)

XP Sources:

Healing or shielding allies in Tier 1 dungeons/raid with Covenant equipped.

Scenarios where you kept all key NPCs alive.

Rank Flavor:

R1 — Soft glow intensifies on direct-heal crits.

R3 — Dawnsong Chorus shields gain a slight visual “halo” overlay.

R5 — Mythic skin: runes along the head light up when healing low-HP allies.

3.7 Heartroot Reliquary (Healer Trinket)

XP Sources:

Effective HoT healing (actual HP restored, not overheal) in high-level content.

Bloom procs from its passive.

Rank Flavor:

R1 — Small leaf particle appears when HoT blooms.

R3 — Blooms have a slightly bigger radius indicator (even if mechanically single-target).

R5 — Mythic cosmetic: reliquary sprouts a tiny animated sapling in the UI or on the belt.

4. Relic Feats & Titles

Each legendary also has 1–2 Feats (achievements) with titles. These are one-and-done challenges, harder than just “use the item”.

4.1 Titles Per Relic (Examples)

Emberheart Aegis → Title: “The Emberheld”

Evershatter Colossusblade → Title: “Earthbreaker”

Star-Eater Conduit → Title: “Star-Eater” (or “The Star-Bound”)

Skyshatter Huntbow → Title: “Skyshatter” or “Stormshot”

Nightveil Prowler → Title: “Nightveil” or “Silent Knife”

Dawnsong Covenant → Title: “Dawnsinger”

Heartroot Reliquary → Title: “Warden of Heartroot”

You can decide whether to let players equip multiple titles or just one; this system only cares that they unlock them.

4.2 Feat Examples
Emberheart Aegis — Feat

Feat ID: FEAT_EMBERHEART_WALL
Requirement:

In Citadel of Convergence, defeat The Convergence Heart while:

You are main-tanking for at least 70% of the fight duration.

Never dropping below 10% HP.

Emberheart Aegis equipped.

Reward:

Title: “The Emberheld”

Extra Relic Mastery XP chunk.

Evershatter Colossusblade — Feat

Feat ID: FEAT_EVERSHATTER_CASCADE
Requirement:

In Colossus Forge scenario, during final boss:

Trigger three Shatter the Earth procs within 30 seconds.

Each proc must hit at least 3 enemies.

Reward:

Title: “Earthbreaker”

Star-Eater Conduit — Feat

Feat ID: FEAT_STAR_EATER_PERFECT_ALIGNMENT
Requirement:

In Star-Eater Rite:

Defeat the final boss with five Star-Eater stacks consumed exactly three times during the encounter.

No friendly deaths.

Reward:

Title: “Star-Eater” or “The Star-Bound”.

Skyshatter Huntbow — Feat

Feat ID: FEAT_SKYSHATTER_APEX
Requirement:

During Shattered Sky Hunt:

Solo-land killing blows (your damage) on every unique apex target using empowered Hunter’s Focus shots.

No melee hits, no pet last-hits.

Reward:

Title: “Skyshatter”.

Nightveil Prowler — Feat

Feat ID: FEAT_NIGHTVEIL_PERFECT_SILENCE
Requirement:

In Silent Court:

Assassinate the Nightveil Regent while:

Never breaking stealth due to detection (only by your own attack).

No alarms fully triggering.

Reward:

Title: “Nightveil” or “Silent Knife”.

Dawnsong Covenant — Feat

Feat ID: FEAT_DAWNSONG_LAST_LIGHT
Requirement:

In Long Night:

Complete the entire scenario:

With all key NPCs alive.

No other healer players in the group.

Dawnsong Covenant equipped.

Reward:

Title: “Dawnsinger”.

Heartroot Reliquary — Feat

Feat ID: FEAT_HEARTROOT_UNBROKEN
Requirement:

Heal through a full Citadel of Convergence clear:

Without allowing any party/raid member to die to environmental damage (void zones, lava, etc).

Heartroot Reliquary equipped for every boss fight.

Reward:

Title: “Warden of Heartroot”.

4.3 Feats Data Structure (Lua)
RelicFeats = RelicFeats or {}

RelicFeats.Definitions = {
    FEAT_EMBERHEART_WALL = {
        id       = "FEAT_EMBERHEART_WALL",
        relicId  = "EMBERHEART_AEGIS",
        name     = "Emberheld Wall",
        titleId  = "TITLE_THE_EMBERHELD",
        description = "Defeat the Convergence Heart as main tank with Emberheart Aegis equipped without dropping below 10% health.",
        tracking = {
            zone       = "Raid.CitadelOfConvergence",
            boss       = "BOSS_CONVERGENCE_HEART",
            conditions = {
                mustTankPercent = 0.70,
                minHpPercent    = 0.10,
                requireRelicId  = "EMBERHEART_AEGIS",
            },
        },
    },
}


Player state for feats:

RelicFeats.PlayerState = {
    [player.UserId] = {
        FEAT_EMBERHEART_WALL = true,
        -- etc...
    },
}


Unlock logic just sets the flag + grants the title.

5. Cosmetic Upgrades & Transmog Hooks

Mastery + Feats give you cosmetic variants and transmog unlocks.

5.1 Cosmetic Tiers

For each relic, define three appearance tiers:

Base — what you get on drop.

Mastery Appearance (Rank 3).

Mythic Appearance (Rank 5 or Feat completion).

Example for Emberheart Aegis:

Base: simple heartwood/metal shield with faint ember glow.

Mastery: brighter ember veins, extra metal banding.

Mythic: central core pulsing with element blend (fire/frost/shadow), edge emits occasional sparks.

You just tag these in data:

RelicCosmetics = RelicCosmetics or {}

RelicCosmetics.Definitions = {
    EMBERHEART_AEGIS = {
        base = "MODEL_EMBERHEART_AEGIS_BASE",
        mastery = {
            rankReq = 3,
            modelId = "MODEL_EMBERHEART_AEGIS_MASTERY",
        },
        mythic = {
            rankReq = 5,
            featReq = "FEAT_EMBERHEART_WALL",
            modelId = "MODEL_EMBERHEART_AEGIS_MYTHIC",
        },
    },
}


When equipping:

Check RelicMastery rank and RelicFeats for that player.

Choose the highest available cosmetic.

5.2 Transmog Unlocks

All legendary appearances should also be transmoggable once:

Base appearance unlocks on first obtain.

Mastery appearance unlocks at R3.

Mythic appearance unlocks at R5 + Feat.

You can store:

TransmogUnlocks = TransmogUnlocks or {}

-- Per player
TransmogUnlocks.Player = {
    [player.UserId] = {
        -- item appearance ids
        ["APPEARANCE_EMBERHEART_AEGIS_BASE"]    = true,
        ["APPEARANCE_EMBERHEART_AEGIS_MASTERY"] = true,
    },
}


Relic Codex then shows:

Which appearances you have.

What you’re missing and why (“Reach Mastery Rank 5 and complete Emberheld Wall to unlock Mythic appearance.”).

6. Integration With Relic Codex

Connect all the systems:

When a player gains Relic XP or ranks up:

Call RelicCodex.OnRelicProgress(player, relicId, newRank) to update UI badges.

When they complete a Feat:

Call RelicCodex.OnFeatCompleted(player, featId) which:

Marks the relic entry as “Completed” if that feat is the capstone.

Grants the associated title and updates the Codex entry with a checkmark.

In Codex UI, each relic page can show:

Mastery Rank bar (0–5).

Feats list with checkmarks.

Unlock hints:

“Block heavy hits while tanking bosses to earn Emberheart Mastery XP.”

“Complete Emberheld Wall to unlock Mythic Emberheart appearance and the title ‘The Emberheld’.”
