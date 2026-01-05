# Stonebridge Ledger Sting
[Back to Hub](../Greatwood_Whisperline_Hub.md)

## Hook
Warden scouts spotted Lia Corrin swapping ledger tokens at Whisperline Stonebridge. Aelric wants proof of the trade while Driftcart Peddler Yim quietly offers to reroute the haul if you play both sides.

## Objectives
1. Speak with **Driftcart Peddler Yim** beneath Whisperline Stonebridge to receive a forged **2026-01-04_SIGMA Whisperline Ledger Token**.
2. Plant the forged token inside the bridge cache near the rumor marker from **RW-014**.
3. Confront the smuggler lookout carrying **2026-01-04_SIGMA Stonebridge Signal Chalk** and retrieve her stamped copy of **2026-01-04_SIGMA Whisperline Ward Token**.
4. Return both proof items to **Warden-Captain Aelric**.

## Where It Happens
- Whisperline Stonebridge caches and benches.
- Patrol route between Stonebridge and Hollow Verge Encampment.

## Rewards
- XP, coin, warden reputation.
- Items: **2026-01-04_SIGMA Stonebridge Ward Salve**, **2026-01-04_SIGMA Whisperline Sash**.

## Ties
- Artifact: **2026-01-04_SIGMA_Whisperline_Artifact_05.md** (details the ledger swap sequence).
- Rumor: **RW-014**.

## Implementation Notes
- NPC Yim provides a forged token only once per daily reset; flag to prevent duplication.
- Cache placement uses an interactable container that checks for the forged token before progressing.
- Smuggler lookout should patrol with a small escort; defeat grants the chalk and ward token drops.
