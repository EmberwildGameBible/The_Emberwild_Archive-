# B141 — LEGENDARY ARMOR SETS & SET BONUS SYSTEM (TIER 1 · LV 60)
1. System Overview

Legendary armor sets are:

Tier 1 endgame (Lv 60).

Focused around:

Tank

STR melee DPS

AGI ranged DPS

AGI melee DPS

Caster DPS

Healer

Each set:

Is 5 pieces: Head, Chest, Legs, Hands, Feet.

Has:

2-piece bonus (moderate, always-good power bump).

4-piece bonus (signature effect that synergizes with its associated legendary weapon/trinket).

Design rules:

Stats on individual pieces are about on par or slightly above best Lv 60 Rares.

Set bonuses account for the “legendary” power; pieces alone should not vastly outstat Rares.

Sets are not mandatory: single-legendaries + strong Rares should still be viable.

Acquisition:

Intended to be:

Dropped from Tier 1 endgame content (dungeons / early raids / legendary scenarios).

Optionally craft-upgradable over time (later tiers can re-use names).

2. Data Model for Sets (Design + Lua)

Conceptually, each set entry needs:

id — e.g. EMBERHEART_BULWARK_SET.

name — “Emberheart Bulwark Battlegear”.

pieces — mapping slot → itemId.

roleTags — e.g. { "TANK" }.

tier — 1.

setBonuses — list keyed by number of pieces: 2 and 4.

synergy — list of legendary relics it particularly synergizes with.

Example structure:

LegendarySets = LegendarySets or {}

LegendarySets["EMBERHEART_BULWARK_SET"] = {
    id       = "EMBERHEART_BULWARK_SET",
    name     = "Emberheart Bulwark Battlegear",
    tier     = 1,
    roleTags = { "TANK" },

    pieces = {
        HEAD  = "ITEM_EMBERHEART_BULWARK_HELM",
        CHEST = "ITEM_EMBERHEART_BULWARK_CHEST",
        LEGS  = "ITEM_EMBERHEART_BULWARK_LEGS",
        HANDS = "ITEM_EMBERHEART_BULWARK_HANDS",
        FEET  = "ITEM_EMBERHEART_BULWARK_FEET",
    },

    setBonuses = {
        [2] = {
            id          = "EMBERHEART_BULWARK_2P",
            description = "+X% armor and passive damage reduction.",
        },
        [4] = {
            id          = "EMBERHEART_BULWARK_4P",
            description = "Enhances Emberheart Aegis’s damage reduction uptime.",
        },
    },

    synergy = {
        relics = { "EMBERHEART_AEGIS" },
    },
}


Runtime set detection:

Equipped items check legendarySetId in their data.

Count pieces per set → apply active bonuses.

3. EMBERHEART BULWARK BATTLEGear (Tank · Heavy · T1)

Tank-focused heavy armor set keyed to Emberheart Aegis.

3.1 Items

All heavy armor, Lv 60, Legendary.

Emberheart Bulwark Helm

Slot: Head (Heavy)

Stats:

+28 Strength

+44 Stamina

+200 Armor

+1% Block Chance

Emberheart Bulwark Breastplate

Slot: Chest (Heavy)

Stats:

+30 Strength

+52 Stamina

+240 Armor

+2% Block Chance

Emberheart Bulwark Legplates

Slot: Legs (Heavy)

Stats:

+30 Strength

+48 Stamina

+230 Armor

Emberheart Bulwark Gauntlets

Slot: Hands (Heavy)

Stats:

+24 Strength

+40 Stamina

+190 Armor

Emberheart Bulwark Sabatons

Slot: Feet (Heavy)

Stats:

+24 Strength

+40 Stamina

+190 Armor

Numbers assume these are slightly stronger than best Rares, but not full “another legendary shield” worth of power on their own.

3.2 Set Bonuses

2-piece — Ember-Forged Plating

+4% increased Armor.

+3% reduced damage taken from Fire, Frost, and Shadow sources.

4-piece — Heart of the Bulwark

While Emberheart Bulwark 2P is active:

When Emberheart Aegis’s Emberheart Bulwark effect triggers, its duration is increased by 2 seconds, and its damage reduction is increased by an additional +2%.

Internal cooldown on the “improved” proc: unchanged (uses the shield’s ICD).

This turns the shield + set into a very coherent defensive core, without giving you 100% uptime.

3.3 Lua Example (Set + Bonuses)
LegendarySets["EMBERHEART_BULWARK_SET"] = {
    id       = "EMBERHEART_BULWARK_SET",
    name     = "Emberheart Bulwark Battlegear",
    tier     = 1,
    roleTags = { "TANK" },

    pieces = {
        HEAD  = "ITEM_EMBERHEART_BULWARK_HELM",
        CHEST = "ITEM_EMBERHEART_BULWARK_BREASTPLATE",
        LEGS  = "ITEM_EMBERHEART_BULWARK_LEGPLATES",
        HANDS = "ITEM_EMBERHEART_BULWARK_GAUNTLETS",
        FEET  = "ITEM_EMBERHEART_BULWARK_SABATONS",
    },

    setBonuses = {
        [2] = {
            id          = "EMBERHEART_BULWARK_2P",
            description = "Armor increased by 4% and elemental damage taken from Fire, Frost, and Shadow is reduced by 3%.",
        },
        [4] = {
            id          = "EMBERHEART_BULWARK_4P",
            description = "Emberheart Aegis's Emberheart Bulwark lasts 2 sec longer and reduces damage by an additional 2%.",
        },
    },

    synergy = {
        relics = { "EMBERHEART_AEGIS" },
    },
}


Runtime, you would have code that sees “player has 4 pieces of this set” and modifies the shield proc behavior accordingly.

4. EVERSHATTER WARPLATE (STR Melee DPS · Heavy · T1)

Melee STR DPS set keyed to Evershatter Colossusblade.

4.1 Items

All heavy DPS-oriented.

Evershatter Warhelm

Slot: Head (Heavy)

Stats:

+36 Strength

+26 Stamina

+2% Crit Chance

Evershatter Warplate

Slot: Chest (Heavy)

Stats:

+40 Strength

+30 Stamina

+2% Crit Chance

Evershatter Legguards

Slot: Legs (Heavy)

Stats:

+38 Strength

+28 Stamina

+1% Hit Chance

Evershatter Gauntlets

Slot: Hands (Heavy)

Stats:

+32 Strength

+24 Stamina

+1% Crit Chance

Evershatter Warboots

Slot: Feet (Heavy)

Stats:

+32 Strength

+24 Stamina

+1% Hit Chance

4.2 Set Bonuses

2-piece — Giant’s Ferocity

+4% increased damage on your primary single-target melee abilities.

4-piece — Shattering Echo

When Evershatter’s Shatter the Earth proc triggers:

Damage of the explosion is increased by 20%.

Applies an extra 10% slow (total 40%) for the same duration.

Internal cooldown of the weapon’s proc remains unchanged.

4.3 Lua Example
LegendarySets["EVERSHATTER_WARPLATE_SET"] = {
    id       = "EVERSHATTER_WARPLATE_SET",
    name     = "Evershatter Warplate",
    tier     = 1,
    roleTags = { "MELEE_DPS" },

    pieces = {
        HEAD  = "ITEM_EVERSHATTER_WARHELM",
        CHEST = "ITEM_EVERSHATTER_WARPLATE",
        LEGS  = "ITEM_EVERSHATTER_LEGGUARDS",
        HANDS = "ITEM_EVERSHATTER_GAUNTLETS",
        FEET  = "ITEM_EVERSHATTER_WARBOOTS",
    },

    setBonuses = {
        [2] = {
            id          = "EVERSHATTER_2P",
            description = "Primary single-target melee abilities deal 4% increased damage.",
        },
        [4] = {
            id          = "EVERSHATTER_4P",
            description = "Shatter the Earth deals 20% increased damage and applies a stronger slow.",
        },
    },

    synergy = {
        relics = { "EVERSHATTER_COLOSSUSBLADE" },
    },
}

5. SKYSHATTER TRACKER’S HARNESS (AGI Ranged DPS · Leather · T1)

Ranged AGI set keyed to Skyshatter Huntbow.

5.1 Items

Leather, tuned for hunters / ranged AGI.

Skyshatter Tracker’s Hood

Slot: Head (Leather)

Stats:

+38 Agility

+26 Stamina

+2% Crit Chance

Skyshatter Tracker’s Jerkin

Slot: Chest (Leather)

Stats:

+40 Agility

+30 Stamina

+2% Crit Chance

Skyshatter Tracker’s Legwraps

Slot: Legs (Leather)

Stats:

+40 Agility

+30 Stamina

+1% Hit Chance

Skyshatter Tracker’s Grips

Slot: Hands (Leather)

Stats:

+34 Agility

+24 Stamina

+1% Crit Chance

Skyshatter Tracker’s Treads

Slot: Feet (Leather)

Stats:

+34 Agility

+24 Stamina

+1% Hit Chance

5.2 Set Bonuses

2-piece — Trueflight

+4% Ranged Attack Power.

4-piece — Shattered Sky

When Skyshatter Huntbow’s Hunter’s Focus consumes 5 stacks:

The empowered shot deals an additional 10% damage.

You gain +15% movement speed for 4 seconds.

Internal cooldown still governed by the bow’s 18 sec window.

This makes the “big shot” feel even punchier and reinforces kiting.

6. NIGHTVEIL ASSAILANT’S GARMENTS (AGI Melee · Leather · T1)

Melee AGI leather keyed to Nightveil Prowler.

6.1 Items
Nightveil Assailant’s Cowl

Slot: Head (Leather)

Stats:

+38 Agility

+26 Stamina

+2% Crit Chance

Nightveil Assailant’s Vest

Slot: Chest (Leather)

Stats:

+40 Agility

+30 Stamina

+2% Crit Chance

Nightveil Assailant’s Legwraps

Slot: Legs (Leather)

Stats:

+40 Agility

+30 Stamina

+1% Hit Chance

Nightveil Assailant’s Gloves

Slot: Hands (Leather)

Stats:

+34 Agility

+24 Stamina

+1% Crit Chance

Nightveil Assailant’s Footpads

Slot: Feet (Leather)

Stats:

+34 Agility

+24 Stamina

+1% Hit Chance

6.2 Set Bonuses

2-piece — Silent Blades

+4% increased damage to attacks against targets above 80% health or below 20% health.

4-piece — Veil of the Prowler

While Nightveil Prowler’s Nightveil Bleed is active on a target:

Your attacks against that target deal +6% increased damage.

Additionally, when you exit stealth, you gain:

+10% movement speed for 3 seconds (no extra ICD beyond stealth cooldowns).

This rewards proper opener management and staying on bleeding targets.

7. STAR-EATER REGALIA (Caster DPS · Cloth · T1)

Caster DPS set keyed to Star-Eater Conduit.

7.1 Items
Star-Eater Hood

Slot: Head (Cloth)

Stats:

+40 Intellect

+22 Spirit

+20 Stamina

+32 Spell Power

Star-Eater Robe

Slot: Chest (Cloth)

Stats:

+42 Intellect

+24 Spirit

+22 Stamina

+40 Spell Power

Star-Eater Legwraps

Slot: Legs (Cloth)

Stats:

+42 Intellect

+22 Spirit

+22 Stamina

+36 Spell Power

Star-Eater Gloves

Slot: Hands (Cloth)

Stats:

+36 Intellect

+20 Spirit

+18 Stamina

+28 Spell Power

Star-Eater Sandals

Slot: Feet (Cloth)

Stats:

+36 Intellect

+20 Spirit

+18 Stamina

+28 Spell Power

7.2 Set Bonuses

2-piece — Celestial Insight

+3% Spell Crit Chance.

4-piece — Devouring Stars

When Star-Eater Conduit’s Star-Eater stacks reach 5 and are consumed:

The empowered spell’s bonus damage is increased from +25% to +30%.

It also restores an additional 2% mana (total ~5% of max).

Internal cooldown remains 20 sec as defined on the staff.

This smooths the rotation around the staff’s mechanic and rewards crit stacking.

8. DAWNSONG VESTMENTS (Healer · Cloth/Chain · T1)

Healer set keyed to Dawnsong Covenant and Heartroot Reliquary.

8.1 Items

These can be cloth or “holy mail” depending on your class handling; stats assume generic healer.

Dawnsong Circlet

Slot: Head

Stats:

+36 Intellect

+26 Spirit

+24 Stamina

+30 Spell Power

+1% Healing Done

Dawnsong Raiment

Slot: Chest

Stats:

+38 Intellect

+30 Spirit

+26 Stamina

+36 Spell Power

+1% Healing Done

Dawnsong Leggings

Slot: Legs

Stats:

+38 Intellect

+28 Spirit

+26 Stamina

+32 Spell Power

Dawnsong Gloves

Slot: Hands

Stats:

+32 Intellect

+24 Spirit

+22 Stamina

+26 Spell Power

Dawnsong Slippers

Slot: Feet

Stats:

+32 Intellect

+24 Spirit

+22 Stamina

+26 Spell Power

8.2 Set Bonuses

2-piece — Harmonized Light

+4% increased healing from your HoT effects.

4-piece — Vigil of Dawnsong

When Dawnsong Covenant’s Dawnsong Chorus converts overhealing into a shield:

That shield’s cap is increased by 25%.

Additionally, while a Dawnsong Chorus shield is active on at least one party/raid member, you gain:

+2 Mana per 5 sec.

This makes the mace + reliquary + set feel like an efficient, shield-leaning healer kit without going full absorb-mage.

9. Where These Sets Drop

You can decide exact encounters later, but high-level:

Each set should be spread across:

Tier 1 dungeons (early pieces).

Tier 1 raid bosses / legendary scenarios (later pieces).

For example:

Emberheart Bulwark pieces from tank-heavy bosses and Ember Crucible-like encounters.

Evershatter set pieces from giant-themed/colossus content.

Skyshatter/Nightveil sets from hunt/assassin-flavored bosses.

Star-Eater and Dawnsong from caster/healer-heavy wings.

Codex integration:

Every set is a Codex category:

“Tier 1 Legendary Sets”

Each piece is flagged with legendarySetId.
