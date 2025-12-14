# B164 – Greatwood Lodge & Trophy Visual Catalog (1–20)

---

## 0. PURPOSE & SCOPE

This chapter defines the **Greatwood Lodge** as:

- A **visual progression hub**.
- A **mechanical buff hub** (Hunt, Cooking, Alchemy bonuses).
- A **story scoreboard** for Greatwood 1–20.

It documents:

- Lodge **layout & identity**.
- **Visual stages** as the player conquers Greatwood.
- Every **Greatwood Hunt trophy set**:
  - Elder Hollow Stag
  - Greatwood Howler
  - Ward-Bear
  - Black-Sap Devourer
  - Hollowroot Matron
- All **Greatwood Lodge Projects** introduced in B159:
  - “Honor the Elder”
  - “Quiet the Trails”
  - “Songs of the Pack”
  - “Reforged Ward-Bear Shell”
  - “Seal the Black-Sap Veins”
  - “Contain Hollowroot Spread”
  - Plus a few adjacent support projects (kitchen, lab, archive).

This file is **design-facing**:

- It describes what the Lodge looks like and how it evolves.
- Actual implementation (asset names, blueprint coordinates) lives in:
  - Environment Art docs.
  - Lodge Systems implementation notes.
  - Trophy data tables.

---

## 1. GREATWOOD LODGE – IDENTITY & FLOORPLAN

### 1.1 Narrative Identity

The Greatwood Lodge is:

- The player’s **base of operations** for the entire Greatwood 1–20 arc.
- A **Hunt hall** where:
  - Contracts are posted.
  - Trophies are mounted.
  - Food and brews are prepared.
- A **living record** of:
  - Which Hunts have been completed.
  - Which Lodge projects are active.
  - How the region has changed because of player actions.

Tone:

- Functional, slightly rough, not yet grand or “capital-city” ornate.
- Feels like a crossed:
  - Hunting hall.
  - Field alchemy lab.
  - Ranger barracks.

---

### 1.2 Macro Layout (Concept)

Core wings for Greatwood stage:

1. **Entry & Main Hall**
   - Central hearth.
   - Contract Board / Hunt Board.
   - First trophies visible overhead.

2. **Trophy Hall**
   - Dedicated walls and pillars for:
     - Elder Hollow Stag.
     - Ward-Bear.
     - Black-Sap Devourer.
     - Hollowroot Matron.
     - Greatwood Howler.
   - Floor displays and totems.

3. **Kitchen & Feast Hall**
   - Cooking hearth.
   - Prep tables, pantry, shelves.
   - Long tables for feasts.
   - Visual connection to recipes like:
     - Elder’s Supper.
     - Greatwood Hunter’s Stew.
     - Wardbear Ironstew.
     - Matron Detox Feast.

4. **Alchemy Wing**
   - Benches, glassware, hanging herbs, fungal terrariums.
   - Sections for:
     - Fungal brews (Matron).
     - Corruption brews (Devourer).
     - Ward brews (Ward-Bear).
     - Predator/focus brews (Howler).

5. **Map Room & War Table**
   - Large map of Greatwood.
   - Pins/markers for:
     - Black-Sap veins.
     - Hollowroot spread.
     - Howler territory.
     - Cleared trails.
   - Updated as Lodge projects complete.

6. **Containment Wing (Fungal & Corruption)**
   - Sealed glass cases.
   - Hollowroot samples.
   - Black-Sap barrels.
   - Visualizing “Contain Hollowroot Spread” and “Seal the Black-Sap Veins”.

7. **Ward Annex**
   - Wardstone fragments, study tables, diagrams of pillars.
   - Evolves with Ward-Bear projects.

8. **Pack Hall / Hunter Hall**
   - Banners and totems for pack-themed content.
   - “Songs of the Pack” project center.

Not all of these start active; early Lodge is a stripped-down skeleton that gains these spaces over time.

---

### 1.3 Access & Upgrade Gating (High Level)

Progress through Greatwood 1–20 roughly matches Lodge progression:

- **Stage L0 – Embershell**
  - Lodge is a half-abandoned shell.
  - Only Main Hall and a small side room functional.

- **Stage L1 – Claimed Lodge**
  - Basic Trophy Hall and Kitchen open.
  - Simple Hunt Board.

- **Stage L2 – Greatwood Lodge**
  - Dedicated Alchemy Wing, partial Containment Wing.
  - Basic Ward Annex.

- **Stage L3 – Master of Greatwood**
  - Full Containment Wing, Ward Annex upgrades.
  - Pack Hall, refined Trophy Hall, complete Map Room.

- **Stage L4 – Regional Anchor (future)**
  - Reserved for post-20 or later expansions.
  - Shown conceptually but not fully implemented in Greatwood 1–20.

Unlock conditions are driven by:

- Completing specific Hunts.
- Turning in Lodge projects (B159).
- Reaching certain band thresholds.

---

## 2. VISUAL STAGES OF THE LODGE

### 2.1 Stage L0 – Embershell

State:

- Player first reaches Greatwood.
- Lodge is:
  - Structurally sound but underused.
  - Scattered crates, dusty banners, unused hooks on walls.

Visual notes:

- Hearth is cold or barely lit.
- Hunt Board small, with only:
  - Local vermin contracts.
  - Minor beast markers.
- No major trophies.
- Kitchen:
  - One functional pot over a modest flame.
  - No feast table, just a few stools.

Mechanical notes:

- No Lodge buffs active.
- Only Tier 1 recipes/Alchemy accessible via trainers.
- Map room is just:
  - A rolled-up canvas on a table.
  - No pins or overlays.

---

### 2.2 Stage L1 – Claimed Lodge

Triggered by:

- First major Hunt completed (typically Elder Hollow Stag).
- “Honor the Elder” project available.

Visual upgrades:

- Hearth is fully lit with stacked firewood.
- Lodge banners unfurled (generic Greatwood sigils).
- First trophy:
  - Elder Stag antlers mounted above the hearth or main entry.
- Kitchen:
  - Additional hanging racks.
  - Visible pots and pans.
  - Modest pantry shelf.

Trophy Hall:

- A dedicated wall cleared for:
  - Elder Stag trophy.
  - Placeholder spaces for other Hunts (empty brackets).

Map room:

- Basic map pinned to wall.
- One or two markers:
  - Stag territory.
  - Player’s current camp or Lodge itself.

Mechanical:

- Elder’s Supper and Hunter’s Bone Broth available (B162).
- Forest Guard tonic baseline (B163).
- Slight baseline Lodge buff:
  - Tiny regen inside Lodge.
  - Minor discount or bonus when cooking there.

---

### 2.3 Stage L2 – Greatwood Lodge

Triggered by:

- Completion of 2–3 of the primary Hunts (e.g., Stag + Howler + Ward-Bear).
- At least one major Lodge project turned in (Honor the Elder / Songs of the Pack / Reforged Ward-Bear Shell).

Visual upgrades:

- Trophy Hall:
  - Stag antlers, Howler skull, Ward-Bear shell all mounted.
  - Matching plaques beneath each.
  - Floor rugs or hides added.
- Kitchen:
  - Full feast table installed.
  - Shelving packed with:
    - Jars of herbs.
    - Hanging sausages.
    - Mushroom bundles.
- Alchemy Wing:
  - Opened and lit.
  - Dedicated fungal shelves.
  - Corruption glass cases (still mostly empty).

Map Room:

- More pins and rope lines:
  - Howler trails.
  - Ward-Bear’s territory.
  - Known Black-Sap Grove.
- Visual overlays showing:
  - Cleared vs dangerous trails.

Mechanical:

- Tier 2 Cooking & Alchemy recipes begin gating to:
  - “Must be prepared at Lodge station for full effect” (optional).
- Lodge aura buff in instanced content:
  - Slight bonus when party enters Hunts if Lodge stage is advanced.
- Project-specific buffs now active:
  - Songs of the Pack, Quiet the Trails, Reforged Ward-Bear Shell partials.

---

### 2.4 Stage L3 – Master of Greatwood

Triggered by:

- All five core Hunts completed at least once:
  - Elder Hollow Stag.
  - Greatwood Howler.
  - Ward-Bear.
  - Black-Sap Devourer.
  - Hollowroot Matron.
- Key Lodge projects completed:
  - Honor the Elder
  - Songs of the Pack
  - Reforged Ward-Bear Shell
  - Seal the Black-Sap Veins
  - Contain Hollowroot Spread

Visual upgrades:

- Trophy Hall:
  - All five Hunts have:
    - Major wall trophy.
    - Secondary floor piece.
    - Smaller satellite curios.
  - Ambient lighting that subtly shifts near each trophy’s area.

- Containment Wing:
  - Glass cylinders of Hollowroot.
  - Sealed Black-Sap barrels with ward sigils.
  - Warning signage and scarred floor where experiments went wrong.

- Ward Annex:
  - Full wardstone study table.
  - Chalk diagrams of pillars and ward lines.
  - Cracked pillar fragments suspended by chains or brackets.

- Pack Hall:
  - Banners with Howler and other predator motifs.
  - Totems made from howler pelts, fangs, and bones.
  - A wall of hunter names (NPC and player-like).

- Kitchen & Feast Hall:
  - Fully dressed tables.
  - Visible prepared dishes (based on highest unlocked recipes).
  - Background NPCs occasionally serving bowls of stew.

- Map Room:
  - Greatwood map crowded with:
    - Completed and sealed nodes.
    - Trails clearly marked safe vs dangerous.
  - Side wall for future regions.

Mechanical:

- Lodge is now a **minor mechanical hub**:
  - Final-tier Greatwood feasts and tonics may give extra synergy when consumed at Lodge.
  - World-state small changes:
    - Slightly fewer random howler attacks on main roads.
    - Fewer fungus outbreaks near Lodge.
  - Extra Hunt Board options for:
    - Repeat Hunts with modifiers.
    - Daily/weekly Lodge tasks.

---

## 3. TROPHY SYSTEM – OVERVIEW

Trophies are:

- **Physical objects** in the Lodge.
- **Progress markers** for Hunts.
- Often tied to **Lodge projects** that use their ingredients.

Each core Hunt has:

1. **Primary Trophy**
   - Large, central piece (skull, shell, mount).
2. **Secondary Decor**
   - Rugs, banners, terrariums, barrels, totems.
3. **Functional Hook**
   - Minor Lodge buff.
   - Unlocks recipes, projects, or world changes.

Player experience:

- First kill → small trophy appears.
- Turning in Lodge project → trophy upgrades visually and mechanically.

---

## 4. TROPHY SETS BY HUNT

### 4.1 Elder Hollow Stag Trophy Set

Primary trophy item:

- `trophy_elder_stag_antlers` (internal name)

Visual:

- Massive antlers mounted above the main hearth or center of Trophy Hall.
- Backplate carved with Greatwood motifs (leaves, runes).

Secondary decor:

- `elder_stag_hide_rug` – Hide rug near hearth.
- `elderbloom_wreath` – Flowers woven above the antlers if Honor the Elder is complete.
- `stag_antler_candelabras` – Smaller antlers shaped into candle holders around the hall.

Functional hooks:

- **Without project completion:**
  - Cosmetic.
- **With “Honor the Elder” project complete:**
  - Small Lodge-wide buff:
    - Slight health regen when in Lodge.
    - Slight bonus to stag-related meals cooked here.
  - Elder-related recipes (Elder’s Supper, Bone Broth) gain tiny extra value when cooked at Lodge.

---

### 4.2 Greatwood Howler Trophy Set

Primary trophy item:

- `trophy_greatwood_howler_skull`

Visual:

- Howler skull mounted on a carved wooden plaque.
- Lower jaw held slightly open as if mid-howl.
- Hung along a Trophy Hall wall or in Pack Hall.

Secondary decor:

- `howler_alpha_pelt_banner` – Pelt stretched as a vertical banner alongside.
- `pack_totem_cluster` – Bundle of smaller skulls, bones, fangs tied together at a corner.
- `claw_scored_pillars` – Wooden pillars in the hall with visible claw marks.

Functional hooks:

- **Base kill:**
  - Trophy appears.
  - Slight ambient audio change:
    - Occasional faint echo of a howl.

- **With “Songs of the Pack”:**
  - Lodge buff:
    - Small stamina / movement buff when entering Hunts.
    - Slight improvement in fear/stagger resistance for party.
  - Visual:
    - Added pack banners along the hall.
    - Howler horn used as a ceremonial war-horn near the Hunt Board.

---

### 4.3 Ward-Bear Trophy Set

Primary trophy item:

- `trophy_wardbear_shell` (built from `wardstone_bear_plate`, `wardstone_bracket`)

Visual:

- A reconstructed stone-bone “shell” mask of the Ward-Bear mounted on the wall.
- Faint luminescence and ward etchings along the plate.

Secondary decor:

- `wardstone_shard_pedestal` – Massive shard displayed on a plinth.
- `pillar_fragment_display` – Broken pillar pieces arranged with notes.
- `ward_chalk_diagrams` – Chalk drawn around the display area, marking ward lines.

Functional hooks:

- **Base kill:**
  - Trophy appears, light ward hum in Lodge.

- **With “Reforged Ward-Bear Shell” project:**
  - Lodge buff:
    - Minor ward/arcane damage reduction for Hunts.
    - Slight bonus effect to Wardbear Ironstew and ward-related brews when prepared at Lodge.
  - Visual:
    - Ward Annex expanded:
      - More shelves.
      - New Wardstone fragments.
    - Wards occasionally sending a faint beam across the trophy.

---

### 4.4 Black-Sap Devourer Trophy Set

Primary trophy item:

- `trophy_devourer_jaw` or `trophy_blacksap_devourer_mask`

Visual:

- Enormous jawbone or partial skull coated in blacksap residue.
- Mounted above a rack of sealed barrels, each with heavy warded lids.

Secondary decor:

- `black_sap_barrel_cluster` – Grouped barrels bound with iron bands.
- `sap_drain_channel` – Stone trench under the display, stained dark.
- `warning_placards` – Signs and chalk warnings in Lodge handwriting.

Functional hooks:

- **Base kill:**
  - Jaw/skull displayed.
  - Occasional drip/sound effect from barrels.

- **With “Seal the Black-Sap Veins” project:**
  - Lodge buff:
    - Slight reduction in random corruption events in world.
    - Slightly better outcomes when crafting Sap Cleanser Draught or corruption recipes at Lodge.
  - Visual:
    - Barrels reinforced with visible ward glyphs.
    - Map room:
      - Black-sap veins crossing the map now marked as “sealed” or dimmed.

---

### 4.5 Hollowroot Matron Trophy Set

Primary trophy item:

- `trophy_hollowroot_matron_core` in containment

Visual:

- Large, twisted fungal core suspended in a thick-glass cylinder.
- Glows faintly with pulses of bioluminescent spores.

Secondary decor:

- `fungal_wall_panels` – Hollowroot shell plates used to create wall panels.
- `spore_jar_shelves` – Smaller glass jars of spores and fungi.
- `containment_runes` – Ward-like markings around containment bases.

Functional hooks:

- **Base kill:**
  - Core cylinder appears in Containment Wing.
  - Faint spore drift shimmering inside.

- **With “Contain Hollowroot Spread” project:**
  - Lodge buff:
    - Reduced Spore Sickness severity in Hunts.
    - Slight bonus to fungal detox brews and Matron Detox Feast when made at Lodge.
  - Visual:
    - Additional containment glass units.
    - Hollowroot growth visibly “pinned” by containment runes.
    - Map room: fungal spread areas shown as stabilizing.

---

## 5. LODGE PROJECTS – GREATWOOD PASS (B159 EXPANDED)

Each project has:

- **Inputs** – Items from Hunts, professions, and foraging.
- **Visual Changes** – What happens in the Lodge.
- **Mechanical Effect** – What buff or world state change occurs.

### 5.1 Project: Honor the Elder

- **Inputs:**
  - `antler_fragment` xN
  - `sapstained_antler` xM
  - `stag_hide_strip` xK
  - Optional: `elderbloom_flower`, `lore_scrap_greatwood_legend`

- **Visual:**
  - Elder Stag antlers cleaned and mounted above hearth.
  - Wreath of elderbloom flowers arranged around plaque.
  - Small memorial plaque listing major Stag Hunts.

- **Mechanical:**
  - Slight Lodge-wide regen buff.
  - Stag-based dishes (Elder’s Supper, Bone Broth) gain:
    - Slightly better regen or duration when cooked at Lodge.
  - Elder Stag re-runs may have:
    - Slightly improved premium drop chances (flavor lever).

---

### 5.2 Project: Quiet the Trails

- **Inputs:**
  - Generic Hunt completions (howler, boar, stag contracts).
  - Traffic-related contract turn-ins:
    - “Protect the Caravan”
    - “Clear the Trail” style quests.

- **Visual:**
  - Map room updated:
    - Trails marked in green or safe markers.
    - Caravans and small carved carts displayed around the map.
  - Noticeboard near exit:
    - Fewer “missing person” notes.
    - More “trade route opened” notices.

- **Mechanical:**
  - Slight reduction in random ambush events on main travel paths.
  - Slight bonus to resource yields from foraging nodes on safe routes (more time to gather, less time running).

---

### 5.3 Project: Songs of the Pack

- **Inputs:**
  - `howler_alpha_pelt`, `howler_fang_alpha`
  - `howler_pelt_tuft` xN
  - Optionally, minor relic splinters tied to predator themes.

- **Visual:**
  - Pack banners added in Pack Hall.
  - Totems assembled from bones and pelts.
  - A ceremonial horn stationed near the Hunt Board.

- **Mechanical:**
  - Party buff when launching Hunts from this Lodge:
    - Small stamina & movement bonus.
    - Minor fear/stagger duration reduction.
  - Howler and predator hunts:
    - Slightly improved drop chances for predator-related ingredients.

---

### 5.4 Project: Reforged Ward-Bear Shell

- **Inputs:**
  - `wardstone_bear_plate` xN
  - `wardstone_core_shard` xM
  - `bearward_claw_fragment` xK
  - `glowward_moss` for binding.

- **Visual:**
  - Ward-Bear shell plaque fully reconstructed and prominently displayed.
  - Ward Annex expanded with additional shelves, diagrams.
  - Faint swirling ward light projected on nearby walls.

- **Mechanical:**
  - Ward and arcane damage taken in Hunts slightly reduced.
  - Wardbrews (Wardbreaker, Wardward Bulwark, Wardsense) get:
    - Longer duration or slightly stronger effects when brewed at Lodge.
  - Some Wardstone dungeons may:
    - Start with one pillar in a friendly/stable state if project is complete (tuning lever).

---

### 5.5 Project: Seal the Black-Sap Veins

- **Inputs:**
  - `blacksap_resin_clot` xN
  - `devourer_tooth_fragment` xM
  - `sap-scarred_bark` xK
  - Optional: `purifier_bloom` contributions.

- **Visual:**
  - Black-Sap barrels in Lodge sealed with heavy wards.
  - Map room:
    - Black-sap veins overlay turned from bright to dim/contained.
  - Additional warning signage updated:
    - “Veins sealed – monitor for seepage.”

- **Mechanical:**
  - Slight reduction in:
    - Ambient corruption in certain pockets.
    - Frequency of small corruption anomalies near main routes.
  - Sap Cleanser Draught and Purified Sap Stew:
    - More effective or slightly cheaper to craft at Lodge.

---

### 5.6 Project: Contain Hollowroot Spread

- **Inputs:**
  - `hollowroot_matron_core`
  - `hollowroot_shell_plate` xN
  - `mycelium_web` xM
  - `dampcap`, `mire_fungus` for study.

- **Visual:**
  - Containment Wing fully built:
    - Multiple glass cylinders of Hollowroot structures.
    - Floor circles of runic containment marks.
  - Fungal displays alongside study notes and diagrams.

- **Mechanical:**
  - Lower severity of Spore Sickness in Greatwood Hunts.
  - Anti-Spore & Detox brews:
    - More potent when brewed here.
  - Matron and fungal pockets:
    - Slightly reduced baseline spore density (design knob).

---

### 5.7 Support Projects (Environment & Profession)

These are smaller but important:

#### 5.7.1 Project: Greatwood Kitchen & Cellar

- **Inputs:**
  - General meats, vegetables, herbs.
  - A modest number of Hunts completed.

- **Visual:**
  - Kitchen fully stocked.
  - Wine/ale barrels, hanging meats, herb bundles.

- **Mechanical:**
  - Cooking:
    - Slight quality increase when cooking in Lodge vs campfires.
  - Feasts prepared here:
    - Slightly cheaper or yield more servings.

---

#### 5.7.2 Project: Alchemist’s Bench

- **Inputs:**
  - Any combination of:
    - `moss_silk_mycelium`
    - `purifier_bloom`
    - `glowward_moss`
    - Early alchemy contract completions.

- **Visual:**
  - Dedicated alchemy table with glassware and hanging ingredients.

- **Mechanical:**
  - Alchemy brews crafted here:
    - Slightly faster (less time, UI convenience).
    - Minor bonus to quality or output (stack count, potency).

---

#### 5.7.3 Project: Greatwood Archive Wall

- **Inputs:**
  - `lore_scrap_greatwood_legend`
  - `lore_scrap_poachers_route`
  - Misc Hunt notes.

- **Visual:**
  - Wall of pinned maps, notes, sketches.
  - String connecting clues about Hunts and pockets.

- **Mechanical:**
  - Unlocks small lore-based hints on Hunts.
  - May unlock cosmetic titles or achievements.

---

## 6. NPC BEHAVIOR & DIALOGUE PROGRESSION (HIGH LEVEL)

As Lodge stage and projects advance:

- **Huntmaster NPC:**
  - Early:
    - “We’re barely holding this place together.”
  - Mid:
    - Comments on trophies, acknowledges player’s Hunts.
  - Late:
    - Talks about Greatwood being safer (but never fully safe).
    - Hints at next region.

- **Cook NPC:**
  - Starts with:
    - Simple roasts and stews.
  - After Kitchen & Elder projects:
    - Mentions Elder’s Supper and Hunter’s Bone Broth.
  - After Matron / Devourer:
    - Complains about cooking with corruption/fungal components.
  - Late:
    - Proud commentary:
      - “Our lodge table can stand against anything that walks out of those trees.”

- **Alchemist NPC:**
  - Early:
    - “I can make something that stings, if that helps.”
  - After Ward-Bear and Devourer:
    - Talks about ward and corruption brews.
  - After Matron:
    - Jokes darkly about “bottling the forest’s worst mistakes.”
  - Late:
    - Mentions needing samples from other regions.

NPC dialog should always:

- Acknowledge trophy changes.
- Reference specific project names occasionally.
- Give players intuitive hints for:
  - Which brews to bring to which Hunts.
  - Where to find certain ingredients.

---

## 7. IMPLEMENTATION NOTES & TAGGING (STRUCTURAL)

### 7.1 Lodge Project Data Shape (Pseudo-Lua)

```lua
LodgeProjects["gw_songs_of_the_pack"] = {
    id = "gw_songs_of_the_pack",
    name = "Songs of the Pack",
    region = "greatwood",

    requirements = {
        { type = "item", itemId = "howler_alpha_pelt", quantity = 1 },
        { type = "item", itemId = "howler_fang_alpha", quantity = 1 },
        { type = "item", itemId = "howler_pelt_tuft", quantity = 10 },
        { type = "kill", target = "HUNT_GREATWOOD_HOWLER", count = 3 },
    },

    visual_changes = {
        { type = "add_prop", propId = "lodge_pack_banner_set" },
        { type = "add_prop", propId = "lodge_pack_totem_cluster" },
        { type = "toggle_audio", audioId = "lodge_pack_chant", state = "on" },
    },

    buffs = {
        { id = "gw_songs_of_pack_stamina", scope = "party_on_hunt_start",
          effects = {
              { type = "stamina_regen_mult", value = 1.05 },
              { type = "fear_duration_mult", value = 0.95 },
          }
        },
    },

    tags = { "greatwood", "howler", "pack", "hunt", "lodge" },
}
Similar patterns for:

gw_honor_the_elder

gw_reforged_wardbear_shell

gw_seal_black_sap_veins

gw_contain_hollowroot_spread

gw_quiet_the_trails

gw_kitchen_upgrade

gw_alchemy_bench

7.2 Trophy Data Shape (Simplified)
lua
Copy code
LodgeTrophies["gw_trophy_howler"] = {
    id          = "gw_trophy_howler",
    huntId      = "HUNT_GREATWOOD_HOWLER",
    propId      = "trophy_greatwood_howler_skull",
    locationTag = "lodge_wall_pack_side",

    upgradeProjectId = "gw_songs_of_the_pack",

    states = {
        base = {
            description = "Plain howler skull mount.",
        },
        upgraded = {
            description = "Howler skull with banners and ambient howls.",
            additionalProps = {
                "pack_banner_left",
                "pack_banner_right",
                "pack_totem_cluster",
            },
        },
    },
}
8. SUMMARY
B164 turns the Greatwood Lodge into:

A tangible scoreboard of Hunts.

A profession hub for cooking and alchemy.

A visual narrative of the player’s impact on Greatwood.

By the end of Greatwood 1–20, the player should be able to walk through the Lodge and:

See every major Hunt they’ve completed.

Taste the food and brews that made those wins possible.

Feel subtle buffs and world-state changes earned via Lodge projects.

Understand that:

The Lodge is not just where they pick up Hunts – it is what Hunts build.

Any future zone or region can now mirror this pattern:

Hunts → Projects → Lodge/Hub upgrades → Visual + mechanical payoff.

