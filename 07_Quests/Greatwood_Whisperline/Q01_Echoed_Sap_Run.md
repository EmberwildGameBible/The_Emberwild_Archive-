# Echoed Sap Run
[Back to Hub](../Greatwood_Whisperline_Hub.md)

## Hook
Sapbroker Neral needs fresh sap to keep the Hearthpost kettles running, but Lia Corrin's runners echo false songs to throw wardens off the trail. Neral asks you to gather and verify sap under warden eyes before the smugglers repaint the marks.

## Objectives
1. Collect 6 **2026-01-04_SIGMA Whisperline Sap Flake** bundles from Bramble-Echo Thicket nodes.
2. Trade 2 bundles to **Sapbroker Neral** for chalk tags, then carry the rest to **Warden-Captain Aelric** at Whisperline Hearthpost.
3. Use **2026-01-04_SIGMA Whisperline Signal Chalk** to mark three approved trees so wardens can tell them from smuggler signs.

## Where It Happens
- Bramble-Echo Thicket gathering nodes.
- Whisperline Hearthpost handoffs with Sapbroker Neral and Warden-Captain Aelric.

## Rewards
- XP, coin, warden favor.
- Items: **2026-01-04_SIGMA Whisperline Sap Tea**, **2026-01-04_SIGMA Hearthpost Boots**.

## Ties
- Artifact: **2026-01-04_SIGMA_Whisperline_Artifact_01.md** (sap stains match the collected bundles).
- Rumor: **RW-001**.

## Implementation Notes
- Track player inventory for the exact sap item count; disallow substitutes.
- Chalk application uses a proximity prompt on tagged trees; update quest step when three marks exist.
- NPC dialogue branches if player approaches Aelric before trading with Neral; lock handoff until trade flag set.
