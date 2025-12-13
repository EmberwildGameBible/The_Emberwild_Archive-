# 76 – Hunt Board & Deeds UI/UX (In-Game Flow and Presentation)

## Purpose

Define the **in-game UI and UX** for:

- The Greatwood **Hunt Board** (61)
- **Deeds** (named contracts and bigger hunts)
- How players discover, accept, track, and complete hunts in a way that feels **diegetic and clean**, not like a generic MMO quest list.

---

## UX Pillars

1. **Board-first interaction**  
   Players physically walk up to a board and see posts, pins, and notes.

2. **Low-clutter, high clarity**  
   Focus on a small number of meaningful hunts at once.

3. **Deeds feel special**  
   Deeds look and behave differently from common hunts.

4. **Consistent with tone**  
   UI visuals feel like aged paper, wood, ink—no sci-fi panels.

---

## Physical Board Presentation

### Board Layout

- Visual sections:
  - **Common Hunts** – smaller, messier notes.
  - **Notices / Events** – colored or ribboned posts.
  - **Deeds** – larger parchment with wax seals or carved plaques.

- When player interacts:
  - Camera nudges closer to board.
  - UI overlay fades in, still showing board in background.

---

## Core Hunt Board UI

### Main Hunt Panel

- Left side:
  - List of current available Hunts:
    - Title
    - Icon (creature / type)
    - Short descriptor (2–3 words)
    - Difficulty tag (e.g., “Easy Hunt”, “Standard Hunt”, “Risky Hunt”)

- Right side:
  - Selected Hunt details:
    - Full name
    - Brief in-world description
    - Objective summary (e.g., “Cull 6 Ash-Touched Boar in Burn-Scar Glade”)
    - Suggested level band
    - Region/sub-region
    - Rewards preview (XP, coin, rep, possible ingredients)

- Actions:
  - **Accept Hunt**
  - If already accepted:
    - **Abandon Hunt** (with confirmation).

### Hunt Tracking

Once accepted:

- Minimal HUD indicator:
  - Hunt name (short)
  - Progress (e.g., “Ash-Touched Boar: 0/6”)
- Journal / Quest Log:
  - Hunts get a specific tab:
    - **Hunts & Deeds** separate from story quests.

---

## Deeds UI

Deeds have their own visual treatment:

- On board:
  - Larger parchment.
  - Unique icon (e.g., ornate frame).
- In UI:
  - Dedicated sub-tab under **Hunts & Deeds**:
    - Deed name
    - “Ongoing” or “Completed”
- Detail view:
  - Multi-step objective list
  - Short lore snippet
  - Portrait or silhouette of target (if a creature)

### Accepting a Deed

- Often requires:
  - Minimum level or prior Hunts completed.
- UI may show:
  - Gate info (“Requires Trusted Lodge rep” or similar).
- When accepted:
  - Optionally plays a short in-world “pledge” animation:
    - Player signs the Deed, tears off a strip, or is handed a token.

---

## Integration With Map & Tracking (67, 63)

When a Hunt or Deed is active:

- Map view:
  - Regions relevant to the hunt highlighted softly.
  - Icons indicating:
    - Hunting grounds
    - Suspected lairs
    - Known tracks starting points

- Compass:
  - Small hunt icon pointing toward general region (not exact location).

- Tracking (67):
  - When near clue areas, UI:
    - Slightly highlights the fact that you are in a **hunt zone**.
    - Prompts: “Tracks nearby. Look for signs.”

Goal: keep the board and UI connected, but avoid over-precise “go here, click thing” feeling.

---

## Completion Flow

### Completing a Common Hunt

- On completing objectives:
  - On-screen message:
    - “Hunt Complete: [Name] – Return to Lodge Board for full rewards.”
  - Partial rewards:
    - XP from kills already applied.
  - Full rewards:
    - XP bonus, coin, rep when turning in at Board.

Turning in:

- Player interacts with board.
- Completed hunt parchment is marked as:
  - Crossed out, stamped, or pulled down.
- Reward panel pops up, summarizing:

  - XP
  - Coin
  - Rep gains
  - Items obtained

### Completing a Deed

- On final step completion:
  - Larger “Deed Completed” banner.
  - Possibly a unique stinger sound (audio 68).
- Turn-in:
  - May involve:
    - Talking to a specific NPC **and**
    - Interacting with the board.
- UI:
  - Separate Deeds completion screen:
    - Lore recap or short flavor text
    - Reward breakdown
    - Deed permanently moved to a **Completed Deeds** section.

---

## Player Feedback & Clarity

Key information always visible somewhere:

- Active Hunts count:
  - e.g., “Hunts: 2/3 active”
- Deeds status:
  - e.g., “Active Deeds: 1”

In Journal UI:

- Tabs:
  - Story Quests
  - Hunts
  - Deeds
- Each entry:
  - Sorting by region or type.

---

## Diegetic Touches

- As more hunts are completed:
  - Board visual changes:
    - Certain posts replaced with new ones.
    - NPCs comment on your contributions.
- Deeds:
  - Completed Deeds may appear on a **“Hall of Deeds”** section of the board or a nearby wall.
- The Hunt Board scribe NPC:
  - Occasionally audible or visible updating the board.

---

## Integration

- **Hunt System Design (61):**
  - UI directly represents the categories and flow described there.
- **World Bosses / Rare Hunts (66):**
  - Larger Deeds show world boss silhouettes and warnings.
- **Map & Regions (63):**
  - Board hunts reference region names and mark them on map.
- **Game Bible (69):**
  - Finished Deeds and notable Hunts can unlock codex entries.

---

## Next Actions

- Mock up:
  - A simple 2D layout for Board UI (wireframe).
- Define:
  - Max simultaneous Hunts and Deeds.
  - How often Board refreshes Hunts.
- Write:
  - Example Hunt and Deed entries with full text for UI testing.
