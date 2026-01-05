# Stonebridge Peddler Circuit
[Back to Hub](../Greatwood_Whisperline_Hub.md)

## Hook
Driftcart Peddler Yim wants to prove his circuit is still safe. He asks you to carry his wares across the Stonebridge and back, leaving tokens to show the route stayed clear.

## Objectives
1. Collect a bundle containing **2026-01-04_SIGMA Whisperline Spore Husk** and **2026-01-04_SIGMA Stonebridge Resin Thread** from **Driftcart Peddler Yim**.
2. Place **2026-01-04_SIGMA Echo-scored Smuggler Seal** tokens at three benches noted in **RW-099**.
3. Return to Yim with at least one **2026-01-04_SIGMA Stonebridge Ward Salve** unused to prove no ambushes triggered.

## Where It Happens
- Whisperline Stonebridge benches and ramp.

## Rewards
- XP, coin, peddler favor.
- Items: **2026-01-04_SIGMA Stonebridge Boots**, **2026-01-04_SIGMA Whisperline Resin Thread**.

## Ties
- Artifact: **2026-01-04_SIGMA_Whisperline_Artifact_15.md** (mentions Yim's bench marks).
- Rumor: **RW-099**.

## Implementation Notes
- Bundle pickup grants temporary encumbered state; movement speed reduced until dropoff.
- Token placement consumes one seal per bench; track placements to show a breadcrumb trail for other players.
- If player uses the ward salve, mark route as contested and lower reward coin by 25%.
