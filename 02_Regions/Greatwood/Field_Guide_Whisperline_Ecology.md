# Field Guide — Whisperline Ecology and Nodes

## Node Overview
- Sapline travel is anchored by resin flows, shroom beds, and humming wardstones that reward careful approach.
- Escorts should carry **Chorus Bridge Torches**, **Ward-Chalk Packets**, and **Coiled Line Spools** before entering node pockets.

## Gathering Nodes (30)
1. **Resin Tangle Pitch Pool** — south of Sapstring Crossing; yields Sap-Resin Salve; respawns after storms.
2. **Milepost Driftwood Cache** — under Whisperline Milepost; yields Ward-Chalk Packet bundles; respawns with river drift.
3. **Chorus Bridge Rail Crate** — tied to plank three; yields Chorus Bridge Torches and Bivouac Tent Stakes; daily reset.
4. **Fallen Cart Bend Satchel** — wedged in the toppled cart; yields Resin Patch Kits and Whisperline Travel Rations; shared cooldown.
5. **Lowlight Shroom Patch East** — blue caps near the stream; yields Lowlight Shroom Tea ingredients; regrows nightly.
6. **Lowlight Shroom Patch West** — tucked under roots; yields Lowlight Shroom Tea and Rivergrain Porridge Mix scraps; regrows nightly.
7. **Hollow Sap Groove Spout** — carved tap line; yields Sap-Resin Salve and Ward-Chalk Packet chalk dust; respawns after rituals.
8. **Hollow Sap Groove Basin** — clay bowl under a scar; yields Sapstring Bandages when mixed with bark fibers; shared with cairnkeepers.
9. **Murmur Wardstone Chalk Tray** — carved bowl; yields Ward-Chalk Packet refills; requires hum alignment.
10. **Rootsong Cairn Groove** — groove catching dew; yields Cairnkeeper's Beads and Murmurstone Charms fragments; weekly reset.
11. **Resin Tangle Rope Post** — stake holding guide ropes; yields Coiled Line Spools; respawns after escorts pass.
12. **Resin Tangle Bark Split** — split trunk; yields Tanglecut Hatchets and Sapstring Bandage scraps; contested by saplings.
13. **Chorus Bridge Underslung Hook** — under-plank hook; yields Smuggler's Knot Hooks; respawns slowly.
14. **Chorus Bridge Herb Pot** — buried pot from Cook Mara; yields Rivergrain Porridge Mix and Lowlight Shroom Tea herbs; daily reset.
15. **Sapstring Crossing Cache Box** — behind kitchen tent; yields Crossing Guard's Satchels; requires Stew Favor buff.
16. **Sapstring Crossing Water Barrel** — sealed barrel; yields Whisperline Travel Rations and Sap-Resin Salve; cooldown per player.
17. **Thornbar Ash Pit** — in Thornbar Bivouac; yields Smudged Route Permits and Ward-Chalk Packets; requires ash brush to open.
18. **Thornbar Ledger Stash** — under ledger table; yields Roadling Trade Tokens and Warden's Sapsteel Buckles; guarded by scribes.
19. **Smuggler's Knot Ladder Base** — hidden coil; yields Coiled Line Spools and Resin Patch Kits; must clear hook-runners.
20. **Smuggler's Knot Gully Cache** — tucked in gully wall; yields Smuggler's Knot Hooks and Sapstring Bandages; slow respawn.
21. **Rootbound Vault Tool Crate** — near vault gate; yields Coiled Line Spools and Ward-Chalk Packets; requires Vault Key buff.
22. **Rootbound Vault Oil Jar** — behind hinge pillar; yields Resin Patch Kits and Lowlight Shroom Tea; guarded by hinge gremlins.
23. **Whisperline Milepost Token Pile** — under flat stone; yields Roadling Trade Tokens; limited to one pull daily.
24. **Chorus Bridge Rope Bin** — beside singer's stool; yields Bivouac Tent Stakes and Coiled Line Spools; resets after each escort.
25. **Resin Tangle Pitch Drip** — slow drip; yields Sap-Resin Salve; requires patience to collect.
26. **Hollow Sap Grove Bark Peel** — bark sheet; yields Ward-Chalk Packet scrap and Rootsong Listening Horn blanks; weekly.
27. **Murmur Wardstone Cloth Rack** — drying cloth; yields Murmurstone Charm cords; daily reset.
28. **Rootsong Cairn Sand Tray** — catches falling grit; yields Tanglecut Hatchet handles and Cairnkeeper's Beads; contested.
29. **Lowlight Lantern Niche** — lantern cubby; yields Lowlight Shroom Tea and Ward-Chalk Packet dust; requires torch to reveal.
30. **Chorus Bridge Tunnel Mouth** — near rumored tunnel; yields Smudged Route Permits and Coiled Line Spools; slow respawn.

## Node Spawn Logic (Roblox Notes)
- Use small radius spawners tied to landmark anchors; despawn nodes when players leave a 40m bubble to reduce clutter.
- Apply shared cooldowns for paired nodes (e.g., Lowlight Shroom Patches) so groups spread out.
- Require interaction tools: **Chorus Bridge Torches** to dry shroom patches; **Ward-Chalk Packets** to reveal wardstone trays; **Coiled Line Spools** to secure rope bins.
- Add escort-friendly triggers: clearing **Resin Tangle Rope Post** shortens escort timer; repairing **Chorus Bridge Rail Crate** adds safety buff.

## Yield Guidance
- Materials: Sap-Resin Salve, Ward-Chalk Packet, Coiled Line Spool, Tanglecut Hatchet blanks.
- Consumables: Lowlight Shroom Tea, Whisperline Travel Ration, Rivergrain Porridge Mix portions.
- Curios: Roadling Trade Token, Cairnkeeper's Beads, Murmurstone Charm cords, Smudged Route Permit scraps.

## Implementation Notes
- Each node should broadcast a hum or drip loop; volume scales with proximity.
- Track per-player loot flags to avoid infinite farming; show grayed-out node if on cooldown.
- Allow group interactions: two players can speed-harvest resin or chalk by alternating prompts.
- Place minor hostile spawns (borers, rats) near high-yield nodes to enforce preparation.
