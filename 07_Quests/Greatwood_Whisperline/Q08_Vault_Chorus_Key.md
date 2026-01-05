# Vault Chorus Key
[Back to Hub](../Greatwood_Whisperline_Hub.md)

## Hook
Chant-Keeper Syl claims the Rootbound Vault will only open if two harmonies are offered: a warden verse and a smuggler echo. You must collect both and bind them into a wearable key.

## Objectives
1. Earn a **2026-01-04_SIGMA Whisperline Sash** from **Sapbroker Neral** and a **2026-01-04_SIGMA Wardbound Sash** from **Wardscribe Istra**.
2. Acquire **2026-01-04_SIGMA Whisperline Signal Chalk** and **2026-01-04_SIGMA Sapsong Ward Salve** to prepare the sashes.
3. At Root-Song Shrine, follow the dual-harmony steps in **2026-01-04_SIGMA_Whisperline_Artifact_40.md**; apply chalk and salve to both sashes at the altar.
4. Deliver the bound sashes to **Chant-Keeper Syl** to receive the Vault Chorus Key buff.

## Where It Happens
- Whisperline Hearthpost for vendor purchases.
- Root-Song Shrine altar for binding ritual.

## Rewards
- XP, coin, vault attunement progress.
- Items: **2026-01-04_SIGMA Wardbound Cloak**, **2026-01-04_SIGMA Whisperline Resin Thread**.

## Ties
- Artifact: **2026-01-04_SIGMA_Whisperline_Artifact_40.md**.
- Rumor: **RW-072**.

## Implementation Notes
- Require both sashes in inventory before altar interaction becomes visible.
- Binding ritual uses alternating prompts; missing a prompt consumes one chalk and restarts the sequence.
- Successful binding sets dungeon access flag used by the Rootbound Vault entrance.
