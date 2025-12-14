Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B109 – Damage Types, Status Effects & Corruption (Greatwood 1–20)
Purpose

Define the common ruleset for:

Damage types

Status effects (both on player and enemies)

How Corruption (ZCL/HCL) plugs into those

for the Greatwood 1–20 slice, so that:

Alchemy (58)

Gear traits (B107)

Hunts & Signature Hunts (61, B103)

Corruption & Warding (91, B101)

Professions & materials (B108)

are all playing on the same underlying system instead of making up bespoke “special damage” every time.

No hard numbers, just structure & behavior.

1. Damage Types (Greatwood Band)

We keep the early-game palette simple but expressive.

1.1 Primary Damage Types

Physical – Slashing

Physical – Piercing

Physical – Blunt

Elemental – Fire

Elemental – Frost (light use)

Elemental – Arcane/Spirit (very light, mostly Scholar/ward)

Corruption (special)

Every attack in the game is tagged with 1 primary type, sometimes a secondary tag for interactions.

Basic Intent

Slashing

Swords, axes, claws.

Good vs: light/medium flesh, unarmored beasts.

Weaker vs: heavy carapace/plate (unless big weapons).

Piercing

Spears, arrows, fangs, stingers.

Good vs: lightly armored targets, beasts, vital hits.

Weaker vs: very heavy armor, but can bypass some light defenses.

Blunt

Hammers, maces, heavy strikes, impact spells.

Good vs: armor, bone, carapace, structures (wardstones, nodes).

Weaker vs: nimble targets (harder to land, more stamina cost).

Fire

Alchemy bombs, some gear, certain enemies/environment.

Good vs: Hollowroot, spore clusters, sap pools, some corruption growth.

Risks: can trigger secondary effects (ignite terrain, harm allies, anger nature spirits later).

Frost (light touch in Greatwood)

A few experimental or rare scholar items/brews.

Acts mostly as a slow/mitigation element rather than raw damage.

Arcane/Spirit

Used mostly in ward/ritual-flavored attacks (Scholars, Wardens, some enemies).

Tends to ignore basic physical resistances; interacts more with corruption and HCL.

Corruption

Special: does not just reduce HP; it also feeds into HCL and corruption status (91).

Mostly from:

Corrupted enemies.

Black Sap attacks.

Experimental gear and failed rituals.

2. Status Effects – Categories

Status effects are grouped for clarity:

Health & Body

Movement & Control

Mental & Corruption

Environmental/Field

We define keywords so gear & brews can say “Resists POISON” instead of inventing one-off wording.

2.1 Health & Body Effects

BLEED

Cause:

High slashing crits, certain beast bites, traps.

Effect:

HP drains over time.

Often stoppable with bandages / balms (Alchemy 58).

Detail:

Stacks lightly; multiple small bleeds can be scary if ignored.

WOUND

Cause:

Heavy blows, certain boss attacks (Howler charge, Matron slam).

Effect:

Temporary max HP reduction and/or reduced healing received.

Intent:

“You got hit badly; now healing is less efficient until cleaned up.”

POISON

Cause:

Hollowroot stings, spores, some venomous creatures.

Effect:

HP drain + occasional minor debuff (reduced stamina regen, slight blur).

Removal:

Cleansebrew & specific antidote brews; Infirmary treatment.

BURN

Cause:

Fire attacks, environmental fire, some alchemy bombs.

Effect:

Short, intense HP DoT.

May ignite flammable ground/fungi.

DISEASE (rare in Greatwood 1–20, mostly hinted)

Cause:

Certain poorly handled carcasses, festering beasts.

Effect:

Long, weak drain + small stat debuff.

Mostly a story hook for later regions; Greatwood uses this sparingly.

2.2 Movement & Control Effects

SLOW

Cause:

Sap pools, frost effects, heavy strikes, certain brews.

Effect:

Reduced move speed, maybe heavier dodge cost.

ROOT

Cause:

Entangling roots, Hollowroot spikes, ward glyphs.

Effect:

Immobilized in place but can act (swing, shoot, cast).

Removal:

Strength check, cutting free, or specific brew.

STUN

Cause:

Heavy blunt hits, roars (Howler), chain explosions.

Effect:

Short loss of actions.

Used sparingly in 1–20; big telegraphed moves.

KNOCKDOWN / KNOCKBACK

Cause:

Charges, big impacts, certain bombs.

Effect:

Temporary control loss while getting back up / repositioned.

SUPPRESSED (light)

Cause:

Fear/roar, overwhelming noise or light.

Effect:

Brief slow + mild aim penalty.

2.3 Mental & Corruption Effects

These specifically tie into HCL and Corruption system (91).

CORRUPTION SICKNESS

Cause:

Corruption-heavy environments, Black Sap exposure, certain attacks.

Effect:

Increased HCL rate for a short time + subtle visual or audio distortions.

MADENING WHISPERS / HALLUCINATION (late Greatwood, used carefully)

Cause:

Very high HCL, certain story events.

Effect:

Short-lived misperception:

Illusory sounds.

Slight HUD disturbances.

NOT direct control loss; more like disorientation.

DESPAIR / DREAD (MORALE DEBUFF)

Cause:

Failing Corruption events, watching allies fall, story beats.

Effect:

Small penalties to stamina regen, or delay in ability usage.

Cleared by:

Rest in safe areas.

Certain brews.

Lodge events (Feast, Vigil).

We want mental/corruption effects to feel qualitatively different from poison/bleed:

They mess with perception, resolve, and long-term risk, not just HP.

2.4 Environmental & Field Effects

These are area-level:

HAZARDOUS GROUND

Sap pools (slow + mild corruption).

Spore clouds (poison + reduced vision).

Fire patches (burn).

WARD ZONES

Buff or protective areas generated by:

Wardstones.

Field wards.

Effects:

Slight reduction in corruption gain and/or small mitigation vs corrupted enemies.

CORRUPTION FOG / MIST

Localized high-corruption pockets:

Higher HCL gain.

Certain enemies get buffs while inside.

3. Status Effect Tags & Interactions

Each effect is tagged with one or more meta-tags:

TAG_PHYSICAL_DOT – bleed, wound.

TAG_TOXIC – poison, some disease.

TAG_FIRE – burn.

TAG_CORRUPTION – corruption sickness, mental effects.

TAG_CONTROL – slow, root, stun, knockback.

TAG_ENVIRONMENTAL – hazards, fields.

This allows:

Gear and Alchemy to say:

“Reduces duration of TAG_TOXIC statuses.”

“Provides small resistance to TAG_CORRUPTION effects.”

Simple hooks for resistances and cleanses.

4. Cleansing, Resistance & Alchemy Hooks
4.1 Cleansing Sources (Player Tools)

From Alchemy (58) and Lodge services:

Cleansebrew Tonic

Removes or reduces:

TAG_TOXIC (poison, some disease).

Minor effect vs mild TAG_CORRUPTION if upgraded.

Purge of the Glade

Stronger multi-cleansing brew.

Better vs:

Environmental poisons.

Some corruption sickness if formula advanced.

Warden’s Veil

Focused on:

Reducing HCL gain.

Mitigating TAG_CORRUPTION status intensities.

Bandages & Balms

Remove or reduce BLEED.

Slightly slow WOUND effect or accelerate its recovery.

Infirmary Rites

NPC service:

A more powerful but costly cleanse.

Can clear multiple status types and reduce accumulated HCL.

4.2 Gear-Based Resistances

From B107:

Ward-etched armor & weapons

Minor resistance to TAG_CORRUPTION statuses.

Slight reduction in HCL gain.

Hollowroot gear

Partial resilience vs:

TAG_TOXIC and certain spore hazards (since it’s native to that ecosystem).

Black Sap gear

Offensive synergy with Corruption but:

Increased HCL gain (TAG_CORRUPTION vulnerability).

Charms

E.g., Warden’s Knot charm:

Small reduction in TAG_CORRUPTION durations.

Devourer / Matron charms:

Offensive boosts vs corrupted or Hollowroot at minor cost.

5. Corruption, ZCL & HCL Ties (91 Integration)
5.1 ZCL (Zone Corruption Level) → Status Intensity

As ZCL rises in a pocket:

Frequency of TAG_CORRUPTION statuses increases.

Baseline HCL gain per time tick nudges upward.

Some enemy attacks in high ZCL areas:

Gain additional Corruption or Toxic tags.

Examples:

At ZCL 1:

Occasional corruption sickness when standing in certain spots.

At ZCL 3:

Many corrupted enemies’ attacks also inflict minor corruption sickness.

Environmental hazards more common.

At ZCL 4+ (mostly teased in Greatwood):

Persistent corruption fog; constant HCL pressure if unprotected.

5.2 HCL (Hunter Corruption Load) → Mental Effects

HCL tracks long-term exposure:

At low bands:

Mostly cosmetic: slight visual hints, rare whispers.

At mid bands:

Chance for:

Light mental effects (momentary hallucinations, suppressed).

At high bands (for 1–20, mostly story-gated):

Stronger mental distortions.

Increased risk from corruption-heavy status effects.

Cleanses (Infirmary, high-tier brews):

Reduce HCL and thus:

The frequency and severity of mental/corruption statuses.

6. Enemies & Affixes in Greatwood 1–20

Enemies use this system too.

6.1 Basic Affix Examples

Applied to beasts and corrupted creatures.

“Blood-Tipped”

Attacks more likely to apply BLEED.

“Sap-Soaked”

Attacks / presence create small sap pools (SLOW + mild TAG_CORRUPTION).

“Spore-Crowned”

Emits spore clouds on hit or death (POISON).

“Ward-Twisted” (rare corruption story foes)

Use corruption attacks that escalate HCL more quickly.

May interfere with Ward fields.

Affixes are kept limited in 1–20 to:

Clear families:

Hollowroot = spore/poison.

Black Sap = corruption & slow.

Warden-related foes = control / disruption.

7. Signature Hunts & Status Design (B103)

Each Signature Hunt uses specific subsets:

Greatwood Howler

Emphasis:

BLEED (bites, slashes).

Knockdown (charges).

Tools:

Bandages, balms.

Stamina & mitigation food/brews.

Black-Sap Devourer

Emphasis:

TAG_CORRUPTION sickness.

SLOW from sap pools.

Potential POISON-like sap DoT.

Tools:

Warden’s Veil, Purge of the Glade.

Black Sap/ward combos.

Hollowroot Matron

Emphasis:

POISON and spore hazards.

ROOTs / impale spikes.

Tools:

Cleansebrew & anti-toxin kits.

Fire-based alchemy for spore patches.

Ragged King

Emphasis:

Heavy STAGGER / KNOCKBACK.

Possible WOUND if gored.

Tools:

Solid positioning, defensive gear.

No strong Corruption; mostly a moral/identity Hunt.

Shadow Under the Wardstone

Emphasis:

TAG_CORRUPTION + CONTROL statuses:

Minor stuns/roots via ward glyphs.

Tools:

Ward-etched gear.

HCL awareness; Vail/cleanses.

8. Player-Facing Clarity

We keep the system readable:

HUD icons:

Distinct icons/colors for:

BLEED, POISON, BURN, CORRUPTION, etc.

Tooltip language:

Always uses the canonical status name:

“Applies BLEED (Health over time loss).”

“Applies CORRUPTION SICKNESS (increases Corruption gain for a short time).”

Gear & Brew tooltips:

Use the tags:

“Reduces duration of POISON and other TAG_TOXIC effects.”

“Slight resistance to TAG_CORRUPTION effects.”

No hidden statuses in early game; everything meaningful is labeled and can be learned.

9. Extension Beyond Greatwood

Later regions can:

Add more damage types (lightning, poison as its own primary).

Add more status flavors (deep fear, curse, more diseases).

Add more meta-tags (e.g., TAG_ELEMENTAL, TAG_SPIRITUAL).

But they should all build on the B109 base so that:

Alchemy, gear, Hunts, and corruption always talk in the same language.
