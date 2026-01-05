# Tar Pits Standoff
[Back to Hub](../Greatwood_Whisperline_Hub.md)

## Hook
Hollow Verge Encampment smolders under tar pit fumes, and Lia Corrin dares the wardens to enter. Sapbroker Neral asks you to recover seized sap bundles before the camp burns them, while Aelric demands proof that Corrin is sabotaging the whisperline wards.

## Objectives
1. Breach Hollow Verge Encampment and extinguish three tar pits using **2026-01-04_SIGMA Rootbound Ward Salve** from Neral.
2. Recover 4 crates of **2026-01-04_SIGMA Lumenwoven Resin Thread** stolen from Hearthpost runners.
3. Defeat Lia Corrin's lieutenant wielding **2026-01-04_SIGMA Barkmail Hood** and loot the encoded **2026-01-04_SIGMA Whisperline Ward Token**.
4. Deliver the crates and token to **Warden-Captain Aelric** to trigger a warden strike.

## Where It Happens
- Hollow Verge Encampment tar pits and command tent.
- Return handoff at Whisperline Hearthpost.

## Rewards
- XP, coin, choice of faction favor (Wardens or Smugglers).
- Items: **2026-01-04_SIGMA Barkmail Boots**, **2026-01-04_SIGMA Whisperline Resin Draught**.

## Ties
- Artifact: **2026-01-04_SIGMA_Whisperline_Artifact_12.md** (notes Corrin's tar sabotage plan).
- Rumor: **RW-027**.

## Implementation Notes
- Tar pits use environmental hazards; salve item triggers state change to disable damage volume.
- Lieutenant is a miniboss; ensure drop table includes the hood and ward token with 100% quest flag.
- Branch: players who give crates to Neral instead shift reputation to smugglers; flag informs later dialogue in Q04.
