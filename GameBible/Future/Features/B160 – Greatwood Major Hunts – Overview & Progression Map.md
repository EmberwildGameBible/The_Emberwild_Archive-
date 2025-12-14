Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B160 – Greatwood Major Hunts Overview & Progression Map (1–20)

---

## 0. PURPOSE & SCOPE

This chapter is the **macro map** of all major Hunts in the **Greatwood 1–20** experience.

It does not restate every tiny mechanic from each boss file. Instead, it:

- Defines the **full roster** of Greatwood major Hunts (1–20).
- Shows how they **fit together** in:
  - Level bands.
  - Narrative arcs.
  - System teaching (movement, wards, corruption, spores, packs, etc.).
- Establishes a **recommended progression flow**:
  - Which Hunts are likely first, second, third, etc.
  - What the player should understand/learn by each point.
- Connects Hunts to:
  - **Professions** (cooking, alchemy, foraging).
  - **Hunt Board** behavior.
  - **Lodge** projects and decor.
- Serves as the **top-level index** for:
  - B151 – Greatwood Loot & Drop System (1–20).
  - B152 – Greatwood Systems Index (Hunts, pockets, professions).
  - B153–B159 – Individual Hunts.

Think of B160 as:

> “If someone only read one chapter to understand how Greatwood Hunts work as a whole, it would be this one.”

---

## 1. REFERENCE: BANDS, LEVELS, AND HUNT TIERS

To keep everything consistent:

- **Band A** – Levels 1–5
- **Band B** – Levels 6–10
- **Band C** – Levels 11–15
- **Band D** – Levels 16–20

Hunt **tiers** (not item tiers, but encounter weight):

- **Minor Hunt**
  - Shorter, simpler fights.
  - Usually 1–2 mechanics.
  - Designed as stepping stones to majors.
- **Major Hunt**
  - Full, multi-phase boss fights.
  - Anchor points of Greatwood’s identity.
- **Keystone Hunt**
  - A major Hunt that:
    - Represents a **pillar theme** of the region.
    - Is referenced heavily in Lodge decor, quests, and systems.

In Greatwood 1–20, the core **major/keystone** Hunts are:

- B153 – Black-Sap Devourer (Corruption Keystone, 10–18)
- B154 – Elder Hollow Stag (Ceremonial Nature Keystone, 9–13)
- B156 – Hollowroot Matron (Fungal/Infestation Keystone, 13–18)
- B157 – Ward-Bear (Wardstone Keystone, 10–16)
- B158 – Greatwood Howler (Pack/Predator Keystone, 8–14) – defined in its own file.

B160 focuses on **how they relate** rather than repeating their internals.

---

## 2. GREATWOOD HUNT ROSTER (MAJOR ONLY)

### 2.1 Elder Hollow Stag (B154)

- **Role:** Nature guardian / ceremonial benchmark Hunt.
- **Band:** B–C (recommended 9–13).
- **Pocket:** `POCKET_ELDER_HOLLOW_GLADE`.
- **Fantasy:**
  - The oldest stag in Greatwood, partially hollowed by subtle Hollowroot growth.
  - A test from the forest itself: “you’ve hunted the herd, now face the Elder.”
- **Mechanical Themes:**
  - Movement and **charge dodging**.
  - Respecting environmental hazards (fungal patches, hollow tree).
  - **Hollow Resonance** stacks as early debuff management.
- **Lessons:**
  - Don’t just stand still and turret.
  - Learn to read telegraphs.
  - Realize cooking and simple profession prep matter.
- **Systems Hooks:**
  - Ties heavily into:
    - Early cooking (stag meat, roasts, stews).
    - Beginning of Hollowroot / fungal ingredient usage.
    - Lodge trophies and “you are a real hunter now” status.

---

### 2.2 Ward-Bear (B157)

- **Role:** Wardstone / shield tutorial boss.
- **Band:** B–C (recommended 10–16).
- **Pocket:** `POCKET_WARDEN_GLADE`.
- **Fantasy:**
  - A massive bear bound with wardstone plates and glyphs.
  - Originally created as a guardian ward; now overzealous in “protecting” the forest.
- **Mechanical Themes:**
  - **Shield cycles** (Ward Shield, Overcharged Shield).
  - Pillar interactions (Guardian / Reflective / Cracked).
  - Beams, reflects, and creating safe “dim zones.”
- **Lessons:**
  - Learn **not** to hit through big shields.
  - Understand “windows” vs “walls.”
  - Start thinking about positioning relative to environment objects (pillars).
- **Systems Hooks:**
  - Introduces Wardstone ingredients for:
    - Defensive talismans.
    - Ward-related alchemy.
  - Feeds into Lodge ward projects and later **Wardstone-heavy content**.

---

### 2.3 Black-Sap Devourer (B153)

- **Role:** Corruption / territorial control keystone.
- **Band:** C–D (recommended 12–18).
- **Pocket:** `POCKET_BLK_SAP_GROVE` (or similar corruption grove).
- **Fantasy:**
  - An apex predator warped by **black sap**.
  - A walking blight that bleeds corruption into ground and trees.
- **Mechanical Themes:**
  - **Corruption pools & zones** that linger.
  - Sap drip, stacking corruption effects.
  - Territorial behavior:
    - Punishing players who overextend.
    - Rewarding thoughtful kiting and control.
- **Lessons:**
  - Spatial control matters:
    - Don’t paint the whole floor in corruption.
  - Sustained fight management:
    - Avoid attrition from standing in bad ground.
- **Systems Hooks:**
  - Primary source of **Black-Sap** ingredients.
  - Anchors the “corruption” half of Greatwood’s identity.
  - Key step in Lodge projects about **purification** and forest health.

---

### 2.4 Hollowroot Matron (B156)

- **Role:** Fungal / infestation keystone.
- **Band:** C–D (recommended 13–18).
- **Pocket:** `POCKET_HOLLOWROOT_NEST`.
- **Fantasy:**
  - A rooted, fungal “mother” entity growing Hollowroot beasts.
  - Represents infestation and mycelial overgrowth.
- **Mechanical Themes:**
  - **Fungal creep over time** – arena grows more hostile.
  - Spore Sickness stacks and detox management.
  - Add ecology:
    - Killing things in the wrong place upgrades fungal hazards.
- **Lessons:**
  - Add control matters as much as boss damage.
  - Placement of kills and control of environment are critical.
  - Prep food/brews specifically for **spore and DoT fights**.
- **Systems Hooks:**
  - Core source for Hollowroot-specific ingredients and detox recipes.
  - Lodge projects for **containing forest disease**.
  - Ties strongly to foraging/alchemy knowledge of fungi.

---

### 2.5 Greatwood Howler (B158 – Pack Hunt)

> Detailed design lives in B158 – this section is the high-level positioning for the progression map.

- **Role:** Pack/Predator keystone; teaches **multi-target / threat** gameplay.
- **Band:** B–C (recommended 8–14).
- **Pocket:** `POCKET_HOWLER_DEN` or equivalent.
- **Fantasy:**
  - A dominant howler leading a pack that “sings” with the forest.
  - Greatwood’s predator aspect in chorus form.
- **Mechanical Themes:**
  - Pack coordination:
    - Leader howler plus supporting pack members.
  - Howl-based global effects:
    - Pack frenzy.
    - Vulnerability windows.
  - “Hunt or be hunted” pacing:
    - Phases where the pack **circles** vs **dives in**.
- **Lessons:**
  - Target prioritization:
    - Kill helpers / buffers first.
    - Deal with high-threat adds.
  - Positioning against flanking enemies.
  - Introduction to **audio telegraphs** (howls indicating upcoming sequences).
- **Systems Hooks:**
  - Howler pelts, fangs, and “warded howler tooth” type trinkets.
  - Lodge décor showing pack trophies.
  - Some synergy with Wardstone (warded howler variants).

---

## 3. GREATWOOD HUNT THEMES BY “FACE” OF THE FOREST

Greatwood as a region is intentionally **multi-faceted**. Each keystone Hunt is one “face” of the same forest.

### 3.1 Nature / Ceremony – Elder Hollow Stag

- Forest as:
  - Old, wise, and somewhat tragic.
- Player is:
  - Being tested, not just killing a monster.
- Color:
  - Warm greens, soft golds, browns.
- Systems:
  - Intro to Hunts, early cooking, early Lodge prestige.

### 3.2 Ward / Protection – Ward-Bear

- Forest as:
  - Defensive, shielded, territorial in a magical way.
- Player is:
  - Colliding with someone else’s old solution (the ward ritual).
- Color:
  - Blues, pale greens, stone grays.
- Systems:
  - Wards, shields, reflect mechanics, defensive ingredients.

### 3.3 Corruption / Bleeding Wound – Black-Sap Devourer

- Forest as:
  - Actively sick and bleeding out.
- Player is:
  - Plugging a hole in something that’s trying to rot.
- Color:
  - Blacks, deep purples, sick greens.
- Systems:
  - Corruption DoTs, “don’t stand in that,” cleansing, anti-corruption food/brews.

### 3.4 Infestation / Rot – Hollowroot Matron

- Forest as:
  - Overgrown to the point of self-destruction.
- Player is:
  - Cutting back a proliferating growth, not a singular villain.
- Color:
  - Damp greens, browns, off-whites of fungus, dim glows.
- Systems:
  - Add waves, spore management, long-fight planning.

### 3.5 Predator / Pack – Greatwood Howler

- Forest as:
  - Alive, hunting, and watching you.
- Player is:
  - Sometimes the prey, sometimes the hunter.
- Color:
  - Moonlit blues, grays, eyeshine.
- Systems:
  - Pack AI, threat juggling, global howls as timing signals.

Together, these Hunts ensure:

- Greatwood is not “just trees.”
- Each major Hunt feels like a **pillar** of the regional identity.

---

## 4. PROGRESSION FLOW – RECOMMENDED HUNT ORDER

This section defines a **default progression path**. Players may encounter Hunts in different orders, but the system should gently funnel them into a curve that feels good.

### 4.1 Early Greatwood (Bands A–B, Levels 1–10)

**Goals:**

- Teach:
  - Basic combat.
  - World exploration.
  - Professions (intro-level).
- Prepare player for:
  - Their first **Major Hunt**.

**Content Types:**

- Minor Hunts:
  - Small stags, boars, wolves, Hollowroot beastlets.
- Micro-events:
  - An “off-duty” wardstone.
  - Small fungal patches.
  - Traces of black sap.

**Hunt On-Ramps:**

1. **Greatwood Howler (B158) – Entry Major**
   - Often the **first major Hunt** suggested on the Hunt Board.
   - Requirements:
     - A baseline number of wolf/howler contracts.
     - Player level in ~8–10 range.
   - Rationale:
     - Pack Hunt teaches basics of:
       - Target priority.
       - Not standing in the middle of everything.
       - Reading howls as telegraphs.

2. **Elder Hollow Stag (B154) – Early to Mid Major**
   - Becomes available once:
     - Player has hunted enough stags and done introductory Hunts.
   - Rationale:
     - Feels “natural” story-wise:
       - “You hunted lesser stags. Now the Elder comes into play.”

**Player Experience:**

- By level ~10, an engaged player will have:
  - Killed a few minor Hunts.
  - Faced at least one Major:
    - Howler or Elder Stag (or both).

---

### 4.2 Mid Greatwood (Bands B–C, Levels 8–16)

**Goals:**

- Steadily ramp complexity and stakes.
- Introduce:
  - Wards.
  - Corruption.
  - Fungal mechanics (lighter first, heavy later).

**Mid-Level Major Hunts:**

1. **Ward-Bear (B157) – Shield & Wardstone Major**
   - Ideal after:
     - Howler and/or Elder Stag.
   - Requirements:
     - At least one wardstone-adjacent quest or event.
     - Some Lodge ward project progress.
   - Difficulty:
     - Medium + mechanical, punishes mindless DPS.

2. **Black-Sap Devourer (B153) – Corruption Major**
   - Appears after:
     - Player has seen multiple corrupted pockets.
     - Lodge expresses concern about black sap spreading.
   - Difficulty:
     - Higher; recommended after at least one other Major.
   - Ramp:
     - Corruption puddles, bleedouts, attrition.

3. **Hollowroot Matron (B156) – Fungal Major**
   - Unlocks somewhat later than Devourer, but not strictly.
   - Requirements:
     - Hollowroot contracts and fungal-event completions.
   - Complexity:
     - Significant; emphasises add waves and environment.

**Branching Experience:**

- At this stage, player choices may diverge:
  - Some go:
    - Howler → Stag → Ward-Bear.
  - Others:
    - Stag → Devourer → Matron.
- B160 ensures:
  - All these orders are valid.
  - Systems scale to handle non-linear completions.

---

### 4.3 Late Greatwood (Band D, Levels 16–20)

**Goals:**

- Let players **clean up** remaining Hunts.
- Use Greatwood as:
  - A staging ground for next regions.
  - A place to polish skill sets.

**End-State Variety:**

By ~18–20, players should have:

- Completed:
  - Howler.
  - Elder Hollow Stag.
  - Ward-Bear.
  - Black-Sap Devourer.
  - Hollowroot Matron.
- Possibly revisited:
  - Some Hunts on higher difficulty settings.
  - Some Hunts as “Lodge hunts” with extra conditions.

**Late Options:**

- “Challenge” variants:
  - Night Howler.
  - Overgrown Matron.
  - Intensified Ward-Bear with fewer stable pillars.
- Lodge meta:
  - Hunt tokens and trophies unlocking:
    - Region-wide buffs.
    - Unique cosmetics.
    - Access to future expansion Hunts.

---

## 5. HUNT BOARD BEHAVIOR & PLAYER JOURNEY

### 5.1 Hunt Board States

The **Greatwood Hunt Board** should feel like a living object that changes as the player grows.

Possible high-level states:

1. **State 1: New Hunter**
   - Display:
     - Minor Hunts.
     - First “teaser” cards for Howler / Stag, but greyed or hinted.
   - Requirements:
     - Few completions; low Lodge standing.

2. **State 2: Aspirant**
   - After first Minor Hunts:
     - Howler and/or Elder Stag majors appear as selectable bounties.
   - Board UI:
     - Highlights “recommended first major Hunt.”

3. **State 3: Proven**
   - After 1–2 major Hunts:
     - Ward-Bear hints.
     - Devourer and Matron show as **“threat” posters** (not yet huntable).
   - Board messages:
     - “Reports of black sap thickening in the East.”
     - “Fungal growth reported in hollow bowls to the South.”

4. **State 4: Defender**
   - After Ward-Bear and at least one corruption/fungal Hunt:
     - All remaining majors appear.
     - Some flagged as “Priority Threats.”
   - The Board:
     - Reflects increased stakes.
     - Maybe adds “Lodge-wide Threat” meter.

5. **State 5: Greatwood Veteran**
   - After all majors are cleared at least once:
     - Board adds:
       - Challenge variants.
       - Rotating “Hunt of the Week” incentives.
   - Lodge NPC reactions:
     - Recognize player as a seasoned hunter.

### 5.2 Presentation: Hunt Cards & Grouping

For clarity, Major Hunts can be grouped on the Board by **forest face**:

- “Nature Tests”:
  - Elder Hollow Stag.
- “Predators”:
  - Greatwood Howler.
- “Corruption Threats”:
  - Black-Sap Devourer.
  - Hollowroot Matron.
- “Wards Gone Wrong”:
  - Ward-Bear.

This grouping helps:

- New players understand:
  - “What kind of problem am I signing up for?”
- Designers tune:
  - When each category becomes available.

---

## 6. INTERACTION WITH PROFESSIONS & LODGE

### 6.1 Cross-Hunt Profession Arcs

Cooking, alchemy, and foraging should have **visible arcs** across these Hunts.

#### Cooking

- Early:
  - Simple roasts and stews for:
    - Stamina.
    - Basic health regen.
  - Used heavily vs:
    - Elder Stag.
    - Greatwood Howler.

- Mid:
  - Specialized dishes:
    - Anti-corruption.
    - Anti-spore.
    - Ward resistance.
  - Emphasized in:
    - Ward-Bear.
    - Devourer.
    - Matron.

- Late:
  - Feast-level recipes:
    - Matron Detox Feast.
    - Wardbear Ironstew.
    - Elder/Devourer roasts.
  - Used when repeating Hunts or tackling variants.

#### Alchemy

- Early:
  - Simple stat boosters and basic healing.
- Mid:
  - **Targeted mitigation**:
    - Spores, ward damage, corruption, pack control.
- Late:
  - Complex, multi-ingredient brews exclusive to:
    - Hollowroot Matron.
    - Black-Sap Devourer.
    - Ward-Bear.

#### Foraging

- Early:
  - Teaches the player:
    - Where ingredients live (stag pockets, boar pockets, fungi).
- Mid:
  - Foraging in **Hunt pockets** themselves:
    - Wardstone fragments in Ward-Bear glade.
    - Sap cavities near Devourer.
    - Fungal gardens near Matron.
- Late:
  - Rare components for top-tier recipes and trinkets:
    - Only drop/forage in Hunt-adjacent zones.

---

### 6.2 Lodge Projects Linked to Hunts

Each keystone Hunt should advance at least one **Lodge meta-project**.

Examples:

- **Elder Hollow Stag**
  - Project: “Honor the Elder”
  - Effects:
    - Cosmetic: Antlers mounted prominently, ceremonial space.
    - Mechanical: Small lodge buff to base stamina or regen.

- **Ward-Bear**
  - Project: “Reforged Ward-Bear Shell”
  - Effects:
    - Cosmetic: Ward-Bear stone mask / shield wall.
    - Mechanical: Minor ward/arcane reduction across Greatwood Hunts.

- **Black-Sap Devourer**
  - Project: “Seal the Black-Sap Veins”
  - Effects:
    - Cosmetic: Purified sap displays; sealed barrels.
    - Mechanical: Slightly reduced corruption presence in some pockets.

- **Hollowroot Matron**
  - Project: “Contain Hollowroot Spread”
  - Effects:
    - Cosmetic: Containment lab/wing with fungal specimens.
    - Mechanical: Small reductions to spore DoT or spawn rates in some non-Hunt content.

- **Greatwood Howler**
  - Project: “Songs of the Pack”
  - Effects:
    - Cosmetic: Trophy wall of pelts, totems.
    - Mechanical: Slightly improved **group buffs** for multi-player Hunts (e.g., minimal party-wide stat bonus).

The idea:

- Clearing Hunts **changes your hub**.
- Visual + mechanical payoffs are both present.

---

## 7. DIFFICULTY CURVE & PLAYER SKILL GROWTH

### 7.1 Skill Domains Covered

Across all major Hunts, we intentionally cover:

1. **Positioning & Movement**
   - Elder Stag (charges, stomps, hollow tree).
   - Devourer (ground pools).
2. **Shields & Timing**
   - Ward-Bear (Ward Shield, Overcharged Shield).
3. **Add Management**
   - Greatwood Howler (pack).
   - Hollowroot Matron (waves, empowered adds).
4. **Environment Interaction**
   - Ward-Bear (pillars).
   - Hollowroot Matron (pads, pits).
   - Elder Stag (fungal ring, tree).
5. **Resource & Status Management**
   - Spore Sickness (Matron).
   - Hollow Resonance (Stag).
   - Corruption stacks (Devourer).

The **Greatwood major Hunts** should collectively teach:

> “If you can handle all of these, you’re ready for the next regions.”

### 7.2 Difficulty Targets (Per Hunt)

Rough target for **first-time properly leveled** groups:

- Greatwood Howler:
  - 40–60% success rate after 1–3 pulls.
- Elder Hollow Stag:
  - 30–50% success after 2–3 pulls.
- Ward-Bear:
  - 30–40% success after 2–4 pulls.
- Black-Sap Devourer:
  - 20–40% success after 3–5 pulls.
- Hollowroot Matron:
  - 20–40% success after 3–5 pulls.

Repeat runs (with better gear and knowledge):

- Should trend toward 70–90% success.

---

## 8. TELEMETRY & BALANCED DESIGN LOOP (ACROSS HUNTS)

B160 defines what **telemetry questions** each Hunt must answer to keep the whole ladder healthy.

### 8.1 Key Metrics Per Hunt

For each major Hunt, log:

- Attempts vs kills.
- Average time to kill.
- Top death causes:
  - By ability.
  - By phase.
- Specific mechanic stats:
  - Elder Stag:
    - Average Hollow Resonance stacks.
    - Fungal patch triggers.
  - Ward-Bear:
    - Damage reflected by Ward Shield.
    - Pillar shatters by type.
  - Devourer:
    - Time spent in corruption pools.
    - Number of sap puddles active vs fight time.
  - Matron:
    - Spore Sickness stack distribution.
    - Fungal Saturation at wipe/kill.
    - Add lifetime stats.
  - Howler:
    - Time adds remain alive.
    - Frequency of pack howls, how many players affected.

### 8.2 Cross-Hunt Comparisons

Use B160 to:

- Compare:
  - Average difficulty across Hunts at similar band.
- Adjust:
  - Which Hunts unlock when.
  - How strongly the Hunt Board nudges toward easier Hunts first.

Examples:

- If Devourer wipes are drastically higher than Matron at similar levels:
  - Devourer could unlock slightly later.
  - Or gain better telegraphs / lower baseline damage.
- If Ward-Bear is easier than Howler for most players:
  - Board can recommend Ward-Bear as the **first** major for some playstyles.

---

## 9. SUMMARY: WHAT GREATWOOD HUNTS ACHIEVE TOGETHER

By the time a player has **completed the full Greatwood major Hunt ladder** (Howler, Elder Stag, Ward-Bear, Black-Sap Devourer, Hollowroot Matron), they should:

1. **Understand the Forest**
   - Five faces:
     - Ceremonial Nature (Stag).
     - Predator Pack (Howler).
     - Wardstone Protection (Ward-Bear).
     - Corruption Wound (Devourer).
     - Infestation Rot (Matron).

2. **Understand the Systems**
   - How loot bands and Hunt rewards work (B151).
   - How the Hunt Board evolves and drives them (B152/B160).
   - How professions matter to survival and progression:
     - Food.
     - Brews.
     - Foraged reagents.

3. **Be Skilled Up for Next Regions**
   - They will have:
     - Dodged charges and beams.
     - Managed shields and windows.
     - Controlled adds and environment hazards.
     - Prepared for long fights via professions.

4. **See Greatwood as a Real Place**
   - Lodge visuals, trophies, and projects:
     - Reflect what they’ve done.
   - Greatwood is no longer an abstract “starter zone”:
     - It becomes a **home base** with history they earned.

---

_End of B160 – Greatwood Major Hunts Overview & Progression Map (1–20)_
