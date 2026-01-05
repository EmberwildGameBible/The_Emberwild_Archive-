import os
import re
import subprocess
from urllib.parse import unquote
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
REPORT = ROOT / 'reports' / '2026-01-04_link_audit.md'
LINK_RE = re.compile(r"\[[^\]]+\]\(([^)]+)\)")

def get_changed_files():
    """Return a set of files added or modified in git working tree."""
    changed = set()
    try:
        diff_output = subprocess.check_output(['git', '-C', str(ROOT), 'diff', '--name-only', 'HEAD'], text=True)
        status_output = subprocess.check_output(['git', '-C', str(ROOT), 'ls-files', '--others', '--exclude-standard'], text=True)
        for line in diff_output.splitlines():
            if line.strip():
                changed.add(line.strip())
        for line in status_output.splitlines():
            if line.strip():
                changed.add(line.strip())
    except Exception:
        pass
    return {ROOT / p for p in changed}

changed_files = get_changed_files()

missing = []
missing_in_new = []
checked = 0

for path in ROOT.rglob('*.md'):
    if path.is_symlink():
        continue
    text = path.read_text(errors='ignore')
    for match in LINK_RE.finditer(text):
        target = match.group(1)
        if target.startswith(('http://', 'https://', 'mailto:')):
            continue
        if target.startswith('#'):
            continue
        target_path = unquote(target.split('#')[0])
        if not target_path:
            continue
        resolved = (path.parent / target_path).resolve()
        checked += 1
        if not resolved.exists():
            rel = path.relative_to(ROOT)
            missing.append((rel, target))
            if path in changed_files:
                missing_in_new.append((rel, target))

REPORT.parent.mkdir(parents=True, exist_ok=True)
with REPORT.open('w') as f:
    f.write('# Link Audit — 2026-01-04\n\n')
    f.write(f'Total links checked: {checked}\n\n')
    f.write(f'Missing links overall: {len(missing)}\n')
    f.write(f'Missing links in new/modified files: {len(missing_in_new)}\n\n')
    if missing:
        f.write('## Missing Links (All)\n')
        for src, tgt in missing:
            f.write(f'- {src}: {tgt}\n')
    else:
        f.write('No missing relative link targets detected.\n')
    if missing_in_new:
        f.write('\n## Missing Links in New/Modified Files\n')
        for src, tgt in missing_in_new:
            f.write(f'- {src}: {tgt}\n')
    else:
        f.write('\nNo missing links detected in new or modified files for this run.\n')

print(f'Report written to {REPORT} with {len(missing)} total missing and {len(missing_in_new)} in new content')
