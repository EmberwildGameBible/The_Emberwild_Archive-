# 97 – Travel Speed, Mounts, and Overworld Traversal (Future System Stub)

## Purpose

Define a **future-capable design** for:

- Overworld travel speed and traversal tools
- Mount-like systems (if any) and alternative mobility (sleds, wagons, tamed beasts, etc.)
- How travel interacts with:
  - Hunts & Deeds (61, 66)
  - Camps, outposts, and settlements (77, 93)
  - Weather & hazards (81)
  - Companions and co-op (87, 88)

Goal: keep the **grounded hunter fantasy** (no MMO pony farm), while giving players long-term ways to cross Greatwood and future regions faster and more interestingly.

---

## Design Goals

1. **Boots-first fantasy**
   - Walking, hiking, and trekking are the baseline.
   - “Travel tools” enhance that, not replace it.

2. **Mounts as rare and meaningful**
   - If there are true mounts:
     - They are rare, contextual, and require responsibility.
   - Many players may rely on:
     - Paths, outposts, fast-travel nodes, and fieldcraft instead.

3. **Travel = gameplay, not dead time**
   - Even with speed boosts:
     - Travel remains about:
       - Tracking.
       - Encounters.
       - Weather and time-of-day.
   - No instant “teleport everywhere” by default.

4. **Future-safe**
   - This framework must scale when:
     - Regions grow.
     - Greatwood 20–40 or entirely new biomes appear.

---

## Baseline: On-Foot Travel

### Movement Modes

- **Walk / Jog**
  - Default; tuned for:
    - Natural-feeling traversal.
    - Reading landscape, tracks, and signs (67, 90).

- **Sprint**
  - Short bursts:
    - Stamina-gated.
  - Used for:
    - Combat repositioning.
    - Short-distance escapes.
    - Not for permanently crossing half the world.

- **Crouch / Slow Sneak**
  - For stealth (89).
  - Movement deliberately slower.

### Terrain & Pathways

- Path network (63, 93):
  - Roads/trails between:
    - Lodge.
    - Outposts.
    - Settlements.
  - Slight movement bonuses along established paths:
    - Encourages realistic route planning.

- Off-road:
  - Slightly slower, more stamina cost.
  - More chance for encounters, secrets, and hazards.

---

## Travel Helpers (Non-Mount)

### 1. Trail Markers & Wayfinding

- Forester-crafted markers (54, 67):
  - Slightly improve:
    - Navigation.
    - Chance to avoid getting turned around in dense woods or fog (81).
- UI:
  - Optional small minimap hints or compass indicators based on placed markers.

### 2. Fast-Travel Nodes (Limited)

- Only between:
  - Lodge.
  - Certain forward outposts / minor settlements (93).
- Diegetic explanation:
  - Known “safe routes” with messenger lines, not literal teleportation.
- Mechanics:
  - Possibly small cost or time-skip.
  - Not available during some crises or corrupted surges (91).

### 3. Expedition Wagons / Boats (Future)

- For future regions or expanded Greatwood:
  - Wagons/ferries that move along set routes.
- Player:
  - Can ride along and:
    - Interact with NPCs.
    - React to ambush events (rare).

---

## Mounts & Tamed Beasts (If/When Introduced)

### Philosophy

- Mounts are:
  - Rare, high-responsibility companions.
  - Part of narrative arcs, not shop items.
- They:
  - Provide faster travel on specific terrain.
  - Have constraints and risks.

### Types (Conceptual)

1. **Pack-Beast**
   - Slow-ish but sturdy:
     - Slight movement speed buff.
     - Big increase to carrying capacity.
   - Great for:
     - Long expeditions, resource hauls.

2. **Swift Stag / Elk Variant**
   - Faster traversal:
     - Big speed increase on trails and open forest.
   - Limited to:
     - Reasonably even terrain.
   - Requires:
     - Calm handling.
     - Special feed or care.

3. **Corruption-Resistant Mount (Late Game)**
   - Rare creature adapted to:
     - Hollowroot or other harsh regions.
   - Special resistance:
     - Lower Corruption Exposure gain (91).
   - Very gated:
     - Late-game questline.

### Care & Management

- Mounts require:
  - Food (Cook profession loops, 52–53).
  - Occasional healing/medicine (Alchemy, 58).
- They can:
  - Become spooked by:
    - Storms (81).
    - Heavy corruption (91).
  - Temporarily refuse to enter certain areas.

- No mount “bag teleport”:
  - They physically exist at:
    - Stable.
    - Camp.
    - Where you last left them (with some sensible fallback rules).

---

## Travel + Hunts & Deeds (61, 66, 88)

- Some Deeds:
  - Explicitly consider travel distance and preparation:
    - “Reach Hollowroot Edge Camp before nightfall.”
    - “Escort supply wagon to Riverwatch Outpost.”

- Co-op:
  - Group must coordinate:
    - Pace.
    - Stop points (camps).
    - Who leads navigation.

- Mounts in Hunts:
  - Typically **not used** in direct boss fights:
    - Mount dismounts at safe distance.
  - Might be:
    - Used for chase-style Deeds (future expansions).

---

## Weather, Hazards & Travel (81)

- Storms:
  - Slow certain routes (mud, slides).
  - May cause:
    - Fallen trees blocking shortcuts.
- Fog:
  - Higher risk of:
    - Getting turned around off-trail.
- Burn-Scars:
  - Hot ground and ash reduce effective travel comfort.
  - Mounts may balk at entering heavily scarred zones.

Travel tools (e.g., specialized boots, cloaks, wagons) can:

- Reduce penalties.
- Open alternate routes.

---

## Camps, Outposts & Travel Loop (77, 93)

- Intended long-term loop:

  - Lodge → Outpost → Camp → Hunt target → Camp/Outpost → Lodge.

- Travel improvements (markers, mounts, fast-travel between big nodes):

  - Shorten:
    - “Backtracking boredom.”
  - Keep:
    - Field decisions meaningful:
      - Where to camp.
      - How far to push from last safe point.

---

## Integration With Other Systems

- **Companions (87):**
  - Hounds:
    - May run alongside mount or ride in wagon.
  - Need care not to turn travel into chaos.

- **Professions (52–59, 95):**
  - Travel gear and mount equipment:
    - Crafted by Woodworker/Forester/Cook/Alchemy.
  - Higher-tier:
    - Saddles that reduce mount spook.
    - Packs that increase expedition carry.

- **Narrative (93–96):**
  - Long-distance quests:
    - Connected to outpost life and seasonal changes.

---

## Next Actions

- Decide:
  - Whether **mounts** are in-scope for first release or reserved for later expansion.
- If later:
  - Keep travel improvements to:
    - Trails.
    - Outposts.
    - Lightweight fast-travel.
- If sooner:
  - Design:
    - 1 core mount type with limited scope (e.g., Pack-Beast).
    - Stable system at Lodge.
    - Intro questline and basic care loops.
