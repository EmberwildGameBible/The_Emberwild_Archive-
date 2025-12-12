# Class Balance — Principles & Tuning

Guidelines to keep class kits cohesive, fair, and true to a classic MMO cadence. Use this when drafting or revising compendiums, talents, and ability ladders.

## Philosophy
- **Role clarity first:** Each class should anchor to a primary role (tank, healer, ranged physical, caster, melee DPS) with a secondary niche that doesn’t eclipse the primary.
- **Resource pacing:** Energy/combo, rage, and mana kits should lean on clear highs/lows (burst vs. regen windows) instead of flat sustain. Avoid infinite loops.
- **Strengths with visible tradeoffs:** Strong single-target? Then weaker cleave. Great mobility? Then less control. High control? Then lower burst. Make the tradeoff readable.
- **Scaling curves:** Early levels teach core loop; mid levels widen rotations; endgame adds mastery payoffs without erasing weaknesses.

## Tuning Targets
- **Time-to-kill (solo questing):** 10–14s on even-level mobs with greens; 7–10s with dungeon gear. Avoid 3–4s deletes.
- **Survivability:** Solo sustain should require downtime unless playing a sustain-focused spec. Dungeon tanks need active mitigation uptime of ~50–60%.
- **Resource regen:** Baseline regen covers essentials; efficiency increases via talent picks and profession food, not default passives.
- **Crowd control:** Hard CC uptime in PvE should average <25% per target; PvP CC should incur diminishing effectiveness.

## Role-Specific Guardrails
- **Tanks:** Threat tools every 6–8s, snap AoE on a long cooldown, and clear damage reduction buttons. Avoid full passive mitigation.
- **Healers:** Distinct healing profiles (direct vs. HoT vs. shields). Mana triage matters—strong heals should punish overhealing.
- **Melee DPS:** Need positional asks (rear attacks, flank windows) and brief downtime if they miss a mechanic. Access to interrupts.
- **Ranged Physical:** Ammo/charge economy with meaningful reload windows; mobility tools cost DPS.
- **Casters:** Cast times that can be interrupted; instant spells are setup/utility, not primary damage.

## PvE Encounter Fit
- **Dungeon cadence:** Expect 2–3 target packs with occasional 5–6 pulls. Kits should handle short cleave bursts but shine on single-target bosses.
- **Raid cadence:** Add management, debuff rotations, and gear checks. Avoid single-class requirements; multiple classes should cover mandatory debuffs.
- **Attunements & travel:** Major cooldowns should align with travel/attunement pacing so preparation matters.

## PvP Considerations
- **Counterplay:** Every core tool should have an obvious counter (dispellable, interruptible, line-of-sightable, position-dependent).
- **Escape vs. stickiness:** Classes with strong gap-closers should have weaker escapes, and vice versa.
- **Burst vs. sustain:** Burst specs need setup and windows; sustain specs should be pressure-based with lower peaks.

## Profession & Consumable Hooks
- **Food & potions:** Small, stackable buffs that smooth weak spots (hit, regen, resist) without becoming mandatory.
- **Resistance gear:** Situational use for attunements and specific bosses; keep baseline raids playable without full sets.
- **Crafted pre-raid gear:** Competitive with early dungeon blues but replaced by raid tier pieces; keeps professions meaningful.

## Checklist Before Shipping a Class Update
- Rotation has a clear setup → payoff loop.
- Cooldowns have counters and visible tells.
- Resource spenders can starve if misused (no infinite spam).
- Role and weakness are obvious to party members.
- Profession and consumable hooks exist but do not overshadow core kit.
