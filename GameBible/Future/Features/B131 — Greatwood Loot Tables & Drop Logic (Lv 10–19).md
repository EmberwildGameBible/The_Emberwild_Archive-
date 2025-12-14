Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B131 — GREATWOOD LOOT TABLES & DROP LOGIC (LV 10–19)
1. Greatwood Loot Philosophy (10–19 Band)

Greatwood is the first “real” loot band in Emberwild.

Design goals:

Drops feel grounded in creatures and ecology, not random.

Players start seeing:

Named items (Heartroot, Gnarlbear, Dawnweaver, etc.)

Profession materials (resin, hides, fibers, spores)

Small chances at “wow” Rares, but still Classic slow.

1.1 Drop Structure Per Kill (Baseline)

Every kill rolls its loot pool in layers:

Coin Roll

100% chance to drop coins.

Coin amount scales with enemy level + type (critter / normal / elite).

Material Roll

Normal mobs: ~70% chance to drop 1 material.

Beasts / plants / insects: up to ~90% for themed materials.

Humanoids (when they appear later) include cloth/leather scraps.

Equipment Roll

Normal: 10–20% chance to drop an item from the appropriate common/uncommon pool.

Elites / named mobs: 30–40% to drop Uncommon / Rare.

Special / Ultra-Rare Roll

All Greatwood mobs in the 10–19 band share a world-jackpot table.

Chance: roughly 0.05%–0.20% per kill, tuned per enemy type.

2. Greatwood Enemy Loot Profiles (10–19)

Below are loot identities for your core Greatwood enemies:

Brambleback Stalker

Mossfur Gnarlbear

Hollowbark Sapdrifter

Groveclaw Prowler

Amberhorn Elk

Thornspine Widow

Greatwood Sentinel (elite)

Wisp-Touched Fawn

Blightspore Moth

Verdant Shrikewolf

You can attach these to actual spawners / NPC definitions as needed.

2.1 Brambleback Stalker (Lv 11–13, Beast)

Role: Ambush predator in tall grass.
Player fantasy: “These drop fangs, light leather, and early AGI gear.”

Common Drops

Coin:

8–18 copper (scaled by exact level).

Mats (90% chance):

1–2 × Stalker Fang

1–2 × Mossleaf Hide Scrap (generic low-tier leather)

Junk (30% chance):

1 × Snapped Bramble Spine (vendor grey, flavor text)

Uncommon Equipment Pool (~12% chance)

One of:

Sprigstep Stalker’s Grips (Leather, Hands, Uncommon 12)

Sprigstep Stalker’s Bracers (Leather, Wrist, Uncommon 11)

Sprigstep Stalker’s Waistcord (Leather, Waist, Uncommon 11)

Each item equal weight.

Rare Pool (~1.0% total, per kill)

One of:

Prowler’s Silent-Step Boots (Rare 13, AGI leather boots)

Hunter’s Heartroot Band (Rare 15 AGI ring)

2.2 Verdant Shrikewolf (Lv 13–15, Beast)

Role: Pack hunter, howl debuff.
Player fantasy: “These are the ‘real leather’ farm; they drop better hides and some hunter gear.”

Common Drops

Coin:

12–24 copper.

Mats (95% chance):

1–3 × Shrikewolf Pelt

0–1 × Heartroot Resin Scrap (very low chance, early tease)

Junk:

1 × Broken Wolf Tooth (grey)

Uncommon Equipment Pool (~15% chance)

One of:

Sprigstep Stalker’s Hood (if you want to add it later) or reuse:

Sprigstep Stalker’s Mantle (Leather, Shoulders)

Briarstring Shortbow (Uncommon 12)

Rare Pool (~1.5% total)

One of:

Heartroot Hunter’s Treads (Rare 15 leather boots)

Heartroot Hunter’s Mantle (Rare 18 shoulders)

2.3 Groveclaw Prowler (Lv 14–16, Beast)

Role: Fast, flanking hunter; AGI DPS focus.
Player fantasy: “These drop serious hunter/rogue pieces.”

Common Drops

Coin:

15–30 copper.

Mats:

1–3 × Prowler Talon

1–2 × Greatwood Leather Scrap

Uncommon Equipment Pool (~18% chance)

One of:

Sprigstep Stalker’s Jerkin (if you define it) / or:

Sapdrift Tracker’s Charm (Uncommon 13 trinket, AP + movespeed)

Ashen Hunter’s old Greatwood ring equivalents (if you want more)

Rare Pool (~2.0% total)

One of:

Heartroot Hunter’s Hood (Rare 15)

Heartroot Hunter’s Grips (Rare 17)

2.4 Mossfur Gnarlbear (Lv 15–18, Beast Elite-ish)

Role: Thick-skinned, armor-breaking bear; “mini-boss.”
Player fantasy: “These are the tank gear bears.”

Common Drops

Coin:

20–40 copper.

Mats:

1–3 × Gnarlbear Hide

0–2 × Greatwood Barkplate Shard

Profession:

Low chance at Gnarlbear Bone Fragment (used in later crafts).

Uncommon Equipment Pool (~25% chance)

One of:

Barkbound Defender Pauldrons (Uncommon 12)

Barkbound Defender Gauntlets (Uncommon 12)

Gnarlbear Blood-Tied Charm (Uncommon 13 trinket)

Rare Pool (~5% total)

One of:

Gnarlbear Warden Helm (Rare 15)

Gnarlbear Warden Sabatons (Rare 15)

Gnarlbear Warden Girdle (Rare 18)

Ultra-Rare (~0.2% total)

Mossfur Crushmaul (Rare 19 1H mace, tank threat weapon)

2.5 Amberhorn Elk (Lv 12–15, Beast)

Role: Territorial charger.
Player fantasy: “Nice early AGI/STA and a ring/pendant.”

Common Drops

Coin:

10–22 copper.

Mats:

1–2 × Amberhorn Shard

1–2 × Amberhide Strip

Uncommon Equipment Pool (~15% chance)

One of:

Amberhorn Hunter’s Girdle (if you want to define a waist)

Whisperleaf Hunter’s Pendant (Neck, Uncommon 12)

Rare Pool (~1.5% total)

Antler Crest Ring (Rare 14 ring; you can stat this later or treat it as alt to Heartroot Band)

2.6 Hollowbark Sapdrifter (Lv 13–16, Spirit / Plant)

Role: Drains stamina, floats; more “magical.”
Player fantasy: “Caster/healer mats and staff.”

Common Drops

Coin:

10–24 copper.

Mats:

1–3 × Sapdrifter Resin

1–2 × Hollowbark Fiber

Uncommon Equipment Pool (~15% chance)

One of:

Sapling Seer’s Gloves (Uncommon 12)

Sapling Seer’s Sash (Uncommon 11)

Rare Pool (~3.0% total)

Sapdrifter’s Conduit Staff (Rare 18 2H staff)

2.7 Thornspine Widow (Lv 16–19, Elite Spider)

Role: Venom, webs, immobilization; poison theme.
Player fantasy: “Poison mats and some juicy gear.”

Common Drops

Coin:

20–40 copper.

Mats:

1–3 × Widow Silk

1–2 × Blight Dust

Uncommon Equipment Pool (~25% chance)

One of:

Sapling Seer’s Shoulderpads (Uncommon 12, caster shoulders)

Elder Sapstone Focus (Uncommon 13 caster trinket)

Whisperbud Wand (Uncommon 12 wand)

Rare Pool (~5% total)

One of:

Dawnweaver’s Hood (Rare 15)

Dawnweaver’s Gloves (Rare 17)

Heartroot Oracle’s Wand (Rare 19)

Ultra-Rare (~0.15% total)

Veilpiercer Dagger (Rare/Elite dagger, poison-theme, can define later as higher-tier item)

2.8 Blightspore Moth (Lv 11–14, Insect)

Role: Poison cloud, nuisance, alchemy mobs.
Player fantasy: “You farm these for poison reagents.”

Common Drops

Coin:

6–14 copper.

Mats (95% chance):

1–3 × Blight Dust

0–2 × Toxic Wing Fragment

Uncommon Pool (~10% chance)

Low-tier Alchemy Recipe (e.g. Minor Venom Oil, Weak Toxin Draught)

Sapling Seer’s Wraps (Uncommon 11 cloth wrists)

Rare Pool (~0.5% total)

Toxicwing Brooch (Rare trinket, poison-related)

2.9 Wisp-Touched Fawn (Lv 10–12, Rare Spawn Beast)

Role: Skittish, teleports short distances; “cute rare.”
Player fantasy: “If you ever catch one, it drops something special.”

Common Drops

Coin:

10–20 copper.

Mats:

1–2 × Wisp-Touched Fur

0–1 × Glimmerdew Fragment

Rare Pool (~30–40% on kill, but mob is rare)

One of:

Glimmerdew Charm (Rare neck, regen / mana / soft defensive stats)

Dawnweaver’s Focus Band (Rare caster ring 15)

Ultra-Rare (~1.0% on kill)

Wisp-Touched Cloak (you can define as later, maybe small blink / evade effect)

2.10 Greatwood Sentinel (Lv 18–20, Zone Elite)

Role: Walking tree guardian; key zone boss.
Player fantasy: “This is your big Greatwood end-boss for 10–19. He drops set anchors and a chance at jackpot.”

Guaranteed Drops

Coin:

60–90 copper.

Mats:

2–4 × Ancient Barkplate

2–4 × Heartroot Resin

Uncommon Pool (100%: 1–2 items)

Random 1–2 items from:

Any Barkbound Defender piece (heavy Uncommon)

Any Sprigstep Stalker piece (leather Uncommon)

Any Sapling Seer piece (cloth Uncommon)

Heartroot Channeler’s Pendant (Uncommon 13 cloth neck)

Rare Pool (60%: 1 item)

One of:

Gnarlbear Warden Chestguard (if you want to define it) or:

Sentinel’s Barkplate Vestment (Rare heavy chest 16)

Heartroot Hunter’s Jerkin (Rare leather chest 15)

Dawnweaver’s Threaded Robe (Rare cloth chest 15)

Greatwood Stalker Bow (Rare 15 bow)

Greatwood Bulwark Mace (Rare 17 1H mace, earlier defined)

World-Jackpot Roll (Independent Extra Roll, ~0.25% per kill)

Greatwood World Drop (10–19) Table (see below)

3. Greatwood World Drop Table (10–19)

Any mob in Greatwood (level 10–19, non-critter) rolls this after its normal loot, with a very low chance.

Recommended base chance: 0.05% per kill (1 in 2,000), higher (0.10–0.25%) on elites/rares.

World Drop (10–19) candidates:

Heartroot Groveband

Rare ring (universal DPS)

+Primary Stat, +STA, +Hit

Greatwood Luminary Sigil

Rare ring (caster)

Greatwood Bastion Signet

Rare ring (tank)

Sapdrifter’s Conduit Staff (can appear as both boss + rare world drop)

You can expand this later with more “only-from-the-world” pieces.

4. Lua Loot Table Example (Implementation-Friendly)

Here’s an example of how you could structure Greatwood loot tables in Lua.
You can paste this into your GameBible code sections wherever you store pseudo-code.

-- Rarity constants for readability
local COMMON    = "COMMON"
local UNCOMMON  = "UNCOMMON"
local RARE      = "RARE"
local ULTRA     = "ULTRA"

local function LootEntry(itemId, chance, minCount, maxCount)
    return {
        itemId   = itemId,
        chance   = chance,   -- 0.0–1.0
        minCount = minCount or 1,
        maxCount = maxCount or minCount or 1,
    }
end

LootTables = LootTables or {}

-- Example: Brambleback Stalker (Lv 11–13)
LootTables["Greatwood.BramblebackStalker"] = {
    coin = {
        min = 8,
        max = 18,
    },

    materials = {
        LootEntry("MAT_STALKER_FANG",        0.80, 1, 2),
        LootEntry("MAT_MOSSLEAF_HIDE_SCRAP", 0.60, 1, 2),
    },

    junk = {
        LootEntry("JUNK_SNAPPED_BRAMBLE_SPINE", 0.30, 1, 1),
    },

    equipment = {
        -- Uncommon pool
        LootEntry("ITEM_SPRIGSTEP_STALKERS_GRIPS",    0.04, 1, 1),
        LootEntry("ITEM_SPRIGSTEP_STALKERS_BRACERS",  0.04, 1, 1),
        LootEntry("ITEM_SPRIGSTEP_STALKERS_WAISTCORD",0.04, 1, 1),

        -- Rare pool (small)
        LootEntry("ITEM_PROWLERS_SILENT_STEP_BOOTS",  0.005, 1, 1),
        LootEntry("ITEM_HUNTERS_HEARTROOT_BAND",      0.005, 1, 1),
    },

    worldDrop = {
        -- Chance handled globally, this is just the pool
        LootEntry("ITEM_HEARTROOT_GROVEBAND",  1.0, 1, 1), -- equal weighted within world drop pool
    },
}

-- Example: Greatwood Sentinel (Zone Elite)
LootTables["Greatwood.GreatwoodSentinel"] = {
    coin = { min = 60, max = 90 },

    materials = {
        LootEntry("MAT_ANCIENT_BARKPLATE", 0.90, 2, 4),
        LootEntry("MAT_HEARTROOT_RESIN",   0.90, 2, 4),
    },

    equipment = {
        -- Uncommon pool (higher total chance)
        LootEntry("ITEM_BARKBOUND_DEFENDER_PAULDRONS", 0.08, 1, 1),
        LootEntry("ITEM_SPRIGSTEP_STALKERS_MANTLE",    0.08, 1, 1),
        LootEntry("ITEM_SAPLING_SEERS_SHOULDERPADS",   0.08, 1, 1),
        LootEntry("ITEM_HEARTROOT_CHANNELERS_PENDANT", 0.06, 1, 1),

        -- Rare pool
        LootEntry("ITEM_HEARTROOT_HUNTERS_JERKIN",        0.10, 1, 1),
        LootEntry("ITEM_DAWNWEAVERS_THREADED_ROBE",       0.08, 1, 1),
        LootEntry("ITEM_SENTINELS_BARKPLATE_VESTMENT",    0.08, 1, 1),
        LootEntry("ITEM_GREATWOOD_STALKER_BOW",           0.08, 1, 1),
        LootEntry("ITEM_GREATWOOD_BULWARK_MACE",          0.06, 1, 1),
    },

    worldDrop = {
        LootEntry("ITEM_HEARTROOT_GROVEBAND",         1.0, 1, 1),
        LootEntry("ITEM_GREATWOOD_LUMINARY_SIGIL",    1.0, 1, 1),
        LootEntry("ITEM_GREATWOOD_BASTION_SIGNET",    1.0, 1, 1),
        LootEntry("ITEM_SAPDRIFTERS_CONDUIT_STAFF",   1.0, 1, 1),
    },
}


You can:

Keep this as pseudo-code in the Bible,

Or later wire it 1:1 into your actual Roblox loot system.
