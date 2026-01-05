# Hearthpost Supply Ledger
[Back to Hub](../Greatwood_Whisperline_Hub.md)

## Hook
Sapbroker Neral misplaced a supply ledger and suspects smugglers swapped it with a forged copy. He needs you to gather supplies and confirm which ledger matches the whisperline receipts.

## Objectives
1. Buy or gather 3 **2026-01-04_SIGMA Hearthpost Sash** and 3 **2026-01-04_SIGMA Hearthpost Hood** for Hearthpost quartermasters.
2. Compare both ledgers against **2026-01-04_SIGMA_Whisperline_Artifact_09.md** at the camp table.
3. Deliver the verified ledger to **Sapbroker Neral** and burn the fake one using **2026-01-04_SIGMA Stonebridge Signal Chalk**.

## Where It Happens
- Whisperline Hearthpost tables and supply racks.

## Rewards
- XP, coin, vendor discount.
- Items: **2026-01-04_SIGMA Hearthpost Cloak**, **2026-01-04_SIGMA Whisperline Sap Tea**.

## Ties
- Artifact: **2026-01-04_SIGMA_Whisperline_Artifact_09.md**.
- Rumor: **RW-081**.

## Implementation Notes
- Ledger comparison uses an interactable that checks for both hood and sash item counts before revealing the real ledger.
- Burning action consumes one Signal Chalk and toggles a fire effect; fake ledger removed from inventory.
- Completing unlocks vendor price reduction flag for Neral.
