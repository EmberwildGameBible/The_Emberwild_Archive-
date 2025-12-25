# Emberwild DepthPack MEGA (2025-12-24)

This is a **large density expansion** (items + quests + micro-POIs + readable drops), built to be dropped into your repo as-is.

## What’s inside

- **+3000 items** (IDs 30000–32999) in a strict-CSV additions file
- **700 quests** (QST-026 → QST-725)
- **900 micro-POIs** (300 each for Frostbriar / Glimmerdeep / Saltmarrow)
- **1200 in-world documents** (DOC-0001 → DOC-1200)
- Full item addendum in Markdown for browsing

## Notes on `items_table.csv`

Your current `08_Items/items_table.csv` is not strict CSV (summaries include commas without quotes).
Before you *merge* these additions, either:
- migrate to a normalized CSV/TSV, or
- keep additions staged in `Generated_Batches` until you’re ready to normalize.

## Suggested PR approach

1) PR #1: add this pack folder(s) only (content staged)
2) PR #2: normalize item table + merge in additions + update indexes

Repeat with new dated packs to reach 50k–250k+ additional lines safely.