# The Rootbound Vault (Greatwood Whisperline)

## Overview & Entry
- Level: 8–10
- Entry: Present **Cairnkeeper's Beads** and a **Rootsong Listening Horn** at the outer seal.
- Story: An old vault that once fueled wardstones; smugglers pry at it hoping for sap crystals.

## Rooms (7)
1. **Sap-Run Corridor** — slow zones from sticky sap, basic wisp packs.
2. **Echoing Gallery** — sound bounces; interrupt hums or suffer stamina drain.
3. **Root-Clasp Atrium** — dangling roots knock players; beware falling debris.
4. **Cairnkeeper's Study** — puzzle room aligning ward glyphs with **Ward-Chalk Packets**.
5. **Spillway Descent** — sloped path with rolling sap orbs; use **Chorus Bridge Torches** for light.
6. **Storage Hollows** — crates with **Resin Patch Kits** and **Sap-Resin Salves**.
7. **Vault Heart** — sealed door; opens after aligning horns and beads.

## Bosses
1. **Sap-Bound Warden**
   - Mechanics: Swings sap-coated blade; leaves sticky pools; interrupt "Sap Roar" or be rooted.
   - Adds: Wisps that chant; silence them with horn blasts.
2. **Chanting Echo**
   - Mechanics: Projects ward circles; players step in correct color to avoid damage; random silence pulses.
   - Adds: Cairnbound Wisps that drain stamina when ignored.
3. **Root Hoarder**
   - Mechanics: Throws debris; pulls players with vine lash; enrages when torches are extinguished.
   - Adds: Gully Hook-Runners stealing loot; kill to stop item loss.

## Loot Notes
- Drops include: Murmurstone Charm, Cairnkeeper's Beads, Ward-Chalk Packet, Rootsong Listening Horn, Warden's Sapsteel Buckle, Crossing Guard's Satchel, Sapstring Bandage, Resin Patch Kit, Sap-Resin Salve, Chorus Bridge Torch, Coiled Line Spool, Roadling Trade Token, Lowlight Shroom Tea, Rivergrain Porridge Mix, Smudged Route Permit, Smuggler's Knot Hook.

## Artifact Finds
- References [Artifact Bundle 01](../../09_Artifacts/Generated_Batches/2026-01-04_SIGMA_Greatwood_Whisperline/Artifact_Bundle_01.md) anchors: A-004, A-006, A-009, A-010, A-002, A-001.

## Roblox Implementation Notes
- Spawns: Wisp packs respawn every 4 minutes; bosses are instanced with leashing at room edges.
- Checkpoints: After Rooms 3 and 5; players respawn at nearest ward brazier.
- Leashing: Bosses reset if pulled past doorway runes; wipe clears sap pools.
- Loot: Roll chest per boss; prefer personal loot with small chance for bonus charm.
- Difficulty Knobs: Increase sap pool slow percentage; adjust wisp chant timers; scale Root Hoarder pull strength.
