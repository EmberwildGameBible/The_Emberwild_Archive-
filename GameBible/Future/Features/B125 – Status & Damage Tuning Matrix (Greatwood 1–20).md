Links: [B152 Index](./B152 – Greatwood 1–20 Systems Index.md) | Related: [B111](./B111 – Greatwood Onboarding & Player Flow (1–20).md), [B113](./B113 – Greatwood Pockets, Landmarks & Travel (Greatwood 1–20).md), [B115](./B115 – Greatwood Contract Pack (Phase I–II, Levels 1–9).md), [B116](./B116 – Greatwood Contract Pack (Phase III–IV, Levels 10–20).md), [B151](./B151 – Greatwood Loot & Drop System (1-20).md)

# B125 – Status & Damage Tuning Matrix (Greatwood 1–20)
1. Purpose

Apply the global status & damage framework (B109) to the Greatwood 1–20 arc in a concrete, tuned way:

Define which tags show up where, and when.

Ensure each pocket, enemy family, and Signature Hunt has:

A clear status identity.

A damage profile that supports role loadouts (B110, B124).

Avoid:

Status overload in early levels.

Unfair stacking of similar punishing effects.

Provide a matrix designers can quickly reference when building encounters, contracts, and loot in B115–B124.

This is implementation-facing: not flavor, but “what actually happens and when”.

2. Tag Cheat Sheet (From B109, Greatwood-Relevant)

Only listing the tags that actually matter in Greatwood 1–20:

Damage Type Tags

TAG_PHYSICAL_SLASH

TAG_PHYSICAL_BLUNT

TAG_PHYSICAL_PIERCE

TAG_ARCANE

TAG_SPIRIT

TAG_TOXIC

TAG_FIRE (player/rare enemy use)

Status / CC Tags

TAG_BLEED

TAG_POISON (subset of TOXIC)

TAG_SLOW

TAG_ROOT

TAG_KNOCKDOWN

TAG_STUN

TAG_SUPPRESSED (fear, focus disruption)

TAG_WOUND (longer-term physical injury)

TAG_FEAR / TAG_TERROR (usually baked into SUPPRESSED for player-facing UI)

Corruption / Meta Tags

TAG_CORRUPTION (damage/status)

TAG_CORRUPTION_SICKNESS (HCL/HCL interaction)

TAG_CORRUPTED_ENV (areas, not attacks)

Greatwood 1–20 does not need deeper late-game weird tags; those come later.

3. Global Ramp Rules (Greatwood 1–20)

To keep things readable and fair:

Tier 1 (Lvl 1–5):

Show:

Physical damage types.

Very light BLEED/POISON.

Avoid:

Corruption, complex CC chains.

Status complexity cap:

1 status at a time from normal enemies; 2 max from elites.

Tier 2 (Lvl 6–10):

Introduce:

POISON in meaningful ways (Hollowroot Fringe).

SLOW (Ragged Verge, Ember Run).

SUPPRESSED light versions (Howls, intimidation).

Very light Corruption presence:

Only in Grove fringe.

Tier 3 (Lvl 11–15):

Bring in:

Stronger TOXIC (Warren), more BLEED (Ridge Beasts).

Short ROOT, KNOCKDOWN, occasional STUN.

Early TAG_CORRUPTION + ZCL interplay in Grove & Wardstone Hill pockets.

Status complexity:

Elites and mini-bosses may layer 2–3 status types, but not all at once.

Tier 4 (Lvl 16–20):

All of the above:

Fully online, but pocket-specialized.

Signature Hunts (Devourer, Matron, Howler, Ragged King, Shadow):

Each owns a distinct status profile:

Devourer: Corruption + SLOW.

Matron: POISON + swarm control.

Howler: BLEED + SUPPRESSED.

Ragged King: single-target physical / WOUND, minimal debuff spam.

Shadow: ARCANE/SPIRIT + SUPPRESSED + light HCL.

No single fight should:

Stack 3+ damaging over-time statuses (BLEED, POISON, CORRUPTION) on the player at once.

Status combos should be designed to force different responses, not just “more bars ticking down”.

4. Pocket-Level Identity (Status & Damage)
4.1 Ragged Verge

Fantasy: Scrappy beasts, ambushes, physical danger. Very little magic/corruption.

Primary damage:

TAG_PHYSICAL_SLASH, TAG_PHYSICAL_PIERCE, some TAG_PHYSICAL_BLUNT.

Primary statuses:

TAG_BLEED (Ridge Wolves, boars).

TAG_SLOW (muddy ground, certain beast tackles).

Secondary:

Light TAG_SUPPRESSED from howls/intimidation at higher tiers.

Tier-by-tier:

T1 (1–5):

Wolves:

Occasional light BLEED (short duration).

Basic beasts:

Mostly raw physical.

T2 (6–10):

Ridge Beast elites:

More consistent BLEED, small KNOCKDOWN on charges.

T3–T4 (11–20):

Greatwood Howler & high-tier wolves:

Strong BLEED, SUPPRESSED via howls.

No TOXIC or CORRUPTION; Ragged Verge is clean nature-danger.

4.2 Hollowroot Fringe & Warren

Fantasy: Rot, spores, insects/brood, claustrophobic tunnels.

Primary damage:

TAG_PHYSICAL_PIERCE, TAG_PHYSICAL_SLASH, some TAG_TOXIC.

Primary statuses:

TAG_POISON (which is TOXIC).

TAG_SLOW (spores, sticky fungal mats).

Secondary:

Occasional TAG_ROOT from fungal roots.

KNOCKDOWN from burrowing ambushes.

Tier-by-tier:

T1–T2 (1–10):

Fringe only:

Weak POISON (grubs, spores).

SLOW from stepping on spore patches.

T3 (11–15):

Mid-Warren:

Stronger POISON stacks.

Roots that punish standing in place.

Light STUN if hit by big fungal explosions.

T4 (16–20):

Matron’s Cradle (B118):

Heavy POISON.

Combined ROOT + POISON combos in bad positions.

Very small TAG_CORRUPTION presence only where experiments have touched the brood (optional, not core identity).

Hollowroot = POISON & swarm, not Corruption.

4.3 Black Sap Grove (incl. Devourer’s Lair)

Fantasy: Corruption, slow drowning, sticky horror.

Primary damage:

TAG_CORRUPTION (direct or via Sickness).

TAG_PHYSICAL_BLUNT / SLASH (beasts).

Primary statuses:

TAG_CORRUPTION_SICKNESS.

TAG_SLOW (sap pools).

Secondary:

Mild TOXIC cross-over (sap as irritant).

Occasional KNOCKDOWN from resin spikes.

Tier-by-tier:

T2 (6–10):

Grove fringe:

Small Corruption DoT from standing in pooled sap.

No big spikes yet.

T3 (11–15):

deeper mid-Grove:

Sapling Horrors:

Attacks with low TAG_CORRUPTION.

Sap-Leech swarms:

Bit + Corruption Sickness stacks.

T4 (16–20):

Devourer’s Thicket (B117):

ZCL at 3–4; standing anywhere too long increases HCL.

Attacks:

Sap Spit → Corruption Sickness + small DoT.

Sap Pools → SLOW + HCL acceleration.

Sapstorm Bellow → many small Corruption-tagged hits.

Grove = Corruption management arena.

4.4 Ember Run

Fantasy: Fast water, slick stones, ambushes, some fire.

Primary damage:

TAG_PHYSICAL_BLUNT (falls, hits).

TAG_PHYSICAL_PIERCE (river beasts).

Primary statuses:

TAG_SLOW (wet terrain, chill).

Secondary:

Occasional small TAG_FIRE interactions for player (brews, kits).

Almost no POISON/Corruption baseline.

Tier-by-tier:

T1–T2:

Mostly movement hazards:

Slip SLOW, small KNOCKDOWN.

T3–T4:

Ember Run predators:

Bites with localized BLEED.

Ember Bridge Vigil (V1):

Some enemy types may bring light CORRUPTION or TOXIC, but the pocket’s identity is still physical + environmental.

4.5 Wardstone Hill

Fantasy: Arcane wards, spiritual echoes, disciplined Warden magic.

Primary damage:

TAG_ARCANE / TAG_SPIRIT.

Some TAG_PHYSICAL_BLUNT from constructs.

Primary statuses:

TAG_SUPPRESSED (ward feedback, mental shake).

Minor TAG_STUN (echo pulses).

Secondary:

Light TAG_CORRUPTION only in specific experiments (Shadow Under the Wardstone, B121).

TAG_ROOT from ward anchors rarely.

Tier-by-tier:

T2 (6–10):

Very light Arcane pulses from unstable minor wardstones.

T3 (11–15):

Ward Echoes in R6:

SUPPRESSED if you stand in bad fields.

T4 (16–20):

Shadow Under the Wardstone:

Ward-Shadow:

ARCANE/SPIRIT damage.

SUPPRESSED & small STUN pulses.

Local HCL changes in corrupted ward circles.

Wardstone Hill = ARCANE/SPIRIT + SUPPRESSED, not raw physical.

5. Enemy Family Profiles

Hooking to B114 (Enemy Families) but tuned for Greatwood.

5.1 Ridge Beasts (Wolves, Boars, Greatwood Howler)

Damage:

SLASH (bites, claws), PIERCE (gore), BLUNT (tackles).

Status:

BLEED (teeth/claws).

KNOCKDOWN (charges).

SUPPRESSED (howls at higher tiers).

Rules:

Early wolves:

Low BLEED, no SUPPRESSED.

Howler:

Strong BLEED + SUPPRESSED, but no TOXIC, CORRUPTION.

5.2 Hollowroot Brood (Grubs, Stalkers, Matron, Spore Clusters)

Damage:

PIERCE/SLASH + TOXIC (spores).

Status:

POISON (primary).

SLOW (spores, webs).

ROOT (root-tentacles, fungal binds).

Rules:

Don’t stack heavy BLEED here; let POISON own the space.

Matron only:

May briefly KNOCKDOWN in big leaps / collapses.

5.3 Black Sap Creatures (Sap-Wolves, Sapling Horrors, Resin Husks, Devourer)

Damage:

BLUNT (crushing resin), SLASH, and CORRUPTION.

Status:

CORRUPTION_SICKNESS (primary).

SLOW (sap pools).

Secondary:

Very minor POISON if needed, but keep it clearly subordinate.

Devourer:

Should not also be heavy BLEED or POISON – let each Signature Hunt specialize.

5.4 Ward Echoes & Constructs

Damage:

ARCANE, SPIRIT, small BLUNT (construct slams).

Status:

SUPPRESSED.

STUN (short).

Secondary:

Very tiny CORRUPTION interplay only in Shadow fight.

These enemies support:

Warden/Scholar content.

Teach reading ground glyphs and pulses.

5.5 Human / Humanoid (Warden Adepts, Rogues, NPCs in special cases)

Used sparingly in Greatwood.

Damage:

MIX of physical & small Arcane (if caster).

Status:

Light BLEED (weapons).

Light SLOW (nets, snares).

No heavy POISON/CORRUPTION from humans in this arc; that’s a later escalation.

6. Signature Hunt Profiles (One-Look Table)
6.1 Greatwood Howler (B119)

Damage:

PHYSICAL_SLASH/PIERCE, occasional BLUNT on tackle.

Status:

Primary: BLEED, SUPPRESSED.

Secondary: KNOCKDOWN on charge.

No TOXIC/Corruption.

6.2 Hollowroot Matron (B118)

Damage:

PHYSICAL_PIERCE/SLASH + TOXIC.

Status:

Primary: POISON, SLOW.

Secondary: ROOT, KNOCKDOWN in specific moments.

6.3 Black-Sap Devourer (B117)

Damage:

PHYSICAL_BLUNT + CORRUPTION.

Status:

Primary: CORRUPTION_SICKNESS, SLOW (sap).

Secondary: KNOCKDOWN (impacts), mild TOXIC = sap irritation.

6.4 Ragged King (B120)

Damage:

PHYSICAL_PIERCE/BLUNT.

Status:

Primary: WOUND (serious gore).

Secondary: Mild BLEED, KNOCKDOWN on big charge.

Almost no debuff spam:

This fight is about dueling geometry and decision, not status overload.

6.5 Shadow Under the Wardstone (B121 – Ward-Shadow)

Damage:

ARCANE/SPIRIT.

Status:

Primary: SUPPRESSED, STUN (short pulses).

Secondary: HCL shifts in corrupted circles, light CORRUPTION.

Core theme:

Mental pressure + positional puzzles.

Each Signature fight thus has a distinct status/damage theme that matches its story:

Howler – fear & blood.

Matron – toxins & nests.

Devourer – corruption & terrain.

Ragged King – pure physical, moral weight.

Shadow – arcane, ideological weight.

7. Difficulty & Fairness Guardrails

To avoid cheap-feeling deaths:

No triple-DoT combos:

At most:

2 DoT-style statuses at once (e.g. BLEED + POISON or POISON + CORRUPTION), and this only late-game & in rare encounters.

Most of Greatwood:

1 DoT at a time.

Clear telegraphs:

Any attack that:

Applies strong STUN, KNOCKDOWN, or ROOT must have:

A readable animation or ground indicator.

E.g., Ward-Shadow’s pulses, Devourer’s Sap Geysers.

Stacking rules:

SUPPRESSED should:

Not stack numerically; repeated applications refresh duration or slightly escalate effect, but do not build to absurd extremes.

HCL:

Should build slower in early-mid Greatwood; only rapid in very specific T4 zones (Devourer arena, worst Ward circles).

Role interplay:

Warden gear and brews:

Actually mitigate:

Physical bursts, Arcane pulses, Corruption surges.

Scholar tools:

Useful vs swarm, TOXIC, suppression effects.

Corruption-Edge:

Can take advantage of Corruption fights, but has real risk pressure.

Woodsman:

Not punished by every pocket; their gear should always give them a workable angle.

8. Quick-Reference Matrix

High-level matrix (✔ = common, (✔) = occasional, – = rare/none):

Damage
Pocket / Family	Physical	Toxic	Arcane/Spirit	Corruption
Ragged Verge / Ridge Beasts	✔✔✔	–	–	–
Hollowroot Fringe/Warren	✔✔	✔✔✔	–	–(+) maybe minor in experiments
Black Sap Grove	✔✔	(✔)	–	✔✔✔
Ember Run	✔✔	–	–	–
Wardstone Hill	(✔)	–	✔✔✔	(✔) only in Shadow path
Status
Pocket / Family	BLEED	POISON	SLOW	ROOT	KD / STUN	SUPPRESSED	CORR SICK
Ragged Verge	✔✔	–	✔	–	(✔)	✔ (late)	–
Hollowroot	–	✔✔✔	✔	✔	(✔)	–	–
Black Sap Grove	–	(✔)	✔✔✔	–	(✔)	–	✔✔✔
Ember Run	(✔)	–	✔✔	–	(✔)	–	–
Wardstone Hill / Echoes	–	–	(✔)	(✔) anchor	✔ (short)	✔✔✔	(✔)
9. Integration Pointers

B107 – Gear Families:

Use this matrix to ensure:

Gear resistances line up with actual pocket threats.

B108 & 58 – Alchemy & Brews:

Map which brews are most relevant in each pocket:

Antitoxins → Hollowroot.

Cleanses & Warden’s Veil → Grove/Wardstone.

Fear/suppression resist → Howler, ridge Hunts.

B115–B116 – Contract Packs:

When designing a contract:

Pick at most 2 primary statuses per encounter.

Cross-check matrix so you don’t randomly put heavy TOXIC in Ragged Verge, etc.

B117–B121 – Signatures:

Encounter specs already assume this tuning.

Use matrix to keep any revisions consistent.
