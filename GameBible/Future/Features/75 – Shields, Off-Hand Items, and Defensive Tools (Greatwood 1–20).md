Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 75 – Shields, Off-Hand Items, and Defensive Tools (Greatwood 1–20)

## Purpose

Define **shields, off-hand items, and defensive tools** available in Greatwood 1–20:

- What off-hand options exist (shields, bucklers, charms, tools)
- How they change combat feel (blocking vs dodging vs parrying)
- How they tie into Lodge identity and professions (Forester, Woodworker, Cook, Alchemy)

Goal: give defensive and utility-focused players a **real identity** without turning the game into a pure shield-tank MMO.

---

## Design Goals

1. **Defensive tools, not immovable tanks**  
   Shields and defensive items are about:
   - Blocking key hits
   - Buying space
   - Managing risk
   Not about face-tanking everything forever.

2. **Meaningful tradeoffs**  
   Off-hand choices should trade:
   - Extra offense (two-handing / dual wield)
   - For extra control, utility, or survivability.

3. **Lodge-flavored gear**  
   Shields and tools should feel like:
   - Hunter gear (bucklers, reinforced forearms)
   - Forester/woodworker gear (bracers, tool-boards)
   - Not knightly tower shields.

---

## Off-Hand Categories (Greatwood 1–20)

1. **Bucklers & Light Shields**
2. **Strapped Forearm Guards**
3. **Utility Off-Hand Tools**
4. **Charms & Talismans (Stub)**

Each has distinct mechanical roles.

---

### 1. Bucklers & Light Shields

**Fantasy:**  
Compact shields used by hunters in close-range fights—parries, deflections, quick blocks.

#### Plain Hunter Buckler (T1)

- ID: `offhand_shield_hunter_buckler_t1`
- Tier: Early
- Source:
  - Lodge intro combat quests
  - Cheap vendor item
- Mechanics:
  - Small block cone
  - Low stamina cost per block
  - Modest damage reduction
- Feel:
  - Good for learning block/parry timing without relying entirely on it.

#### Reinforced Lodge Buckler (T2)

- ID: `offhand_shield_lodge_reinforced_t2`
- Tier: Mid Greatwood
- Source:
  - Carpenter’s Hall rep (59)
  - Or Deed reward with melee focus
- Mechanics:
  - Better damage reduction vs frontal attacks
  - Slightly higher stamina cost per block
  - Small passive bonus vs beast charges (reduced knockback)
- Integration:
  - Crafted by Woodworkers using stronger wood and simple metal bands.

#### Root-Bound Buckler (T3, Hollowroot-Flavored)

- ID: `offhand_shield_rootbound_buckler_t3`
- Tier: Upper Greatwood
- Source:
  - Hollowroot Warren (65) boss reward or Deed (61)
- Mechanics:
  - Good physical block
  - Bonus reduction vs corruption/poison attacks
  - Slightly increased weight (small stamina regen penalty)
- Feel:
  - Grown/assembled from Hollowroot materials; subtle pulsing audio/FX.

---

### 2. Strapped Forearm Guards

**Fantasy:**  
Light bracers and guards—less total protection, more about **partial mitigation** and utility.

#### Leather Forearm Braces (T1)

- ID: `offhand_guard_leather_braces_t1`
- Tier: Early
- Source:
  - Basic armor vendor
  - Rewards from simple hunts
- Mechanics:
  - Very small passive damage reduction
  - Small bonus to block window with any weapon (bracing hits)
- Use:
  - Option for players who don’t want a shield silhouette but want a bit more survivability.

#### Bark-Lined Forester Guards (T2)

- ID: `offhand_guard_forester_barklined_t2`
- Tier: Mid Greatwood
- Source:
  - Forester’s Circle rep (59)
- Mechanics:
  - Minor physical damage reduction
  - Slight bonus to resilience vs environmental hazards (falls, roots, etc.)
- Feel:
  - Woven bark and leather, clearly field gear.

#### Fungal-Warded Wristwrap (T3, Hollowroot)

- ID: `offhand_guard_fungal_ward_t3`
- Tier: Upper Greatwood
- Source:
  - Deep Hollowroot questline / alchemy-profession crossover
- Mechanics:
  - Small resistance vs fungal/corruption DoTs
  - Slight increase to Resolve (71) in dungeons
- Integration:
  - Ties to alchemy (58) and dungeon identity (65).

---

### 3. Utility Off-Hand Tools

**Fantasy:**  
Tools that can be wielded in the off-hand for **utility and support**.

Examples:

1. **Torch**

- ID: `offhand_tool_torch_basic`
- Mechanics:
  - Light source
  - Weak fire damage on hit, can scare certain beasts
  - Minor Fire risk if misused near volatile materials (later)
- Integration:
  - Important in Hollowroot, night hunts, and Burn-Scars.

2. **Lantern**

- ID: `offhand_tool_lantern_basic`
- Mechanics:
  - More controlled light than torch
  - Less offensive, more pure visibility
- Feel:
  - Both hands busy if using heavy weapons, but pairs well with small blades.

3. **Field Kit / Satchel**

- ID: `offhand_tool_fieldkit_t1`
- Mechanics:
  - Slight increase in carry capacity for ingredients or supplies
  - Could grant small buffs to bandage use or balm application (58)
- Integration:
  - Forester / Cook / Alchemy synergy.

---

### 4. Charms & Talismans (Stub)

Off-hand **non-weapon**, non-shield items:

- Totem or charm hanging from hand/wrist.
- Provide:
  - Small passive bonuses (resolve, perception, resistances).

These may be better suited as **trinket slots**, but can conceptually be considered “off-hand visuals” for certain builds.

Examples:

- Hunter’s Tooth Charm
- Hollowroot Talisman
- Emberstone Pendant

---

## Blocking, Parrying, and Dodge Interplay

- **With a Shield/Buckler:**
  - Block: reliable mitigation at stamina cost.
  - Parry (timed block): possible stun window or damage bonus vs target.
- **Without Shield (Forearm Guard / bare):**
  - Partial block with worse damage reduction.
  - Bigger reward for perfect timing (risky parry).

Design intent:

- Shields:
  - Smoother, more forgiving defensive play.
- No shields:
  - Higher risk, more reliant on dodges.

---

## Integration With Other Systems

- **Melee Weapons (73):**
  - Pairing:
    - Shortblade + Buckler = agile duelist.
    - Axe + Buckler = balanced bruiser.
    - Hammer + Guard = heavy, risky brawler.

- **Armor & Clothing (74):**
  - Shields & guards visually harmonize with armor sets:
    - Greatwood Hunter gear with deer-bone shield.
    - Hollowroot gear with fungal/wood shields.

- **Professions (54, 59):**
  - Woodworker:
    - Crafts bucklers, shields, guards.
  - Forester:
    - Provides special woods and designs.
  - Alchemist:
    - Enchants or coats certain shields with minor effects (later).

- **Combat Stats (71):**
  - Off-hand items influence:
    - Resilience
    - Stamina use
    - Resolve or Perception in niche cases.

---

## Next Actions

- Define a **table of off-hand items**:
  - Name, type, tier, stats, weight, and sources.
- Design block/parry behavior:
  - Stamina costs, damage reduction percentages.
- Align shield and off-hand visuals with:
  - Armor tiers
  - Greatwood thematic identity (forest, Lodge, Hollowroot).
