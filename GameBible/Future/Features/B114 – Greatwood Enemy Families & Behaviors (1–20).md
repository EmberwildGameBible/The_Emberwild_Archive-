Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B114 – Greatwood Creature Families & Behaviors (1–20)

## Purpose

Define the **core creature families in Greatwood 1–20** and how they behave:

- Who lives in Greatwood and **what they want**
- Family-level **combat roles & behaviors**
- **Fieldcraft profiles** (how they leave trails & signs – 67)
- Typical **wounds** they cause (70/B101)
- **Loot & system hooks**:
  - Hunts & Deeds (61)
  - Professions & Ember Pot (52–57, 85)
  - Dynamic events & pockets (62, 63, 90, B113)

This is the **ecology backbone**: it explains what wolves, boars, ash-eaters, spiders, Hollowroot things, birds, and humans are *like* across the region, not just in one encounter.

---

## 1. Family Overview (Greatwood 1–20)

For early Greatwood we define these primary creature families:

1. **Greyback Wolves** – ridge predators, circling & flanking.
2. **Greatwood Boars** – heavyweight brawlers, rooting chaos.
3. **Stags & Deer** – skittish prey, rare majestic variants.
4. **Spiders & Web-Casters** – area denial, ambush, debuffs.
5. **Ash-Eaters & Burn-Scar Beasts** – ash-scar specialists, burrowers.
6. **Hollowroot Brood (Early Forms)** – low-tier corruption-adjacent bugs/fungi.
7. **Birds of Prey & Flock Creatures** – vertical threats / warning system.
8. **Human / Humanoid Threats** – poachers, rogues, small cult cells.
9. **Ambient Critters** – rabbits, foxes, little things that make the forest feel alive.

Each family has:

- **Role** – what they do in fights & the ecosystem.
- **Behavior set** – how they move, pick fights, flee.
- **Fieldcraft profile** – how to track/read them (67).
- **Wound profile** – what they tend to do to you (70).
- **Loot & system hooks** – how they matter to Lodge life.

---

## 2. Greyback Wolves (Family: `wolf_greyback`)

### 2.1 Role & Fantasy

- Archetype:
  - **Coordinated ridge predators** who:
    - Circle
    - Test your flanks
    - Punish tunnel-vision.
- Early Greatwood’s main intro to:
  - Pack AI
  - Positioning discipline.

### 2.2 Behavior

**Base pack:**

- Small groups (2–5).
- Prefer:
  - High ground
  - Tree lines
  - Ridges with side-approach.

Behaviors:

- **Testing lunges**  
  - One wolf darts in, nips, retreats.
  - Others watch for your reaction.

- **Flank Wrap**  
  - If you fixate on a front wolf:
    - One tries to get behind or side.

- **Fear & morale**  
  - Killing the alpha or 50%+ pack quickly:
    - Remaining wolves may break and flee.
  - If you hesitate / take big hits:
    - They grow bolder, shorten their lunge distance.

- **Night aggression**  
  - Slightly more aggressive at night:
    - Longer chase range.
    - More likely to vocalize (howls).

### 2.3 Fieldcraft Profile (67)

- Tracks:
  - **Prints:**
    - Paws with visible claw tips.
    - Usually in **lines or partial loops**, not straight.
  - **Scat:**
    - Bone fragments visible.
  - **Scratches:**
    - Bark at nose height, not antler-height.

- Patterns:
  - Patrol loops around:
    - Ridges
    - Game trails
    - Camp perimeters (if they’re curious).
  - Often cross:
    - Boar and deer trails at angles.

- Inspect info examples:
  - Low ranks:
    - “Wolf prints, more than one. Circling.”
  - Higher fieldcraft:
    - “Two adults and a young one; they’ve looped this way twice already.”

### 2.4 Wounds They Cause (70)

- Primary wound types:
  - **Bites**:
    - Deep Cuts (arms/legs).
  - **Takedown slams**:
    - Bruised/Cracked Ribs if they knock you flat.
  - Rare:
    - Eye-level bites if you’re already downed.

- Likely wound tiers:
  - Minor / Serious early game.
  - Grave only when:
    - Out-leveled or badly surrounded.

### 2.5 Loot & System Hooks

- **Loot:**
  - Greyback pelts (tailored gear, room decor).
  - Fangs (trophies, carving materials).
  - Meat (Ember Pot stews, Jerky).

- **System hooks:**
  - Hunts:
    - CH-GW-001, early culls and patrols.
  - Deeds:
    - Can serve as pack side-threats in Deeds (harrying you).
  - Professions:
    - Pelt & tannery tasks.
  - Secrets (90):
    - Wolf dens sometimes hide minor caches / bones with story notes.

---

## 3. Greatwood Boars (Family: `boar_greatwood`)

### 3.1 Role & Fantasy

- Archetype:
  - **Living battering rams**.
- Early Greatwood’s intro to:
  - Respecting **charge telegraphs**
  - Not standing in lanes.

### 3.2 Behavior

- Prefer:
  - Turned fields, root-rich soil, riverbanks.
- Temperament:
  - Mostly busy rooting… until provoked or startled.

Behaviors:

- **Root & Toss**
  - Dig for roots:
    - Can fling dirt/rocks that stagger lightly.
- **Line Charge**
  - Long, loud windup.
  - High damage, high wound chance.
  - Turn radius limited:
    - Smart players sidestep / terrain-bait.

- **Panic Stampede**
  - If boars are spooked by:
    - Fire
    - Loud attacks
    - Larger predators.
  - They can flee past you, causing **knockback** if in the way.

### 3.3 Fieldcraft Profile

- Tracks:
  - Deep, split-hoof prints.
  - Wide stance, heavy impressions in mud.

- Signs:
  - Uprooted soil patches.
  - Trees rubbed raw about chest height.
  - Broken low shrubs.

- Patterns:
  - Meandering feeding paths.
  - Direct “panic lines” when they run:
    - Straight-ish and destructive.

- Inspect:
  - Low fieldcraft:
    - “Boar signs; roots torn up recently.”
  - Higher:
    - “This big one’s been hit before; one hoof drag, might be your Deed target.”

### 3.4 Wounds

- **Charge impacts:**
  - Cracked/bruised ribs (Serious).
  - Fractures if hit at low HP (Grave).

- **Gore & tusk:**
  - Deep penetrating wounds (arms/legs).

- **Trample:**
  - Minor/Serious bruising if you get clipped.

### 3.5 Loot & Hooks

- Meat:
  - Boar Hunter’s Feast (Ember Pot 85).
- Tusks:
  - Trophies, lodge decor, knife handles.
- Hide:
  - Heavy leather pieces.

Hooks:

- Deed D-GW-001 (The Boar That Wouldn’t Die).
- Festivals:
  - First Cut & Emberwake feasts may reference famous boar kills.
- Rep:
  - Gathering boar materials helps Foresters & Kitchen.

---

## 4. Stags & Deer (Family: `deer_greatwood` / `stag_white`)

### 4.1 Role & Fantasy

- Archetype:
  - **Nervous prey** with rare mythic variants.
- They:
  - Teach you what it feels like to track without murdering everything.
  - Serve as early “observation-only” or “non-lethal” objectives.

### 4.2 Behavior

- Deer:
  - Flee first, fight rarely (kick at close range).
- Stags:
  - Can stand ground briefly:
    - Use antlers to warn/defend.
  - Rarely outright attack unless cornered.

- Rare White Stag (90 Golden Secret):
  - Observes more than flees.
  - Tied to special secret chain.

### 4.3 Fieldcraft Profile

- Tracks:
  - Delicate hoofprints.
  - Often appear in groups (herds).

- Signs:
  - Antler rubs high on trunks.
  - Bedding areas: flattened grass in clearings.
  - Droppings: scattered pellets, often near water.

- Patterns:
  - Regular watering and grazing circuits.
  - White Stag:
    - Very sparse, indirect traces.

### 4.4 Wounds

- Low risk:
  - Hind-leg kick:
    - Minor bruising / sprain.
  - Antler thrust:
    - Minor cuts unless you really mess up.

Most deer content is:

- Low-HP, low-damage
- More about fieldcraft and restraint than danger.

### 4.5 Loot & Hooks

- Meat & hides:
  - Light leathers, stews.
- Antlers:
  - Lodge wall pieces, personal trophies.
- White Stag:
  - Secret relic or blessing, not usual loot.

Hooks:

- Secrets (90): White Stag Trail.
- Professions:
  - Leatherworker, cook.
- Social:
  - Lodge stories about “the one that got away”.

---

## 5. Spiders & Web-Casters (Family: `spider_greatwood`)

### 5.1 Role & Fantasy

- Archetype:
  - **Zone control & attrition**.
- They:
  - Turn spaces into hazards.
  - Force you to watch ceilings and corners.

### 5.2 Behavior

- Prefer:
  - Narrow cuts (Spiderway Cut), caves, tree clusters.
- Behaviors:
  - Drop ambushes from above.
  - Retreat into webs, re-engage if you chase poorly.
  - Spit-web or projectile silk to slow you.

Variants:

- Small quicklings (swarm).
- Medium ambushers.
- A single early Matriarch for CH-GW-004 / local Deeds later.

### 5.3 Fieldcraft Profile

- Signs:
  - Web clusters in unusual places.
  - Cocooned carcasses or satchels (Webbed Satchel secret).
  - Fine silk threads across path at shin-height.

- Tracks:
  - Spiders don’t leave clear footprints:
    - Instead:
      - Slight drag marks
      - Unnatural web growth patterns.

- Inspect:
  - Low:
    - “Fresh webs. Something is active nearby.”
  - Higher:
    - “Some strands are thick anchor lines—likely a larger weaver here.”

### 5.4 Wounds

- **Venom**:
  - DoT HP loss, stamina regen hit.
- **Webbing**:
  - Effective movement debuffs.
  - Potential for minor “joint strain” if you yank free badly.

- Rare Matriarch bites:
  - Serious or Grave poison: “Systemic Venom” wound for 70.

### 5.5 Loot & Hooks

- Silk:
  - Armor lining, rope, fletching.
- Venom:
  - Alchemy reagents (58).
- Eggs (optional):
  - Risky carry items → cooking / lab tests.

Hooks:

- Hunts: CH-GW-004 Webs Over the Path.
- Secrets:
  - Webbed caches with notes.
- Professions:
  - Silk to tailor/alchemist.

---

## 6. Ash-Eaters & Burn-Scar Beasts (Family: `ash_eater`)

### 6.1 Role & Fantasy

- Archetype:
  - **Ash-scar scavengers & burrowers** on the edge of the burn.
- They:
  - Eat ash and char.
  - Destabilize burned ground.
  - Warn you that the world once burned hard here.

### 6.2 Behavior

- Habitats:
  - Smoking Hollows, Ash-Edge Stand.
- Traits:
  - Burrow under ash.
  - Surface in bursts to feed or attack.
- Behaviors:
  - Ash-burrow surfacing (sudden eruptions).
  - Pack harassment: nip then dive back under.
  - Drawn to:
    - Ash-steeped scents
    - Firelight at night.

Variants:

- Standard ash-eaters (small/medium).
- Alpha burrower (D-GW-003).
- Rare ash-lurkers near deeper scar edges.

### 6.3 Fieldcraft Profile

- Signs:
  - **Ash ripples**: subtle concentric patterns in surface.
  - Ash pits: collapsed pockets revealing burrow shafts.
  - Bone piles half-buried in grey dust.

- Tracks:
  - When above ground:
    - Short sets of claw marks.
    - Quickly filled by shifting ash.

- Inspect:
  - Low:
    - “Ash ground is disturbed; something moves beneath.”
  - Higher:
    - “These tunnels criss-cross; a big one is using the smaller ones as scouts.”

### 6.4 Wounds

- **Ash burns**:
  - Burn wounds with added lung irritation.
- **Burrow assaults**:
  - Leg injuries from sudden ground failure.
- **Alpha attacks**:
  - Grave wounds possible:
    - “Ash-Lung Burn”, fractures from eruptions.

### 6.5 Loot & Hooks

- Ash-hardened plates:
  - Armor upgrades.
- Ash residue:
  - Alchemy & Ember Pot (ash-steeped stews).
- Unique organs:
  - Lab testing material (B101, 91).

Hooks:

- Hunts:
  - CH-GW-009 Ash-Eaters at the Edge.
  - Deed D-GW-003 Tracks in the Ash.
- Events:
  - Ash wind travel hazards (62).
- Festivals:
  - Ash-Edge Vigil.

---

## 7. Hollowroot Brood – Early Forms (Family: `hollowroot_brood`)

### 7.1 Role & Fantasy

- Archetype:
  - **Unsettling, low-tier corruption-touched life**.
- They:
  - Signal Hollowroot’s influence creeping into Greatwood.

### 7.2 Behavior

- Early forms:
  - Fungal gnats
  - Root-grubs
  - Small, skittering fungal husks.
- Behaviors:
  - Swarming around:
    - Rotting logs
    - Weirdly pulsing mushrooms.
  - Flee daylight / heat.
  - Congregate near minor corruption vents.

### 7.3 Fieldcraft Profile

- Signs:
  - Mushrooms with **vein-like patterns**.
  - Slightly glowing mycelium threads.
  - Rotten smells out of proportion to visible decay.

- Tracks:
  - Not classical tracks:
    - Soft, spongy footprints.
    - Clusters of shed chitin.

- Inspect:
  - Low:
    - “Something’s wrong with the growth here.”
  - Higher:
    - “These grubs aren’t natural; Hollowroot’s touch is close.”

### 7.4 Wounds

- Mostly:
  - **Corruption exposure**:
    - Minor coughs, itching, dizziness.
- High stacks:
  - Corrupted wounds:
    - “Spore-Burn Lungs”
    - “Mycelial Rash”.

### 7.5 Loot & Hooks

- Spore sacs:
  - Alchemy:
    - Dangerous reagents.
- Hardened chitin:
  - Light armor materials.
- Strange growths:
  - Labs & Warding Wing research fuel.

Hooks:

- Deed D-GW-004 (The Whisper in the Hollow).
- Corruption system (91) ramp-up.
- Secrets:
  - Whispering Caches in fungus clusters.

---

## 8. Birds of Prey & Flock Creatures (Family: `raptor_greatwood`, `flock_small`)

### 8.1 Role & Fantasy

- Birds of prey:
  - **Vertical harassment & scouting**.
- Flocks:
  - **Living environmental alarms**.

### 8.2 Behavior

**Birds of Prey (Raptors):**

- Nest on cliffs, high trees.
- Swoop attacks:
  - Dive strikes at exposed heads/shoulders.
- Perch and watch:
  - Adjust behavior based on:
    - Player noise
    - Fire use.

**Flocks (Crows, small birds):**

- Flushed by:
  - Movement
  - Loud noises
  - Approaching beasts.
- Their behavior:
  - Telegraphs activity:
    - Sudden silence
    - Sudden flush in a direction.

### 8.3 Fieldcraft Profile

- Signs:
  - White droppings on rocks below perches.
  - Scattered small bones.
  - Nest material (feathers, twine, stolen cloth).

- Audio:
  - Key:
    - Alarm shrieks
    - Flock flush noise
    - Bird silence.

- Inspect:
  - “Nest here has fresh kill bones. Big raptor nearby.”

### 8.4 Wounds

- Mostly:
  - Minor cuts and eye-risk.
- Rare:
  - Knockdown if you’re on a narrow ledge and get struck at bad angle.

### 8.5 Loot & Hooks

- Feathers:
  - Fletching, decor, quills.
- Talons:
  - Trinkets, special arrowheads.
- Meat:
  - Minor cooking ingredient.

Hooks:

- Hunts:
  - CH-GW-003 The Sentries in the Boughs.
- Secrets:
  - Cliff nests with stashed items.
- Fieldcraft:
  - Bird behavior hints at hidden predators.

---

## 9. Human / Humanoid Threats (Family: `human_poacher`, `human_rogue`, `cult_cell_early`)

### 9.1 Role & Fantasy

- Archetype:
  - **Intelligent, moral-complex threats**.
- They:
  - Break the “just kill beasts” rhythm.
  - Force moral & political decisions (D-GW-005).

### 9.2 Behavior

**Poachers:**

- Set:
  - Traps and snares.
  - Bait animals.
- Prefer:
  - Hidden camps just out of sight of Lodge patrol routes.
- Behaviors:
  - Fall back to cover.
  - Use ranged & melee mix.
  - Flee when losing, sometimes abandoning wounded comrades.

**Rogue Hunters / Bandits:**

- Former Lodge or outsiders.
- Less skilled at stealth than poachers but:
  - Better geared.
- Behavior:
  - Use knowledge of:
    - Standard routes
    - Lodge habits.

**Early Cult Cells (if present this early):**

- Small, secretive groups.
- Behavior:
  - Avoid direct fights in Greatwood 1–20.
  - Leave odd symbols, quiet rituals.

### 9.3 Fieldcraft Profile

- Tracks:
  - Boot prints:
    - Consistent stride.
  - Trap sites:
    - Scuffed soil, drag marks from victims.

- Signs:
  - Cut rope ends.
  - Campfire rings with non-Lodge style.
  - Messy but *human* rubbish:
    - Bottles, tins, patched canvas.

- Inspect:
  - Low:
    - “Boot prints. Not Lodge pattern.”
  - Higher:
    - “Two different gaits; one heavier, one limping – likely poachers.”

### 9.4 Wounds

- Weapon-caused:
  - Cuts, punctures, fractures.
- Traps:
  - Crush injuries, limb damage.
- Poison (if used):
  - Wounds akin to spider venom.

### 9.5 Loot & Hooks

- Gear:
  - Scrap armor, weapons.
- Notes:
  - Pointers to caches, bigger operations.
- Trophies:
  - Illegal pelts, contraband.

Hooks:

- Hunts: CH-GW-010 The Poachers’ Signs.
- Deeds: D-GW-005 A Debt in Blood.
- Social/Rep:
  - How you treat captured humans matters for Lodge circles.

---

## 10. Ambient Critters (Family: `ambient_small`)

### 10.1 Role & Fantasy

- Not combat threats.
- They:
  - Make the forest feel alive.
  - Sometimes lead to secrets or tiny rewards.

### 10.2 Behavior

- Rabbits, foxes, squirrels, frogs.
- Behaviors:
  - Rabbit scattering from bushes.
  - Fox observing from distance, leading you to:
    - Food / simple cache.
  - Squirrel chatter reacting to predators.

### 10.3 Fieldcraft & Hooks

- Fox’s Stash secret (90).
- Small gatherable carcasses:
  - Meat, hides, small bones.

Mostly:

- Background life.
- Occasional light interactions.

---

## 11. Difficulty & Tiering

### 11.1 Early Band (1–5)

- Main threats:
  - Wolves (small packs).
  - Boars (one at a time).
  - Basic spiders.
  - Few human traps.
- Emphasis:
  - Learning telegraphs.
  - Seeing trails.

### 11.2 Mid Band (6–12)

- Mixed packs:
  - Wolves + boars + opportunistic spiders.
- Stronger raptors.
- Ash-eaters appear near their zones.
- Poachers more active.

Emphasis:

- Reading **combinations**:
  - What happens when birds flush and wolves circle while you approach poacher snares.

### 11.3 Upper Band (13–20)

- Alpha beasts:
  - Boar Deed target, Ash-Burrowed alpha.
- Early Hollowroot forms more present.
- Complex human threats.
- Minor corruption-charged variants:
  - Black-sap-touched wolves/boars.

Emphasis:

- Connecting:
  - Behavior, trails, wounds, and **Deed story beats**.

---

## 12. Technical Family Model

Each family gets:

```yaml
family_id: "wolf_greyback"
display_name: "Greyback Wolves"
role_tags: ["predator", "pack", "ridge"]
regions: ["low_eaves", "mid_greatwood_ridges"]
pocket_bias: ["ridge_rim", "forest_edge"]
behavior_sets:
  - "pack_harass"
  - "flank_loop"
  - "fear_break"
fieldcraft_profile_id: "wolf_greyback_profile"
wound_profile_id: "wolf_bite_profile"
loot_table_id: "wolf_greatwood_loot"
event_tags: ["night_howl", "pack_shadow"]
unique_variants:
  - "wolf_alpha_greatwood_01"
  - "scarred_pack_leader_01"
