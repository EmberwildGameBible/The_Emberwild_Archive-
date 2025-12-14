Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B158 – Greatwood Howler – Full Hunt Integration (Greatwood 1–20)

---

## 0. PURPOSE & POSITION IN GREATWOOD

The **Greatwood Howler** is the primary **pack predator** Hunt for Greatwood 1–20.

It sits alongside:

- Elder Hollow Stag (B154) – ceremonial nature guardian.
- Ward-Bear (B157) – wardstone/shield guardian.
- Black-Sap Devourer (B153) – corruption keystone.
- Hollowroot Matron (B156) – fungal/infestation keystone.

This file defines the Greatwood Howler Hunt as:

- A **Band B–C** major Hunt for levels **8–14**.
- A keystone for:
  - **Pack AI and threat management**.
  - **Audio telegraphs** (howls that change fight state).
  - **Multi-target, multi-front pressure**.

Scope:

- Identity, story, and fantasy.
- Unlock conditions and Lodge integration.
- Arena and environment design.
- Full combat structure:
  - Pack behavior, phases, leader howler patterns.
- Role expectations and profession cross-links.
- Loot, Lodge projects, and long-term progression hooks.
- Implementation notes and telemetry for tuning.

This Hunt answers the question:

> “What does it feel like when the forest hunts you back?”

---

## 1. HUNT IDENTITY & FANTASY

### 1.1 High-Concept Tagline

> “When one howls, the forest joins in.”

The **Greatwood Howler** is:

- A large, lean alpha predator:
  - Not grotesque, not corrupted.
  - Pure forest predator with heightened presence and intelligence.
- Leader of a **pack of howlers** that:
  - Coordinate attacks.
  - Use sound and positioning to pressure the party.
- The embodiment of:
  - Greatwood’s predatory instinct.
  - The feeling of being watched and stalked between trees.

Unlike Hollowroot Matron or Devourer, the Howler is not an aberration:

- It is the forest’s **natural teeth**.

### 1.2 Visual Motifs

- Alpha Howler:
  - Larger than standard wolves/howlers.
  - Fur:
    - Darker along spine, lighter along sides.
    - Subtle patterning that evokes:
      - Tree shadows.
      - Stripes of moonlight.
  - Eyes:
    - Bright, reflective, readable from a distance.
    - Color can vary slightly by band (paler at lower bands, brighter at higher).
  - Scar patterns:
    - Old wounds from earlier Hunts and prey.
- Packmates:
  - Slightly smaller but coordinated.
  - Tagging marks (notches in ears, fur patterns) to distinguish roles:
    - Flankers.
    - Harriers.
    - Howl-echoers.
- Environment:
  - Den area with:
    - Bones, scattered pelts.
    - Trampled paths in underbrush.
    - Elevated rocks used as watch points.

### 1.3 Audio Motifs

Audio is central to this Hunt.

- Ambient:
  - Distant, occasional howls that:
    - Shift in direction.
    - Fade in and out as the player approaches the den.
- In-fight Howls:
  - Distinct howl “vocab”:
    - Rally howl:
      - Summoning or buffing pack members.
    - Hunt howl:
      - Marks a target or shifts aggro focus.
    - Panic howl:
      - Signals low health or phase transition.
  - Echo effects:
    - Pack howls can overlap, creating a brief, disorienting chorus.
- Foley:
  - Rustling underbrush.
  - Footfalls circling at the edge of vision.
  - Growls and teeth-clicking close to the player’s ear in some sequences.

### 1.4 Emotional Beats

Players should feel:

- Stalked before the fight:
  - Occasional glimpses of eyeshine and rustling.
- Suddenly overwhelmed when the Hunt begins:
  - Pack originating from multiple angles.
- Gradually empowered as they:
  - Read howl telegraphs.
  - Control adds and pack structure.
- Satisfied but wary after the kill:
  - They have become “apex” in a place that previously hunted them.

The Howler is about **pace and tension** rather than heavy visual corruption or spell-like mechanics.

---

## 2. UNLOCK CONDITIONS & STORY FRAMING

### 2.1 Recommended Band & Placement

- Recommended player level: **8–14**
  - Comfortable at 10–12.
  - Challenging but doable at 8–9 with good play.
- Hunt Band: **B–C**
- Position in progression:
  - Often the **first major Hunt** players see as a clear “go fight this alpha predator” marker.
  - Sometimes alternate-first with Elder Hollow Stag depending on play sequence.

### 2.2 Preconditions (Design-Level)

Greatwood Howler Hunt appears on the Hunt Board when:

- Player has:
  - Cleared a minimum number of **wolf/howler-related contracts**:
    - “Cull the pack near X.”
    - “Protect caravans from howler attacks.”
  - Encountered howlers in **open-world pockets** at least a few times.
- Lodge has:
  - Logged complaints of:
    - Missing hunters.
    - Disrupted travel routes near the den.
- Optional extras:
  - A small pre-Hunt quest chain:
    - Track a maimed survivor’s story.
    - Investigate partially eaten prey.

Narratively, this sets up:

> “You’ve been nipping at the edges of the problem. Time to cut off the head of the pack.”

### 2.3 Hunt Board & NPC Framing

- Hunt Board entry:
  - Strong, stylized wolf head.
  - Short description:
    - Talks about hearing overlapping howls.
    - Warns: “Do not go alone.”
- Huntmaster / Lodge NPC quotes:
  - Acknowledge:
    - Howlers are not inherently evil.
  - Emphasize:
    - The pack is now brave enough to approach travel routes and the Lodge itself.
- Optional “Old Hunter” flavor:
  - Shares their first Howler Hunt story.
  - Hints at key mechanics:
    - “When they all howl together, you don’t want to be standing in the open.”

---

## 3. ARENA & ENVIRONMENT DESIGN

### 3.1 Pocket Tag & Location

Pocket tag: `POCKET_HOWLER_DEN`

- Geography:
  - A sloping woodland rise that opens into a semi-cleared den area.
  - Mixed cover:
    - Fallen logs.
    - Low boulders.
    - Thicker brush clumps.
  - Exits and entries:
    - Side trails where howlers can enter or retreat.
- Light:
  - Dappled canopy.
  - Slightly lower light level than surrounding forest:
    - Feels like “their” space.
  - Night or evening variants possible for challenge modes (later).

### 3.2 Zones

Divide into:

- **Zone A – Approach Trail**
  - Narrower path.
  - Occasional small howlers to hint at pack.
  - Early ambience of being watched.

- **Zone B – Den Core**
  - Central combat arena.
  - Compact enough to feel pressured.
  - With:
    - Mid-height rocks for line-of-sight breaks.
    - Areas of thicker underbrush that slow movement slightly.

- **Zone C – Perimeter Shadows**
  - Edge areas of the den.
  - Howlers can:
    - Enter from here.
    - Retreat here briefly before re-engaging.
  - Players can use:
    - For line-of-sight resets.
    - For kiting.

### 3.3 Environmental Role

Environment is:

- Not covered in active hazards like Matron’s nest.
- Instead:
  - Shapes angles of attack.
  - Provides obstacles for:
    - Breaking charge lines.
    - Playing line-of-sight with pack howlers.

Visual language:

- Slightly wider lines-of-sight than some Dungeons, but enough cover to matter.

---

## 4. MECHANICAL THEMES & OVERVIEW

### 4.1 Core Themes

1. **Pack Pressure**
   - Players fight:
     - The alpha.
     - Multiple packmates.
   - Danger comes from:
     - Being flanked.
     - Being surrounded.
     - Poor target priority.

2. **Howl-Based State Changes**
   - Different howls represent:
     - Pack rally.
     - Hunt focus.
     - Fear/retreat.
   - Players learn:
     - To treat sound as a major telegraph channel, not just visuals.

3. **Dynamic Threat & Targeting**
   - The alpha may:
     - Mark a target with a howl.
     - Redirect pack aggro.
   - Fight encourages:
     - Protective behavior.
     - Role recognition (frontline vs backline).

4. **Introductory Multi-Front Encounter**
   - This is the “pack boss” to teach:
     - You cannot tunnel one target.
     - You must handle multiple threats simultaneously.

### 4.2 Fight Structure Overview

Phases:

- **Phase 0 – Stalked on the Approach**
  - Ambient pre-fight.
- **Phase 1 – First Engagement: The Circle**
  - Pack tests the group’s defenses and mobility.
- **Phase 2 – Full Pack Fury**
  - Coordinated howls, focus fires, elite howlers.
- **Phase 3 – Lone Alpha**
  - Pack numbers reduced; alpha goes desperate and dangerous.

The structure ensures:

- Front-loaded pressure, but with:
  - Smoother tail when players break pack structure.

---

## 5. PACK COMPOSITION & AI CONCEPTS

### 5.1 Pack Roles

The pack contains several **role archetypes**:

- **Alpha – Greatwood Howler (Boss)**
  - Highest HP and damage.
  - Commands pack and issues howls.
  - Has unique ability set.

- **Flankers**
  - Medium HP, high mobility.
  - Try to:
    - Reach backline.
    - Attack from sides or behind.
  - Limited special abilities:
    - Quick bites.
    - Short leaps.

- **Harriers**
  - Lower HP, disruptive.
  - Focus on:
    - Applying light bleeds.
    - Distracting certain players (e.g., healers).

- **Echo Howlers**
  - Smaller howlers that:
    - Copy alpha howls at reduced strength.
  - Increase:
    - Duration or area of certain howl effects.

### 5.2 AI Behaviors (High-Level Design)

- Pack wants to maintain:
  - Partial encirclement around the group.
- Flankers:
  - Try to get around behind or onto isolated players.
- Harriers:
  - Prefer targets with:
    - Low armor.
    - Low current health.
- Echo Howlers:
  - Stay a bit farther out, avoiding direct melee.
  - Time their howls with the alpha.

AI should feel:

- Smart but not psychic.
- Punishing if players:
  - Stand clumped in the open.
  - Let pack roam free.

---

## 6. PHASE BREAKDOWNS

### 6.0 Shared Systems

**Bleed (Howler Wound)**

- Common debuff:
  - Applied by bites and certain abilities.
- At low stacks:
  - Small damage over time.
- At higher stacks:
  - Heavier DoT, potential minor stamina drain.
- Some food/brews can:
  - Reduce bleed damage.
  - Accelerate bleed decay.

**Pack Morale (Invisible Meter)**

- Internal meter tracking:
  - Number of active howlers.
  - Relative health of alpha.
- Drives:
  - When minor howlers flee or re-engage.
  - Intensity of howls.

---

### 6.1 Phase 0 – Stalked on the Approach

**Trigger**

- Entering `POCKET_HOWLER_DEN` approach.

**Gameplay**

- Small pairs/trios of howlers:
  - Appear briefly at edge of vision.
  - Attack then retreat, or simply stalk.
- Audio:
  - Single howls, one at a time.
  - Occasional rustling movement.

**Purpose**

- Atmosphere.
- Soft tutorial:
  - Show:
    - Howlers come from multiple angles.
    - Howls are meaningful.

No major mechanics yet, just:

- A sense of pursuing and being pursued.

---

### 6.2 Phase 1 – First Engagement: The Circle

**Trigger**

- Party reaches Den Core.
- Alpha appears on a rock or rise, silhouetted.
- First major howl cuts through, summoning pack inward.

**HP Range**

- Alpha at 100% → ~70% HP.

**Pack Composition**

- Alpha Howler (boss).
- 2–4 Flankers.
- 1–2 Harriers.

**Abilities – Alpha**

1. **Raking Bite**
   - Single-target melee.
   - Applies light Howler Wound bleed.

2. **Lunging Pounce**
   - Short leap toward target.
   - Moderate damage, brief knockdown if direct hit.
   - Used to punish players:
     - Out of position.
     - Standing too far from group.

3. **Hunt Howl (Target Mark)**
   - Alpha locks eyes on a player and howls.
   - Effect:
     - That player is “marked”:
       - Pack members prefer to attack them.
       - Marked player takes slightly more damage from howlers.
   - Visual:
     - Subtle glow or mark above target.
   - Duration:
     - Finite, or until overwritten.

**Abilities – Pack**

- Flankers:
  - Quick bites (low bleed).
  - Side approaches.
- Harriers:
  - Minor leaps, mild interrupts.

**Player Checks**

- Can group:
  - Recognize when someone is marked.
  - Protect that target.
  - Avoid being totally surrounded.

This phase sets tone:

- The pack is coordinated but not yet fully unleashed.

---

### 6.3 Phase 2 – Full Pack Fury

**Trigger**

- Alpha at ~70% HP.
- Pack Morale above threshold (still strong pack).

Alpha howls a **Rally Howl**, summoning more howlers and activating echo behavior.

**Pack Composition**

- Alpha Howler.
- New spawns:
  - 1–2 Echo Howlers.
  - Additional Flankers.
- Harriers become more aggressive.

**New/Upgraded Alpha Abilities**

1. **Rally Howl**
   - Large, drawn-out howl.
   - Effects:
     - Summons new packmates from Perimeter.
     - Grants short buff:
       - Increased attack speed and movement to pack.
   - Echo:
     - Echo Howlers repeat part of the howl, extending buff duration.

2. **Frenzy Wave**
   - After Rally:
     - Pack simultaneously lunges and attacks.
   - Simple pattern:
     - Short, high-pressure window where everyone is taking damage.

3. **Coordinated Howl**
   - Alpha + Echo Howlers:
     - Howl in sequence.
   - Effects:
     - Applies small fear or stagger to players if they:
       - Are outside certain safe zones.
       - Or do not break line-of-sight with terrain.
   - Teaches:
     - Use of environment as shield against acoustic effects.

**Pack Upgrades**

- Flankers:
  - Use more aggressive pathing to reach backline.
- Harriers:
  - Focus more on healer or marked target.

**Player Checks**

- Group must:
  - Kill Echo Howlers quickly to limit howl extension.
  - Decide:
    - When to break from the alpha to control adds.
  - Use terrain:
    - Duck behind rocks/logs when Coordinated Howl starts.

If players ignore Echo Howlers:

- Rally buffs stack up.
- Coherent howl sequences cause control loss and heavy damage.

---

### 6.4 Phase 3 – Lone Alpha

**Trigger**

- Once enough packmates are dead and/or Alpha HP drops below ~35–40%.
- Pack Morale falls below threshold:
  - Minor howlers flee or die.
  - Only the Alpha (and possibly one last elite packmate) remains.

Tone shift:

- Fight becomes less about multi-front control.
- More about:
  - A desperate, dangerous single enemy.

**Alpha Behavior Changes**

- No longer issues Rally Howls:
  - No new pack spawns.
- Gains new abilities or upgrades:

1. **Desperation Howl**
   - Shorter, more aggressive howl.
   - Self-buff:
     - Increased damage.
     - Possible temporary damage reduction.
   - Occurs at regular intervals.

2. **Savage Combo**
   - Lunge → Bite → Rake sequence.
   - High single-target damage.
   - Designed to test:
     - Tank and healer coordination.
     - Defensive cooldown usage.

3. **Wounded Retreat and Re-Engage**
   - At very low HP:
     - Alpha may retreat briefly to perimeter then charge in.
   - Serves as:
     - Climactic moment.
     - Last test of player movement and awareness.

**Player Checks**

- With pack largely gone:
  - Can players:
    - Respect the Alpha’s upgraded damage.
    - Avoid greed pulling and unnecessary deaths.
- Evaluates:
  - Classic “boss at 15%” execution.
  - Cooldown management to finish cleanly.

---

## 7. ROLE EXPECTATIONS & PROFESSION INTEGRATION

### 7.1 Combat Roles

**Tanks / Frontliners**

- Job:
  - Hold Alpha’s attention facing away from group.
  - Deny easy paths for flankers onto backline.
  - Intercept charges/lunges when possible.
- Responsibilities:
  - Call out:
    - Hunt Howl target.
    - Incoming Frenzy windows.
    - Desperation phases.

**Melee DPS**

- Job:
  - Stay on Alpha or high-value pack targets without:
    - Overextending into isolated positions.
  - Help peel flankers off healers when necessary.
- Responsibilities:
  - Respect pounce telegraphs.
  - Avoid stacking too tightly when howls suggest area effects.

**Ranged DPS**

- Job:
  - Execute priority targets:
    - Echo Howlers.
    - Harriers on healers.
  - Maintain situational awareness:
    - Where pack is circling.
- Responsibilities:
  - Use terrain to avoid Coordinated Howls.
  - Maintain pressure on Alpha when safe.

**Healers / Support**

- Job:
  - Keep the group up through:
    - Repeated small hits from pack.
    - Bleeds.
  - Manage resources for:
    - Frenzy windows.
    - Phase 3 Savage Combos.
- Responsibilities:
  - Communicate:
    - When they are under direct pressure from pack.
  - Prefer:
    - Positioning near partial cover, not in open center.

### 7.2 Cooking Integration

Howler-focused Hunts benefit from:

- **High-Satiety Meats**
  - Stag, boar, and howler flanks turned into:
    - Stews that boost stamina or heal over time.

- Example dishes:
  - “Greatwood Hunter’s Stew”:
    - Modest stamina/energy buff.
    - Slight increase to bleed resistance.
  - “Howler Flank Skewers”:
    - Short-duration burst buff:
      - Increased movement or attack speed.

Cooking impact:

- This fight is about **sustained attrition**.
- Groups that eat beforehand:
  - Feel noticeably better over 8–10 minute engagements.

### 7.3 Alchemy Integration

Relevant brews:

- **Anti-Bleed Draught**
  - Reduces damage from Howler Wound.
  - Or speeds up bleed decay.

- **Night-Eye Tonic (optional future expansion)**
  - If Howler has night variant:
    - Improves visibility and telegraph clarity.

- **Focus Tincture**
  - Slightly improves resistance to fear/stagger from Coordinated Howls.

The Howler Hunt is not as mechanically tied to alchemy as Matron, but:

- Pre-Hunt alchemy still makes a real difference in:
  - Bleed survivability.
  - Panic/fear mechanics.

### 7.4 Foraging Integration

Foragers who have explored Greatwood:

- Already know:
  - Where howler dens and trails are.
  - Small foragable items in predator-rich zones (e.g., bones with marrow, certain herbs).
- Greatwood Howler pockets may include:
  - Unique shrubs or grasses exposed by overhunting.
  - Predatory-scavenger related ingredients.

This encourages:

- Players to treat predator pockets as:
  - Resource zones as well as danger zones.

---

## 8. LOOT & LODGE INTEGRATION

### 8.1 Thematic Ingredients & Items

Core drops:

- `howler_alpha_pelt`
  - Premium pelt used for:
    - Cloaks, bedrolls, Lodge decor.
- `howler_fang_alpha`
  - Large fang used in:
    - Trinkets.
    - Totems.
- `howler_flank_prime`
  - Meat cut suitable for:
    - High-value roasts or combat meals.

Secondary/common materials:

- `howler_pelt_tuft`
- `howler_rib_meat`
- `fang_chip`
- `warded_howler_tooth` (rare, from pack or alpha depending on design)

### 8.2 Lodge Trophies & Projects

Primary trophy:

- `trophy_greatwood_howler_skull`
  - Mounted skull with subtle howling pose.

Lodge projects:

1. **Songs of the Pack**
   - Inputs:
     - Howler pelts.
     - Alpha fangs.
   - Outcome:
     - Cosmetic:
       - Pack-themed Lodge banners or totems.
     - Mechanical:
       - Slight group buff in Hunts:
         - Small boost to stamina/regen or group movement.

2. **Quiet the Trails**
   - Inputs:
     - Repeated Howler kills.
     - Contracts turned in.
   - Outcome:
     - Cosmetic:
       - Lodge map showing cleared routes.
     - Mechanical:
       - Slight reduction in howler density along certain travel paths.

### 8.3 Chase Items

- **Trinket: `trinket_alpha_howl_charm`**
  - Passive effect:
    - Slight reduction in fear/stagger duration.
    - Minor bonus to damage vs beasts.

- **Recipe: `recipe_scroll_alpha_hunters_stew`**
  - Upgrade to standard hunter’s stew:
    - Increased regen.
    - Possibly a small bleed mitigation buff.

- Low chance Relic hint:
  - `relic_splinter_echoing_fang`
    - A shard associated with ancient predatory relics.

### 8.4 Greatwood Loot System Hooks (B151/B155)

In the Greatwood loot system:

- Add an entry for the Hunt:

  - `HUNT_GREATWOOD_HOWLER`
  - Associated pocket: `POCKET_HOWLER_DEN`.

- Specialty track (in `SpecialtyPity_Greatwood.lua`):

  ```lua
  SpecialtyPity.tracks.greatwood_howler_specialty = {
      expected_rolls   = 6,
      hard_cap_rolls   = 15,
      min_band         = "B",
      max_band         = "C",
      sources          = { "HUNT_GREATWOOD_HOWLER", "POCKET_HOWLER_DEN" },
  }
This guarantees:

Players farming Howler for pelts and fangs:

See premium and chase drops at a healthy long-term rate.

9. DIFFICULTY & TUNING
9.1 Intended Audience
Early-to-mid progression players:

Likely one of the first major Hunts they tackle.

Recommended gear:

Basic upgrades from Greatwood early play.

Some cooking/alchemy support.

Difficulty target:

Easier than Devourer and Matron.

On par or slightly easier than Ward-Bear in overall complexity, but:

More punishing for groups that ignore multi-target management.

9.2 Fight Duration & Failure Modes
Target duration:

7–10 minutes.

Common failure modes:

Party allows pack to:

Stay at full strength too long.

Swarm healer/backline.

Echo Howlers not killed:

Leading to extended Rally buffs and widespread fear/stagger.

Marked targets from Hunt Howl:

Not protected or repositioned.

Phase 3 Alpha:

Underestimation of Savage Combos and Desperation Howls.

9.3 Tuning Levers
Main knobs:

Number of packmates spawned per Rally.

Bleed magnitude and decay rates.

Duration and availability of fear/stagger from Coordinated Howls.

Alpha’s HP and damage in Phase 3.

Echo Howler contributions:

Length and power of howl extensions.

Design philosophy:

Punish:

Ignoring adds.

Failing to protect marked players.

Reward:

Good target priority.

Smart use of terrain against acoustic abilities.

Simple pre-fight prep.

10. IMPLEMENTATION NOTES (HIGH-LEVEL)
This section describes how the encounter might be structured in code terms, without binding to engine specifics.

10.1 Pack Controller
Separate module, e.g. GreatwoodHowlerPackController:

Holds:

References to Alpha.

Lists of pack members by role (Flankers, Harriers, Echo).

Pack Morale value.

Responsibilities:

Spawning/despawning pack members.

Reacting to:

Howls.

Death of specific pack roles.

Updating Morale:

Higher when pack is large, Alpha is healthy.

Lower when key roles die, Alpha is low HP.

Alpha AI queries:

PackController:GetFlankTargets()

PackController:GetMorale()

PackController:SummonPackWave(waveSpec)

10.2 Howl System
Howls should be:

Clearly defined events with:

Type (Rally, Hunt, Coordinated, Desperation).

Source (Alpha, Echo).

Area/targets.

Design suggests:

Central HowlerHowlSystem that:

Handles audio triggers.

Handles buff/debuff distribution.

Handles fear/stagger logic.

Example flow:

Alpha triggers HowlSystem:StartHowl("RALLY", alpha).

Echo Howlers, based on AI, decide to echo:

HowlSystem:EchoHowl("RALLY", echoHowler).

System:

Calculates resulting buff durations.

Applies to pack.

Possibly applies fear to players during Coordinated sequences.

10.3 Loot Hook
On Alpha death:

Construct context:

mobId = "HUNT_GREATWOOD_HOWLER"

zoneTag = "POCKET_HOWLER_DEN"

isHuntTarget = true

Pass to:

Greatwood creature loot tables.

Hunt reward module.

Specialty pity track.

Minor pack howlers may:

Use standard Greatwood creature loot entries (HOWLER_FAMILY) from B155.

11. TELEMETRY & BALANCING
11.1 Metrics to Capture
For Greatwood Howler, log:

Attempts vs kills.

Fight duration.

Death causes by:

Bleeds.

Pack damage vs Alpha damage.

Fear/stagger plus follow-up hits.

Pack stats:

Number of Echo Howlers killed vs left alive.

Average lifespan of pack members by role.

Mark mechanic:

How often Hunt Howl marks the same player repeatedly.

Damage taken by marked players relative to others.

11.2 Targets & Adjustments
If:

Most wipes are due to:

Bleed ticks alone:

Reduce base bleed damage or provide more obvious counters.

Most wipes are due to:

Fear chain into immediate death:

Increase telegraphing or reduce fear duration.

Fight is overly easy:

Increase pack numbers slightly.

Increase Rally frequency at higher morale.

Goal:

A fight that feels:

Fast, predatory, and punishing if you ignore the pack.

Fair and learnable if you respect howls and adds.

12. SUMMARY
The Greatwood Howler is the region’s pack predator keystone Hunt:

Thematically:

Forest as hunter, not just scenery.

Mechanically:

Teaches pack control, add priority, and audio telegraphs.

Progression-wise:

Often the first or second major Hunt.

Sets expectations for coordinating as a group.

Together with Elder Hollow Stag, Ward-Bear, Black-Sap Devourer, and Hollowroot Matron, the Greatwood Howler:

Ensures the player has faced:

Predatory pressure (Howler).

Ceremonial nature trial (Stag).

Shield/ward puzzles (Ward-Bear).

Corruption territory control (Devourer).

Infestation and spore management (Matron).

After completing this Hunt, the player should feel:

“I’ve survived the forest stalking me. I can start hunting it on my own terms.”

