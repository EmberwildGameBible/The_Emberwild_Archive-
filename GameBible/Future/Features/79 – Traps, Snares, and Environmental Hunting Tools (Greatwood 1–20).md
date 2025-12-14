Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 79 – Traps, Snares, and Environmental Hunting Tools (Greatwood 1–20)

## Purpose

Define **traps, snares, and environmental hunting tools** for Greatwood:

- Player-placed tools that control space and beasts
- How they interact with:
  - Hunts & Deeds (61, 66)
  - Tracking & fieldcraft (67)
  - Camps and blinds (57, 77)
  - Professions (Forester, Woodworker, Cook, Alchemy)

Goal: let players **hunt with the forest**, not just swing and shoot.

---

## Design Goals

1. **Set-up, then payoff**  
   Traps require planning and placement, but feel very rewarding when they hit.

2. **Low clutter, high clarity**  
   Traps should be readable to the player:
   - Simple shapes, clear silhouettes.
   - Clear triggers and ranges.

3. **Profession synergy**  
   Forester and Woodworker are primary crafters.
   Cook and Alchemy can upgrade or augment.

4. **Risk and counterplay**  
   Player can:
   - Step into their own trap.
   - Misplace traps and waste resources.
   - Have smarter predators avoid obvious traps.

---

## Trap Categories (Greatwood 1–20)

1. **Snares & Leg-Holds** (immobilize / slow)
2. **Pitfalls & Drop Traps** (control zones)
3. **Lures & Baits** (pull beasts to location)
4. **Alchemical Trap Add-ons** (damage / debuff overlays – stub)

Each type has:

- Basic T1 version (early Greatwood)
- Improved T2 variants (mid 1–20)
- Thematic T3 for specific regions (Hollowroot, Burn-Scars)

---

## 1. Snares & Leg-Holds

### Basic Rope Snare

- ID: `trap_snare_rope_basic_t1`
- Crafted by:
  - Forester / Woodworker (simple rope + branch).
- Placement:
  - On ground in animal paths (near tracks/trails).
- Effect:
  - When triggered:
    - Small/medium beasts:
      - Rooted in place, can still attack or struggle.
    - Larger beasts:
      - Slowed, partial restraint.
- Duration:
  - Limited time or HP threshold before the snare breaks.
- Use:
  - Setup ambush along tracking routes (67).
  - Control fleeing prey (rare hunts, skittish creatures).

### Reinforced Lodge Snare

- ID: `trap_snare_lodge_reinforced_t2`
- Upgrades:
  - Stronger rope, better stake.
- Effects:
  - Higher HP threshold to break.
  - Slight chance to **trip** mid-sized beasts into brief “downed” state.
- Source:
  - Forester’s Circle rep (59).
  - Hunt Board Deeds reward.

---

## 2. Pitfalls & Drop Traps

### Simple Pitfall Marker

- ID: `trap_pit_marker_simple_t1`
- Concept:
  - Player marks soft ground or uses existing terrain features.
  - For 1–20, actual digging may be abstracted to “placing trap” in valid spots.
- Effect:
  - Small/medium beasts:
    - Fall in, become stuck briefly, then climb out or struggle (rooted).
  - Player:
    - Can fall in if careless.
- Constraints:
  - Only placeable on designated “soft ground” areas (behind-the-scenes markers).
- Integration:
  - Best used near camp or in choke points on known patrol routes.

### Root-Snare Pit (Hollowroot Variant, T3)

- ID: `trap_pit_hollowroot_roots_t3`
- Effect:
  - When triggered:
    - Roots quickly entangle the victim.
  - Additional:
    - Small corruption DoT to creatures that stay too long.
- Source:
  - Hollowroot Warren quests (65) or Deeds.
- Risk:
  - Extended use of corrupted pits near Lodge might be frowned upon (lore hook).

---

## 3. Lures & Baits

Lures don’t harm directly; they **shape behavior**.

### Meat Bait Pile

- ID: `lure_bait_meat_pile_t1`
- Crafted by:
  - Cook (using low-tier meat + spices).
- Placement:
  - On ground within beast territory.
- Effect:
  - Increases:
    - Local spawn/activity of certain predator types (wolves, boars).
  - Stronger effect when combined with:
    - Baited Blind or Hanging Meat Rack (57).
- Risk:
  - Can pull more enemies than intended.
  - May attract rare predators if left too long.

### Scent Trail

- ID: `lure_scent_trail_basic_t2`
- Crafted by:
  - Cook + Alchemy combo (fat + herbs + resins).
- Placement:
  - Player can “lay” a short trail leading toward a trap or ambush site.
- Effect:
  - Certain beasts follow the path.
- Integration:
  - Synergizes with:
    - Snares
    - Pitfalls
    - Baited Blind near end of trail.

---

## 4. Alchemical Trap Add-ons (Stub for 1–20)

For Greatwood 1–20, keep these simple and rare.

### Example: Spore Trap Flasks

- ID: `trap_addon_spore_flask_t1`
- Use:
  - Attach to an existing snare or pit:
    - When triggered, releases a cloud.
- Effects:
  - Short-term:
    - Slow or minor damage over time.
  - Optional:
    - Mild debuff to enemy accuracy or perception.
- Source:
  - Alchemy stub (58)
  - Found/earned from Hollowroot or fungi-related quests.

---

## Trap Placement & Limitations

- Traps require:
  - Time to place (short interaction).
  - Specific terrain or “valid zone” (soft ground, narrow path, etc.).
- Limits:
  - Max number of active traps per player (e.g., 3–5 early).
  - Cooldown on placing the same trap type to avoid spam.

- UI feedback:
  - When placing, show:
    - Small radius outline.
    - Direction of trigger if relevant.

---

## AI & Trap Interactions

- Basic beasts:
  - Will blunder into traps more often, especially when chasing.
- Smarter/rarer creatures:
  - Higher chance to:
    - Detect and avoid traps.
    - Or require more careful lure/trail setups.
- Some beasts:
  - Might:
    - Attempt to destroy or disable traps they smell (higher-level behavior stub).

---

## Integration With Other Systems

- **Tracking (67):**
  - Player can place traps along track routes.
  - Inspect text may hint: “This would be a good spot for a snare.”

- **Camps (77):**
  - Camps can be ringed with traps for defense.
  - Or with lures to “farm” local beasts near a safe spot.

- **Hunts & Deeds (61, 66):**
  - Some contracts:
    - Explicitly reward using traps.
    - Or ask for “capture” rather than pure kill (future expansion).

- **Professions (Forester, Woodworker, Cook, Alchemy – 54, 59, 58):**
  - Forester:
    - Better trap placement, longer-lasting snares.
  - Woodworker:
    - Stronger trap frames (pit supports, stakes, etc.).
  - Cook:
    - More effective baits and scent trails.
  - Alchemy:
    - Status-effect overlays, improved spore/corrosive trap add-ons.

---

## Risk / Reward Tuning

- Traps should:
  - Provide strong tactical advantage when set up well.
- But:
  - Cost resources to build.
  - Are consumed when triggered or after some time.
  - Can backfire if used without care.

---

## Next Actions

- Define a **trap table**:
  - IDs, effects, resource costs, max active, skill requirements.
- Implement:
  - 2–3 basic traps (snare, simple pit marker, meat bait pile) for early Greatwood.
- Design:
  - 1–2 Hunts/Deeds that strongly encourage trap usage to test the loop.
