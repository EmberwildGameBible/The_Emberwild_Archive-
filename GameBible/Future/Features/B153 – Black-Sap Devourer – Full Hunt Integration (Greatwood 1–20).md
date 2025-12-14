# B153 – Black-Sap Devourer – Full Hunt Integration (Greatwood 1–20)

---

## 0. PURPOSE & SCOPE

This file defines the **Black-Sap Devourer** as a fully integrated **Greatwood Hunt** for levels 10–18 (primary band: B/C) and sets it into the larger Greatwood 1–20 ecosystem.

It covers:

- Identity, story, and visual/audio fantasy.
- Unlock conditions and Lodge integration.
- Arena layout and environment hazards.
- Full fight structure:
  - Approach → Phase 1 → Phase 2 → Phase 3 (soft enrage).
- Role expectations across **combat roles** and **professions**:
  - Hunters (melee/ranged DPS, tanks, supports).
  - Cooks (prep and mid-fight consumables).
  - Alchemists (wards, bombs, brews).
  - Foragers/Woodworkers (environmental tools).
- Rewards and loot integration:
  - Ingredients (51, 55).
  - Cooking & brewing hooks (52–53, 58).
  - Lodge trophies & projects (57, B162).
  - B151 Greatwood loot tables and specialty/pity hooks.
- Implementation-facing notes for encounter scripting.

Black-Sap Devourer should feel like:

> “You went too far into the black-sap grove. Now the grove itself has decided to eat you.”

---

## 1. HUNT IDENTITY & FANTASY

### 1.1 High-Concept Tagline

- **Tagline:** “The grove that drinks hunters.”

The Black-Sap Devourer is:

- A **massive, corrupted stag-thing** fused with Hollowroot growths and black-sap tumors.
- A predator that lures prey into an area saturated with choking, sticky sap.
- Less “a monster in a forest” and more “a forest that has decided to use a monster as its mouth.”

### 1.2 Visual Motifs

- Body
  - Stag skeleton warped and swollen with sap-filled sacs.
  - Exposed ribcage with visible black-sap flow pulsing like a heart.
  - Antlers twisted into hooks and branches dripping viscous sap.
- Environment
  - Trees with darkened bark and glistening black runnels.
  - Root-like tendrils snaking along the ground toward pools of sap.
  - Occasional **amber-like globules** hanging from branches.
- UI / FX
  - Black-sap puddles are glossy, almost mirror-like, with slow bubble pops.
  - Corruption stacks represented with **sap blotches** encroaching on the edge of the HUD.

### 1.3 Audio Motifs

- Ambience:
  - Wet, sticky sounds; slow drip, distant “cracks” of hardened sap breaking.
  - Muffled forest noise, as if sound is absorbed by the sap.
- Boss:
  - Hollow, echoing stag bellows mixed with gurgling, liquid resonance.
  - Heavy, sucking footsteps when moving through his own sap.
- Abilities:
  - **Sap spit:** sharp pressure hiss → wet smack → slow “tearing” noise as it hardens.
  - **Roots:** creaking wood, fibrous ripping, soil shifting before they emerge.

### 1.4 Emotional Beats

Player should feel:

- **Curiosity** entering the grove (“this is weird, why is everything so dark and sticky?”).
- **Dread** as the environment itself starts participating (ground hazards, roots).
- **Panic** when sap levels rise and movement becomes constrained.
- **Triumph + disgust** when they finally kill the Devourer and the grove exhales.

This is a **mid-Greatwood corruption boss**, not a purely endcap. It establishes what “corrupted Greatwood” feels like.

---

## 2. UNLOCK CONDITIONS & STORY FRAMING

### 2.1 Recommended Unlock Band

- Designed for **levels 12–16** with some flex above and below.
- Ideal entry **Phase C** (11–15) from B152:
  - After players have:
    - Completed at least one earlier Hunt (Elder Stag or Ward-Bear).
    - Seen Hollowroot corruption in lesser pockets.
    - Unlocked a few key recipes and basic alchemy.

### 2.2 Prerequisites (Design-Level)

The Devourer unlocks on the Hunt Board when:

- Player has completed:
  - **1x early Hunt** (Elder Hollow Stag or Ward-Bear).
  - **N Hollowroot activities**, e.g.:
    - 2–3 Hollowroot pockets cleared.
    - One mini-event involving black-sap pools.
- Player has delivered at least one **Lodge project** related to:
  - “Studying the sap” or “Fortifying against corruption.”

This allows NPCs to say:

> “You’ve seen the sap in the shallow pockets. That’s just leakage. Something deeper is feeding it.”

### 2.3 Narrative Setup

**Quest text tone (paraphrased):**

- The Lodge has tracked unusually aggressive black-sap growth in a specific pocket.
- Foragers have gone missing; a returning hunter speaks of:
  > “An antlered shadow wading through a pool that tried to pull me under.”
- The Hunt briefing:
  - Emphasizes **terrain**, not just the boss.
  - Warns about **sap poisoning** and recommends:
    - Certain stews (anti-corruption).
    - Certain brews (movement, cleansing).

### 2.4 NPC & Lodge Integration

- Lodge NPCs involved:
  - **Huntmaster** – posts the Hunt, explains mechanics in diegetic terms.
  - **Sap-studying Scholar/Alchemist** – gives optional prep quests to craft brews.
  - **Cook** – recommends stews that counteract corruption.

Hook into B162:

- Completing this Hunt:
  - Unlocks new Lodge décor:
    - A sap-stained antler display.
    - A blackened tree segment with hardened sap.
  - Progresses a Lodge project line:
    - “Black-Sap Containment.”

---

## 3. ARENA & ENVIRONMENT DESIGN

### 3.1 Location & Pocket

Pocket tag: `POCKET_BLACK_SAP_GROVE`

- Geography:
  - Depressed grove, slightly bowl-shaped.
  - Surrounded by thick trees and Hollowroot-infested trunks.
  - One primary entry trail from safer Greatwood.
- Verticality:
  - Slightly lower central area where sap pools gather.
  - Raised root-clumps / ridges around edges to create “safe spots” from sap.

### 3.2 Layout Zones

Divide the arena into zones:

- **Zone A – Outer Ring (Relatively Safe)**
  - Firmer ground, scattered small sap patches.
  - Root-clusters that can be used for line-of-sight and cover.
- **Zone B – Inner Ring (Hazardous)**
  - Frequent sap puddles that periodically expand/contract.
  - Sap-coating on tree roots; movement penalties if stepped on.
- **Zone C – Heart Pool**
  - Central, larger sap basin.
  - Devourer frequently paths through or stands in this.
  - Late phase: sap in this zone rises and begins to spread outward.

### 3.3 Hazard Types

- **Static Sap Puddles**
  - Always present, small radius.
  - Deals low, stacking corruption damage if stood in.
- **Growing Sap Puddles**
  - Spawn during fight mechanics.
  - Start small, then expand, then harden (hazard changes).
- **Hardened Sap Masses**
  - Once fully hardened, act as:
    - Line-of-sight blockers.
    - Terrain obstacles.
  - Can be broken with effort, leaving a temporary “safe” patch.

### 3.4 Navigation & Readability

Design goals:

- Players must **constantly reposition** to avoid sap spread.
- There is always **somewhere safe**, but never too convenient.
- Visual cues:
  - Sap grows with a clear “creeping border” effect.
  - Hardened sap develops a crusty texture and a different color/value.

---

## 4. MECHANICAL THEMES & OVERVIEW

### 4.1 Core Themes

1. **Territory Control**
   - Sap pools shrink the space.
   - Players must guide the boss and manage where sap lands.

2. **Corruption Management**
   - Standing in sap or getting hit by certain attacks builds **Black-Sap Corruption** stacks.
   - High stacks result in:
     - Periodic health drain.
     - Reduced healing taken.
     - Slowed movement.

3. **Target Priority & Environmental Use**
   - Adds and rooted “sap hearts” must be killed/destroyed.
   - Breaking hardened sap can open safe areas but costs DPS/time.

4. **Preparation Matters**
   - Food and brews specifically targeting:
     - Corruption resistance.
     - Movement speed.
     - Cleanse effects.
   - Hunts become a stress test for **Greatwood cooking/alchemy** systems.

### 4.2 Fight Structure Overview

Phases:

- **Phase 0 – Approach**
  - Minor sap hazards; Devourer not yet fully enraged.
- **Phase 1 – Sap Awakens**
  - Basic pattern: frontal swipes, sap spit cones, small pools.
- **Phase 2 – Grove Collusion**
  - Roots, adds, expanding sap; players juggle boss + environment.
- **Phase 3 – Heart Burst (Soft Enrage)**
  - Central pool rises; high sap uptime.
  - Players must kill the boss before the grove becomes unplayable.

---

## 5. PHASE BREAKDOWNS

### 5.0 Shared Mechanics & Systems

Before phases, define:

- **Black-Sap Corruption (Status)**
  - Stackable debuff.
  - Each stack:
    - Slightly reduces healing received.
    - Adds minor damage taken from sap interactions.
  - If stacks above threshold `N`, player periodically **vomits sap**:
    - Small puddle spawns at their feet.

- **Sap Density Meter (Encounter Meter)**
  - A hidden or optional visual meter representing total sap in the arena.
  - Drives:
    - Thresholds for new mechanic triggers.
    - Soft enrage conditions.

---

### 5.1 Phase 0 – Approach & First Contact

**Trigger**

- Players enter `POCKET_BLACK_SAP_GROVE` and cross a threshold (e.g. a fallen tree).
- Ambient sap density is low but rising.

**Gameplay**

- A few lesser corrupted beasts (sentries) guard the path.
- Small sap puddles required to be navigated.
- Devourer is seen feeding at the central pool, then roars and moves to engage.

**Purpose**

- Teaches:
  - “Don’t stand in the shiny black stuff.”
  - “The grove has zones; some places feel worse than others.”

---

### 5.2 Phase 1 – Sap Awakens

**HP Range**

- Devourer at 100% → ~70% HP.

**Mechanics**

1. **Basic Attacks**
   - Heavy front swipes.
   - Occasional antler gore charges (targeted at furthest or highest threat).

2. **Black-Sap Spit (Cone)**
   - Telegraph: Devourer rears back, sap glows in mouth.
   - Fires a short cone of sap:
     - On hit: moderate damage + 1 corruption stack.
     - Leaves **small sap puddles** on ground.

3. **Sap Drip Zones**
   - Random small puddles appear in the inner ring.
   - Provide early practice moving out of them.

**Player Checks**

- Tanks:
  - Learn facing/positioning.
- DPS:
  - Learn not to stand in front arcs.
- Everyone:
  - Issues of movement and puddle avoidance.

---

### 5.3 Phase 2 – The Grove Joins In

**Trigger**

- Devourer reaches ~70% HP.
- Sap Density meter passes first threshold.

**New Mechanics Added**

1. **Rootburst**
   - Roots surge in a telegraphed ring or wedge.
   - If hit:
     - Short root/snare.
     - 1–2 corruption stacks.
   - Often combos with sap spit to trap players in puddles.

2. **Sap-Heart Bulbs (Adds)**
   - Bulbous sap nodes emerge from the ground.
   - Channel sap into existing puddles, causing them to:
     - **Spread** outward.
     - Increase damage ticks.
   - Must be destroyed quickly to prevent arena from shrinking too much.

3. **Hollowroot Pack Adds**
   - Corrupted smaller beasts spawn from the outer ring.
   - Harass healers/backline; can be kited into “safe zones” or AoE’d down.

**Environmental Shift**

- Sap in the central pool slightly rises.
- Some outer ring areas gain **thin sap films** (small movement penalty only).

**Player Checks**

- Group must:
  - Coordinate target priority (sap-hearts vs boss vs adds).
  - Keep the Devourer away from already-heavy sap zones.
  - Use food/brews for corruption mitigation.

---

### 5.4 Phase 3 – Heart Burst (Soft Enrage)

**Trigger**

- Devourer reaches ~35–40% HP.
- Sap Density meter crosses second threshold.

**New Mechanics Added**

1. **Heartburst Roar**
   - Devourer slams chest; central pool surges.
   - Sap rapidly expands from center, then stabilizes at a **higher baseline level**.
   - Some previously safe ground is now either:
     - Soft sap (slow + low damage).
     - Or fully hazardous pools.

2. **Black-Sap Flood (Wave)**
   - Periodic **wave of sap** rolling outwards:
     - Similar to a shockwave, but with sap.
     - Players must jump, move behind hardened sap, or use movement abilities.

3. **Leeching Antlers**
   - Devourer’s attacks:
     - Apply increased corruption.
     - Heal the Devourer slightly when hitting highly corrupted players.
   - Encourages chained cleanses and careful stack management.

4. **Accelerated Rootburst**
   - Rootburst occurs more frequently.
   - Combos with Flood and saps the arena further.

**Soft Enrage Condition**

- If fight drags too long:
  - Sap Density meter fills.
  - Arena becomes nearly entirely sap:
    - Movement/visibility heavily impaired.
    - Damage ramps up.
  - Practical wipe.

**Player Checks**

- Do they:
  - Have enough DPS to push through last ~35%?
  - Use cleanses and anti-corruption properly?
  - Manage arena real estate via sap-heart destruction?

---

## 6. ABILITY LIST & TUNING KNOBS

Below is a **data-style breakdown** so scripters can port directly into Lua tables.

> Numbers are **placeholder**; they communicate relationships, not exact values.

### 6.1 Core Boss Abilities

- `DEVOURER_BASIC_SWIPE`
  - Target: front arc, melee range.
  - Damage: medium physical.
  - Cooldown: 2–3s.
  - Notes: baseline tank check.

- `DEVOURER_ANTLER_GORE`
  - Target: random mid/far target.
  - Telegraph: brief pause + antler glow.
  - Damage: high physical.
  - Secondary: small knockback.
  - Cooldown: 10–14s.

- `DEVOURER_BLACK_SAP_SPIT`
  - Target: cone from mouth.
  - Damage: medium magic.
  - On hit: +1 corruption stack.
  - Ground effect: small sap puddle (5–8s lifetime before Phase 2; longer in Phase 3).
  - Cooldown: 8–12s.

### 6.2 Phase 2 Abilities

- `ROOTBURST_LINE` / `ROOTBURST_RING`
  - Target: line or ring patterns.
  - Effect: root/snare ~1.5s.
  - On hit: +1–2 corruption stacks.
  - Cooldown: 12–16s (in Phase 2), 8–12s (Phase 3).

- `SAP_HEART_SPAWN`
  - Spawns 1–3 sap-heart bulbs around existing puddles.
  - Each heart:
    - Periodically “feeds” attached puddle to expand.
    - Has low HP but must be killed quickly.
  - Baseline spawn interval: 20–30s in Phase 2; faster in Phase 3.

### 6.3 Adds

- `HOLLOWROOT_BEASTLING`
  - Small corrupted mobs:
    - Quick melee swipes.
    - Slight corruption application on hit.
  - Spawn: wave of 3–6 at pocket perimeter.

Add waves can be tuned for group size / difficulty modes.

### 6.4 Phase 3 Abilities

- `HEARTBURST_ROAR`
  - One-time transformation when Phase 3 begins.
  - Triggers global sap level increase and new puddle distribution.

- `BLACK_SAP_FLOOD`
  - Visual: wave of sap rolling outward.
  - Mechanic: players must:
    - Jump over wave.
    - Or hide behind hardened sap.
  - On fail: heavy damage + multiple corruption stacks.

- `LEECHING_ANTLERS`
  - Passive on boss basic attacks.
  - On hit:
    - Applies additional corruption.
    - Heals Devourer by a small amount (scaled by victim’s corruption stacks).

---

## 7. ROLE EXPECTATIONS & PROFESSION INTEGRATION

### 7.1 Combat Roles (Generic)

We keep roles **system-agnostic**; the exact names/abilities depend on Emberwild’s class design.

- **Frontliners / Tanks**
  - Control boss facing and positioning:
    - Keep Devourer out of densest sap zones when possible.
  - Soak basic swipes and gore, with mitigation.
  - Grab Hollowroot add aggro away from backline.

- **Melee DPS**
  - Dance around puddles while staying on boss/priority targets.
  - Help burst sap-hearts when they spawn nearby.
  - Provide interrupts/CC on key casts if available.

- **Ranged DPS**
  - Primary answer for:
    - Sap-heart bulbs.
    - Spread-out adds.
  - Call out safe zones and heavy sap patches over VO/text.

- **Healers / Support**
  - Manage:
    - Corruption cleanse effects.
    - Movement buffs for Flood / Rootburst combos.
  - Use food/brew bonuses to handle heavy healing windows (Phase 3).

### 7.2 Cook Role

From B151 + Cooking chapters:

- **Pre-Hunt Preparation**
  - Cook can propose a “Hunt Menu”:
    - 1 main stew focused on **corruption resistance or cleanse**.
    - 1 secondary dish for **movement speed or stamina**.
  - Optional dessert/side that:
    - Increases healing throughput or regen.

- **Mid-Hunt Options**
  - Certain higher-tier meals may:
    - Provide **emergency cleanse** on use.
    - Temporarily reduce sap damage at high corruption stacks.

Goal: Hunts **feel better** when players take cooking seriously.

### 7.3 Alchemist Role

- **Brews & Tonics**
  - Anti-corruption tonics:
    - Reduce stack gain or accelerate decay for X seconds.
  - Movement tonics:
    - Short bursts of movement speed for Flood events.
  - Resist brews:
    - Slightly lower magic damage taken from sap sources.

- **Bombs & Devices**
  - “Sap-Burst Vials”:
    - Targeted at hardened sap to **shatter** them and clear space.
  - “Root-Sever Bombs”:
    - Extra damage against sap-heart bulbs and root clusters.

### 7.4 Forager / Woodworker Role

- **Pre-Hunt Craftables**
  - Deployable **root stakes**:
    - Places breakable structures that block Rootburst lines.
  - Lightweight **bridging planks**:
    - Lay small “boards” across sap to create narrow safe paths.

- **Mid-Hunt Interaction**
  - May interact with certain environmental props:
    - Cut down a sap-infested branch to create cover.
    - Clear vine walls to open additional kiting routes.

These roles give Hunts a **cross-profession** identity, not just pure combat.

---

## 8. LOOT & REWARD INTEGRATION (WITH B151)

### 8.1 Thematic Ingredient Outputs

Black-Sap Devourer is the primary source for the following (representative IDs):

- `black_sap_nodule` – condensed pockets of corrupted sap.
- `black_sap_reduction` – a processed variant (could be made via cooking/alchemy).
- `sapstained_antler` – corrupted antler pieces (extends from non-Hunt stag antlers).
- `devourer_heart_fragment` – small pieces of the boss’s core; rare.

Drop structure:

- **Base drop bundle (on kill, for all participants)**
  - 1–3 `black_sap_nodule`.
  - 1–2 `sapstained_antler` (or variants).
- **Conditional / difficulty-based**
  - Chance for additional nodules / heart fragments on higher difficulty tiers.

### 8.2 Lodge Trophies & Projects

Completing this Hunt:

- Always drops one **trophy item** (per kill, not per player):
  - `trophy_black_sap_antler`.
- Lodge projects (57, B162) can require:
  - A number of trophy pieces and nodules for:
    - “Black-Sap Containment” line (more wards around Lodge).
    - Visual Lodge changes (sap research corner, hardened sap lamp, etc).

### 8.3 Chase Items & Rare Drops

From B151’s world drop philosophy:

- Devourer’s **Hunt reward bundle** has a small chance to include:

  - `trinket_black_sap_charm`
    - Passive small buff vs corruption.
    - Flavorful text about the sap’s whisper.
  - `recipe_scroll_black_sap_stew`
    - Advanced stew that:
      - Temporarily reduces corruption gain.
      - Adds some offensive benefit to encourage risk.

Ultra-rare tie-ins:

- A tiny chance for a **relic-touched fragment** that references B139–B150/B143:
  - E.g. `relic_splinter_sapbound_antler`.

### 8.4 B151 Integration Hooks

In `LootTables_Special_Greatwood.lua`:

- Define a `HUNT_BLACK_SAP_DEVOURER_BUNDLE` using B151 schema.
- Black-Sap specialty track in `SpecialtyPity_Greatwood.lua`:

  ```lua
  SpecialtyPity.tracks.black_sap_specialty = {
      expected_rolls = 8,      -- typical kills before one specialty hit
      hard_cap_rolls = 20,     -- absolutely guaranteed by then
      min_band = "B",
      max_band = "D",
      sources = { "HUNT_BLACK_SAP_DEVOURER", "POCKET_BLACK_SAP_GROVE" },
  }
This ensures that players targeting this content see at least some specials over multiple Hunts.

9. DIFFICULTY & TUNING
9.1 Level & Band Expectations
Recommended entry:

Level 12–13 for a group.

Level 15–16 for a very skilled, well-prepared smaller group/duo.

Aligned with B151 Bands:

Primary band: C (11–15).

Spillover into late B / early D as replay content.

9.2 Fight Duration & Failure Modes
Target baseline:

Fight duration: 7–10 minutes for a reasonably geared group of appropriate level.

Common failure modes:

Too much sap spread; arena becomes unmanageable.

Corruption stacks ignored; players heal through it until Phase 3 punishes them.

Ignoring sap-hearts → exponential sap hazard.

9.3 Adjustables (For Tuning)
Sap growth speed and maximum coverage.

Corruption stack caps and decay speed.

Add wave frequency and size.

Hunt reward quantities (nodules, trophies, chase items).

Soft enrage timing via Sap Density thresholds.

10. IMPLEMENTATION NOTES (ENCOUNTER SCRIPTING)
10.1 State Machine Outline
Recommended states:

STATE_IDLE – Devourer at pool; ambient behavior.

STATE_AGGRO – Engages players; Phase 1 logic.

STATE_PHASE2 – Roots + sap-hearts integrated.

STATE_PHASE3 – Heartburst + Flood + soft enrage.

STATE_RESET – Players wiped or left arena; cleanup.

Pseudo-Lua skeleton:

lua
Copy code
local Devourer = {}
Devourer.__index = Devourer

function Devourer.new(model)
    local self = setmetatable({}, Devourer)
    self.model = model
    self.state = "IDLE"
    self.hp = self:getMaxHP()
    self.sapDensity = 0
    return self
end

function Devourer:update(dt)
    if self.state == "IDLE" then
        self:updateIdle(dt)
    elseif self.state == "AGGRO" then
        self:updatePhase1(dt)
    elseif self.state == "PHASE2" then
        self:updatePhase2(dt)
    elseif self.state == "PHASE3" then
        self:updatePhase3(dt)
    end
end

function Devourer:onHit(damage)
    self.hp -= damage
    if self.state == "AGGRO" and self.hp <= self:getMaxHP() * 0.70 then
        self:transitionTo("PHASE2")
    elseif self.state == "PHASE2" and self.hp <= self:getMaxHP() * 0.40 then
        self:transitionTo("PHASE3")
    end
end
10.2 Sap System Integration
Separate module managing all sap puddles, hardened sap, and sap density:

BlackSapSystem_Grove.lua.

Devourer script does not directly modify puddles:

Instead, triggers high-level calls:

BlackSapSystem:SpawnPuddle(position, size, type)

BlackSapSystem:SpawnSapHeart(position)

BlackSapSystem:RaisePool(amount)

This keeps environment and boss logic modular.

10.3 Loot Hook
When Devourer dies:

Construct a LootContext with:

mobId = "HUNT_BLACK_SAP_DEVOURER"

isHuntTarget = true

zoneTag = "POCKET_BLACK_SAP_GROVE"

Player list = participants.

Call:

lua
Copy code
local lootBundle = ResolveLoot_Greatwood(ctx)
-- plus explicit Hunt reward bundle injection:
local huntBundle = HuntRewards:GetDevourerBundle(ctx)
mergeLoot(lootBundle, huntBundle)
awardLootToPlayers(players, lootBundle)
11. VARIANTS & FUTURE EXPANSIONS
Later expansions or difficulty modes could introduce:

Night-Only Variant

Increased sap spread.

More spectral adds.

Wardstone Surge Variant

Ward entities attempt to contain sap during fight:

Players can cooperate with, or accidentally sabotage, wards.

Relic-Touched Variant (Endgame)

Devourer partially fused with a minor relic:

More intense mechanics.

Higher chance of relic-touched drops.

These variants reuse core arena and abilities but tweak parameters and add layers.

12. TELEMETRY & BALANCING
12.1 Metrics to Log
Per encounter instance:

Number of wipes vs kills.

Time to kill (successful attempts).

Average corruption stacks per player (over time).

Sap coverage % at kill or wipe.

Number of sap-space clearing actions:

Hardened sap destroyed.

Sap-hearts killed.

Food/brew usage:

Which recipes were consumed pre-Hunt.

Whether anti-corruption/cleanse items were used.

12.2 Success Targets
Success rate:

~30–40% for appropriately leveled, minimally prepared groups.

Should climb to 60–70% with:

Better gear.

Correct food/brews.

Learned mechanics.

13. SUMMARY
Black-Sap Devourer is the corruption keystone Hunt for Greatwood:

Teaches:

Territory control.

Corruption management.

The value of cooking, alchemy, and Lodge prep.

Integrates with:

B151 (loot).

B152 (systems index).

B153–B159 (Hunt arc).

B160–B162 (Greatwood flow, Lodge projects).

If Elder Stag and Ward-Bear are “Greatwood 101,”
Black-Sap Devourer is “Greatwood 201: The woods bite back.”

End of B153 – Black-Sap Devourer – Full Hunt Integration (Greatwood 1–20)

vbnet
Copy code

If you want me to keep going in this same groove, next **proceed** I’ll probably use to blow out another Hunt (Hollowroot Matron or Elder Hollow Stag) or wire up the actual Greatwood loot Lua tables based on B151.





You said:
proceed



ChatGPT said:

Thought for 8s
Alright, keeping the Greatwood Hunt arc rolling.

Next up: a full, giant Hunt file for the Elder Hollow Stag – the “iconic but slightly tragic” Greatwood boss that’s less corrupted than Devourer, but still deeply tied into the forest.

Below is a complete replacement for:

GameBible/Future/Features/B154 – Elder Hollow Stag – Full Hunt Integration (Greatwood 1–20)

You can paste this in as the whole file.

markdown
Copy code
# B154 – Elder Hollow Stag – Full Hunt Integration (Greatwood 1–20)

---

## 0. PURPOSE & SCOPE

This file defines the **Elder Hollow Stag** as a fully integrated **Greatwood Hunt** for levels ~8–15 (primary band: late B into C) and positions it as:

- The **“iconic Greatwood Hunt”** most players will encounter early-mid.
- A bridge between:
  - Purely natural Greatwood stags.
  - Hollowroot / corruption themes.
  - The heavier corruption of Black-Sap Devourer (B153).

It covers:

- Identity, story, visual and audio fantasy.
- Unlock conditions and how it fits the **Hunt Board arc**.
- Arena layout and environmental features.
- Full combat structure:
  - Approach → Phase 1 → Phase 2 → Phase 3 (rage).
- Role expectations and how **professions (cooking, alchemy, foraging)** matter.
- Loot and Lodge integration:
  - Unique ingredients and trophies.
  - Recipes and Lodge décor.
- Implementation notes for scripting and tuning.

This Hunt should feel like **Greatwood’s soul stepping forward to test the player** – not purely evil, but no longer safe.

---

## 1. HUNT IDENTITY & FANTASY

### 1.1 High-Concept Tagline

- **Tagline:** “The forest remembers what you take.”

The Elder Hollow Stag is:

- The **oldest, largest stag** in Greatwood, partially hollowed out by quiet Hollowroot growth.
- A creature that has seen many seasons of hunting and has adapted:
  - Branch-antlers crowned with fungus and moss.
  - Hollow cavities in its chest, ribs, and limbs that glow faintly.
- Less overtly corrupted than Black-Sap Devourer, but clearly **not natural** anymore.

Emotionally, this Hunt is closer to:

> “You are fighting a guardian that has finally decided you’ve taken enough.”

### 1.2 Visual Motifs

- Body
  - Massive stag frame with **visible age**:
    - Scars, worn hide, patchy fur.
  - Sections of body where **bark-like Hollowroot growth** replaces bone or muscle.
  - Hollow cavities glowing dim, fungal or greenish light.
- Antlers
  - Extremely broad, branch-like antlers:
    - Covered in moss, lichen, and small shelf-fungi.
  - Portions broken and re-grown in crooked arcs.
- Environment
  - Arena is a **quiet glade** with:
    - Soft light shafts through canopy.
    - Old stones, standing logs, and a central hollow tree.
    - Mushrooms and soft moss underfoot.

In short: it’s beautiful and slightly eerie, not full-on horror.

### 1.3 Audio Motifs

- Ambience:
  - Wind through leaves, distant creaking limbs, birds that go quiet when the fight starts.
  - Occasional deep wood-groans like trees shifting.
- Boss:
  - Deep, resonant bellows that reverberate in the chest cavity.
  - Hollow echoes from within its ribcage on certain moves.
- Abilities:
  - **Stomp:** heavy thud + a wooden ring.
  - **Charge:** tearing underbrush + cracking branches.
  - **Hollowcall:** layered stag calls with faint whispers or wind-sigh harmonics.

### 1.4 Emotional Beats

Player should feel:

- **Awe** on first sight: “That’s *the* Greatwood stag.”
- **Conflict**: it’s threatening, but it also feels like they’re trespassing.
- **Urgency**:
  - In later phases, the glade becomes wilder and more dangerous.
- **Respect** on kill:
  - The Lodge treats it as a serious mark of a hunter’s status.

---

## 2. UNLOCK CONDITIONS & STORY FRAMING

### 2.1 Recommended Unlock Band

- Intended for **levels 9–13**:
  - Comfortable for groups at 10–12.
  - Challenging for smaller, lower-level groups.
- Sits in progression:
  - After some early Hunts or mini-Hunts.
  - Before or parallel to Black-Sap Devourer for most players.

### 2.2 Prerequisites (Design-Level)

Hunt appears on the **Hunt Board** when:

- Player has:
  - Completed a set number of **stag-related contracts**:
    - “Cull young stags.”
    - “Drive herds toward safer ground.”
  - Completed at least one **introductory Hunt or Huntlet**:
    - A lesser Greatwood stag or similar.
- Player has turned in certain Lodge contributions:
  - Enough stag hides, antlers, or meat for a Lodge project.

In dialogue, this allows NPCs to say:

> “You’ve been hunting his kin. If you insist on taking from the herds, at least have the spine to face the one who leads them.”

### 2.3 Narrative Setup

**Quest framing:**

- The Elder Hollow Stag:
  - Has been seen leading unusually coordinated herd movements.
  - Is driving game away from traditional hunting grounds.
  - May have killed or maimed hunters who ignored warning signs.

Lodge’s perspective:

- Some see it as a **sacred guardian** that should be left alone.
- Others see it as a **force of nature** that must be faced, tested, or felled.
- The Hunt is framed as:
  - “A test of your claim as a Greatwood hunter.”
  - Not strictly “go kill the monster,” but “go face it.”

### 2.4 NPC & Lodge Integration

- **Huntmaster**:
  - Treats this Hunt with ceremony:
    - Special dialogue.
    - Possibly a different board UI presentation.
- **Cook**:
  - Talks about how the Elder’s meat (if taken) is rich, rare, and should not be wasted.
- **Old Hunter NPC**:
  - Offers optional reflection on whether you **must** kill it:
    - (In later expansions you might support alternative outcomes; for now, full kill is canonical.)

Lodge upgrades:

- First completion:
  - Unlocks prominent **antler display** in the Lodge.
  - Grants access to:
    - A new recipe or Lodge perk that references the Elder.
- Repeats:
  - Provide **trophy tokens** and extra ingredients.

---

## 3. ARENA & ENVIRONMENT DESIGN

### 3.1 Location & Pocket

Pocket tag: `POCKET_ELDER_HOLLOW_GLADE`

- Geography:
  - Broad, slightly elevated woodland glade surrounded by denser forest.
  - Few, clearly readable **natural obstacles**:
    - Old logs.
    - Fallen branches.
    - Mossy rocks.
- Light:
  - Dappled, soft, with subtle brightness changes as fight escalates.
  - Late phases: the light flickers, as if canopy is swaying unnaturally.

### 3.2 Layout Zones

Divide into:

- **Zone A – Outer Tree Line**
  - Sparse trees at the glade edge.
  - Slightly more cover but less visibility.
- **Zone B – Central Clearing**
  - Primary combat space.
  - Large enough for kiting and maneuvers.
- **Zone C – Hollow Tree & Fungal Ring**
  - A large **hollow stump or tree** at one edge.
  - Fungal ring around it:
    - Mushrooms that react to the Stag’s abilities.
    - Deals minimal damage early; becomes more dangerous late.

### 3.3 Environmental Features

- **Hollow Roots**
  - Semi-exposed root systems that:
    - Slightly alter movement.
    - Can be jumped over or used as soft obstacles.
- **Fungal Patches**
  - Mushrooms that:
    - Release spores if trampled or stomped near.
    - In early phases, mild nuisance.
    - In later phases, key hazards.

### 3.4 Navigation & Readability

Design goals:

- Clear sense of “this is the arena,” not just random woods.
- Enough open space for a big, charging boss.
- Distinct visual reads:
  - Hollow tree = “weird stuff happens here.”
  - Fungal ring = “don’t ignore these.”

---

## 4. MECHANICAL THEMES & OVERVIEW

### 4.1 Core Themes

1. **Momentum & Positioning**
   - Elder Stag charges, circles, and repositions frequently.
   - Players must **control the dance**, not just turret.

2. **Respect for Territory**
   - Certain areas are “sacred” or highly reactive:
     - Fungal ring.
     - Hollow tree.
   - Stepping/clashing in these zones causes environmental blowback.

3. **Hollow Resonance (Light Corruption)**
   - The Stag’s partially hollow body resonates with its environment.
   - Certain abilities cause:
     - Echo damage waves.
     - Movement debuffs.
     - Mild, “natural” corruption (less harsh than Black-Sap).

4. **Phased Wildness**
   - As HP goes down, the glade **feels more alive and aggressive**.
   - Not full corruption, but wild magic / Hollowroot stirring.

### 4.2 Fight Structure Overview

Phases:

- **Phase 0 – Approach & Recognition**
  - Quiet entry, visual intro.
- **Phase 1 – Test of Footwork**
  - Basic charges, stomps, and light environment reactions.
- **Phase 2 – Hollow’s Call**
  - Hollow resonance, fungal interactions, more complex patterns.
- **Phase 3 – Elder’s Last Stand**
  - Aggressive charges, empowered stomps, glade going wild.

---

## 5. PHASE BREAKDOWNS

### 5.0 Shared Mechanics / Systems

Before phases:

- **Hollow Resonance Stacks (Status)**
  - Light, stacking debuff:
    - At low stacks: minor movement slow.
    - At high stacks: occasional stumble / brief movement stun.
  - Applied by certain sonic/hollow abilities.

- **Fungal Overgrowth State (Arena)**
  - Tracks how many times:
    - Fungal patches are triggered.
    - Environmental responses are activated.
  - Higher overgrowth:
    - Stronger fungal effects.
    - More frequent spore clouds.

---

### 5.1 Phase 0 – Approach & Recognition

**Trigger**

- Player group crosses a subtle threshold in the glade.
- Cinematic-lite moment:
  - Elder Stag quietly grazes or stands near the hollow tree.
  - Raises its head, meets the party’s gaze.

**Gameplay**

- No combat yet:
  - Just a brief, slow walk/approach distance.
- On approaching close enough:
  - Stag gives a warning bellow.
  - Fight begins with a short opening charge.

**Purpose**

- To show off:
  - Size.
  - Silhouette.
  - Detail.
- To set tone:
  - This fight is personal and ceremonial.

---

### 5.2 Phase 1 – Test of Footwork

**HP Range**

- 100% → ~70% HP.

**Mechanics**

1. **Gore Charge**
   - Target: farthest or random non-tank player within line of sight.
   - Telegraph:
     - Stag paws ground and lowers antlers.
   - Behavior:
     - Quick linear charge, stops on first hit or after max distance.
   - Effects:
     - High physical damage.
     - Knockdown or short knockback.
   - Players can:
     - Sidestep or roll out of the line.
     - Use obstacles (logs, rocks) to block/deflect.

2. **Elder Stomp**
   - Short-range AoE around the Stag.
   - Telegraph: slight rear and raised hooves.
   - Effects:
     - Moderate damage.
     - Applies minor **Hollow Resonance** stack to those hit.
   - Combos with fungal patches if stomp happens on/near them:
     - Triggers spore clouds (low-intensity in Phase 1).

3. **Branch-Antler Sweep**
   - Wide frontal sweep.
   - Telegraph: side turn of the head.
   - Effect:
     - Medium damage.
     - Slight pushback.
   - Promotes careful positioning in front/side arcs.

**Player Checks**

- Early movement & spatial awareness test:
  - Can they dodge linear charges?
  - Can they recognize stomp/range cues?

---

### 5.3 Phase 2 – Hollow’s Call

**Trigger**

- Stag hits ~70% HP.
- Hollow cavities glow slightly brighter.
- Fungal patches quietly spread in coverage/number.

**New/Upgraded Mechanics**

1. **Hollowcall (Cone Echo)**
   - The Stag lifts head and releases a deep bellow.
   - Cone of **latent resonance** travels across arena.
   - Effects:
     - Medium damage to players hit.
     - 1–2 Hollow Resonance stacks.
   - Some environmental props vibrate; spores may fall.

2. **Fungal Burst**
   - Triggered when:
     - Stomp occurs on fungal patches.
     - Players sprint heavily through fungal clusters.
   - Effects:
     - Spore cloud that lingers briefly:
       - Low damage over time.
       - Minor Hollow Resonance stack per tick.
       - Slight visibility reduction.

3. **Glade Shift (Minor)**
   - On certain HP thresholds:
     - Branches tilt; light shifts.
   - Minor gameplay effects:
     - Certain areas become **“muffled,”** slightly reducing incoming healing.
     - Others become **“vital,”** slightly increasing stamina/regen.
   - These zones are telegraphed with color/FX differences.

**Adds (Optional Mode)**

- For group variants or higher difficulty:
  - A small pack of **younger stags** may join temporarily:
    - Light attacks.
    - Break line of sight.
  - Killing them is not strictly required but simplifies the fight.

**Player Checks**

- Group must:
  - Start respecting Hollow Resonance stacking.
  - Avoid triggering fungal patches unnecessarily.
  - Position in beneficial glade zones where possible.

---

### 5.4 Phase 3 – Elder’s Last Stand

**Trigger**

- Stag hits ~40% HP.
- Hollow growth glows more intensely; glade becomes louder/wilder.

**New/Upgraded Mechanics**

1. **Rage-Fueled Charges**
   - Gore Charge:
     - Faster.
     - Slight tracking on moving targets.
   - Additional pattern:
     - Sometimes chains multiple shorter charges.

2. **Empowered Elder Stomp**
   - Larger radius.
   - Higher damage.
   - Applies more Hollow Resonance stacks.
   - If performed near the **hollow tree**:
     - Tree pulses, causing a radial shockwave:
       - Moderate damage and a distinct stagger.

3. **Hollow Resonance Threshold**
   - At certain stack levels on a player:
     - They experience **stumble events**:
       - Brief movement stun or forced step.
   - At very high stacks:
     - Short, but intense echo burst:
       - Small AoE around the player.

4. **Fungal Overrun (Soft Enrage Flavor)**
   - Fungal patches:
     - Grow larger and more reactive.
   - Overgrowth meter:
     - If triggered frequently, spore clouds become:
       - Heavier damage.
       - Longer duration.
       - Higher resonance stacks.

5. **Final Rally**
   - At ~10–15% HP:
     - Stag does an extended, dramatic roar.
   - For a short window:
     - Gains increased damage.
     - Faster movement.
   - But:
     - Takes slightly more damage in return (symbolizing exhaustion).

**Soft Enrage Condition**

- If fight drags on:
  - Fungal Overgrowth and Resonance stacks across party become unmanageable.
  - Not a hard timer, but a **gradual slide** into chaos:
    - Frequent stumbles.
    - Spore-laden ground.
    - High incoming damage.

**Player Checks**

- Does the group:
  - Handle movement and positioning under pressure?
  - Manage Resonance stacks (via cleanses, movement, positioning)?
  - Avoid needlessly feeding Overgrowth?

---

## 6. ABILITY LIST & TUNING KNOBS

> Exact numbers are placeholders; actual tuning can be done in data.

### 6.1 Core Abilities

- `ELDER_GORE_CHARGE`
  - Target: farthest/marked player.
  - Damage: high physical.
  - Cooldown: ~10–14s (faster in Phase 3).
  - Interruptible only via heavy CC, if system supports it.

- `ELDER_STOMP`
  - Target: area around Stag.
  - Damage: medium (Phase 1), medium-high (Phase 2/3).
  - Hollow Resonance: 1 stack (Phase 1), 2 stacks (later).
  - Cooldown: ~8–12s.

- `ELDER_ANTLER_SWEEP`
  - Target: frontal cone.
  - Damage: medium.
  - Pushback: minor.

### 6.2 Phase 2 Abilities

- `HOLLOWCALL_CONE`
  - Target: frontal wide cone.
  - Damage: medium magic/echo.
  - Resonance: 1–2 stacks.
  - Cooldown: ~15s.

- `FUNGAL_BURST_TRIGGER`
  - Trigger: players or boss walking/running/stomping through fungal patches.
  - Effect: spawn `FUNGAL_SPORE_CLOUD`.

- `FUNGAL_SPORE_CLOUD`
  - Radius: small to medium.
  - Duration: ~6–10s.
  - Damage: low DoT.
  - Resonance: 1 stack every 2–3 ticks.

### 6.3 Phase 3 Abilities

- `GLADE_PULSE_HOLLOWTREE`
  - Trigger: Elder Stomp near hollow tree.
  - Effect: radial shockwave from tree:
    - Medium damage.
    - Minor knockback.

- `RESONANCE_STUMBLE`
  - Trigger: high Resonance stacks on a player.
  - Effect: 0.5–1s movement stun / stagger.

- `FINAL_RALLY_MODE`
  - Trigger: low HP threshold.
  - Effect: temporary buff to Stag:
    - +X% damage.
    - +Y% movement speed.

---

## 7. ROLE EXPECTATIONS & PROFESSION INTEGRATION

### 7.1 Combat Roles

- **Tanks**
  - Keep Stag oriented away from group when possible.
  - Bait/position charges:
    - Ideally across safer parts of the glade.
  - Avoid dragging boss through fungal patches.

- **Melee DPS**
  - Stick to back/flanks.
  - Watch for stomp and antler sweep cues.
  - Help pop any optional adds that join.

- **Ranged DPS**
  - Spread enough to avoid being chain-hit by cones.
  - Maintain good lines of sight across clearing.
  - Call out safe spots and heavy fungal clusters.

- **Healers / Support**
  - Manage sustained damage from DoTs and Resonance.
  - Use positional buffs or movement abilities:
    - For charges and stomp combos.
  - Choose food/brews that:
    - Assist with healing throughput and minor resistance to nature/echo damage.

### 7.2 Cook & Food Integration

From Greatwood cooking:

- **Ideal Pre-Hunt Meals**
  - Stews focusing on:
    - Stamina/energy management (for movement-heavy fight).
    - Moderate nature/echo resistance.
  - Sides that:
    - Improve regen or healing received.

- **Thematic Recipes**
  - `elder_stag_haunch_roast`
    - Long-term regenerative buff.
  - `hollowroot_herb_stag_stew`
    - Slight Hollow Resonance resistance.
    - Moderate health increase.

Cooking gives real, felt advantage—but fight is still beatable without it.

### 7.3 Alchemy & Foraging

- **Brews**
  - Movement tinctures:
    - Short bursts for dodging charges.
  - Minor cleanse brews:
    - Reduce Resonance stacks or spore DoT intensity.

- **Foraging Tools**
  - Prior collection of herbs/fungi from Greatwood pockets:
    - Directly relevant to the above brews.
  - Thematically:
    - Certain mushrooms in glade may match ingredients players have seen.

Overall: professions help **smooth difficulty curve** and reward preparation.

---

## 8. LOOT & REWARD INTEGRATION (WITH B151)

### 8.1 Unique/Hunt-Weighted Ingredients

Examples (IDs must align with Ingredient Taxonomy):

- `elder_stag_prime_haunch`
  - Rare meat cut from Elder.
  - Used in high-tier roasts and prestige dishes.
- `hollow_antler_core`
  - Fragment of internal antler/hollowroot fusion.
  - Important for certain Lodge décor and advanced recipes.
- `elder_stag_marrow`
  - Rich marrow component; key in restorative stews.

Baseline reward bundle:

- Each participant gets:
  - 1–3 `elder_stag_prime_haunch` (subject to tuning).
  - 1–2 `hollow_antler_core` or similar trophy bits.

### 8.2 Lodge Trophies & Décor

- **Primary Trophy**
  - `trophy_elder_hollow_stag_antlers`
- Lodge projects:
  - A dedicated **Elder Hollow Stag display**:
    - Mounted antlers with subtle Hollowroot glow.
  - Projects like:
    - “Honor the Elder”: add ceremonial elements to Lodge.
    - “Elder’s Blessing”: minor Lodge-wide buff or convenience.

Repeat kills:

- Award **Lodge trophy tokens** + extra trophy shards or lesser antlers.

### 8.3 Chase Items & Rare Drops

Low chance drops:

- `trinket_elder_stag_charm`
  - Grants small, permanent buff:
    - Slight increase in stamina or movement speed.
  - Flavor text: references “moving like the forest remembers you.”

- `recipe_scroll_elder_stag_royal_roast`
  - Very strong feast-level recipe:
    - Group-wide buff (if group eating is supported).
    - Rare enough to feel special.

Very low chance world-drop tie-in:

- Some relic-adjacent scrap:
  - `relic_splinter_woodheart`
    - Stories pointing toward deeper Relic content.

### 8.4 B151 Hook

In `LootTables_Special_Greatwood.lua`:

- Define `HUNT_ELDER_HOLLOW_STAG_BUNDLE` with B151 schema.
- Optionally create a specialty track in `SpecialtyPity_Greatwood.lua`:

```lua
SpecialtyPity.tracks.elder_stag_specialty = {
    expected_rolls = 6,      -- typical kills before a special
    hard_cap_rolls = 15,
    min_band = "B",          -- 6–10
    max_band = "C",          -- 11–15
    sources = { "HUNT_ELDER_HOLLOW_STAG", "POCKET_ELDER_HOLLOW_GLADE" },
}
This ensures that players who put in multiple Elder kills see some of the rarer rewards.

9. DIFFICULTY & TUNING
9.1 Intended Audience
Designed to be:

First or second “serious” Hunt for many players.

A mid-tier challenge that:

Punishes tunnel vision.

Rewards movement, awareness, and prep.

9.2 Fight Duration & Fail Modes
Baseline:

Duration: ~6–9 minutes for appropriate group.

Common fail states:

Too many players hit by charges.

Stomps + fungal bursts overwhelming healers.

High Resonance stacks leading to chain stumbles in Phase 3.

9.3 Tuning Levers
Charge damage and tracking.

Stomp damage and radius.

Resonance stack thresholds for stumbles.

Fungal patch density and burst strength.

Reward quantity and rarity.

10. IMPLEMENTATION NOTES (SCRIPTING)
10.1 State Machine Outline
States:

IDLE

PHASE1

PHASE2

PHASE3

RESET

Simplified skeleton:

lua
Copy code
local ElderStag = {}
ElderStag.__index = ElderStag

function ElderStag.new(model)
    local self = setmetatable({}, ElderStag)
    self.model = model
    self.state = "IDLE"
    self.hp = self:getMaxHP()
    self.resonance = {} -- per-player stacks
    return self
end

function ElderStag:update(dt)
    if self.state == "IDLE" then
        self:updateIdle(dt)
    elseif self.state == "PHASE1" then
        self:updatePhase1(dt)
    elseif self.state == "PHASE2" then
        self:updatePhase2(dt)
    elseif self.state == "PHASE3" then
        self:updatePhase3(dt)
    end
end

function ElderStag:onHit(damage)
    self.hp -= damage
    local hpPct = self.hp / self:getMaxHP()

    if self.state == "PHASE1" and hpPct <= 0.70 then
        self:transitionTo("PHASE2")
    elseif self.state == "PHASE2" and hpPct <= 0.40 then
        self:transitionTo("PHASE3")
    end
end
10.2 Environment Controller
A separate module:

ElderGladeEnvironment.lua

Manages:

Fungal patches & triggers.

Resonance zones (muffled/vital areas).

Light/shader changes across phases.

Hunt script calls into it for:

Environment:TriggerFungalBurst(position)

Environment:ShiftGladePhase(phaseIndex)

10.3 Loot Hook
On death:

lua
Copy code
local ctx = {
    mobId = "HUNT_ELDER_HOLLOW_STAG",
    isHuntTarget = true,
    zoneTag = "POCKET_ELDER_HOLLOW_GLADE",
    -- player list, band, etc...
}

local lootBundle = ResolveLoot_Greatwood(ctx)
local huntBundle = HuntRewards:GetElderStagBundle(ctx)
mergeLoot(lootBundle, huntBundle)
awardLootToPlayers(players, lootBundle)
11. VARIANTS & FUTURE OPTIONS
Potential later variants:

Pacifist / Alternative Resolution Route

In some future update:

Allow players to complete the Hunt without killing:

Outlast certain phases.

Achieve some ritual or Lodge project.

Reward differently (non-meat items, special titles).

Night Hunt Variant

Fight at night with:

More dangerous fungal glow.

Different soundtrack and ambient threats.

Challenge Mode

Stronger charges & resonance:

Extra drops and cosmetic rewards.

12. TELEMETRY & BALANCING
12.1 Metrics to Capture
Per fight:

Attempts vs kills.

Time to kill.

Average damage taken from:

Charges.

Stomps.

Fungal bursts.

Resonance stack distribution:

Average stacks per player.

Number of stumbles triggered.

Number/frequency of:

Fungal patches triggered.

Optional adds killed (if used).

12.2 Target Success Rates
For first-time groups at intended level:

~30–50% success after 2–3 attempts.

For experienced groups or overleveled players:

70–90% success.

Adjust:

Damage/ranges.

Resonance thresholds.

Fungal density.

Until telemetry lines up with target feel.

13. SUMMARY
The Elder Hollow Stag is Greatwood’s ceremonial benchmark Hunt:

It teaches:

Movement, positioning, and respecting the environment.

Using cooking and alchemy deliberately.

It sits:

Midway between “just animals” and fully corrupted horrors like Black-Sap Devourer.

It feeds:

Lodge status (trophy and décor).

Advanced recipes and subtle long-term buffs.

Player’s personal narrative of becoming a real hunter.

If Black-Sap Devourer is “corruption keystone,”
Elder Hollow Stag is “Greatwood’s heart testing your right to call this home.”

