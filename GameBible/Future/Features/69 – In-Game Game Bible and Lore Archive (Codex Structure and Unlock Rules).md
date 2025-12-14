# 69 – In-Game Game Bible & Lore Archive (Codex Structure and Unlock Rules)

## Purpose

Define the **in-game codex / Game Bible / Lore Archive** for Emberwild:

- Structure and categories
- What unlocks entries (and when)
- How it stays readable and grounded instead of feeling like “lore dump menus”

Goal: make the in-game Bible feel like a **diegetic Lodge archive** that grows as the player plays.

---

## Core Concept

The in-game Game Bible is:

- A **Lodge archive** of notes, maps, recipes, hunts, and stories.
- Written and updated by:
  - Hunters
  - Foresters
  - Cooks
  - Woodworkers
  - Other Lodge staff

Player is reading what the Lodge has gathered and what they themselves add to over time.

---

## High-Level Structure

Top-level categories in the in-game Archive:

1. **Regions & Places**
2. **Creatures & Hunts**
3. **Professions & Practices**
4. **Ingredients & Crafting**
5. **Lodge & People**
6. **Events & History**
7. **Mechanics & Field Notes** (diegetic explanation of systems, not overt tutorial)

Each entry has:

- **Title**
- **Category**
- **Subcategory** (optional, e.g. Greatwood → Hollowroot Edge)
- **Author Voice** (who “wrote” it in-world)
- **Unlock Source** (how player gets it)
- **Content Body** (flavor + light mechanics)
- **Links** to related entries (like a web of notes)

---

## Category Details

### 1. Regions & Places

Subsections:

- Greatwood Overview
- Lodge & Surroundings
- Sub-regions (63): Lower Hunting Grounds, Rivers, Hollowroot Edge, Burn-Scars, Clifftops
- Major POIs: Hollowroot Warren, Burn-Scar Glade, key shrines and overlooks

Unlocks from:

- Discovering locations
- Completing location-based quests or Hunts
- Talking to certain NPCs about specific places

Content includes:

- Short in-world description
- Notes from hunters/foresters (small anecdotes or warnings)
- Occasionally small mechanical hints (“Game tends to be thicker here at dusk”)

---

### 2. Creatures & Hunts

Subsections:

- Creature Families:
  - Deer, boar, wolves, predators, corrupted beasts, dungeon creatures, world bosses (66)
- Named hunts and Deeds (61):
  - “The Boar That Wouldn’t Die”
  - “Three-Horn Stag”
  - “Elder Hollow Stag”

Unlocks from:

- First kill of a creature family
- Completing specific Hunts or Deeds (61, 66)
- Reading specific notes found in caches or on bodies

Content includes:

- Traits and behaviors
- Weakness hints
- Field anecdotes from hunters
- Where in the world they tend to appear

---

### 3. Professions & Practices

Subsections:

- Forester’s Circle (59)
- Ember Kitchen (52, 53, 56, 59)
- Carpenter’s Hall (54, 59)
- Early Alchemy (58)
- Combo work (57)

Unlocks from:

- Profession intro quests and promotions (59)
- Completing profession questlines (56, 60)
- Reaching certain skill thresholds

Content includes:

- Short in-world writeups about each profession’s role
- Example “day in the life” lines
- Field tips that double as soft mechanical explanations

---

### 4. Ingredients & Crafting

Subsections:

- Ingredient taxonomy (51)
- Specialty ingredients (55)
- Basic crafting components (wood types, simple materials)

Unlocks from:

- First time acquiring an ingredient
- Learning a significant recipe or alchemy formula (52, 53, 58)
- Completing certain Hunts that introduce special drops

Content includes:

- Description of ingredient
- Where it tends to be found
- Known uses (recipes, tonics, balms)
- Rumors about more advanced uses (future expansion hooks)

---

### 5. Lodge & People

Subsections:

- Lodge structure and wings
- Named NPCs:
  - Cooks
  - Foresters
  - Woodworkers
  - Leadership figure(s)
- Social traditions (64)

Unlocks from:

- Meeting important NPCs
- Completing key Lodge quests (56, 60, 64)
- Participating in festivals or social events

Content includes:

- Short bios written in in-world voice
- Traditions like Ember Night Feast, Remembrance, Wild Hunt Prep
- Small hints about who to talk to for certain content

---

### 6. Events & History

Subsections:

- Historical hunts
- Old wildfires and their scars
- Past Lodge crises (old Hollowroot incidents, etc.)
- World boss legends (66)

Unlocks from:

- Completing Deeds (61, 66)
- Exploring deeper story questlines
- Finding lore documents in the world

Content includes:

- Short stories or recorded accounts
- Context for why the world is the way it is now
- Foreshadowing for future content beyond 1–20

---

### 7. Mechanics & Field Notes

Subsections:

- Tracking and fieldcraft (67)
- Basic combat advice (from NPC perspective)
- Profession basics (how to gather, cook, craft efficiently, but in-world language)

Unlocks from:

- Completing tutorial-style quests
- Talking to mentors/trainers
- Reaching certain skill levels

Content includes:

- Tips written as if a senior hunter is teaching you, not system UI.
- Example: “You can’t just follow footprints in the rain. Look for broken branches and gouged bark.”

---

## Unlock Rules & Philosophy

1. **No giant dump at game start**  
   Player starts with:
   - 1–2 short entries:
     - “The Lodge”
     - “Greatwood At a Glance”
   Everything else is earned.

2. **Do stuff → entries appear**  
   Entries unlock when:
   - You discover a place
   - Kill or track something new
   - Learn a recipe or craft
   - Advance a quest/Deed

3. **Entries are short but rich**  
   Each entry is:
   - Short enough to read in under a minute
   - Dense enough to feel like it matters

4. **Visible hints for missing entries**  
   UI shows:
   - “Unknown Creature – a hunter mentioned something big out near the burn-scars.”
   To tease content the player hasn’t found yet.

---

## UI & Access

- Accessible from:
  - Main menu or quick key (journals/books icon)
  - Maybe physical in-world objects (shelves, archive rooms)

- UX:
  - Category tree on left
  - Entries list on right for chosen category
  - Detailed entry view when clicked

- Cross-linking:
  - At the bottom of an entry, links to related entries:
    - “See also: Hollowroot Warren, Hollowroot Resin, Alchemy – Dungeon Tonics.”

---

## Diegetic Touches

- Some entries are signed by:
  - Named NPCs
  - Anonymous hunters
  - Old hands leaving scrawled notes

- As player advances:
  - Player may be credited as “Field contributor” on some entries after certain quests.

---

## Integration with External Bible

The in-game archive is a **subset** and **in-universe representation** of the full Game Bible:

- High-level:
  - Pulls simplified, in-world language versions of the design docs
- Internal design:
  - The .md files in `GameBible/` are the source of truth
  - The in-game codex is the narrative surface layer

---

## Next Actions

- Define a first-pass **entry list** for each category:
  - 5–10 entries for Greatwood 1–20
- For each key system doc already written (51–68):
  - Identify which concepts should become codex entries.
- Draft 2–3 full example entries in final in-world voice style.
