import csv
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TABLE = ROOT / '08_Items' / 'items_table.csv'
REPORT = ROOT / 'reports' / '2026-01-04_items_collision_report.md'

names = []
rows = []
with TABLE.open() as f:
    reader = csv.reader(line for line in f if line.strip())
    for row in reader:
        if not row or row[0] == 'id':
            rows.append(row)
            continue
        rows.append(row)
        names.append(row[1])

# Identify boundary between previous data and new batch by last header occurrence
with TABLE.open() as f:
    lines = f.readlines()

header_line = 'id,name,category,subcategory,rarity,professions,region,short_uses,file_name\n'
last_header_index = max(i for i, line in enumerate(lines) if line == header_line)
old_lines = [l for l in lines[:last_header_index] if l.strip() and not l.startswith('#')]
new_lines = [l for l in lines[last_header_index+1:] if l.strip() and not l.startswith('#')]

old_names = []
new_names = []
for segment, bucket in ((old_lines, old_names), (new_lines, new_names)):
    reader = csv.reader(segment)
    for row in reader:
        if row and row[0] != 'id':
            bucket.append(row[1])

from collections import Counter
counts = Counter(names)
duplicates = {name: cnt for name, cnt in counts.items() if cnt > 1}
new_duplicates = [name for name in new_names if name in old_names or new_names.count(name) > 1]

REPORT.parent.mkdir(parents=True, exist_ok=True)
with REPORT.open('w') as f:
    f.write('# Item Collision Report — 2026-01-04\n\n')
    f.write(f'Total items scanned: {len(names)}\n\n')
    if duplicates:
        f.write('## Duplicate Names Detected\n')
        for name, cnt in sorted(duplicates.items()):
            f.write(f'- {name} (count: {cnt})\n')
    else:
        f.write('No duplicate names found in items_table.csv.\n')
    f.write('\n')
    if new_duplicates:
        f.write('## Duplicates Introduced This Run\n')
        for name in sorted(set(new_duplicates)):
            f.write(f'- {name}\n')
    else:
        f.write('No new duplicates introduced in the 2026-01-04 batch.\n')

print(f'Report written to {REPORT}')
