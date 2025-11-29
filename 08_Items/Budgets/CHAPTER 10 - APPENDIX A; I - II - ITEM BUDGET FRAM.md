# CHAPTER 10 — APPENDIX A; I - II — ITEM BUDGET FRAMEWORK

---

### PART 1 — LEVEL BANDS & BASE BUDGET SCALING

This appendix defines how much stat budget an item receives at a given level, before slot weight and rarity multipliers.

### A1.0 Level Band Table (Global Baseline)

| Level Band | Intended Content | Base Item Budget |
| --- | --- | --- |
| 1–9 | Starting zones | Very Low |
| 10–19 | Early adventure | Low |
| 20–29 | Mid-lands | Moderate |
| 30–39 | Danger zones | High |
| 40–49 | Frontier | Very High |
| 50–60 | Endgame overworld & dungeons | Exceptional |

A “budget” is not a number—it is a tier applied consistently across all stat-bearing items.

Numbers appear in the core budget formula:

BaseBudget = (Level × 1.0) + (SlotWeight × RarityMultiplier)

(Exact numeric formulas are in Chapter 10.)

---

# A1.1 Rarity Multipliers (Canonical Rarity Only)

| Rarity | Multiplier | Notes |
| --- | --- | --- |
| Common | 1.00× | Vendor / low-trash |
| Uncommon | 1.15× | Standard adventuring gear |
| Rare | 1.30× | High-quality overworld finds |
| Elite | 1.45× | Elite enemies, strongboxes |
| Rare Elite | 1.60× | Rare spawns / minibosses |
| Boss | 1.75× | Dungeon bosses, world bosses |
| Ultra-Rare | N/A | Not in rarity engine; see A1.4 |

Ultra-Rare does not use a multiplier.

It overwrites an existing item after it is generated.

---

# A1.2 Slot Weight Table

Applicable to all wearable slots.

| Slot | Weight | Notes |
| --- | --- | --- |
| Head | 1.00 | Core |
| Chest | 1.15 | Largest defensive slot |
| Legs | 1.10 | Large slot |
| Shoulders | 0.90 | Mid slot |
| Hands | 0.75 | Small slot |
| Feet | 0.75 | Small slot |
| Waist | 0.70 | Smallest armor slot |
| Wrist | 0.65 | Smallest armor slot |
| Back | 0.70 | Utility slot |
| Neck | 0.60 | Jewelry |
| Finger | 0.50 | Rings |
| Trinket | 1.00 | High-impact utility slot |
| Main-Hand | 2.00 | Large budget |
| Off-Hand (weapon) | 1.50 | Mid budget |
| Off-Hand (shield) | 1.40 | Heavy mitigation |
| Two-Hand | 2.75 | Consolidated main budget |
| Ranged | 1.80 | Scales with ammo |
| Thrown | 1.10 | Smaller budget |

---

# A1.3 Boss Items

Boss budget = base budget × 1.75 rarity multiplier

Boss items are intended to be:

- best-in-slot for early progression
- replaced only by later dungeon bosses or deep overworld rares

---

# A1.4 ULTRA-RARE ITEM RULESET (NEW)

The Ultra-Rare system is NOT A RARITY TIER.

It is a jackpot override applied AFTER the normal drop engine creates a valid item.

### Ultra-Rare Overwrite Logic:

1. Normal item is generated.
2. System rolls JackpotChance (per creature family).
3. If Jackpot succeeds → transform the item into an Ultra-Rare variant.

### Ultra-Rare Properties:

✔ Derived from parent item template

✔ Stat variance: +3% to +5% total budget

✔ Name border: unique tint (blue-violet)

✔ Item name:

Ultra-Rare:

✔ Global scarcity tracking enabled (“1 of X spawned worldwide”)

✔ May gain ONE cosmetic optional modifier:

- weathering pattern
- faint glow
- unique engravings
- handcrafted variant description

### What Ultra-Rare is NOT:

✘ NOT its own rarity tier

✘ NOT part of budget multiplier tables

✘ NOT guaranteed

✘ NOT predictable

✘ NOT farmable by normal means

✘ NOT dropping in dungeons (optional rule)

---

# A1.5 Jackpot Chance Table (For Ultra-Rare)

This defines where Ultra-Rares are ALLOWED to roll.

Creatures not listed → CANNOT roll Ultra-Rare.

| Enemy Type | Ultra-Rare Chance | Notes |
| --- | --- | --- |
| Normal | 0% | Cannot drop Ultra-Rare |
| Rare | 0.001% (1 in 100,000) | Lowest possible |
| Elite | 0.002% (1 in 50,000) |  |
| Rare Elite | 0.004% (1 in 25,000) |  |
| Mini-Boss | 0.01% (1 in 10,000) |  |
| Boss | 0.02% (1 in 5,000) |  |
| Non-enemy systems (Fishing/Cooking/Scavenging) | 0.001% if flagged | Only specific nodes |

These numbers are design placeholders—you can tune them.

---

# ⸻

# APPENDIX A — PART 2

### Slot-Specific Subweights & Stat Distribution

This segment defines how stat points are divided inside an item’s budget.

---

# A2.1 Stat Distribution Per Armor Type

| Armor Type | Main Stats | Distribution |
| --- | --- | --- |
| Cloth | INT / SPI | 60% INT, 40% SPI |
| Leather | AGI / STA | 60% AGI, 40% STA |
| Mail | AGI / STA or STR / STA | 50/50 split or class-dependent |
| Plate | STR / STA | 60% STR, 40% STA |

Wands / Tomes / Off-hands use INT/SPI mixes.

Ranged weapons use AGI/AP distributions.

---

# A2.2 Stat Variance Allowance

Each stat may vary ±10% inside the item’s budget.

Ultra-Rare uses +3–5% AFTER this.

---

# A2.3 Multi-Stat Jewelry Rules

Neck/Ring items follow:

- 33% primary stat
- 33% stamina
- 33% secondary stat (crit/hit/resist/regen)

---

# ⸻

# APPENDIX D — ENEMY TIER RARITY CURVES

This appendix defines what rarity bands items are pulled from based on enemy type.

---

# D1.0 Enemy Types (Canonical)

✔ Normal

✔ Rare

✔ Elite

✔ Rare Elite

✔ Mini-Boss

✔ Boss

✔ (Ultra-Rare = jackpot override, not a tier)

---

# D1.1 Standard Drop Table Weights (per 100 rolls)

### Normal Enemies

| Rarity | Weight |
| --- | --- |
| Common | 92 |
| Uncommon | 8 |
| Rare | 0 |
| Elite | 0 |
| Rare Elite | 0 |
| Boss | 0 |
| Ultra-Rare | jackpot override only |

---

### Rare Enemies

| Rarity | Weight |
| --- | --- |
| Common | 65 |
| Uncommon | 25 |
| Rare | 10 |
| Elite | 0 |
| Rare Elite | 0 |
| Boss | 0 |

Ultra-Rare Jackpot applies AFTER normal roll.

---

### Elite Enemies

| Rarity | Weight |
| --- | --- |
| Common | 45 |
| Uncommon | 35 |
| Rare | 20 |
| Elite | 0 |
| Rare Elite | 0 |
| Boss | 0 |

---

### Rare Elite

| Rarity | Weight |
| --- | --- |
| Common | 25 |
| Uncommon | 30 |
| Rare | 45 |
| Elite | 0 |
| Rare Elite | 0 |

---

### Mini-Boss

| Rarity | Weight |
| --- | --- |
| Uncommon | 30 |
| Rare | 45 |
| Elite | 25 |
| Boss | 0 |

Mini-Boss does NOT drop Boss-tier items.

---

### Boss

| Rarity | Weight |
| --- | --- |
| Rare | 25 |
| Elite | 45 |
| Rare Elite | 30 |
| Boss | 0 |

Boss items are hard-coded, not rarity-rolled.

---

# ⸻

# APPENDIX E — LOOT CURVES & MATERIAL SYSTEM (FINAL)

---

# E1.0 Material Tiers (Final Canon)

| Material Tier | Old Name | Purpose |
| --- | --- | --- |
| Common Material | — | Crafting basics |
| Uncommon Material | — | Mid-tier enhancements |
| Rare Material | — | Strong crafting |
| Elite Material | — | High-end overworld crafting |
| Ultra-Rare Material | — | Jackpot crafting mat, 1-in-X chance |

Ultra-Rare Materials follow the same jackpot rules as Ultra-Rare Items:

- NEVER part of standard tables
- NEVER farmable reliably
- Derived from parent material
- +5–8% potency scaling
- Unique tint or descriptor
- Global 1-of-X tracking

---

# E2.0 Material Drop Rates

| Enemy | Base Material Tier | Rare Proc | Ultra-Rare Proc |
| --- | --- | --- | --- |
| Normal | Common | — | 0% |
| Rare | Uncommon | Rare=5% | 0.001% |
| Elite | Uncommon/Rare | Rare=10% | 0.002% |
| Rare Elite | Rare | Rare=15% | 0.004% |
| Mini-Boss | Rare/Elite | Elite=10% | 0.01% |
| Boss | Elite | Elite=25% | 0.02% |

---

# E3.0 Ultra-Rare Material Jackpot Pipeline

1. Roll normal material
2. Roll bonus material tier upgrade
3. Apply Ultra-Rare jackpot roll
4. Apply variant (+5–8% potency)

---