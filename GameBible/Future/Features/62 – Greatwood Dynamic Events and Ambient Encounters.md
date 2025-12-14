Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# 62 – Greatwood Dynamic Events & Ambient Encounters

## Purpose

Define a **library of dynamic events and ambient encounters** for Greatwood that:

- Make the forest feel **alive and reactive**
- Create memorable moments between structured content (quests, dungeons, hunts)
- Tie into existing systems (Hunt Board, professions, ingredients, reputation, corruption)
- Are reusable templates for later regions (Hollowroot, Burn-Scar, etc.)

This is a **design catalog + ruleset**, not implementation code.

---

## Design Goals

1. **The forest is always doing something**

   - Even with no active quest, the player should regularly see:
     - Wildlife behavior
     - NPC activity
     - Environmental changes
   - Events should be **layered** over travel, Hunts, and gathering.

2. **Small stories, big implication**

   - Most events are short (1–3 minutes).
   - They hint at:
     - Ecological patterns
     - Lodge politics
     - Corruption slowly creeping in
   - Some events plant seeds for Hunts, Deeds, or later questlines.

3. **System-connected, not random noise**

   - Every event should connect to at least one system:
     - Hunt Board (61)
     - Greatwood Hunts & Deeds (61)
     - Ingredients & professions (51–57)
     - Lodge rep tracks (59)
     - Broken Tools & Attunement (60)
   - Even “pure ambience” should teach the player something usable.

4. **Predictable categories, unpredictable details**

   - Over time players learn:
     - “Oh, this is a rescue event.”
     - “This is a corruption spike.”
   - But **where**, **when**, and **outcome** should vary.

5. **Scales with player progress**

   - Early game:
     - Mostly ambient life, mild hazards, basic rescues.
   - Mid/late Greatwood:
     - More corruption
     - Stronger enemies
     - Higher stakes for failures.

---

## System Overview

### Event Types (High-Level)

- **Ambient** – Light, mostly non-combat, world flavor.
- **Dynamic Encounter** – Short sequence of actions, may include combat.
- **Micro-Quest** – Multi-step, self-contained, but shorter than full quests.
- **Escalation Hook** – A small scene that can lead into a Hunt/Deed.

### Scope

- **Personal Events**
  - Visible only to the triggering player/party.
  - Examples: a stag encounter, a lone lost gatherer.
- **World Events**
  - Affect a shared area state for some time.
  - Examples: fog thickening on a road, corruption flare at a grove.

### Trigger Inputs

- Region / sub-region tags (File 63)
- Time of day
- Weather
- Player proximity to:
  - Points of interest
  - Resource nodes
  - Hunt targets
- Player state:
  - Active Hunts / Deeds
  - Profession rank or equipped tools
  - Progress in key questlines (60 – Broken Tools, 61 – Hunt Board)

### Frequency & Budget

- Events should:
  - Not fire so often that they feel spammy.
  - Not be so rare that the world feels static.
- Target:
  - On average, **one notable event** per:
    - 5–10 minutes of active traversal without other content
    - Or per major journey between Lodge and a distant POI.

---

## Event Categories

1. **Ambient Life**
2. **Help / Rescue**
3. **Corruption & Weirdness**
4. **Resource Surprises**
5. **Travel Hazards**
6. **Micro-Social Lodge Touches**
7. **Rare / Golden Events**

Each category below contains multiple **event templates** with:

- ID
- Name
- Category / type
- Level band
- Trigger conditions
- Behavior / flow
- Rewards & hooks
- Variants

---

## 1. Ambient Life Events

Small, mostly non-combat scenes that make the world feel alive. Failure here usually just means “you missed it” rather than penalties.

---

### EVT-GW-AMB-01 – Stag in the Mist

- **Type:** Ambient
- **Level Band:** 1–20
- **Region Tags:** Greatwood clearings, low fog pockets
- **Trigger Conditions:**
  - Early morning (time window before full daylight)
  - Light fog weather
  - Player on foot, moving below a certain speed
- **Behavior:**
  - A **non-hostile stag** appears ahead, partly obscured by mist.
  - It slowly grazes, occasionally lifting its head to listen.
  - If the player:
    - Crouches / moves slowly:
      - The stag tolerates closer approach.
    - Sprints or makes loud noise:
      - The stag bolts and vanishes into the trees.
- **Outcomes:**
  - If player watches quietly:
    - Gains a small **Tracking XP** bump.
    - Receives an on-screen hint about noise / approach for future Hunts.
  - If player kills the stag:
    - Standard beast loot (meat, hide).
    - No penalty, but it breaks the quiet “moment”.
- **Hooks:**
  - Can be referenced in:
    - Tracking tutorials (61 – Hunt systems).
    - Lodge dialogue about “missing the beauty for the meat.”
- **Variants:**
  - Rare variant: the stag has unusual markings (subtle foreshadow of later rare Hunts).
  - Higher-level variant: replaced with a small herd.

---

### EVT-GW-AMB-02 – Flock Scatter

- **Type:** Ambient
- **Level Band:** 1–20
- **Region Tags:** Forest edges, near rivers, small clearings
- **Trigger Conditions:**
  - Player enters a clearing where:
    - A flock of birds is perched feeding on the ground.
- **Behavior:**
  - Birds feed until:
    - The player approaches too quickly.
  - They then take off in a coordinated burst, flying across:
    - A direction that subtly points to:
      - A resource node
      - A small POI
      - A Hunt-related area.
- **Outcomes:**
  - No direct loot.
  - Soft guidance:
    - The direction the flock flees is slightly biased toward interesting content.
- **Hooks:**
  - Could be used as a subtle pointer to:
    - Dynamic Hunts (61–62)
    - Secrets / caches (90)
- **Variants:**
  - Larger flocks in high-canopy zones.
  - Night variant with owls instead of daytime birds.

---

### EVT-GW-AMB-03 – Fox on the Road

- **Type:** Ambient / Light Interaction
- **Level Band:** 1–20
- **Region Tags:** Paths between Lodge and nearby outposts
- **Trigger Conditions:**
  - Player has not seen this event recently.
  - Player traveling on a road at walking or jogging speed.
- **Behavior:**
  - A fox trots along the road ahead of the player, glancing back occasionally.
  - If the player:
    - Follows calmly:
      - Fox leads them slightly off-road to:
        - A small cache (broken crate with minor loot)
        - Or a set of interesting tracks.
    - Runs or gets too close:
      - Fox darts off into brush and despawns.
- **Outcomes:**
  - Small loot (herbs, coins, or a minor ingredient).
  - Optional discovery of a track that later:
    - Unlocks a new Hunt variant after enough players follow.
- **Hooks:**
  - Tied into **90 – Secrets, Caches, and Exploration Rewards**.
  - Lodge gossip about “the fox that knows where the good scraps are.”
- **Variants:**
  - Variant where the fox is missing fur or slightly corrupted in late-game Greatwood.

---

### EVT-GW-AMB-04 – Song of the Canopy

- **Type:** Ambient (Audio-focused)
- **Level Band:** 5–20
- **Region Tags:** High-canopy areas
- **Trigger Conditions:**
  - Player stops moving for a short time in a canopy area.
  - No hostile enemies nearby.
- **Behavior:**
  - Forest ambience shifts:
    - Birdsong layers in.
    - Distant wingbeats.
  - A short “sound vignette” plays:
    - The player hears call-and-response between unseen creatures.
- **Outcomes:**
  - If the player remains still until the end:
    - Gains a tiny **Lodge rep** bonus (flavor: “attuned listener”).
  - Moving too soon just cuts it off with no penalty.
- **Hooks:**
  - Ties into attunement philosophy from **60 – Broken Tools**:
    - “The forest speaks to those who are patient.”
- **Variants:**
  - Alternate soundscapes for:
    - Morning
    - Evening
    - Pre-storm conditions.

---

### EVT-GW-AMB-05 – Shadow Overhead

- **Type:** Ambient / Foreshadow
- **Level Band:** 8–20
- **Region Tags:** Mixed, often near cliffs or ravines
- **Trigger Conditions:**
  - Player in open space.
  - Nearby spawn table includes flying predators or future bosses.
- **Behavior:**
  - A large **shadow** sweeps over the ground.
  - Player can:
    - Look up to see a distant flying creature (non-interactable).
  - The creature circles once or twice, then disappears toward:
    - A future dungeon
    - A Deed-related area.
- **Outcomes:**
  - No mechanical reward, but:
    - Adds anticipation for future content.
- **Hooks:**
  - Can foreshadow:
    - Hollowroot boss
    - Burn-Scar Descent creatures
- **Variants:**
  - Different silhouettes for different arcs:
    - Bird of prey
    - Something clearly not natural.

---

## 2. Help / Rescue Events

Small dynamic quests where someone (or something) needs assistance. These should be short but can have branching outcomes and reputation consequences.

---

### EVT-GW-HLP-01 – Lost Gatherer

- **Type:** Micro-Quest
- **Level Band:** 3–10
- **Region Tags:** Resource-rich glades, just off main paths
- **Trigger Conditions:**
  - Player has Forester or Cook profession.
  - Player passes near a glade with active resource nodes.
- **Behavior:**
  - NPC gatherer waves frantically:
    - “Over here! Please, I’m off my mark.”
  - Dialogue:
    - They admit they strayed from the marked path chasing a promising node.
- **Objectives:**
  - Option A: **Escort** them back to the main path or a safe marker.
  - Option B: **Guide** them using Lodge trail markers (the player interacts with markers).
- **Outcomes:**
  - Success:
    - Small **Lodge rep** boost.
    - Profession XP for relevant profession.
    - A small bundle of gathered materials as thanks.
  - Failure (abandon / escort death):
    - Slight rep loss with that profession wing.
    - Event can reoccur with a different gatherer later.
- **Hooks:**
  - Ties into:
    - **57 – Profession Combo Recipes** (gatherers speak about rare finds).
    - **Guard the Gatherers** Hunt (CH-GW-007).
- **Variants:**
  - High-level variant where corruption creatures ambush escort route.
  - Variant where gatherer is lying (foreshadowing poacher involvement).

---

### EVT-GW-HLP-02 – Stuck Cart on the Road

- **Type:** Help / Micro-Quest
- **Level Band:** 5–15
- **Region Tags:** Roads near slopes, muddy stretches
- **Trigger Conditions:**
  - Player traveling on drag-capable road segments.
- **Behavior:**
  - Merchant or Lodge supply cart is stuck in mud/rut.
  - NPC calls:
    - “You there, hunter. Spare a spine to push?”
- **Objectives:**
  - Use interaction prompt to:
    - Help push the cart.
  - A short skill check based on:
    - Player level
    - Optional: equipped strength-related gear.
- **Outcomes:**
  - Success:
    - Coin reward or discount token.
    - Small rep bump with Lodge logistics.
  - Partial success:
    - Cart is freed but damaged; lesser reward.
  - Refusal:
    - No penalty, but minor negative flavor bark.
- **Hooks:**
  - Some carts are hauling:
    - Ingredients (51–55)
    - Broken tools / prototypes (60)
  - NPC mentions:
    - “Road’s getting worse since the rains started” (tying into Travel Hazards).
- **Variants:**
  - Variant where a hidden ambush hits while pushing the cart.
  - Variant where cart belongs to morally gray traders.

---

### EVT-GW-HLP-03 – Cry from the Ravine

- **Type:** Rescue / Combat
- **Level Band:** 8–18
- **Region Tags:** Ravines, cliffs, broken bridges
- **Trigger Conditions:**
  - Player near a ravine edge or broken crossing.
- **Behavior:**
  - Faint cry for help from below:
    - An injured hunter or gatherer stuck on a ledge.
  - The ledge is accessible by:
    - Climb path
    - Side route along the ravine.
- **Objectives:**
  - Reach the stranded NPC.
  - Defend them from:
    - 2–3 waves of beasts or lesser corrupted creatures.
  - Optionally:
    - Use a rope / rig to pull them up faster.
- **Outcomes:**
  - Save:
    - Rep boost with Hunter’s Lodge.
    - Chance at minor Hunt bonus (e.g. “Veteran’s Tip” buff).
  - Abandon or fail:
    - Ravine later marked with a simple memorial.
- **Hooks:**
  - NPC may later appear at Lodge with:
    - Unique dialogue
    - A small follow-up task.
- **Variants:**
  - Different enemy families:
    - Wolves, spiders, ash-eaters.
  - Time-of-day variant with limited visibility.

---

### EVT-GW-HLP-04 – Panicked Beast

- **Type:** Rescue / Moral Choice
- **Level Band:** 6–14
- **Region Tags:** Areas near traps from “The Poachers’ Signs” (CH-GW-010)
- **Trigger Conditions:**
  - Player near a poacher trap location.
  - Trap table rolled as active.
- **Behavior:**
  - A non-hostile beast (stag, boar, wolf) is caught in a cruel trap.
  - It thrashes and whines/growls in pain.
- **Objectives:**
  - Player can choose to:
    - Free the beast:
      - Risk minor injury if not careful.
    - Kill the beast:
      - Gain normal loot.
    - Ignore it.
- **Outcomes:**
  - Free:
    - Small rep boost with nature-attuned Lodge NPCs.
    - Occasionally creates a **future ally beast** event (beast helps player later).
  - Kill:
    - Loot, but certain NPCs may comment critically if they hear.
  - Ignore:
    - No mechanical change, but subtle narrative weight.
- **Hooks:**
  - Strong tie-in to **The Poachers’ Signs** Hunt (CH-GW-010).
  - Later Deeds may reference whether the player tends to free or kill trapped beasts.
- **Variants:**
  - Different trap types:
    - Snares, spiked cages, pit traps.

---

### EVT-GW-HLP-05 – Ember Pot on the Road

- **Type:** Help / Social
- **Level Band:** 3–15
- **Region Tags:** Near travel rest spots, small camp clearings
- **Trigger Conditions:**
  - Player traveling near a neutral camp site
  - Time of day: evening or night
- **Behavior:**
  - A small traveling cooking crew has:
    - A struggling Ember Pot setup.
  - They ask:
    - “You look like you’ve seen a stew or two. Lend a hand?”
- **Objectives:**
  - Add **one ingredient** from player’s inventory.
  - Stir or tend the pot for a brief time.
- **Outcomes:**
  - Result determined by:
    - Ingredient quality
    - Player cooking rank.
  - Outcomes examples:
    - Great stew:
      - Temporary **food buff**.
      - Ember Kitchen rep boost.
    - Mediocre stew:
      - Small, neutral buff.
    - Disaster:
      - Mild debuff, but played for humor.
- **Hooks:**
  - Ties into **56 – The Ember Pot Never Empties**.
  - NPCs may reference player’s performance later in the Lodge kitchen.
- **Variants:**
  - Different recipes they are attempting:
    - Fish stew, root mash, festival special.

---

## 3. Corruption & Weirdness Events

Events that show Greatwood’s darker side: early signs of Hollowroot, strange ecological shifts, and unsettling phenomena. These should increase in frequency and intensity as the player progresses.

---

### EVT-GW-COR-01 – Roots that Bleed

- **Type:** Ambient / Probe
- **Level Band:** 10–20
- **Region Tags:** Near subtle corruption pockets, Hollowroot-adjacent areas
- **Trigger Conditions:**
  - Player in proximity to a corruption node (low-level).
- **Behavior:**
  - Tree roots appear red-black, pulsing gently.
  - Occasional drops of viscous fluid fall onto the ground.
- **Objectives:**
  - Optional:
    - Player can interact to **collect a sample**.
- **Outcomes:**
  - If collected:
    - Gains item: `corrupted_sap_sample`.
    - Can be used or turned in:
      - Early Alchemy (58)
      - Broken Tools follow-ups (60).
- **Hooks:**
  - Strong tie into:
    - CH-GW-012 – Whispers in the Hollow
    - D-GW-004 – The Whisper in the Hollow
  - Alchemist NPC commentary:
    - “The line between wood and flesh is not as clean as we like.”
- **Variants:**
  - Higher corruption stages:
    - Roots lash out if interacted with too roughly.
    - Spawn minor corrupted creatures.

---

### EVT-GW-COR-02 – The Still Patch

- **Type:** Ambient / Suspense
- **Level Band:** 8–20
- **Region Tags:** Random forest segments
- **Trigger Conditions:**
  - Weather calm.
  - No other events running nearby.
- **Behavior:**
  - Player walks into an area where:
    - All ambient sound abruptly cuts.
    - Wind is absent.
  - After a few seconds:
    - One of:
      - Sudden flock flight.
      - A branch cracking loudly.
      - Distant, unnatural whisper.
- **Objectives:**
  - None required; this is atmosphere.
- **Outcomes:**
  - Hidden:
    - Slight increase chance of a corruption event spawning nearby afterwards.
- **Hooks:**
  - Used as psychological buildup to more intense events.
- **Variants:**
  - Whisper text can hint at:
    - Locations
    - Names
    - Past events.

---

### EVT-GW-COR-03 – Twisting Trail

- **Type:** Dynamic / Navigation Hazard
- **Level Band:** 12–20
- **Region Tags:** Paths near Hollowroot border
- **Trigger Conditions:**
  - Player traveling on a specific segment of path.
  - Corruption influence threshold reached for region.
- **Behavior:**
  - Path seems to subtly rearrange:
    - Markers point slightly different directions.
    - Player finds themselves looping if not careful.
  - Visual:
    - Slight distortion of distant trees.
- **Objectives:**
  - Player must:
    - Use map.
    - Follow specific environmental clues:
      - Rocks scraped by Lodge boots.
      - Hunter marks.
  - Optional assistance:
    - If they completed Broken Tools (60), they can:
      - Use “attunement sense” to snap to true direction.
- **Outcomes:**
  - If navigated correctly:
    - No penalty.
    - Small tracking/awareness XP.
  - If lost:
    - Mild time loss, possible ambush.
- **Hooks:**
  - Ties to Hollowroot campaign and corruption mechanics (91).
- **Variants:**
  - Severity scales with global corruption level.

---

### EVT-GW-COR-04 – Whispering Cache

- **Type:** Corruption Probe / Reward
- **Level Band:** 14–20
- **Region Tags:** Hidden hollows, root tunnels
- **Trigger Conditions:**
  - Player in Hollowroot-adjacent areas.
  - Player has interacted with at least one corruption event before.
- **Behavior:**
  - Player hears faint whispered directions:
    - “Left… down… behind…”
  - Following them leads to:
    - A small hidden cache with:
      - Decent loot
      - But also a minor corruption exposure.
- **Objectives:**
  - Player chooses to trust or distrust the whispers.
- **Outcomes:**
  - Trust:
    - Loot + a short corruption debuff or exposure counter.
  - Distrust:
    - No loot, but remains “clean”.
- **Hooks:**
  - Previews the core choice in D-GW-004 – The Whisper in the Hollow.
- **Variants:**
  - Whisper voice can mimic familiar NPCs at higher corruption levels.

---

### EVT-GW-COR-05 – Hunters Turned

- **Type:** Combat / Moral Weight
- **Level Band:** 16–20
- **Region Tags:** Deep Greatwood, Hollowroot border zones
- **Trigger Conditions:**
  - Player high enough level and far enough in Hollowroot / corruption storyline.
- **Behavior:**
  - Player finds:
    - Broken Lodge gear.
    - Trails of bootprints that become erratic.
  - Encounter:
    - A small group of **corrupted hunters** or their lingering echoes.
- **Objectives:**
  - Decide whether to:
    - Fight to cleanse/kill.
    - Attempt limited dialogue (if possible).
- **Outcomes:**
  - Combat victory:
    - Loot + corruption-related items.
    - Lodge dialogue and Deeds can later reference:
      - “Those you had to put down.”
  - Partial success (some escape):
    - Later event spawns where they strike at travelers.
- **Hooks:**
  - Strongly tied into:
    - Deeds (D-GW-004, D-GW-005).
    - Corruption mechanics (91).
- **Variants:**
  - Echo variant where only impressions of them remain (no bodies).

---

## 4. Resource Surprise Events

Dynamic interactions with resource nodes and gathering. These events reinforce the idea that materials are not neutral and tie directly into **Broken Tools & Attunement (60)** and **Profession systems (52–57)**.

---

### EVT-GW-RES-01 – The Tree That Bends Away

- **Type:** Resource / Attunement
- **Level Band:** 4–15
- **Region Tags:** Standard logging zones, especially those flagged in 60.
- **Trigger Conditions:**
  - Player attempts to fell a tree with:
    - A non-attuned tool.
- **Behavior:**
  - On first chop:
    - The tree model slightly “leans away” visually.
  - Chop effects:
    - Sparks or grain patterns appear “against” the cut.
- **Objectives:**
  - Player can:
    - Push through and force the cut.
    - Switch to an attuned tool (if available).
- **Outcomes:**
  - Force:
    - Higher durability loss.
    - Slight chance of tool break or injury.
  - Attuned:
    - Faster felling.
    - Bonus wood yield.
- **Hooks:**
  - Reinforces lessons from **Quest 4 – Hands That Listen, Tools That Answer** (60).
- **Variants:**
  - Different tree families react with different animations/effects.

---

### EVT-GW-RES-02 – Singing Stone

- **Type:** Resource / Ambient Weirdness
- **Level Band:** 8–18
- **Region Tags:** Ore veins, rocky outcrops
- **Trigger Conditions:**
  - Player mining ore at certain nodes.
- **Behavior:**
  - With each strike:
    - A faint, musical hum plays.
  - Tone changes based on:
    - Tool type
    - Quality of swing.
- **Objectives:**
  - Optional pattern:
    - Player can attempt to strike in a sequence that “harmonizes” the tone.
- **Outcomes:**
  - If harmonized:
    - Bonus ore
    - Small chance at a rare mineral.
  - If ignored:
    - Normal yield.
- **Hooks:**
  - Ties into:
    - Future attunement expansions with stone/metal.
    - Possible puzzle hooks for dungeons.
- **Variants:**
  - Different tonal scales in different sub-regions.

---

### EVT-GW-RES-03 – Overfull Clay

- **Type:** Resource / Risk-Reward
- **Level Band:** 5–15
- **Region Tags:** Clay pits, riverbanks
- **Trigger Conditions:**
  - Player gathering clay.
- **Behavior:**
  - Clay node appears swollen, with subtle shimmer.
- **Objectives:**
  - Player can:
    - Take a normal portion.
    - Try to extract the “overfull” portion (risky action).
- **Outcomes:**
  - Normal:
    - Standard clay yield.
  - Overfull:
    - Success:
      - Yields higher-quality `fine_clay` or `ember_clay`.
    - Failure:
      - Node collapses:
        - Small stamina hit or knockdown.
- **Hooks:**
  - Used in cooking and pottery (56, 54).
  - Broken Tools follow-up:
    - Overfull clay is linked to some cracking incidents.
- **Variants:**
  - Corrupted variant with minor corruption exposure.

---

### EVT-GW-RES-04 – The Watching Grove

- **Type:** Resource / Ambient
- **Level Band:** 6–20
- **Region Tags:** Close-grouped trees in mid-Greatwood
- **Trigger Conditions:**
  - Player fells multiple trees in a tight area.
- **Behavior:**
  - Ambient:
    - Creaking intensifies.
    - Leaves rustle with no wind.
  - Short vignette:
    - Trees seem to very subtly re-orient when the player looks away.
- **Objectives:**
  - None required; it’s mostly atmospheric.
  - Optional:
    - Player can leave a small offering (wood scrap, seed).
- **Outcomes:**
  - If offering left:
    - Later, a different node in that area yields:
      - Slight bonus wood.
      - Hint of “forest remembering kindness.”
- **Hooks:**
  - Ties back to **60 – The Grain Remembers** philosophy.
- **Variants:**
  - Rare aggressive variant where a minor tree-creature spawns if player is extremely disrespectful (clears everything, no offering).

---

### EVT-GW-RES-05 – Spoiled Batch

- **Type:** Resource / Test
- **Level Band:** 6–14
- **Region Tags:** Herb/plant gathering spots
- **Trigger Conditions:**
  - Player collects herbs or mushrooms from a region tied to Broken Tools incidents.
- **Behavior:**
  - Some harvested items are:
    - Off-color
    - Smell strange
  - Game flags them as:
    - `spoiled_herb_sample`.
- **Objectives:**
  - Player can:
    - Keep them (risk using in recipes).
    - Turn them in at the Lodge for analysis.
- **Outcomes:**
  - Use in cooking:
    - High chance to ruin dish or add debuff.
  - Turn in:
    - Profession/Lodge rep.
    - Lore update about environmental spoilage.
- **Hooks:**
  - Connects to:
    - Ember Pot story (56).
    - Broken Tools analysis (60).
- **Variants:**
  - Different spoilage patterns near different corruption sources.

---

## 5. Travel Hazard Events

Dynamic threats or obstacles that spice up travel and reinforce the forest as a place with real dangers beyond simple enemy packs.

---

### EVT-GW-TRV-01 – Falling Limb

- **Type:** Hazard
- **Level Band:** 3–12
- **Region Tags:** Windy hillside forests
- **Trigger Conditions:**
  - Windy weather.
  - Player traveling under large branches.
- **Behavior:**
  - Quick audio cue:
    - Creaking wood overhead.
  - A limb breaks and falls.
- **Objectives:**
  - Player can:
    - Dodge roll.
    - Shield block.
- **Outcomes:**
  - Success:
    - No damage.
    - Small awareness/defense XP.
  - Failure:
    - Minor damage and stagger.
- **Hooks:**
  - Tutorialize **environmental telegraphs** for future dungeons.
- **Variants:**
  - Larger branches with more serious damage at higher levels.

---

### EVT-GW-TRV-02 – Sudden Fog Wall

- **Type:** Hazard / Ambience
- **Level Band:** 8–20
- **Region Tags:** Low ground, river valleys
- **Trigger Conditions:**
  - Weather shifts.
  - Night or dawn/dusk.
- **Behavior:**
  - Fog thickens rapidly in front of the player.
  - Visibility drops, sound muffled.
- **Objectives:**
  - Player chooses to:
    - Slow down, moving cautiously.
    - Push through at normal speed.
- **Outcomes:**
  - Cautious:
    - Reduced chance of random ambush.
    - Slight travel time increase.
  - Rush:
    - Higher chance of enemies or hazards spawning.
- **Hooks:**
  - Works well with “Eyes in the Fog” Hunt (CH-GW-011).
- **Variants:**
  - Rare “safe” variant where nothing attacks to keep tension unpredictable.

---

### EVT-GW-TRV-03 – Slippery Slope

- **Type:** Hazard / Movement
- **Level Band:** 5–15
- **Region Tags:** Hillsides, near cliffs
- **Trigger Conditions:**
  - Wet/weather or loose soil.
- **Behavior:**
  - Player path crosses:
    - A sloped, muddy patch.
  - Movement input while on slope:
    - Slightly altered to simulate slipping.
- **Objectives:**
  - Player must:
    - Angle movement
    - Time jumps or stops to avoid sliding into a hazard.
- **Outcomes:**
  - Success:
    - No harm.
  - Failure:
    - Slide into:
      - Minor fall damage.
      - Enemy pack.
- **Hooks:**
  - Teaches respect for terrain in later dungeons and zones.
- **Variants:**
  - Different surfaces:
    - Loose rocks
    - Leaf-covered ground.

---

### EVT-GW-TRV-04 – Roadblock

- **Type:** Hazard / Social
- **Level Band:** 10–18
- **Region Tags:** Primary roads
- **Trigger Conditions:**
  - Player traveling with some speed.
- **Behavior:**
  - Encounter a **temporary blockage**:
    - Fallen tree
    - Flooded segment
    - Rockslide.
  - Small NPC crew working on it occasionally.
- **Objectives:**
  - Player can:
    - Help clear debris.
    - Detour through the forest.
- **Outcomes:**
  - Help:
    - Short interactive segment (chopping, lifting).
    - Minor rep and XP.
  - Detour:
    - Slight danger increase.
- **Hooks:**
  - Connects to Lodge infrastructure (95).
- **Variants:**
  - Some blocks are tied to specific story events (storms, attacks).

---

### EVT-GW-TRV-05 – Stalking Eyes

- **Type:** Travel Threat
- **Level Band:** 12–20
- **Region Tags:** Dense mid/deep Greatwood
- **Trigger Conditions:**
  - Nighttime.
  - Player has been in combat recently.
- **Behavior:**
  - Occasionally, pairs of eyes glow from brush at edges of vision.
  - They disappear if directly approached.
- **Objectives:**
  - Player can:
    - Use flares, light sources, or abilities to reveal them.
- **Outcomes:**
  - Reveal:
    - Either harmless scavengers fleeing.
    - Or a pack of predators launching a preemptive strike.
  - Ignore:
    - Risk of sudden ambush later.
- **Hooks:**
  - Links to stealth/noise/visibility systems (89).
- **Variants:**
  - More eyes, more aggressive behavior at higher corruption levels.

---

## 6. Micro-Social Lodge Touches

Events that show Lodge life spilling into the woods and vice versa. Some happen near the Lodge, others involve Lodge NPCs outside.

---

### EVT-GW-SOC-01 – Apprentice on Errand

- **Type:** Social / Help
- **Level Band:** 3–12
- **Region Tags:** Paths between Lodge and nearby POIs
- **Trigger Conditions:**
  - Player travel near Lodge.
- **Behavior:**
  - A young Lodge apprentice (hunter, cook, or forester) is:
    - Jogging with an overloaded pack.
  - They drop something and scramble to pick it up.
- **Objectives:**
  - Player can:
    - Help pick up and carry some items partway.
    - Ignore.
- **Outcomes:**
  - Help:
    - Small rep with relevant wing.
    - Minor reward (snack, trinket).
  - Ignore:
    - No change, but later barks might mention “rude hunters”.
- **Hooks:**
  - Introduces lower-ranking Lodge members who can grow in later content.
- **Variants:**
  - Different apprentices with different roles.

---

### EVT-GW-SOC-02 – Friendly Rival

- **Type:** Social / Competitive
- **Level Band:** 6–20
- **Region Tags:** Hunting grounds not too far from Lodge
- **Trigger Conditions:**
  - Player has completed enough Hunts.
- **Behavior:**
  - Another hunter NPC appears, jokingly:
    - “Racing me to the mark today?”
  - They propose a quick competition:
    - First to down 3 beasts.
- **Objectives:**
  - Accept or decline.
  - If accepted:
    - Both kill beasts; game tracks counts.
- **Outcomes:**
  - Win:
    - Slight bragging dialogue.
    - Small Hunt-related bonus or buff.
  - Lose:
    - Friendly ribbing.
    - Tiny rep gain anyway (shared camaraderie).
- **Hooks:**
  - Ties into:
    - Hunt Board culture (61).
    - Co-op / social systems (88).
- **Variants:**
  - Different hunters with different fighting styles.

---

### EVT-GW-SOC-03 – Lodge Gossip by the Fire

- **Type:** Social / Lore
- **Level Band:** 1–20
- **Region Tags:** Lodge interior and immediate exterior
- **Trigger Conditions:**
  - Player idle near Lodge fire.
- **Behavior:**
  - NPCs talk about:
    - Recent events
    - Hunts
    - Player exploits
- **Objectives:**
  - Player can:
    - Listen in for a short time.
- **Outcomes:**
  - Unlocks small lore snippets.
  - Hints at:
    - New Hunts
    - Dungeons
    - Future systems.
- **Hooks:**
  - Directly tied to:
    - 64 – Lodge Social Layer
    - 96 – Narrative side threads.
- **Variants:**
  - Different topics based on player progression.

---

### EVT-GW-SOC-04 – Traveling Musician

- **Type:** Social / Ambient
- **Level Band:** 5–20
- **Region Tags:** Lodge, outposts, sometimes roads
- **Trigger Conditions:**
  - Certain days or festivals.
- **Behavior:**
  - A musician NPC plays:
    - Short music sets.
  - Player can:
    - Stop and listen.
    - Tip coin.
- **Outcomes:**
  - Listening:
    - Tiny morale buff.
  - Tipping:
    - Small rep with social wing, if defined.
- **Hooks:**
  - Seeds future musical threads, festivals (94).
- **Variants:**
  - Different songs for different seasons/events.

---

### EVT-GW-SOC-05 – The Quiet Nod

- **Type:** Social / Subtle Recognition
- **Level Band:** Any, but only after key milestones
- **Region Tags:** Lodge hallways, yard
- **Trigger Conditions:**
  - Player has completed notable Hunts/Deeds/Questlines:
    - Greatwood Deeds (61)
    - Broken Tools (60)
- **Behavior:**
  - Certain NPCs:
    - Nod or subtly adjust their tone when addressing the player.
- **Objectives:**
  - None; purely presentation.
- **Outcomes:**
  - Player feels social progression.
- **Hooks:**
  - Supports the idea of long-term identity and reputation before B100 Quarters.
- **Variants:**
  - Different nods/short lines for different accomplishments.

---

## 7. Rare / Golden Events

Very low-frequency, high-impact events. Some are purely visual, others provide unique rewards or long-tail consequences.

---

### EVT-GW-RAR-01 – The White Stag

- **Type:** Rare Hunt Hook / Visual
- **Level Band:** 12–20
- **Region Tags:** Deep Greatwood, rarely near Lodge
- **Trigger Conditions:**
  - Extremely low random chance when:
    - Player is traveling alone
    - At dawn or dusk
- **Behavior:**
  - A **white stag** appears at a distance.
  - It will:
    - Stay visible for a short time.
    - Then vanish into the trees.
- **Objectives:**
  - Player can:
    - Choose to pursue (difficult).
    - Let it go.
- **Outcomes:**
  - If pursued successfully:
    - Triggers:
      - A special one-off Hunt or Deed.
  - If ignored:
    - Nothing, other than the moment.
- **Hooks:**
  - Could lead into:
    - A rare Deed chain.
    - A special trophy.
- **Variants:**
  - None; this is intentionally singular and mythic.

---

### EVT-GW-RAR-02 – The Sleeping Giant

- **Type:** Rare Visual / Dungeon Foreshadow
- **Level Band:** 10–20+
- **Region Tags:** Near a future dungeon site (e.g. Burn-Scar Descent)
- **Trigger Conditions:**
  - Very low chance when the player traverses near certain cliffs.
- **Behavior:**
  - Player glimpses:
    - The outline of something enormous under layers of roots and rock.
  - Ground vibrates softly, as if something deep below is breathing.
- **Objectives:**
  - None explicit, but:
    - Player may mark the location mentally.
- **Outcomes:**
  - Lore entry unlocked later if player enters associated dungeon.
- **Hooks:**
  - Strongly tied to:
    - 98 – Burn-Scar Descent
    - 91 – Advanced corruption arcs
- **Variants:**
  - Subtle variations in visible shape depending on cycle/time.

---

### EVT-GW-RAR-03 – The Silent Storm

- **Type:** Rare Weather / Mood Event
- **Level Band:** 8–20
- **Region Tags:** Entire Greatwood
- **Trigger Conditions:**
  - Very rare weather roll.
- **Behavior:**
  - A storm front passes overhead:
    - Lightning visible in distance.
    - No thunder heard.
  - For the duration:
    - Certain ambient events are suppressed.
    - Others (corruption, weirdness) have increased chance.
- **Objectives:**
  - None; mood + systemic modifier.
- **Outcomes:**
  - Increases sense that Greatwood is tied into something larger.
- **Hooks:**
  - Can be linked to:
    - Major story beats.
    - Global world state changes.
- **Variants:**
  - Slight color shifts in sky for different arcs.

---

## Integration with Other Systems

### Hunt Board & Deeds (61)

- Many events:
  - Reference Hunts and Deeds directly:
    - Guards, gatherers, poachers, corruption nodes.
  - Are more likely to spawn:
    - In regions involved in currently active Hunts.
- Completing certain Deeds:
  - Alters probabilities:
    - Less random poacher harassment after D-GW-005 – A Debt in Blood.
    - More corruption flare events if Hollowroot is left unresolved.

### Greatwood Hunt Board Content (61–62)

- Events like:
  - “Guard the Gatherers”
  - “The Poachers’ Signs”
  - “Eyes in the Fog”
- Should:
  - Have ambient/dynamic variants that fire without the Hunt active.
  - Make the world feel consistent before and after those Hunts are done.

### Professions & Broken Tools (52–57, 60)

- Resource events:
  - Reinforce attunement and the idea that materials have temperament.
- After completing **Broken Tools of Greatwood**:
  - Certain events:
    - Become less punishing (fewer spontaneous tool breaks).
    - Offer more “attuned” options (alternate interactions).

### Corruption Systems (58, 91)

- Corruption / Weirdness events:
  - Are the **everyday face** of corruption mechanics.
  - Their frequency:
    - Scales with regional corruption.
- Events should:
  - Provide early alchemical samples.
  - Serve as repeated reminders without overwhelming the player.

### Lodge Social Layer & Player Identity (64, B100+)

- Micro-social events:
  - Are the day-to-day reinforcement that the player is:
    - Known.
    - Watched.
    - Moving up in Lodge opinion.
- These help make:
  - Personal Quarters (B100+)
  - Trophy walls (86)
  - Feel **earned**, not arbitrary unlocks.

---

## Tuning & Implementation Notes

- Each event template should have:
  - A **weight** per region and global state.
  - Hard caps:
    - “No more than X events per Y minutes.”
  - Cooldowns:
    - “This event cannot trigger for this player for Z minutes/hours after firing.”
- Layering rules:
  - Ambient events can overlap lightly with:
    - Travel hazards
    - Resource events
  - Corruption events should **not** stack too densely to avoid fatigue.

---

## Next Actions

1. For each event template above:
   - Convert into data entries:
     - IDs, triggers, weighting.
2. Add **3–5 more variants** per category during content pass:
   - Especially for:
     - Resource surprises
     - Micro-social Lodge events.
3. Write example **in-game text and barks** for:
   - At least 10 events (help/rescue, corruption, social).
4. Integrate with:
   - Greatwood region map (63)
   - Secrets and caches (90)
   - Corruption mechanics (91).

This file should be treated as the **Greatwood baseline** for dynamic events. Future regions copy this structure, then specialize their own catalogs while keeping the same systemic hooks and event vocabulary.
