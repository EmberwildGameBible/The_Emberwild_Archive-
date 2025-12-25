# Emberwild items_table.csv fix + merge (2025-12-24)

This package fixes the duplicate-block issue in `08_Items/items_table.csv` and merges in the staged additions:

- 2025-12-24_DepthPack_MEGA (IDs 30000–32999)  [columns mapped: short_summary->short_uses, icon->file_name]
- GIGA Part2 (IDs 40000–44999)
- GIGA Part3 (IDs 45000–49999)

Result: 13,688 total item rows (IDs 1–688 plus the new ranges).

## Install
Replace your repo file:
`08_Items/items_table.csv`
with the file inside this zip:
`08_Items/items_table.csv`

That's it.
