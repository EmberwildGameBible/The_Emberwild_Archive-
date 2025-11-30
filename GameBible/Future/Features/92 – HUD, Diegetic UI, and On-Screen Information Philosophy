# 92 – HUD, Diegetic UI, and On-Screen Information Philosophy

## Purpose

Define the **heads-up display (HUD)** and overall **UI philosophy** for Emberwild:

- What information is on-screen in moment-to-moment play
- How health, stamina, tracking, hunts, and buffs are shown
- How much is **diegetic** (in-world) vs traditional UI overlays
- How HUD scales from minimalist solo exploration to harder Hunts/Deeds (61, 66)

Goal: keep the screen **clean, legible, and grounded**, while still giving players the info they need for a slower, tactical, system-heavy game.

---

## Design Goals

1. **Low-noise, high-signal**
   - Only show **what matters right now**.
   - Use context-sensitive displays where possible.

2. **Diegetic flavor, practical function**
   - Some UI elements:
     - Styled like Lodge maps, journals, or notches.
   - But never sacrifice clarity for aesthetics.

3. **Scalable & configurable**
   - Options:
     - Minimalist mode.
     - “Info-rich” mode for players who want more feedback.

4. **Consistent vocabulary**
   - Same iconography and language across:
     - Hunts, Deeds, stats, professions, codex entries.

---

## Core HUD Elements

### Always (or Almost-Always) Visible

1. **Health & Stamina Bar**
   - Positioned:
     - Near bottom or lower-left of screen.
   - Style:
     - Simple bars with subtle wood/leather framing.
   - Behavior:
     - Fade to lower opacity when at full and out of combat; re-emphasize when changing.

2. **Weapon & Off-Hand Status**
   - Small icon cluster:
     - Current weapon + off-hand (75).
   - Ammo counts (if relevant):
     - Arrows, trap charges, etc.

3. **Compass / Direction Indicator**
   - Top center or top edge.
   - Marks:
     - Cardinal directions.
     - Major active Hunt/Deed markers (subtle).
     - Camp/Lodge direction icons.

### Contextual / On-Demand

1. **Hunt & Deed Objective Panel**
   - Small, collapsible panel:
     - Top-right or side.
   - Shows:
     - Active Hunt name.
     - One-line objective and progress.
   - Toggled:
     - Expanded or collapsed with a single button.

2. **Buffs & Debuffs**
   - Icons:
     - Food buffs.
     - Ember Pot buffs.
     - Tonics/balms.
     - Debuffs (Shaken, Corruption Exposure, etc.).
   - Tooltips:
     - Short descriptive text when hovered/inspected.

3. **Tracking / Sign Indicators**
   - Appears when:
     - Player is actively tracking (67).
   - Shows:
     - Short text hints:
       - “Tracks fresh – headed northeast.”
     - Minimal arrows or “cone” direction hints (not GPS).

---

## Diegetic UI Elements

### Hunt Board & Journal

- Physical board:
  - Main interaction to view/accept Hunts & Deeds (76).
- Journal/Archive:
  - In-game “book” UI for:
    - Hunts & Deeds.
    - Game Bible/Codex (69).
    - Achievements (86).

Design:

- Pages styled like Lodge logs:
  - Handwritten fonts (readable).
  - Marginalia, stamps, small sketches.

### Map

- Hand-drawn style:
  - Regions sketched with brush lines.
  - Icons for:
    - Lodge.
    - Major POIs.
    - Camps.
- Player marker:
  - Simple pointer, not over-designed.
- Rumor markers:
  - “?” icons drawn as scribbles or penciled notes.

---

## Combat UI Philosophy

### Minimal Targeting

- No huge HP bars across the screen:
  - For common creatures:
    - Small marker near enemy or beneath them.
  - For elites/world bosses:
    - More pronounced, but still stylized bar near top.

- Hit indicators:
  - Subtle:
    - Brief flash or light number text.
  - Avoid:
    - Giant arcade-style crit fireworks.

### Damage & Feedback

- Player damage:
  - Clear hit effects + sound.
  - Health bar feedback (shake, pulse).
- Enemy damage:
  - Flinch animations.
  - Distinct sound per material type (fur, carapace, etc. – 68).

### Status Effects

- Short text popups:
  - “Staggered,” “Snared,” “Shaken”:
    - Near their target with low visual noise.
- Buff/debuff icons:
  - Use consistent shapes/colors:
    - Green-ish for buffs.
    - Red/orange/purple for debuffs (corruption styled subtly).

---

## Exploration & Stealth UI (89)

- Stealth:
  - No giant visibility meter for 1–20.
  - Instead:
    - Soft outline ink marks on edges of screen when you’re close to detection.
    - Optional small icon indicating current “stealth tension” that can be toggled on/off.

- Secrets & caches (90):
  - No obvious arrows.
  - Small optional “awareness pulse” perk (if taken) that:
    - Adds faint glow outlines or audio cues when near interesting points.

---

## Accessibility & Customization (High-Level)

Players can toggle:

- **HUD density**
  - Minimal / Normal / Detailed.
- **Text size**
  - For quest text, codex, subtitles, tooltips.
- **Icon clarity vs decoration**
  - Option to simplify icons (less ornate).
- **Screen effects**
  - Enable/disable strong vignettes, blur, heavy corruption distortions.

Core principle:

- Aesthetic defaults, but:
  - Never lock crucial information behind low-contrast or tiny UI.

---

## HUD in Co-op (88)

- Party member info:

  - Simple list with:
    - Names.
    - HP bars.
    - Rough distance/relative direction (small icon).
- Shared objectives:
  - Hunt/Deed panel:
    - Shows team progress.
- Comm aids:
  - Pings:
    - Contextual markers on the world and compass.
    - “Track here,” “Camp here,” “Danger” icons.

UI must stay:

- Clean even with 2–4 players:
  - Avoid clutter overlapping the main view area.

---

## Integration With Other Systems

- **Talents & Paths (82):**
  - Talents that affect information:
    - E.g. extended tracking hints, improved buff tooltips, better threat awareness.
- **Game Bible / Codex (69):**
  - Central hub:
    - Which collects in-world knowledge and tutorial info.
- **Lodge & Social Layer (64, 83):**
  - UI that surfaces:
    - Lodge status (Ember Pot level, upcoming festivals).
- **Economy & Vendors (84):**
  - Vendor UI:
    - Styled like a ledger or inventory table.
    - Clear iconography for rarity, type, and use-case.

---

## Next Actions

- Create:
  - Wireframe mockups for:
    - Core HUD (exploration, combat).
    - Hunt/Deed objective panel.
    - Buff/debuff cluster.
- Define:
  - Minimal vs Detailed HUD presets.
- Draft:
  - Style guide for UI elements (color, shapes, icon sets) that matches Emberwild’s grounded, Lodge-centric aesthetic.
