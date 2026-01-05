# The Rootbound Vault

## Entrance & Unlock
- Location: Cavern mouth beneath the Sapswell Luminarium, revealed after binding sashes in [Vault Chorus Key](../../07_Quests/Greatwood_Whisperline/Q08_Vault_Chorus_Key.md).
- Unlock Conditions: Complete Chains A and B in the Whisperline Hub, hold **2026-01-04_SIGMA Whisperline Sash** and **2026-01-04_SIGMA Wardbound Sash**, and present **2026-01-04_SIGMA Whisperline Ward Token** at the seal.

## Rooms
1. **Humming Antechamber:** Echo puzzles where players match root-song tones using **2026-01-04_SIGMA Whisperline Signal Chalk**.
2. **Sapfall Gallery:** Falling sap strands slow movement; crystals drop **2026-01-04_SIGMA Lumenwoven Resin Thread**.
3. **Ledger Recess:** Hidden alcoves contain smugglers' ledgers; interact to spawn mimic foes guarding **2026-01-04_SIGMA Whisperline Ledger Token**.
4. **Chorus Spine:** Narrow bridge with alternating ward pulses; safe zones marked by faint glyphs from **2026-01-04_SIGMA_Whisperline_Artifact_30.md**.
5. **Sapswell Heart:** Pool chamber where players cleanse sap blooms using **2026-01-04_SIGMA Sapsong Ward Salve**.
6. **Archive Hollow:** Final staging area with lore pedestals and the vault exit to Whisperline Stonebridge.

## Bosses
- **Barkmail Matron (Mini-boss):** Spawns sap-coated barkmail strikers. Mechanics: periodic armor bark; players must apply salve to strip defense before dealing damage.
- **Echo-Thief Lia (Mini-boss):** Smuggler illusion using mirrored songlines; players chase echoes to reveal the real Lia. Drops **2026-01-04_SIGMA Echoed Hood** and **2026-01-04_SIGMA Echo-scored Smuggler Seal**.
- **Root-Song Warden (Final):** Sap-forged sentinel that swaps between warden verse and smuggler echo stances. Mechanics: stance swap every 20 seconds; players counter with matching chalk (signal or ward) to strip shields. Final phase channels a vault-wide pulse requiring players to stand on chorus pads.

## Loot Notes
- Notable drops: **2026-01-04_SIGMA Whisperline Ward Token**, **2026-01-04_SIGMA Whisperline Sash**, **2026-01-04_SIGMA Wardbound Cloak**, **2026-01-04_SIGMA Rootbound Cloak**, **2026-01-04_SIGMA Lumenwoven Cloak**, **2026-01-04_SIGMA Whisperline Resin Draught**, **2026-01-04_SIGMA Rootbound Sap Flake**, **2026-01-04_SIGMA Whisperline Sap Tea**, **2026-01-04_SIGMA Stonebridge Ward Salve**, **2026-01-04_SIGMA Shrinesafe Signal Chalk**, **2026-01-04_SIGMA Whisperline Ledger Token**, **2026-01-04_SIGMA Wardbound Boots**.
- Hidden caches reference **2026-01-04_SIGMA_Whisperline_Artifact_18.md** and **2026-01-04_SIGMA_Whisperline_Artifact_40.md** pinned to vault pillars.

## Roblox Implementation Notes
- Entrance uses proximity prompt requiring both sash items; gate opens with a brief chord animation.
- Room checkpoints after Rooms 2, 4, and 5; players respawn at last cleared checkpoint.
- Bosses use phased health bars; stance swaps toggle hitbox vulnerabilities (e.g., chalk damage vs. standard weapon damage).
- Sapfall Gallery strands implemented with region parts applying slow debuff and light particle effects.
- Loot table pulls from items_table ids 50250–50429; guarantee one ledger token and one ward token per clear for quest tie-ins.
