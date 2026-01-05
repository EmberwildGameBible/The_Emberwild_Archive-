# Shrine Chalk Delivery
[Back to Hub](../Greatwood_Whisperline_Hub.md)

## Hook
Wardscribe Istra needs fresh signal chalk batches delivered to outlying ward stones before dusk. The smugglers watch the routes, so timing matters.

## Objectives
1. Craft or purchase 4 **2026-01-04_SIGMA Shrinesafe Signal Chalk** from **Wardscribe Istra**.
2. Deliver chalk to ward stones at Whisperline Stonebridge and Sapsong Crossing while carrying **2026-01-04_SIGMA Whisperline Ward Token** for access.
3. Report back to Istra with an empty **2026-01-04_SIGMA Shrinesafe Sap Tea** flask as proof you walked the route.

## Where It Happens
- Root-Song Shrine, Whisperline Stonebridge, Sapsong Crossing.

## Rewards
- XP, coin, shrine favor.
- Items: **2026-01-04_SIGMA Wardbound Sash**, **2026-01-04_SIGMA Rootbound Sap Tea**.

## Ties
- Artifact: **2026-01-04_SIGMA_Whisperline_Artifact_11.md** (lists the ward stone placements).
- Rumor: **RW-090**.

## Implementation Notes
- Delivery stones require both chalk and ward token; if either missing, prompt shows hint and blocks progress.
- Timer enforces dusk window; players must deliver within 8 in-game minutes or reset to step one.
- Empty flask appears only after player consumes the tea at the final stone; use consumable flag to spawn item.
