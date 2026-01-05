# Warden's Whisper Pact
[Back to Hub](../Greatwood_Whisperline_Hub.md)

## Hook
With Corrin exposed, Aelric proposes a pact: bind the whisperline songs back to the wardens, or let smugglers keep shadow verses alive. The decision decides who controls the Rootbound Vault gate.

## Objectives
1. Meet **Warden-Captain Aelric** and **Sapbroker Neral** at Whisperline Hearthpost to choose allegiance (Wardens or Smugglers).
2. Carry a tuned **2026-01-04_SIGMA Wardbound Sash** and a **2026-01-04_SIGMA Whisperline Ward Token** to the Root-Song Shrine altar.
3. Perform the chant taught by **Chant-Keeper Syl** using cues from **2026-01-04_SIGMA_Whisperline_Artifact_18.md**; keep rhythm for 30 seconds without interruption.
4. Report the outcome to your chosen faction lead; unlock Rootbound Vault access flag.

## Where It Happens
- Whisperline Hearthpost council fire.
- Root-Song Shrine altar circle.

## Rewards
- XP, coin, faction favor, Rootbound Vault attunement.
- Items: **2026-01-04_SIGMA Wardbound Boots**, **2026-01-04_SIGMA Whisperline Resin Draught** (if wardens) or **2026-01-04_SIGMA Echo-scored Smuggler Seal** (if smugglers).

## Ties
- Artifact: **2026-01-04_SIGMA_Whisperline_Artifact_18.md** (holds the chant steps).
- Rumor: **RW-036**.

## Implementation Notes
- Allegiance choice sets a boolean; future dialogue and loot tables check this flag.
- Chant mini-game: timed button prompts; failure resets to step 2 but keeps items consumed.
- Vault attunement flag gates entry in the dungeon script; apply to group if party members share allegiance.
