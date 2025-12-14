Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 81 – Weather, Wind, and Environmental Hazards (Greatwood 1–20)

## Purpose

Define the **weather, wind, and basic environmental hazard** systems for Greatwood:

- How weather changes moment-to-moment experience
- How it affects:
  - Tracking (67)
  - Hunts & Deeds (61, 66)
  - Fishing and river content (78)
  - Camps and fires (77)
  - Animal behavior and AI (80)
- Early environmental hazards players must respect

Goal: make Greatwood **feel different** in sun, rain, fog, and storms, without turning weather into pure annoyance.

---

## Design Goals

1. **Mood + Mechanics together**  
   Weather changes both **vibe** and **gameplay**.

2. **Simple, composable states**  
   A small set of weather types with clear, readable effects:
   - Clear
   - Overcast
   - Rain
   - Storm
   - Fog / Mist

3. **Hooks into existing systems**  
   Weather should:
   - Help define hunts
   - Unlock certain fish and ingredients
   - Change tracking difficulty
   - Alter soundscape (68)

4. **Early hazards, not disasters**  
   For 1–20:
   - Weather is threatening but survivable.
   - True lethal storms, blizzards, etc. can come later.

---

## Weather Types (Greatwood 1–20)

### 1. Clear

- Sky:
  - Sunny or lightly cloudy.
- Audio:
  - Full ambient forest mix (birds, insects, wind – 68).
- Mechanical Effects:
  - Baseline tracking clarity.
  - Normal animal behavior.
  - Standard visibility for ranged combat.

This is the “default baseline” for design.

---

### 2. Overcast

- Sky:
  - Cloud cover, darker light but calm.
- Audio:
  - Slightly subdued ambient bed.
- Mechanical Effects:
  - Slightly reduced long-range visibility.
  - Slight **increase in some predator activity** (comfortable temps).
  - Tracking:
    - Tracks slightly more visible in soft ground (no glare).

Use as a subtle variation, not a big mechanical shift.

---

### 3. Rain

- Visual:
  - Steady rainfall, wet surfaces, puddles.
- Audio:
  - Rain on leaves, muffled distant sounds.
- Mechanical Effects:

  **Positive:**
  - Tracks in soft/muddy ground:
    - Initially sharper, more defined.
  - Campfires:
    - Smoke disperses scent faster (slightly less chance of certain predators sniffing you out).

  **Negative:**
  - Over time, rain:
    - Can **wash out older tracks**, reducing trail longevity (67).
  - Bows & gear:
    - Slight debuff to:
      - Bow effective range or accuracy at long distances.
      - Torch reliability (torches sputter more).
  - Player:
    - Very small stamina regen penalty if soaked for long periods without proper gear.

- Integration:
  - Certain mushrooms and herbs may be more active/visible.

---

### 4. Storm (Thunder / Heavy Rain)

- Visual:
  - Dark skies, flashes of lightning, heavy rain, occasional wind gusts.
- Audio:
  - Thunder, heavier rain volume.
- Mechanical Effects:

  **Big Moments:**
  - Storm-only content:
    - `spec_ingr_storm_caught_riverfish` (78).
    - Special events (“Storm-Caught River Fish” – 55/78).
  - Animals:
    - Many prey animals seek shelter:
      - Fewer visible deer, more close-quarters encounters with things hiding under cover.
    - Some predators:
      - Use thunder to mask movement.

  **Player:**
  - Torches:
    - Very unreliable; easily extinguished.
  - Tracking:
    - Fresh tracks appear as muddy prints but:
      - Heavy rain quickly degrades them.
  - Camps:
    - Poorly prepared camps may have:
      - Reduced rest effectiveness.
      - Chance of fire going out unless protected/covered.

- Risk:
  - Lightning strikes as a rare environmental hazard:
    - Mostly visual.
    - Tiny chance to affect specific events (e.g. tree catching fire as scripted moment).

---

### 5. Fog / Mist

- Visual:
  - Reduced visibility, soft silhouettes at medium range.
- Audio:
  - Muted high frequencies, closer sounds emphasized.
- Mechanical Effects:

  **Positive:**
  - Player:
    - Can approach some animals closer before being seen (stealth bonus).
  - Tracking:
    - Audio cues more important:
      - Footfalls and calls stand out (68).

  **Negative:**
  - Ranged:
    - Shortened sight lines.
    - Harder to spot ambushes or world bosses at distance.
  - Certain creatures (wolves, corrupted beasts):
    - May gain confidence and roam more aggressively in fog.

- Events:
  - “Stag in the Mist” (62) strongly tied here.
  - Extra spooky Hollowroot-adjacent vignettes.

---

## Wind

Wind is mostly an **invisible layer** that influences:

- Ambient sound (wind through trees – 68).
- Projectile drift (very lightly for Greatwood 1–20, mostly cosmetic).
- Certain events:
  - Smell direction for beasts (80).
  - Spread of light wildfire embers in Burn-Scars (future extension).

For early content:

- Use wind direction mainly in:
  - Narrative: “Stay upwind of the boar.”
  - Maybe advanced tracking/hunting difficulty options:
    - High-skill players can read wind for advantage.

---

## Environmental Hazards (Early Pass)

### 1. Slippery Ground & Mud

- When:
  - Rain or post-storm.
- Effects:
  - Slight chance of:
    - Reduced traction when sprinting on steep slopes.
  - Small stamina cost increase for movement in deep mud.
- Visual:
  - Darker, wetter ground patches, footprints.

### 2. Wildfire Residue (Burn-Scars)

- Always-present hazards in Burn-Scar / Wildfire Glade subregions (63):

  - Hot ash pockets:
    - Deal minor fire damage over time if stood on too long.
  - Charred, fragile logs:
    - Can break underfoot with:
      - Chance of a small fall.
      - Or noise that attracts predators.

- Integration:
  - Gear/food/alchemy that provide fire resistance (53, 58).

### 3. Shallow Water & Currents

- In rivers/wetlands (78):

  - Shallow water:
    - Slows movement slightly.
    - Creates noise when moving quickly (easier detection).
  - Stronger currents (visual hints):
    - Risk of minor knockback if player tries to stand still in certain channels.

No full drowning system yet for 1–20; keep it light.

---

## System Hooks

### Tracking (67)

- Weather modifies:

  - Track **lifetime**:
    - Rain/storm → shorter lifetime.
  - Track **visibility**:
    - Muddy ground after rain → sharper prints.
    - Fog → more reliance on sound and close inspection.

### Hunts & Deeds (61, 66)

- Some hunts:

  - Only available or more profitable in certain weather:
    - “Storm-Track Hunt” – track a beast in a storm.
    - “Mist Hunt” – assassinate a rare target in deep fog.

- Deeds:

  - May require:
    - Waiting for a storm/fog window.
    - Or explicitly exploiting weather for advantage.

### Fishing & River (78)

- Storm-only fish.
- Certain river events only in rain/storm.

### Camps & Fires (77)

- Rain:
  - Forces players to think about fire placement, cover, and fuel.
- Storm:
  - Encourages:
    - Shorter rests.
    - Risk-vs-reward decisions (“Do we push on or wait it out?”).

### Animal Behavior (80)

- Prey:
  - Seek shelter in storms.
- Predators:
  - Exploit low-visibility weather more.

---

## Player Feedback

- UI:
  - No giant “Weather HUD,” but:
    - Small textual hints (codex entries 69).
- Audio/visual:
  - Main indicator for weather shifts.
- Codex:
  - Unlock notes explaining:
    - Basic strategies for hunting in different weather conditions.

---

## Next Actions

- Define a **weather cycle** for Greatwood:
  - Frequency of clear vs rain vs storm vs fog.
- Tag:
  - Regions with:
    - Weather biases (Burn-Scars = more dry storm risk, Rivers = more fog).
- Implement:
  - First-pass weather modifiers on:
    - Tracking clarity.
    - Fish spawns.
    - Certain Hunt/Deed availability.
