# Luminarium Silence
[Back to Hub](../Greatwood_Whisperline_Hub.md)

## Hook
A fragment of song keeps echoing in the Luminarium, luring smugglers to siphon sap light. Archivist Pellan believes the fragment belongs to an older ward and asks you to quiet it.

## Objectives
1. Retrieve **2026-01-04_SIGMA Rootbound Song Fragment** from **Wardscribe Istra** using an artifact proof from **2026-01-04_SIGMA_Whisperline_Artifact_34.md**.
2. Collect 2 vials of **2026-01-04_SIGMA Whisperline Resin Draught** from Sapbroker Neral to dampen the echo.
3. Place the fragment at the center of Sapswell Luminarium and pour the draught while fending off smugglers wielding **2026-01-04_SIGMA Echoed Hood**.

## Where It Happens
- Root-Song Shrine archive corner.
- Sapswell Luminarium central pool.

## Rewards
- XP, coin, archive favor.
- Items: **2026-01-04_SIGMA Lumenwoven Cloak**, **2026-01-04_SIGMA Whisperline Ward Token**.

## Ties
- Artifact: **2026-01-04_SIGMA_Whisperline_Artifact_34.md**.
- Rumor: **RW-059**.

## Implementation Notes
- Fragment handoff requires the player to show the artifact in inventory; script checks for file ID.
- Applying draught plays a timed channel; interrupt spawns an extra wave before restart.
- Completion toggles a local light intensity change to show the Luminarium calming.
