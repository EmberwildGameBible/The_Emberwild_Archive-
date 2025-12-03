CHAPTER 10 — STAT & ITEM BUDGET FRAMEWORK (V2 — FINALIZED)

Assumes a 1–60 level range, Classic-ish pacing, and primary stats:
STR / AGI / STA / INT / SPI

If you change level cap later, you only need to adjust the base budget curve.

⸻

1. Core Goals
	1.	Every item has a clear numeric budget based on:
	•	Item level
	•	Slot
	•	Rarity
	2.	That budget is “spent” on stats using explicit costs per stat.
	3.	Two items with:
	•	same level,
	•	same slot,
	•	same rarity
will be within a tight power band, even if their stat mix is different.
	4.	Classes stay balanced because:
	•	Primary stat → AP / SP / HP follows fixed rules
	•	Offensive stats (crit, hit, haste) are expensive
	•	Defensive stats (armor, stamina) scale cleanly

⸻

2. Primary Stats & Derived Effects

We keep your original stat fantasy, but clarify the math.

2.1 Primary Stats
	•	Strength (STR)
	•	Melee AP for strength-based classes
	•	Increases block value for shield users
	•	Agility (AGI)
	•	AP for agility-based classes
	•	Increases crit chance and dodge
	•	Ranged accuracy for hunters / agility users
	•	Stamina (STA)
	•	Raw HP
	•	Intellect (INT)
	•	Max mana (or equivalent resource)
	•	Spell crit
	•	Contributes to spell power (slightly)
	•	Spirit (SPI)
	•	Out-of-combat regen
	•	In-combat regen for certain classes/specs

2.2 Generic Derived Formulas

These can be tweaked per class, but this is the baseline:

Health      = BaseHP(level, class) + STA * 10

Mana        = BaseMana(level, class) + INT * 15

Melee AP    = (STR * STR_AP_PER_STR[class]) 
            + (AGI * STR_AP_FROM_AGI[class])

Ranged AP   = (AGI * AGI_RAP_PER_AGI[class])

Spell Power = GearSP + (INT * INT_TO_SP_FACTOR[class])

Regen (OOC) = SPI * SPI_OOC_FACTOR
Regen (IC)  = SPI * SPI_IC_FACTOR[class]

Example default values (can be overridden per class):

STR_AP_PER_STR      = 2.0 (pure STR classes), 1.0 (hybrids)
AGI_RAP_PER_AGI     = 2.0 (ranged classes), 1.0 (hybrids)
INT_TO_SP_FACTOR    = 0.2 (casters), 0.0 (non-casters)

SPI_OOC_FACTOR      = 0.5 mana / 5 sec per SPI
SPI_IC_FACTOR       = 0.1–0.3 depending on class


⸻

3. Armor & Mitigation

Use a classic-feeling diminishing returns formula so armor is always helpful but never insane.

Mitigation% = Armor / (Armor + K)

Where K = 400 + 85 * AttackerLevel

This creates intuitive curves:
	•	Low levels: small armor still matters
	•	High levels: big armor gains give smaller and smaller returns

⸻

4. Item Budget Model

Every item has a budget.
That budget depends on:
	•	Level
	•	Slot
	•	Rarity

We do this in stages:
	1.	Base budget from level
	2.	Apply slot weight
	3.	Apply rarity multiplier
	4.	Spend that budget on stats

4.1 Base Budget by Level

We use a simple linear curve that grows with level.

-- Returns the base budget for a level, before slot/rarity.
function BaseItemBudget(level: number): number
    return 4 + 1.6 * level
end

Reference values:

Level	Base Budget
1	5.6
5	12
10	20
20	36
30	52
40	68
50	84
60	100

This is intentionally simple.
If you ever want “more power per level”, you just tweak the constants 4 and 1.6.

⸻

4.2 Rarity Multipliers

Rarity scales the budget up or down.

RARITY_MULTIPLIER = {
    COMMON   = 1.00,
    UNCOMMON = 1.15,
    RARE     = 1.30,
    EPIC     = 1.45,
    LEGENDARY= 1.60,
    BOSS     = 1.75,
    ULTRA    = 2.00, -- ultra-rare world drops / jackpots
}

You can merge or rename tiers, but the important thing is:
	•	Difference between tiers is consistent.
	•	Player can feel each jump.

⸻

4.3 Slot Weights

Big armor pieces and weapons get more budget than rings, boots, etc.

SLOT_WEIGHT = {
    HEAD      = 1.00,
    CHEST     = 1.15,
    LEGS      = 1.10,
    SHOULDERS = 0.90,
    HANDS     = 0.80,
    FEET      = 0.80,
    WAIST     = 0.70,
    WRIST     = 0.60,

    RING      = 0.50,
    TRINKET   = 0.80,
    NECK      = 0.70,

    MAIN_HAND = 2.00,
    OFF_HAND  = 1.25,
    SHIELD    = 1.40,
    TWO_HAND  = 2.75,
    RANGED    = 2.00,
}

You can adjust slot weights if you want a different feel (e.g. rings matter more, etc.).

⸻

4.4 Final Item Budget Formula

function ItemBudget(level: number, slot: string, rarity: string): number
    local base = BaseItemBudget(level)
    local slotWeight = SLOT_WEIGHT[slot]
    local rarityMult = RARITY_MULTIPLIER[rarity]
    return base * slotWeight * rarityMult
end

Example:
Level 20, Rare chest:

local budget = ItemBudget(20, "CHEST", "RARE")
-- base = 36
-- slotWeight = 1.15
-- rarity = 1.30
-- budget ≈ 36 * 1.15 * 1.30 ≈ 53.82

That chest gets about 54 points of budget to spend on stats.

⸻

5. Stat Costs (How Budget Is Spent)

Each stat has a budget cost.
More powerful effects cost more.

These are starting values; you can tweak them, but the ratios are what matter.

5.1 Primary Stat Costs

STAT_COST = {
    STR = 1.0,  -- 1 budget per 1 STR
    AGI = 1.0,  -- 1 budget per 1 AGI
    INT = 1.0,  -- 1 budget per 1 INT
    STA = 1.0,  -- 1 budget per 1 STA
    SPI = 0.8,  -- a bit cheaper, mainly regen
}

You can lean certain armor types:
	•	Cloth: mostly INT/SPI
	•	Leather: AGI/STA
	•	Mail/Plate: STR/STA

But they all use the same core costs.

⸻

5.2 Secondary Stat Costs

SECONDARY_COST = {
    CRIT_PCT   = 8.0,  -- 8 budget per 1% crit
    HIT_PCT    = 10.0, -- 10 budget per 1% hit (very strong)
    HASTE_PCT  = 10.0, -- 10 budget per 1% haste

    AP         = 0.5,  -- 2 Attack Power per 1 budget
    SP         = 0.5,  -- 2 Spell Power per 1 budget

    ARMOR      = 1/6,  -- 6 armor per 1 budget (all levels, simple)
}

You can also add:

    DODGE_PCT  = 9.0,
    PARRY_PCT  = 9.0,
    BLOCK_PCT  = 7.0,
    BLOCK_VALUE= 0.4, -- etc.

The key is:
	•	Crit/Hit/Haste are expensive, so they don’t flood low-level gear.
	•	AP/SP are [okay] efficient, but you still feel difference between “raw stats” and “direct power”.

⸻

6. Building an Item (Step-by-Step Procedure)

This is the core pipeline you’ll use whenever we make gear.
	1.	Choose context:
	•	Level (e.g. 18)
	•	Slot (e.g. FEET)
	•	Rarity (e.g. RARE)
	•	Target class/role (e.g. AGI-based DPS)
	2.	Compute item budget:

local budget = ItemBudget(18, "FEET", "RARE")


	3.	Choose stat mix flavor:
	•	For AGI DPS boots: mostly AGI/STA, maybe a little dodge or movespeed
	4.	Spend budget:
Example:
Say budget is ~45.
	•	+12 AGI  → 12 * 1.0 = 12 budget
	•	+9 STA   → 9 * 1.0  = 9 budget
	•	+1% Dodge → 1 * 9.0 = 9 budget
	•	+2% Movespeed (if treated as e.g. 6 budget per 1%) → 12
Total spent: 12 + 9 + 9 + 12 = 42
You leave 2–3 points as “slop” so items aren’t all exact same totals.
	5.	Resulting item feels fair
	•	Same level Rare chest for same role will be stronger, with a bigger budget
	•	Same level Common boots will feel noticeably weaker

⸻

7. Worked Example (So You Can Feel It)

Let’s actually do one fully.

Example: Level 20 Rare Hunter Chest

Context:
	•	Level 20
	•	Slot = CHEST
	•	Rarity = RARE
	•	Role = Agility-based physical DPS

Budget:

local budget = ItemBudget(20, "CHEST", "RARE")
-- ≈ 53.82

Spend:
	•	+18 AGI  → 18 * 1.0 = 18
	•	+14 STA  → 14 * 1.0 = 14
	•	+1% Crit → 1 * 8.0   = 8
	•	+1% Hit  → 1 * 10.0  = 10
	•	+20 Armor → 20 * (1/6) ≈ 3.3

Total spent ≈ 18 + 14 + 8 + 10 + 3.3 = 53.3

Budget was ~53.8, so we’re right on target.

Final item:

Heartroot Hunter’s Jerkin (Rare)
Level 20, Chest (Leather)
	•	+18 Agility
	•	+14 Stamina
	•	+1% Crit Chance
	•	+1% Hit Chance
	•	+20 Armor

This is:
	•	Clearly better than an Uncommon chest in same band
	•	Clearly worse than an Epic/Legendary chest at the same level
	•	Balanced against other Rare chests at level 20

⸻

8. How This Hooks Into The Rest Of The Game
	1.	Classes
	•	Classes just define how STR/AGI/INT/SPI convert into AP/SP/regen.
	•	This framework doesn’t care which class it is; it only cares about item budget.
	2.	Enemies & Loot Tables
	•	Each enemy is assigned items by level/rarity.
	•	Bosses naturally drop items with higher rarity multipliers (Boss / Ultra).
	3.	Future Expansions
	•	If you raise level cap to 70/80/etc. you just adjust BaseItemBudget and maybe secondary costs.
