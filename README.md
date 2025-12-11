# The Emberwild Archive

A design codex for Emberwild that leans into a **classic MMO** ethos—slow-burn exploration, role-driven class kits, and zone-by-zone storytelling. Use the master indexes to jump into lore, regions, classes, systems, quests, and items as the archive grows.

## How to navigate
- **00_MASTER_INDEX**: Entry point. Each index links to the detailed chapters in the repo.
- **01_World / 02_Regions**: Macro worldbuilding—continents, factions, travel, and zone progression.
- **03_Lore**: Cosmology, creature families, and foundational concepts.
- **04_Writings**: In-world fiction and narrative artifacts.
- **05_Classes**: Class compendiums and kits.
- **06_Systems**: Gameplay systems (crafting, mounts, progression).
- **07_Quests / 08_Items**: Quest structures, reward tables, and itemization.
- **10_Documentation**: Meta docs and support material.

## Using the indexes
1. Open the relevant index in `00_MASTER_INDEX`.
2. Follow the links to the chapter files; each entry should eventually include a short synopsis and a status tag.
3. Leave notes in the index next to entries you draft or expand so progress is visible.

## Classic-style design goals
- **Distinct class identities**: Resource pacing (rage, energy, mana), clear talent ladders, and role specialization.
- **Zone progression**: Level bands per region with hub-to-hub quest flows and dungeon entry points.
- **Attunements and epics**: Multi-step chains for mounts, weapons, and profession unlocks.
- **Economy depth**: Gathering routes, profession specializations, and crafted pre-raid gear.

## Contributing
- Prefer short, linked chapters over giant monoliths.
- Add a status note (Draft/Playable/Final) to index entries when you touch a file.
- Use the class kit template in `05_Classes` when drafting new classes to keep the “classic WoW” feel consistent.

## Publishing your changes to GitHub
If you want the edits made here to appear on GitHub, run these commands from the repo root in this workspace:

1. See your branch name (for example, `work`) and confirm nothing is unstaged:
   ```bash
   git status -sb
   ```
2. (Optional) Pull remote updates so you don’t push over old history:
   ```bash
   git fetch origin
   ```
3. Push this branch to GitHub (replace `<branch-name>` with the name from step 1):
   ```bash
   git push -u origin <branch-name>
   ```
   After the first push on a branch you can use `git push` without the `-u` flag.
4. Open GitHub, create a Pull Request from `<branch-name>` into your main branch (often `main` or `master`), and click **Merge** when ready.

