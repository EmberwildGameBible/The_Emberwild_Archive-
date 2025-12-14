Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 78 – Fishing, River Foraging, and Water-Margin Content (Greatwood 1–20)

## Purpose

Define **fishing, river foraging, and water-edge gameplay** in Greatwood:

- How fishing works at a basic level
- What fish and river resources exist
- How water content ties into:
  - Cooking & Alchemy (52, 53, 55, 58)
  - Hunts & Events (61, 62)
  - Greatwood regions (63) and world bosses/rare hunts (66)

Goal: make rivers feel like **real, valuable routes and resource veins**, not just scenery.

---

## Design Goals

1. **Low-friction, chill loop**  
   Fishing is slower and more relaxed than combat, while still rewarding.

2. **Grounded fantasy**  
   It feels like standing by a Greatwood river or wetland, not an arcade minigame.

3. **Meaningful outputs**  
   Fish and river resources are key ingredients for:
   - Recipes (stamina, focus, etc.)
   - Tonics & alchemical reagents.

4. **Hooks for events & rare finds**  
   Fishing spots are perfect anchors for ambient events and rare encounters.

---

## Fishing Basics

### Access & Tools

- Player needs:
  - Simple **fishing rod** or improvised setup:
    - `tool_fishing_rod_simple_t1`
- Rod is obtained from:
  - River NPC or Lodge quest.
- Basic bait:
  - Simple worms, insects, or meat scraps.

### Casting & Hooking

- Player stands near valid fishing water (rivers, ponds, certain wetlands).
- Uses:
  - “Cast” action:
    - Short timing bar or simple hold-and-release determines cast strength/distance (optional).
- When a fish bites:
  - Subtle visual + audio cue.
  - Prompt to “Set the hook” within a timing window.

### Reeling / Landing

- Simple **tug rhythm**:
  - Alternate between:
    - Reeling (holding button)
    - Letting the line have slack (releasing) when fish pulls hard
- Failure:
  - Line tension breaks → fish lost.
- Success:
  - Fish pulled to shore, added to inventory.

---

## Fish & River Resources

### Fish Families (Greatwood 1–20)

1. **River Trout (Base Food Fish)**
   - ID: `fish_river_trout_basic`
   - Use:
     - Simple cooking recipes (light HP/stamina buffs).
   - Common in:
     - Standard river flows.

2. **Deep-Current Pike**
   - ID: `fish_deep_current_pike`
   - Use:
     - Stronger stamina / power buff foods.
   - Found:
     - Deeper or faster sections, further from Lodge.

3. **Storm-Caught River Fish (55)**
   - ID: `spec_ingr_storm_caught_riverfish`
   - Use:
     - High-value recipes and tonics:
       - Focus, stamina, weather-related buffs.
   - Found:
     - Only during thunderstorms or storm events.

4. **Mud-Eel / Swamp Eel**
   - ID: `fish_mud_eel`
   - Use:
     - Risk/reward recipes or tonics (slimy, potent).
   - Found:
     - Wetland pockets, slower water.

### Non-Fish River Resources

- River herbs (water-loving plants).
- Algae/moss variants for Alchemy (58).
- Shell fragments / stones used in certain crafts.

---

## Water-Margin Encounters & Events

### Ambient Events (62)

1. **Fisher at Work**
   - NPC at a spot, offering:
     - Micro-quest
     - Simple trade
     - Hints about fish or river creatures.

2. **Predator Strike**
   - While fishing, a river predator:
     - Briefly surfaces or attacks prey.
   - Can escalate to:
     - Combat if player is unlucky or greedy.

3. **Broken Net**
   - Player finds a damaged net tangled on rocks.
   - Can be:
     - Repaired via Woodworker/Forester.
     - Converted into a usable item or turned in.

---

## Hunts & Rare Encounters (61, 66)

### Rare Hunt – The Riverback Devourer (66)

- Occasionally surfaces while fishing or traveling along rivers.
- Triggered by:
  - Certain thresholds of fishing activity.
  - Or a Deed accepted at the Hunt Board.
- Encounter:
  - Big fight near water.
  - Use:
    - Bows, positioning, environmental hazards.
- Reward:
  - Special fish/monster parts:
    - High-tier food/alchemy ingredient.

### Hunt Board Integration

- Hunts:
  - “Supply the Lodge with X River Trout”
  - “Catch 3 Storm-Caught Fish during a storm”
- Deeds:
  - Multi-step:
    - Investigate missing fishers.
    - Follow clues downriver.
    - Encounter rare predator.

---

## Professions & Crafting Hooks

### Cook

- New recipes:
  - Fish stews for:
    - Stamina regen.
    - Focus boost.
  - Dishes that pair fish + mushrooms or herbs.

### Alchemy

- Tonics from:
  - Eel oils.
  - Storm-caught fish components.
- Possible effects:
  - Weather resistance.
  - Better stamina & focus over short bursts.

### Forester & Woodworker

- Build:
  - Rods, nets, simple fish traps.
- Placeable:
  - Passive fish traps for:
    - Slow but steady fish gathering.
- Risk:
  - Traps may attract predators or be stolen if left too long.

---

## Regional & Time Dependencies (63)

- River segments tagged with:
  - **Flow type** (fast, slow, deep, shallow).
  - **Surrounding biome** (forest, wetland, cliff).
- Fish availability:
  - Changes by:
    - Time of day (night eels, day trout).
    - Weather (storm-only fish).
    - Region proximity to Lodge vs deep Greatwood.

---

## Integration With Rest & Camps (70, 77)

- Camps near rivers:
  - Allow easier fish cooking on the spot.
- Resting after a successful fishing session:
  - Represents a calmer, “low risk” hunting day.
- Death & risk:
  - Some water areas:
    - Slippery margins, currents.
    - Drowning risk in future expansions (kept light at 1–20).

---

## Next Actions

- Create a **fish and river resource table**:
  - Names, IDs, regions, times, weather requirements.
- Define:
  - Basic fishing rod recipe.
  - 3–5 early fish recipes + 2–3 tonics.
- Script:
  - 2–3 small river-based events.
  - 1 Deed tied to the Riverback Devourer or similar rare encounter.
