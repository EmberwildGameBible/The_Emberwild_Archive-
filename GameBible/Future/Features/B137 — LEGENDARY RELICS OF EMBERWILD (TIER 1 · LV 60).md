# B137 — LEGENDARY RELICS OF EMBERWILD (TIER 1 · LV 60)
1. Design Rules

Level cap: 60.
These relics are:

Roughly 25–35% stronger than a “perfect” Lv 60 Rare of same slot.

All have one core identity mechanic (proc/passive), with internal cooldown so they don’t get stupid.

Require multi-zone effort:

Greatwood → Ashen Ridge → Frostmarch → Duskhollow → final forge.

We’ll define three:

Emberheart Aegis — Legendary tank shield.

Evershatter Colossusblade — Legendary STR 2H.

Star-Eater Conduit — Legendary caster staff.

Each comes with:

Stats

Unique effects

Exact quest / crafting chain across your existing zones

Lua-ish quest definition scaffold

2. Emberheart Aegis (Legendary Shield · Tank BiS for T1)
2.1 Item Definition

Emberheart Aegis
Level 60 · Shield · Legendary
“Forged where stone, flame, frost, and shadow converge.”

Stats:

+32 Strength

+60 Stamina

+210 Armor

+5% Block Chance

+40 Block Value

+1% Hit Chance

Passive — Emberheart Bulwark:

When you block, parry, or dodge, you gain Emberheart Bulwark:

+8% damage reduction for 6 seconds.

Stacks up to 1 (no stacking; just refresh).

Internal cooldown: 20 seconds.

Passive — Elemental Temper:

While you are under any fire, frost, or shadow damage-over-time effect, you gain:

+10% of your Strength as bonus Attack Power (for threat, not DPS madness).

This makes it feel like: the more elemental hell you’re standing in, the more stubborn your tank becomes.

2.2 Acquisition: Quest / Craft Chain

High-level structure:

Quest 1: “Four Cores, One Flame”

Quest 2: “Tempering the Aegis”

Quest 3: “Heart of the Forge” (final encounter / forging ritual).

Step 1 — Four Cores, One Flame

Requirements:

Level 60.

Completion of main story arcs for:

Greatwood

Ashen Ridge

Frostmarch

Duskhollow

Objective:

Bring the forge-masters the following:

1 × Emberforge Heart (rare drop from Furnacebound Golem / Ashen Ridge)

1 × Eternal Frostheart Core (rare from Frostvein Colossus / Frostmarch)

1 × Sovereign’s Shadowcore (rare from Shade Sovereign / Duskhollow)

1 × Greatwood Heartshield (Legendary or Rare shield from Greatwood) or 3 × Greatwood Barkplate Vestment fragments (if they scrapped/didn’t get the shield)

Turn-in:

NPC: Master Anvil-Keeper Tharok at a neutral forge hub (Emberpeak / Part One hub).

Reward:

“Unfinished Emberheart Aegis” (Bound, cannot equip).

Next quest starter.

Step 2 — Tempering the Aegis

Objectives (multi-zone tasks):

“Trial of Flame” — Ashen Ridge:

Survive and defeat an enhanced Furnacebound Golem within a time limit while carrying the unfinished Aegis.

Stand within certain lava fields as part of the fight (teaches mitigation).

“Trial of Frost” — Frostmarch:

With the shield equipped in off-hand slot (cosmetic only, still “unfinished”), defeat a storm-empowered Stormhide Mammoth.

Mechanics stress heavy frost damage + knockbacks.

“Trial of Shadow” — Duskhollow:

Endure a gauntlet of Shade Sovereign echoes and elite mobs without leaving the “circle of warding.”

If you step outside, progress fails and restarts.

Each trial flag:

Adds an invisible “tempering” tag to the shield:

TEMPERED_FLAME = true

TEMPERED_FROST = true

TEMPERED_SHADOW = true

Reward:

Shield becomes “Fully Tempered Emberheart Core” (still not equippable, but all trials complete).

Unlocks final quest.

Step 3 — Heart of the Forge

Instance:

“The Ember Crucible” – small 3–5 player scenario, or solo if you want.

Flow:

Escort Tharok into the forge.

Defend him against waves of Greatwood/Ashen/Frost/Dusk illusions.

Final boss: Embodied Emberheart, a construct that uses:

Fire cleaves, frost novas, shadow bolts.

Mechanic:

At health thresholds, Tharok channels each core into the shield.

If players fail mechanics (standing in wrong runes, letting him be interrupted), the attempt wipes and the shield remains “unstable”.

Success:

You receive Emberheart Aegis (equippable Legendary).

The tempered core item is consumed.

2.3 Quest Definition Skeleton (Lua)

You can represent the quest chain like this:

Quests["LEGENDARIES.EMBERHEART_AEGIS"] = {
    id = "Q_LEGENDARY_EMBERHEART",
    name = "Four Cores, One Flame",
    levelReq = 60,

    steps = {
        {
            id = 1,
            description = "Gather the four legendary cores and a Greatwood shield base.",
            requirements = {
                items = {
                    { id = "ITEM_EMBERFORGE_HEART",            count = 1 },
                    { id = "ITEM_ETERNAL_FROSTHEART_CORE",     count = 1 },
                    { id = "ITEM_SOVEREIGNS_SHADOWCORE",       count = 1 },
                    { id = "ITEM_GREATWOOD_HEARTSHIELD",       count = 1, optional = true },
                },
                altItems = {
                    -- if no Heartshield, require barkplate fragments
                    { id = "ITEM_BARKPLATE_FRAGMENT", count = 3 },
                },
            },
            turnInNpc = "NPC_MASTER_THAROK",
            reward = { items = { { id = "ITEM_EMBERHEART_AEGIS_UNFINISHED", count = 1 } } },
            nextStep = 2,
        },
        {
            id = 2,
            description = "Temper the Aegis in flame, frost, and shadow.",
            subSteps = {
                { id = "TRIAL_FLAME",  zone = "AshenRidge",  boss = "FurnaceboundGolem_Trial" },
                { id = "TRIAL_FROST",  zone = "Frostmarch",  boss = "StormhideMammoth_Trial" },
                { id = "TRIAL_SHADOW", zone = "Duskhollow",  boss = "ShadeSovereign_Trial" },
            },
            reward = { items = { { id = "ITEM_EMBERHEART_AEGIS_TEMPERED", count = 1 } } },
            nextStep = 3,
        },
        {
            id = 3,
            description = "Complete the Ember Crucible encounter.",
            instance = "INSTANCE_EMBER_CRUCIBLE",
            finalBoss = "BOSS_EMBODIED_EMBERHEART",
            reward = { items = { { id = "ITEM_EMBERHEART_AEGIS", count = 1 } } },
            nextStep = nil,
        },
    },
}


You can later expand this data-format into whatever Roblox modules you end up using.

3. Evershatter Colossusblade (Legendary STR 2H · DPS)
3.1 Item Definition

Evershatter Colossusblade
Level 60 · Two-Hand Sword · Legendary

Stats:

+48 Strength

+40 Stamina

+110 Attack Power

+3% Crit Chance

Passive — Shatter the Earth:

Your melee critical strikes have a chance to trigger Evershatter:

Deals moderate Physical + Frost damage in a small radius around the target.

Briefly slows all affected enemies by 30% for 4 sec.

Internal cooldown: 15 sec.

Passive — Giant’s Resolve:

While wielding the blade, you gain:

+5% reduced knockback and pull effects.

3.2 Acquisition: The Giant’s Echo

Core beats:

Collect echoes of giantkind from all three midgame zones.

Challenge three “echo bosses” that are tuned as mini-raids.

Combine everything in a final Frostmarch/Duskhollow challenge.

Step 1 — Trial of Three Peaks

Items required:

1 × Mossfur Titanbone (upgraded from Gnarlbear / Greatwood)

1 × Ashen Juggernaut Core (from Basalt Juggernaut)

1 × Stormhide Colossal Tusk (from a tuned version of Stormhide Mammoth)

Collecting these starts the quest “Echoes of the Colossus”.

Step 2 — Echo Bosses

Each zone gets an “echo” encounter:

Echo of the Grove-Titan (Greatwood)

Fights in a giant hollow tree arena.

Echo of the Ashen Titan (Ashen Ridge)

Erupting lava, falling rocks.

Echo of the Frost-Titan (Frostmarch)

Heavy slow/stomp mechanics.

Defeating each echo grants:

1 × Giant’s Echo Fragment (Grove)

1 × Giant’s Echo Fragment (Ashen)

1 × Giant’s Echo Fragment (Frost)

Plus a small chance to drop alternate cosmetic variants of the blade model, if you want.

Step 3 — Forge of the Colossus

Final objective:

Bring all three Echo Fragments to an ancient altar at the edge of Frostmarch / Duskhollow border.

Protected by a small raid-style event (waves, a mini-boss that uses all three giant mechanics combined).

On success:

You receive Evershatter Colossusblade.

The fragments are consumed.

3.3 Quest Skeleton (Lua-style)
Quests["LEGENDARIES.EVERSHATTER_COLOSSUSBLADE"] = {
    id   = "Q_LEGENDARY_EVERSHATTER",
    name = "Echoes of the Colossus",
    levelReq = 60,

    steps = {
        {
            id = 1,
            description = "Gather relics of the three titans.",
            requirements = {
                items = {
                    { id = "ITEM_MOSSFUR_TITANBONE",         count = 1 },
                    { id = "ITEM_ASHEN_JUGGERNAUT_CORE",     count = 1 },
                    { id = "ITEM_STORMHIDE_COLOSSAL_TUSK",   count = 1 },
                },
            },
            reward = {},
            nextStep = 2,
        },
        {
            id = 2,
            description = "Defeat the echoes of the titans.",
            subSteps = {
                { id = "ECHO_GROVE_TITAN",  boss = "BOSS_ECHO_GROVE_TITAN",  zone = "Greatwood"   },
                { id = "ECHO_ASHEN_TITAN",  boss = "BOSS_ECHO_ASHEN_TITAN",  zone = "AshenRidge"  },
                { id = "ECHO_FROST_TITAN",  boss = "BOSS_ECHO_FROST_TITAN",  zone = "Frostmarch"  },
            },
            reward = {
                items = {
                    { id = "ITEM_GIANT_ECHO_FRAGMENT_GROVE", count = 1 },
                    { id = "ITEM_GIANT_ECHO_FRAGMENT_ASHEN", count = 1 },
                    { id = "ITEM_GIANT_ECHO_FRAGMENT_FROST", count = 1 },
                }
            },
            nextStep = 3,
        },
        {
            id = 3,
            description = "Unite the echoes at the Colossus Forge.",
            instance = "INSTANCE_COLOSSUS_FORGE",
            finalBoss = "BOSS_COLOSSUS_ASSEMBLED",
            reward = { items = { { id = "ITEM_EVERSHATTER_COLOSSUSBLADE", count = 1 } } },
            nextStep = nil,
        },
    },
}

4. Star-Eater Conduit (Legendary Caster Staff)
4.1 Item Definition

Star-Eater Conduit
Level 60 · Two-Hand Staff · Legendary

Stats:

+50 Intellect

+36 Spirit

+30 Stamina

+96 Spell Power

+3% Spell Crit Chance

+12 Mana per 5 sec

Passive — Devour the Light:

Your spell critical hits build Star-Eater stacks (up to 5).

At 5 stacks, your next direct damage spell:

Consumes all stacks

Deals +25% increased damage

Restores a small amount of mana (e.g. 3% of max).

Internal cooldown on consumption effect: 20 sec.

Passive — Starveil:

While out of combat under open sky (including auroras, night sky):

Mana regeneration is increased by an additional +5 Mana per 5 sec.

4.2 Acquisition: The Star-Eater Rite

This chain weaves through:

Aurora Wisp (Frostmarch)

Runed Stag (Frostmarch)

Riftwound Shade (Duskhollow)

Shade Sovereign (Duskhollow, final echo)

Step 1 — Shards of the Fallen Lights

Collect:

10 × Starfrost Crystal (Aurora Wisp / Frostmarch)

6 × Runed Antler Chip (Runed Stag / Frostmarch)

4 × Riftwound Essence (Riftwound Shade / Duskhollow)

Turn-in:

NPC: Aurora-Seer Thalindra in a neutral hub.

Reward:

1 × Inert Star-Eater Core (quest item)

Unlock next step.

Step 2 — Baptism in the Rift

Tasks:

Defeat a special aurora-bound version of Frostvein Colossus while carrying the core.

Defeat a ritual-empowered Gloamscour Witch in Duskhollow (more dangerous than normal).

Each success upgrades the core’s state:

STATE = ATTUNED_TO_AURORA

STATE = ATTUNED_TO_RIFT

When both are done, the core becomes “Awakening Star-Eater Core”.

Step 3 — The Star-Eater Rite (Instance)

Enter a scenario where the sky is a mixture of aurora and rift-tears.

Survive phased fights:

Phase 1: illusions of Aurora Wisp and Runed Stag.

Phase 2: illusions of Gloamscour Witch and Riftwound Shade.

Phase 3: a mini-boss that uses both frost and shadow patterns.

Mechanic:

During the fight, players must stand in correct star sigils or the core destabilizes (wipe).

At the end, they channel energy into the staff.

Reward:

Star-Eater Conduit

Optional: a cosmetic “aurora trail” when staff is sheathed or drawn.

4.3 Quest Skeleton (Lua-style)
Quests["LEGENDARIES.STAR_EATER_CONDUIT"] = {
    id = "Q_LEGENDARY_STAR_EATER",
    name = "The Star-Eater Rite",
    levelReq = 60,

    steps = {
        {
            id = 1,
            description = "Gather shards of aurora and riftlight.",
            requirements = {
                items = {
                    { id = "MAT_STARFROST_CRYSTAL",   count = 10 },
                    { id = "MAT_RUNED_ANTLER_CHIP",   count = 6  },
                    { id = "MAT_RIFTWOUND_ESSENCE",   count = 4  },
                },
            },
            turnInNpc = "NPC_AURORA_SEER_THALINDRA",
            reward = {
                items = { { id = "ITEM_STAR_EATER_CORE_INERT", count = 1 } },
            },
            nextStep = 2,
        },
        {
            id = 2,
            description = "Attune the core to aurora and rift.",
            subSteps = {
                { id = "ATTUNE_AURORA", boss = "BOSS_FROSTVEIN_COLOSSUS_AURORA", zone = "Frostmarch" },
                { id = "ATTUNE_RIFT",   boss = "BOSS_GLOAMSC0UR_WITCH_RITUAL",   zone = "Duskhollow" },
            },
            reward = {
                items = { { id = "ITEM_STAR_EATER_CORE_AWAKENING", count = 1 } },
            },
            nextStep = 3,
        },
        {
            id = 3,
            description = "Complete the Star-Eater Rite.",
            instance = "INSTANCE_STAR_EATER_RITE",
            finalBoss = "BOSS_STAR_EATER_ASPECT",
            reward = { items = { { id = "ITEM_STAR_EATER_CONDUIT", count = 1 } } },
            nextStep = nil,
        },
    },
}
