Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 63 – Greatwood Region Layout, Landmarks & Travel Skeleton

## Purpose

Define the **playable 1–20 Greatwood slice** as a concrete space:

- Sub-regions with **level bands** and **tone**
- Named **landmarks & POIs** (Points of Interest)
- Primary and secondary **travel routes**
- How Hunts, Deeds, Dynamic Events, Professions, and Corruption **attach** to places

This is the **region spine** that 51–62 hang off of.

---

## Design Goals

1. **Readable at a glance, deep in play**

   - Players should be able to say:
     - “The Lodge is here, the burned edge is down there, Hollowroot is over that way.”
   - Over time, they learn:
     - Micro-routes, shortcuts, danger pockets, profession hotspots.

2. **Dense but not cluttered**

   - Greatwood 1–20 should be:
     - Walkable without mount/fast travel.
     - Packed enough that travel is interesting.
   - Gaps between points are where:
     - Dynamic events (62)
     - Ambient life
     - Travel hazards live.

3. **Clear progression gradient**

   - Spatially reflect:
     - Levels 1–7 near Lodge edges.
     - 6–14 in Mid-Greatwood.
     - 12–20 near Deep Greatwood / Hollowroot border & burn-scars.

4. **System hooks everywhere**

   - Every named location:
     - At least 1 Hunt
     - At least 1 dynamic event type
     - At least 1 profession or story hook.

5. **Reusable template**

   - This layout format becomes the pattern for:
     - Hollowroot
     - Burn-Scar Descent
     - Other regions.

---

## 1. Region Structure Overview

### 1.1 High-Level Zones

Greatwood 1–20 is split into **5 primary sub-regions**:

1. **The Lodge Crown** (Levels 1–6)
   - Immediate surroundings of Greatwood Lodge.
   - Training grounds, safe practice hunts, beginner resource nodes.

2. **The Low-Eaves** (Levels 3–9)
   - Forest edge and transitional band between Lodge and farmlands.
   - Wolves, boars, basic Hunts, Broken Tools early incidents.

3. **Mid-Greatwood** (Levels 6–14)
   - Denser canopy, mixed elevation, more complex paths.
   - Spiders, sentry birds, poachers, richer resource zones.

4. **The Ash-Edge & Old Burn-Scars** (Levels 10–18)
   - Regions touched by **past fire**, not yet full Burn-Scar Descent.
   - Ash-eater creatures, smoke, early fire/ash theming.

5. **Hollowroot Border** (Levels 14–20)
   - Outer ring around Hollowroot proper (future major zone).
   - Subtle to moderate corruption.
   - Whispers, twisted root tunnels, early Hollowroot Deeds.

Each sub-region has **POI clusters** (named below) and **travel spines**.

### 1.2 Primary Travel Axes

- **North–South Spine:**  
  Lodge → Mid-Greatwood → Hollowroot Border
- **West–East Spine:**  
  Farmland Edge → Low-Eaves → Lodge → Ash-Edge / Burn-Scars
- **Water Spine:**  
  Greatwood River bending through Mid-Greatwood and Ash-Edge.

---

## 2. Key Landmarks & POI Index

### 2.1 Landmarks (Macro Anchors)

These are the “big pins” players mentally navigate by.

1. **Greatwood Lodge** – Hub; social, Hunts, professions.
2. **First Watch Tower** – Early-game lookout with a view over Low-Eaves.
3. **Turned Fields** – Broken farmland at the forest edge.
4. **Riverbend Crossing** – Main river ford & bridge.
5. **Ash-Edge Stand** – Cluster of blackened trees marking old fire.
6. **Stone Kettle Falls** – Waterfall + pool; strong visual travel anchor.
7. **Hollowroot Gate** – Carved stone/wood threshold hinting at the deeper zone.
8. **Old Bark Road** – Ancient, half-buried road remnant cutting across Greatwood.

Each of these has 2–5 smaller POIs orbiting around it.

---

## 3. POI Catalog (By Sub-Region)

Each POI entry includes:

- **Name**
- **Type** (Combat, Profession, Social, Corruption, Mixed)
- **Level Band**
- **Description**
- **System Hooks** (Hunts, Deeds, Professions, Events)
- **Travel Role** (Shortcut, Chokepoint, Vista, Hideaway)

---

### 3.1 The Lodge Crown (1–6)

#### 3.1.1 Greatwood Lodge Grounds

- **Type:** Social / Profession Hub
- **Level Band:** 1–6 (safe)
- **Description:**
  - Central multi-level Lodge:
    - Hall, Hunt Board, Ember Pot, profession wings, trophy spaces.
  - Outer yard:
    - Archery range, sparring ring, wood stacks, cart staging.
- **System Hooks:**
  - Files:
    - 51–57: Professions, recipes, ingredient intros.
    - 59: Lodge rep systems.
    - 60: Broken Tools questline start.
    - 61–62: Hunt Board, Greatwood Deeds.
    - 64, B100+: Lodge social & player quarters.
- **Travel Role:**
  - Primary **hub / anchor**.
  - All main roads reference distance from the Lodge.

#### 3.1.2 Training Glade

- **Type:** Combat / Tutorial
- **Level Band:** 1–4
- **Description:**
  - Small fenced glade just downhill from the Lodge.
  - Target dummies, practice beasts penned or summoned.
- **System Hooks:**
  - Combat tutorials.
  - Intro Hunts:
    - “Practice Cull” variants.
  - Profession intros:
    - First “safe” herb and wood nodes.
- **Travel Role:**
  - Gentle buffer between Lodge and the wilder forest.

#### 3.1.3 Lodge Yard Staging Area

- **Type:** Profession / Social
- **Level Band:** 1–6
- **Description:**
  - Carts, wagons, lumber stacks, drying racks for herbs/meat.
- **System Hooks:**
  - Dynamic Events:
    - Stuck Cart (EVT-GW-HLP-02), Apprentice on Errand (SOC-01).
  - Broken Tools:
    - Visible broken axes, pots, beams early on (60).
- **Travel Role:**
  - Node where players naturally pass through on most outbound trips.

#### 3.1.4 First Watch Tower

- **Type:** Vista / Light Combat
- **Level Band:** 3–7
- **Description:**
  - Wooden stone-anchored tower overlooking Low-Eaves and Turned Fields.
  - View of:
    - Farmland edge
    - Forest banding
- **System Hooks:**
  - Hunts:
    - Early bird-of-prey variants.
  - Dynamic Events:
    - Shadow Overhead (AMB-05).
  - Social:
    - Lodge Gossip by the Fire variant with lookout NPCs.
- **Travel Role:**
  - **Vista** + minor fast-travel anchor candidate.

---

### 3.2 The Low-Eaves (3–9)

The forest’s “front porch”; mixes human touch and wild growth.

#### 3.2.1 Low-Eaves Paths

- **Type:** Travel Spine / Combat
- **Level Band:** 3–9
- **Description:**
  - Winding, well-used paths under low canopy.
  - Torches and simple trail markers.
- **System Hooks:**
  - Hunts:
    - CH-GW-001 – Cull the Greybacks.
    - Variants of basic cull Hunts.
  - Events:
    - Flock Scatter (AMB-02), Fox on the Road (AMB-03), Falling Limb (TRV-01).
  - Broken Tools:
    - Early gathering tests (Quest 2–3 of 60).
- **Travel Role:**
  - **Core artery** between Lodge and:
    - Turned Fields
    - Farmland Outskirts.

#### 3.2.2 Turned Fields

- **Type:** Mixed (Combat / Profession)
- **Level Band:** 4–8
- **Description:**
  - Abandoned farm plots:
    - Half reclaimed by forest.
    - Tilted fences, furrow ghosts.
- **System Hooks:**
  - Hunts:
    - CH-GW-002 – Boars in the Turned Fields.
    - CH-GW-005 – Something in the Grain (edge node).
  - Professions:
    - Early cooking ingredients (roots, grains).
  - Broken Tools:
    - Spoiled Batch resource events (RES-05).
- **Travel Role:**
  - **West–East link** between outskirts road and forest interior.

#### 3.2.3 Waystone Hollow

- **Type:** Social / Micro-Quest
- **Level Band:** 4–10
- **Description:**
  - Small hollow with a weathered waystone pillar.
  - Carved with Lodge markings and directions.
- **System Hooks:**
  - Intro to map and direction mechanics.
  - Twisting Trail (COR-03) early sign – waystone shows “true” orientation.
- **Travel Role:**
  - Early navigation tutorial space.

#### 3.2.4 Edge-Settlers’ Camp

- **Type:** Social / Help
- **Level Band:** 4–9
- **Description:**
  - Camp of stubborn settlers:
    - Too close to the forest for Lodge comfort.
- **System Hooks:**
  - Help/Rescue events:
    - Lost Gatherer, Stuck Cart variations.
  - Ember Pot on the Road event (HLP-05) variant.
- **Travel Role:**
  - **Rest-stop** style POI between Turned Fields and deeper forest.

---

### 3.3 Mid-Greatwood (6–14)

Denser, more vertical, more dangerous. Where “real hunts” begin.

#### 3.3.1 Spiderway Cut

- **Type:** Combat / Hazard
- **Level Band:** 7–12
- **Description:**
  - Narrow cut through a rocky rise.
  - Overhung by webs, with web-wrapped carcasses.
- **System Hooks:**
  - Hunts:
    - CH-GW-004 – Webs Over the Path.
  - Events:
    - Falling Limb variant with web-weakened branches.
- **Travel Role:**
  - Faster route between Lodge and Riverbend, but **riskier**.

#### 3.3.2 Riverbend Crossing

- **Type:** Travel Hub / Profession
- **Level Band:** 6–12
- **Description:**
  - Key river crossing:
    - Simple bridge or ford + stepping stones.
  - Visible from multiple approach paths.
- **System Hooks:**
  - Hunts:
    - CH-GW-006 – Tracks Along the Riverbend.
    - D-GW-001 – The Boar That Wouldn’t Die (arena nearby).
  - Events:
    - Sudden Fog Wall (TRV-02).
  - Professions:
    - Clay, fish, riverside herb nodes.
- **Travel Role:**
  - **Major intersection** between:
    - Low-Eaves paths
    - Mid-Greatwood interior
    - Ash-Edge.

#### 3.3.3 Canopy Ridge

- **Type:** Vista / Combat
- **Level Band:** 8–14
- **Description:**
  - Elevated ridge with partial canopy gaps.
  - Good vantage points, but narrow paths.
- **System Hooks:**
  - Hunts:
    - CH-GW-003 – The Sentries in the Boughs (elite birds).
    - CH-GW-008 – Silence in the Treetops (investigation).
  - Events:
    - Song of the Canopy (AMB-04).
    - Shadow Overhead (AMB-05).
- **Travel Role:**
  - Alternate route to bypass heavier ground-level threats.

#### 3.3.4 Gatherers’ Green

- **Type:** Profession / Defense
- **Level Band:** 9–13
- **Description:**
  - Particularly lush glade:
    - Herbs, fungi, good timber.
    - Small Lodge gathering post (sheds, markers).
- **System Hooks:**
  - Hunts:
    - CH-GW-007 – Guard the Gatherers.
  - Events:
    - Lost Gatherer, Panicked Beast (HLP-04).
  - Broken Tools:
    - Field experiments from Quest 3 – The Grain Remembers.
- **Travel Role:**
  - **Profession hub** within Mid-Greatwood.

#### 3.3.5 Old Bark Road Segment

- **Type:** Travel Spine (hidden/historical)
- **Level Band:** 6–14
- **Description:**
  - Fragment of ancient, mostly buried stone road.
  - Trees have grown around and through it.
- **System Hooks:**
  - Easier travel when found (smoother terrain).
  - Dynamic Event:
    - Stuck Cart, Roadblock (TRV-04).
  - Lore:
    - Hints of pre-Lodge civilization / routes.
- **Travel Role:**
  - **Hidden shortcut** that rewards exploration.

---

### 3.4 Ash-Edge & Old Burn-Scars (10–18)

Fire-touched spaces. The forest remembers a burn.

#### 3.4.1 Ash-Edge Stand

- **Type:** Combat / Environmental
- **Level Band:** 12–18
- **Description:**
  - Cluster of tall, blackened tree husks.
  - Ground carpeted in grey-black ash.
- **System Hooks:**
  - Hunts:
    - CH-GW-009 – Ash-Eaters at the Edge.
    - D-GW-003 – Tracks in the Ash.
  - Events:
    - Roots that Bleed variant with ash-veins (COR-01).
  - Professions:
    - Ash/charcoal resource nodes.
- **Travel Role:**
  - Strong **visual anchor** and warning zone.

#### 3.4.2 Smoking Hollows

- **Type:** Corruption / Hazard
- **Level Band:** 12–18
- **Description:**
  - Shallow pits whose ash occasionally smokes.
  - Smell of burned resin and something stranger.
- **System Hooks:**
  - Hunts:
    - D-GW-003 – Ash-Burrowed Alpha final arena nearby.
  - Events:
    - The Still Patch (COR-02), Singing Stone variant in fire-affected stone.
  - Professions:
    - Special ash-touched ingredients for alchemy.
- **Travel Role:**
  - Dangerous **detour** offering rare materials.

#### 3.4.3 Stone Kettle Falls

- **Type:** Vista / Profession
- **Level Band:** 10–16
- **Description:**
  - Waterfall dropping into a deep, round “kettle” pool.
  - Mist plumes and rainbow potential.
- **System Hooks:**
  - Events:
    - Stag in the Mist variant, Song of the Canopy variant.
    - Rare social events (musician, small gatherings).
  - Professions:
    - Rare fish, water-aligned herbs.
- **Travel Role:**
  - Scenic side-route.
  - Potential fast-travel anchor.

#### 3.4.4 Char-Shelter Ruins

- **Type:** Social / Combat
- **Level Band:** 11–17
- **Description:**
  - Ruins of an old waystation that burned.
  - Charred beams, cracked stone hearth.
- **System Hooks:**
  - Hunts:
    - Deed tie-in for fire-themed threats.
  - Events:
    - Ember Pot on the Road variant (cooks testing the old hearth).
    - Hunters Turned (COR-05) variant.
- **Travel Role:**
  - Storm shelter / resting spot with story weight.

---

### 3.5 Hollowroot Border (14–20)

The threshold to something deeper and wrong. This is **not** Hollowroot proper, but the ring around it.

#### 3.5.1 Hollowroot Gate

- **Type:** Landmark / Social / Corruption
- **Level Band:** 15–20
- **Description:**
  - Stone-and-root archway marking the **forbidden entrance**.
  - Lodge warnings, patrol markers.
- **System Hooks:**
  - Deeds:
    - D-GW-004 – The Whisper in the Hollow (entry/exit staging).
  - Events:
    - Roots that Bleed (COR-01), Whispering Cache (COR-04).
  - Gate Systems:
    - Locks/unlocks based on story arcs.
- **Travel Role:**
  - Hard boundary to future deeper content.

#### 3.5.2 Whispershade Glade

- **Type:** Corruption / Investigation
- **Level Band:** 16–20
- **Description:**
  - Shadowy glade with unnatural hush.
  - Subtle, directionless whisper audio.
- **System Hooks:**
  - Hunts:
    - CH-GW-012 – Whispers in the Hollow.
  - Deeds:
    - D-GW-004 – The Whisper in the Hollow mid-steps.
  - Events:
    - The Still Patch, Whispering Cache.
- **Travel Role:**
  - **Focal corruption POI** linked to multiple arcs.

#### 3.5.3 Root-Tunnel Overlook

- **Type:** Vista / Hazard
- **Level Band:** 15–20
- **Description:**
  - Overlook where the ground drops into visible root tunnels.
  - Occasional flickers of movement below.
- **System Hooks:**
  - Deeds:
    - D-GW-004 – path housing.
  - Events:
    - Stalking Eyes variant with eyes in tunnels.
- **Travel Role:**
  - Looped path that lets players preview Hollowroot tunnels.

#### 3.5.4 Old Hunter’s Marker Ring

- **Type:** Social / Lore
- **Level Band:** 14–20
- **Description:**
  - Crude ring of old Lodge markers.
  - Some broken, some freshly repaired.
- **System Hooks:**
  - Social:
    - Lodge discussion about old border lines vs new.
  - Broken Tools:
    - Attuned markers to resist corruption.
- **Travel Role:**
  - Soft **circle** around the most dangerous corruption hotspots.

---

## 4. Travel Skeleton & Routing

### 4.1 Primary Roads

1. **Lodge Road West**  
   Lodge → Low-Eaves Paths → Turned Fields → Farmland Edge

2. **Lodge Road South**  
   Lodge → Training Glade → Low-Eaves → Mid-Greatwood (Riverbend Crossing)

3. **Old Bark Route**  
   Broken, semi-hidden ancient road segments threading:
   - Mid-Greatwood
   - Near Stone Kettle Falls
   - Toward Ash-Edge Stand

### 4.2 Secondary Paths

- Spiderway Cut (shortcut, hazard)
- Canopy Ridge trails (vertical, scenic, risk of falls)
- Gatherers’ trails to Gatherers’ Green (profession-focused)
- Patrol loops around Hollowroot Border & Old Hunter’s Marker Ring

### 4.3 Travel Time Targets (Rough)

- Lodge → Turned Fields:  
  ~2–3 minutes on foot, with minimal diversion.
- Lodge → Riverbend Crossing:  
  ~4–6 minutes depending on path chosen.
- Lodge → Ash-Edge Stand:  
  ~6–8 minutes, through Mid-Greatwood or along river.
- Lodge → Hollowroot Gate:  
  ~8–10 minutes, crossing Mid-Greatwood and Hollowroot Border.

These times are for **uninterrupted travel**; dynamic events, Hunts, resource gathering naturally stretch them.

---

## 5. System Attachments (Where Things Live)

### 5.1 Hunts (61 & Greatwood Hunt Board Content)

- CH-GW-001 – Cull the Greybacks  
  → Low-Eaves Paths, Lodge Road South.

- CH-GW-002 – Boars in the Turned Fields  
  → Turned Fields cluster.

- CH-GW-003 – The Sentries in the Boughs  
  → Canopy Ridge, First Watch Tower vicinity.

- CH-GW-004 – Webs Over the Path  
  → Spiderway Cut.

- CH-GW-005 – Something in the Grain  
  → Turned Fields / Edge-Settlers’ Camp.

- CH-GW-006 – Tracks Along the Riverbend  
  → Riverbend Crossing and adjacent banks.

- CH-GW-007 – Guard the Gatherers  
  → Gatherers’ Green.

- CH-GW-008 – Silence in the Treetops  
  → Canopy Ridge & Mid-Greatwood canopy nodes.

- CH-GW-009 – Ash-Eaters at the Edge  
  → Ash-Edge Stand, Smoking Hollows.

- CH-GW-010 – The Poachers’ Signs  
  → Mid-Greatwood side paths, Old Bark Road segments.

- CH-GW-011 – Eyes in the Fog  
  → River valleys, Sudden Fog Wall segments.

- CH-GW-012 – Whispers in the Hollow  
  → Whispershade Glade, Hollowroot Border.

Deeds plug into multiple POIs each, as defined in their own files.

### 5.2 Dynamic Events (62)

- Ambient events:  
  Live across all sub-regions, with:
  - Stag in the Mist: edges, river, Ash-Edge, Stone Kettle Falls.
  - Fox on the Road: Low-Eaves, Lodge roads.
  - Song of the Canopy: Canopy Ridge, Whispershade, high trees.

- Help/Rescue:
  - Lost Gatherer: Gatherers’ Green, Turned Fields, Mid-Greatwood.
  - Stuck Cart: Lodge Yard, Old Bark Road, road spines.
  - Cry from the Ravine: Riverbend cliffs, Root-Tunnel Overlook.

- Corruption & Weirdness:
  - Roots that Bleed: Hollowroot Border, Ash-Edge Stand.
  - The Still Patch: Whispershade, Smoking Hollows, deep Mid-Greatwood.
  - Twisting Trail: paths near Hollowroot Gate.

- Resource Surprises:
  - The Tree That Bends Away: logging zones near Gatherers’ Green & Low-Eaves.
  - Singing Stone: ore outcrops by Smoking Hollows and cliffs.
  - Overfull Clay: Riverbend, clay pits.

- Travel Hazards:
  - Falling Limb: Low-Eaves, Mid-Greatwood slopes.
  - Sudden Fog Wall: river valleys, low grounds.
  - Slippery Slope: hillside paths around Canopy Ridge & Ash-Edge.

- Micro-Social:
  - Apprentice on Errand: Lodge roads, First Watch Tower route.
  - Friendly Rival: Mid-Greatwood & Ash-Edge hunting grounds.

- Rare:
  - White Stag: anywhere, but biased toward:
    - Stone Kettle Falls
    - Whispershade Glade
  - Sleeping Giant: cliffs near Stone Kettle Falls / Burn-Scar-adjacent areas.

### 5.3 Professions & Broken Tools (52–57, 60)

- Forester:
  - Best early zones:
    - Training Glade, Low-Eaves Paths, Gatherers’ Green.
  - Trees-that-bend events and attunement:
    - Mid-Greatwood, Hollowroot Border.

- Cook / Ember Pot:
  - Ingredients: Turned Fields, Edge-Settlers’ Camp, Riverbend.
  - Ember Pot On the Road:
    - Edge-Settlers’ Camp, Char-Shelter Ruins, Stone Kettle Falls.

- Woodworker:
  - Beams and worked wood:
    - Lodge Yard, Char-Shelter Ruins (rebuilding), Old Bark Road repairs.

- Broken Tools Questline (60):
  - Early incidents:
    - Lodge Yard, Turned Fields, Low-Eaves.
  - Field studies:
    - Gatherers’ Green, Ash-Edge Stand, Riverbend.
  - Attunement testing:
    - Tree That Bends Away events scattered across Mid-Greatwood and beyond.

---

## 6. Implementation Notes (For Designers)

### 6.1 POI Data Structure

Each POI should be represented in data as:

- `poi_id` – e.g. `"GW_POI_TURNED_FIELDS"`
- `name`
- `sub_region` – `lodge_crown`, `low_eaves`, `mid_greatwood`, `ash_edge`, `hollowroot_border`
- `level_min`, `level_max`
- `poi_type_tags[]` – `["combat", "profession", "vista", "social", "corruption"]`
- `linked_systems[]` – e.g. `["hunts", "deeds", "events", "professions"]`
- `anchored_content_ids[]` – lists of Hunt IDs, event IDs, quest IDs that reference this POI.
- `travel_role_tags[]` – `["hub", "shortcut", "vista", "chokepoint", "hideaway"]`

### 6.2 Spawn & Event Budgeting per POI

Each POI defines:

- Max simultaneous **events** (avoid stacking).
- Weighting for event categories:
  - e.g. Gatherers’ Green:
    - High weight for: help/rescue, resource surprises.
    - Low weight for: pure corruption events (until later in story).

### 6.3 Visual Language Consistency

- **Lodge Crown:**  
  Warmer tones, controlled clearings, visible Lodge banners.

- **Low-Eaves:**  
  Mix of human-made objects and nature reclaiming (fences, cart ruts, growing roots).

- **Mid-Greatwood:**  
  Fuller canopy, moss, vertical layering, wildlife audio richer.

- **Ash-Edge:**  
  Grey/black ground, skeletal trees, occasional smoke and glowing embers.

- **Hollowroot Border:**  
  Root-veins, subtle lighting shifts (greenish/amber), whisper audio, strange moss growth.

---

## 7. Next Steps

1. **Lock POI count and placement** on a top-down region map.
2. **Wire Hunts & Deeds** to specific POIs with encounter designers.
3. **Assign dynamic event weights** per sub-region and POI.
4. **Review travel times** and adjust density of:
   - Shortcuts
   - Profession nodes
   - Rest stops.
5. **Cross-check Broken Tools & Attunement beats** against:
   - Resource events
   - Logging/mining/farming zones
   - Hollowroot corruption pockets.

This file should sit alongside 51–62 as the **spatial backbone** of Greatwood 1–20, ensuring that every system you’ve defined has a clear **place in the world** to live.
```
