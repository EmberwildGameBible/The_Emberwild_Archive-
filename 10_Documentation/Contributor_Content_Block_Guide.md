# Contributor Note: Content Block Conventions

Short guardrails for adding items, enemies, quests, or other content blocks so they stay aligned with existing naming, rarity, and cross-link practices.

## Naming Conventions
- Prefer descriptive, grounded names (terrain, events, family surnames, accidents) over poetic titles to match world tone (e.g., “Cliffbend,” “Splitwater,” “Harrow’s Post,” “Fallridge”).
- Use Title Case for block headers and filenames; avoid numbering unless part of an established chapter/export naming scheme.
- Include region or role when clarity helps navigation (e.g., “Shiverstone Coast Trapper,” “Ashen Ridge Salvage Crate”).

## Rarity Tiers (Items & Drops)
- **Common → Uncommon → Rare → Epic** are the standard progression; reserve **Ultra-Rare** only for standout chase pieces or boss trophies.
- Rarity should reflect effort and source: Common = leveling/vendor/basic node; Uncommon = targeted gathering or light dungeons; Rare = bosses/rare nodes/faction vendors; Epic = raids, signature beasts, or story gates.
- Keep rarity tags consistent with the item taxonomy and loot/recipe routing files when adding new entries.

## Cross-Link Expectations for New Blocks
- Add at least one index link pointing to the new content (e.g., relevant Master Index entry plus regional/system sub-index).
- Reference the systems or professions that produce/consume the block (crafting discipline, loot table, questline, or encounter family).
- Note any region, faction, or biome anchors so other files can surface the content in ambient packs or encounter tables.

## Quick Lint / Consistency Checklist
Use this to sanity-check each new addition before committing. Tick every box that applies.

### Items
- [ ] Source(s) defined (drop table, node/biome, vendor, recipe input/output).
- [ ] Sink(s) defined (crafting use, quest turn-ins, vendor buybacks, collection hooks).
- [ ] Rarity and level band align with listed source difficulty and profession tier.
- [ ] Cross-links added (Master Index, item taxonomy, relevant profession/loot files).

### Enemies
- [ ] Habitat/region and encounter tier documented (overworld, dungeon, raid, event).
- [ ] Loot sources and sinks mapped (drop tables, trophy uses, quest hooks, vendor stock).
- [ ] Level range aligns with listed abilities/resistances and nearby zone bands.
- [ ] Cross-links added (Systems Index, Bestiary/AI notes, regional packs, loot routing).

### Quests
- [ ] Entry includes giver/recipient plus region or faction alignment.
- [ ] Inputs/outputs clarified (required items, currency, reputation, unlocks, rewards).
- [ ] Level/phase fits surrounding content (zone level band, dungeon tier, or event cycle).
- [ ] Cross-links added (Master Index, questline thread, related items/enemies/locations).
