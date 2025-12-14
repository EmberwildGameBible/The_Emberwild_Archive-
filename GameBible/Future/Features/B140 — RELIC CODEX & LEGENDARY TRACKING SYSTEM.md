# B140 — RELIC CODEX & LEGENDARY TRACKING SYSTEM
1. Purpose of the Relic Codex

The Relic Codex is an in-game, lore-friendly encyclopedia that tracks:

Every Legendary and Named Unique in Emberwild.

Basic info: slot, level, role, zones, category.

How it is obtained: quest chain, world-drop, crafting, etc.

Whether the player has:

Seen it,

Looted it,

Fully completed its associated chain.

Core goals:

Give players a long-term chase list (what exists, what they’re missing).

Tie legendaries into lore pages and NPCs instead of just drop tables.

Let you scale up to dozens of relics without chaos.

The Codex itself is:

Account-wide for unlock tracking (seeing an item once logs it).

Character-specific for “obtained” flags if you want (per-char achievements).

2. Player-Facing Experience
2.1 Where the Codex Lives

The Codex is accessed from:

A physical object: Relic Archive in your main hub (PartOne / city).

Optional hotkey / menu (for convenience) once discovered.

When the player first uses the Archive:

They unlock the Relic Codex UI.

From then on, they can open it anywhere as a menu panel.

2.2 Categories and Filters

Codex is divided into tabs:

By role:

Tank · Melee DPS · Ranged DPS · Caster DPS · Healer · Hybrid.

By slot:

Weapon · Shield · Armor · Trinket · Ring · Neck · Cloak · Off-Hand.

By tier:

Zone Uniques (Greatwood / Ashen / Frost / Duskhollow),

Tier 1 Legendaries (Lv 60),

Future tiers.

Each entry has states:

Unknown — you haven’t discovered this relic yet.

Discovered — you’ve seen it in the world (someone else had it, you inspected, or you saw it drop).

Obtained — you have owned it at least once.

Completed — you have completed its full intended experience (quest chain done, or some associated challenge).

UI shows:

Interesting silhouette + “???” when Unknown.

Full card with art/description when Discovered.

Frame glow or badge when Obtained / Completed.

3. Data Model (Design + Lua-Friendly Structure)
3.1 Conceptual Fields Per Relic

Each relic entry needs:

id — internal ID, e.g. EMBERHEART_AEGIS.

name — display name.

tier — intended tier (e.g. 1 for current legendaries).

levelReq — typical level at which it’s relevant (60 for legendaries, 10–49 for early uniques).

slot — weapon/shield/armor/trinket/etc.

roleTags — stuff like {"TANK","MELEE_DPS","HEALER"}.

zones — relevant zones.

sourceType — QuestChain | WorldDrop | BossDrop | Crafting | Mixed.

sourceId — quest id, boss id, recipe id, etc.

shortSource — one-sentence summary (“Complete Four Cores, One Flame.”).

loreKey — key into your lore text table.

unlockRules — how the Codex marks it as Discovered vs Obtained vs Completed.

flags — optional stuff: accountWide, futureContent, hidden.

3.2 Lua Structure Example

You can store these in a single module, something like:

RelicCodex = RelicCodex or {}

RelicCodex.Definitions = {
    EMBERHEART_AEGIS = {
        id        = "EMBERHEART_AEGIS",
        name      = "Emberheart Aegis",
        tier      = 1,
        levelReq  = 60,
        slot      = "SHIELD",
        roleTags  = { "TANK" },
        zones     = { "Greatwood", "AshenRidge", "Frostmarch", "Duskhollow" },

        sourceType  = "QuestChain",
        sourceId    = "Q_LEGENDARY_EMBERHEART",
        shortSource = "Complete the legendary questline 'Four Cores, One Flame'.",

        loreKey   = "LORE_RELIC_EMBERHEART_AEGIS",
        flags     = { accountWide = true },

        unlockRules = {
            discovered = {
                -- e.g. seen tooltip, inspected another player, or started quest
                events = { "SEEN_ITEM", "QUEST_STARTED" },
            },
            obtained = {
                -- player owned the item at least once
                events = { "ITEM_OBTAINED" },
            },
            completed = {
                -- fully completed quest chain
                events = { "QUEST_COMPLETED" },
                questId = "Q_LEGENDARY_EMBERHEART",
            },
        },
    },
}


You then have:

RelicCodex.PlayerState = {
    -- per player
    [player.UserId] = {
        EMBERHEART_AEGIS = {
            discovered = true,
            obtained   = false,
            completed  = false,
        },
        -- etc...
    },
}


Codex UI just reads Definitions + PlayerState.

4. Tier 0–1 Relic Index (What Exists So Far)

This section is pure design Bible text – you can use it as an index page.

4.1 Greatwood Relics (Zone I, Lv 10–19)

These are early uniques / legendaries defined in B134.

Veilpiercer, Dagger of the Widow

ID: VEILPIERCER_DAGGER

Tier: 0 (Zone Unique)

Slot: Dagger · Role: AGI Melee DPS

Zones: Greatwood

Source: Rare drop from Thornspine Widow and ultra-rare Greatwood world drop.

Codex Notes: First true poison dagger; teaches “stacking poison DoT” fantasy.

Wisp-Touched Cloak

ID: WISP_TOUCHED_CLOAK

Tier: 0

Slot: Cloak · Role: Any, heavy on mobility/survival

Zones: Greatwood

Source: Rare drop from Wisp-Touched Fawn.

Notes: Introduces magical travel/survivability rewards for exploration.

Heartroot Crown

ID: HEARTROOT_CROWN

Tier: 0

Slot: Head (Caster) · Role: Healer / Caster

Zone: Greatwood

Source: Rare from Greatwood Sentinel.

Notes: First proc helm; simple, clean caster power-up.

Greatwood Heartshield

ID: GREATWOOD_HEARTSHIELD

Tier: 0

Slot: Shield · Role: Tank

Zone: Greatwood

Source: Rare from Greatwood Sentinel / Mossfur Gnarlbear.

Notes: Seed of later Emberheart Aegis chain.

Greatwood’s Echo

ID: GREATWOODS_ECHO

Tier: 0

Slot: Trinket · Role: DPS

Zone: Greatwood

Source: World-drop jackpot, 10–19 band.

Notes: First “crit window” trinket.

4.2 Ashen Ridge Relics (Zone II, Lv 20–29)

From B134:

Cinderkiss Blade

ID: CINDERKISS_BLADE

Tier: 0

Slot: 1H Sword/Dagger · Role: Melee DPS (STR/AGI)

Source: Rare Magma Wretch drop + world-drop.

Embersteel Warplate

ID: EMBERSTEEL_WARPLATE

Tier: 0–1 bridge

Slot: Chest (Heavy) · Role: Tank

Source: Crafted from Embersteel Plate and Emberforge Heart.

Flamecut Edge

ID: FLAMECUT_EDGE

Tier: 0

Slot: 1H Sword · Role: Melee DPS

Source: Ashen Ridge world-drop.

Emberwake Conduit

ID: EMBERWAKE_CONDUIT

Tier: 0

Slot: 2H Staff · Role: Caster DPS

Source: World-drop staff, reinforced by Furnacebound Golem.

Emberwrought Loop

ID: EMBERWROUGHT_LOOP

Tier: 0

Slot: Ring · Role: Universal DPS

Source: Ashen Ridge world-drop table.

4.3 Frostmarch Relics (Zone III, Lv 30–39)

From B134:

Glaciathral Greatsword

ID: GLACIATHRAL_GREATSWORD

Slot: 2H Sword/Axe · Role: STR DPS

Source: Winterborn Thrall / Frostvein Colossus.

Thunderhide Warplate

ID: THUNDERHIDE_WARPLATE

Slot: Chest (Heavy) · Role: Tank

Source: Stormhide Mammoth.

Stormhide Warhorn

ID: STORMHIDE_WARHORN

Slot: Trinket · Role: Tank / Melee Support

Source: Stormhide Mammoth.

Eternal Aurora Staff

ID: ETERNAL_AURORA_STAFF

Slot: 2H Staff · Role: Caster

Source: Frostvein Colossus (legendary variant of the Rare staff).

Boreal Trailcloak

ID: BOREAL_TRAILCLOAK

Slot: Cloak · Role: AGI DPS / Survival

Source: Frostmarch world-drop, weighted on Frostmaw Lynx / Brittleclaw Raptor.

4.4 Duskhollow Relics (Zone IV, Lv 40–49)

From B136 / B138 / B139 there are a bunch; treat most of them as Tier 0.5 (top of leveling) and keep Tier 1 reserved for true level 60 legendaries.

Examples:

RIFTHEART_BULWARK — Legendary shield from Rift-Torn Constructs.

WITCH_QUEENS_EYE — Caster trinket from Gloamscour Witch.

GLOAMTHREAD_DRAPE — Cloak world-drop.

UMBRAL_SIGNET — Ring world-drop.

RIFTWOUND_CIRCLET — Rare spawn legendary-level head.

You don’t have to detail all of these here; B136 already has the drop logic.
This index just acknowledges they exist and flags them as RelicCodex entries.

4.5 Tier 1 Legendaries (Lv 60) — Global

These are the big ones we just made in B137–B139.

Emberheart Aegis

ID: EMBERHEART_AEGIS

Slot: Shield · Role: Tank

Source: Legendary quest chain “Four Cores, One Flame”.

Zones: All four.

Evershatter Colossusblade

ID: EVERSHATTER_COLOSSUSBLADE

Slot: 2H Sword · Role: STR DPS

Source: Legendary chain “Echoes of the Colossus”.

Star-Eater Conduit

ID: STAR_EATER_CONDUIT

Slot: 2H Staff · Role: Caster DPS

Source: Legendary chain “The Star-Eater Rite”.

Skyshatter Huntbow

ID: SKYSHATTER_HUNTBOW

Slot: Bow · Role: AGI Ranged DPS

Source: Legendary chain “The Grand Hunt: Skyshatter”.

Nightveil Prowler

ID: NIGHTVEIL_PROWLER

Slot: Dagger · Role: AGI Melee DPS

Source: Legendary chain “The Silent Hunt: Nightveil”.

Dawnsong Covenant

ID: DAWNSONG_COVENANT

Slot: 1H Mace · Role: Healer

Source: Legendary chain “The Dawnsong Vigil”.

Heartroot Reliquary

ID: HEARTROOT_RELIQUARY

Slot: Trinket · Role: Healer

Source: Questline “Echoes of the First Grove” (or bonus from Dawnsong chain).

Each of these should have:

A Codex entry (Definition + loreKey).

A lore page in your narrative section (can be written later).

5. Codex Unlock Events (Hook Points)

Whenever any of these events happen, call a helper like:

function RelicCodex.OnItemSeen(player, itemId)
    -- e.g. tooltip viewed or inspected another player
end

function RelicCodex.OnItemObtained(player, itemId)
    -- fired when loot/crafting/quest gives the relic
end

function RelicCodex.OnQuestCompleted(player, questId)
    -- to set "completed" state for quest-based legendaries
end


Examples:

Player inspects another player wielding Emberheart Aegis → OnItemSeen.

Player completes the Emberheart quest chain → OnQuestCompleted("Q_LEGENDARY_EMBERHEART").

Loot/quest reward actually gives the item → OnItemObtained.

Codex reads those and updates PlayerState accordingly.
