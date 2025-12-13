# 88 – Co-op & Group Hunts Framework (Scaling, Roles, and Social Hooks)

## Purpose

Define the **future framework** for:

- Co-op / party-based Hunts and Deeds
- How combat, tracking, and rewards scale for groups
- How group play ties into:
  - World bosses and Deeds (61, 66)
  - Camps and fieldcraft (67, 77, 79, 80)
  - Lodge social identity and politics (64, 83)

Goal: ensure Emberwild’s systems are built to **support co-op hunts**, even if Greatwood 1–20 initially ships primarily as a solo-first experience.

---

## Core Co-op Fantasy

- A small group of hunters from the Lodge:

  - Preparing together at the Ember Pot (85).
  - Trekking into Greatwood.
  - Using combined skills (tracking, traps, ranged, melee) to take down major prey.
  - Returning to Lodge to share stories and decorate the Trophy Wall (86).

Co-op should feel like:

- A **hunt party**, not a raid with rigid MMO roles.

---

## Party Structure

### Party Size

- Target group size for early co-op Hunts:

  - 2–4 players (sweet spot).
- World bosses could support:

  - Slightly larger temporary gatherings, but design primarily for smaller groups.

### Soft Roles (Not Hard Classes)

Encourage:

- **Trail Lead** – best tracker / fieldcraft (Path of the Trail, Forester).
- **Arrow Hand** – ranged specialist (Path of the Bow, bow gear 72).
- **Blade Hand** – frontline melee (73, 75, 74).
- **Camp Steward** – strong in Cooking, Alchemy, camp setup (52–58, 77).

Any player can mix roles, but:

- Builds and talents will naturally tilt one way or another.

---

## Difficulty & Scaling

### Enemy Health & Damage

Scaling targets:

- For 2–4 players, compare to solo baseline:

  - Health:
    - Increase total HP, but less than linear (e.g., 1.7x for 2 players, 2.5x for 3, 3.2x for 4).
  - Damage:
    - Slightly increased to maintain threat, but not 1:1 with player count.

Goal:

- Group hunts feel **challenging but fair**.
- More players should feel like an advantage, but not a trivialization.

### Behavior Scaling

- Packs and bosses:

  - Use more advanced behaviors in co-op:

    - Additional adds.
    - Target switching between players.
    - Attacks that punish clumping.

- Flee behavior:

  - Rare hunts may:

    - Flee differently when multiple hunters are present (more attempts to break line-of-sight).

---

## Tracking & Fieldcraft Co-op (67, 80)

- Multiple players can:

  - Inspect signs and tracks.
  - Share information via UI markers.

- Quality-of-life:

  - When one player inspects a track:
    - Group gets a shared hint.
  - Path of the Trail talents:
    - Beneficial to the whole group (party aura-style bonuses).

- Hounds (if implemented, 87):

  - Multiple hounds must be tuned to avoid chaos.
  - Option: party limit on “active hounds” or soft restrictions.

---

## Camps & Shared Prep (77, 85)

### Co-op Camps

- Camps created by one player:

  - Offer rest and buffs to entire party.
- Parties can:

  - Work together to upgrade a camp (structures, racks, blinds).

### Ember Pot & Shared Buffs

- Party members who:

  - Contributed to Ember Pot recently may get slight bonuses.
  - Or all share the same Lodge-wide Pot buff.

- Pre-hunt ritual:

  - Group sits down at Ember Pot before leaving.
  - Mechanically:

    - Confirmation / “ready check.”
    - Optional buff distribution.

---

## Group Hunts & Deeds (61, 66)

### Co-op-Specific Deeds

- Some Deeds explicitly tuned for group:

  - “The Howl in Three Directions” – wolf pack hunt requiring covering multiple flanks.
  - “Ash-Tide Stampede” – boar or beast herd encounter with multi-angle threats.

Mechanics:

- Objectives that benefit from:

  - Splitting roles (one player controls adds, another focuses boss).
  - Coordinated trap placement (79).

### Rewards

- Each player:

  - Receives Hunt/Deed completion.
  - Gets personal loot rolls.

- Shared trophies:

  - World boss or major Deed:

    - Unlocks Lodge Trophy Wall entries (86) for the group.

---

## Communication & Social Hooks (64, 83)

- Emote / ping system:

  - Simple non-voice tools:
    - “Tracks here.”
    - “Camp here.”
    - “Incoming.”
- Lodge social layer:

  - NPCs may reference:

    - Known group compositions or famous parties.
  - Achievements:

    - “This was taken down by [PlayerName]’s party.”

- Festivals:

  - Announce:

    - Major group achievements (first kills of certain bosses).

---

## Death, Injuries, and Revives in Co-op (70)

- When a player drops to 0 HP:

  - Knockdown state with a **revive window**.
  - Party members can:

    - Spend time to revive.
    - Use specific items (balms, potions) to make it faster.

- Wipe behavior:

  - Full party wipe:
    - Respawn at camp or Lodge depending on context.
  - Death penalties:

    - Apply individually (Shaken debuff).
    - Camps can help partial recovery; Lodge provides full reset.

---

## Loot & Economy Sharing (84)

- Coin:

  - Either:

    - Split among group.
    - Or each player gets independent coin rewards for Hunt completion.

- Items:

  - Primarily personal loot:
    - Prevents fights over drops.
  - Certain trophy materials:

    - Could be shared or used to craft group-display items (e.g., group’s name engraved on a Lodge plaque).

---

## Co-op Access & Flow

### Forming a Party

- From Lodge:

  - Parties can form near the Hunt Board.
  - UI:

    - “Form Hunt Party” option.
    - Select Deed / Hunt to pursue.

- In the field:

  - Lightweight “invite to hunt party” for nearby players (future multiplayer structure).

### Co-op Hunt Lifecycle

1. Gather at Lodge, talk to Hunt Board.
2. Form or join party for specific Hunt/Deed.
3. Prep:

   - Ember Pot, gear checks, camp supplies.

4. Travel together following tracks (67, 80).
5. Engage target; handle death & injury as a group (70).
6. Return to Lodge:

   - Turn in at Hunt Board.
   - See updates on Trophy Wall/Hall (86).
   - Social wrap-up (64).

---

## Integration With Existing Systems

- **Combat Philosophy (71):**
  - Co-op reinforces “intentional, readable fights.”
  - No pure zerg; group must coordinate.

- **Weapons, Armor, Talents (72–75, 82):**
  - Build synergies shine more in group play.
  - Example:
    - Bow user with Opening Volley + melee with Timely Guard + Trail path player.

- **Events & Weather (62, 81):**
  - Certain co-op Hunts could be weather-locked:
    - “Hunt this thing only during a storm.”
    - Group coordination deciding whether to brave a storm or wait.

---

## Next Actions

- Decide **scope** for initial co-op:

  - Are Hunts fully co-op from day one?
  - Or only world bosses and a few Deeds?

- Define:

  - Initial party size limit.
  - Baseline scaling formulas for HP, damage, and rewards.

- Design:

  - 2–3 sample co-op-specific Hunts/Deeds.
  - A first-pass “Form Hunt Party” Lodge flow.
