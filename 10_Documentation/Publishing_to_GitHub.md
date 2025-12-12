# Publishing this workspace to GitHub

Follow these steps when you want the changes from **this workspace** to show up on **your GitHub repo**.

## 1) Check your branch and status
```bash
git status -sb
```
You should see the branch name (e.g., `## work`). If there are uncommitted changes, commit them first so everything you expect gets
uploaded.

## 2) Pull remote updates (optional but recommended)
```bash
git fetch origin
```
This updates your local references so you don’t push on top of stale history.

## 3) Push your branch
```bash
git push -u origin <branch-name>
```
Replace `<branch-name>` with the branch shown in step 1. The first push sets up tracking so later pushes can just use `git push`.
If you see an authentication prompt, use your GitHub credentials or a personal access token.

## 4) Open a Pull Request
On GitHub, open a PR from your branch into the main branch (often `main` or `master`). Use the summary from this workspace or the PR template if you have one.

## 5) Merge
After review, merge the PR on GitHub. If you prefer the command line:
```bash
git checkout main
git pull origin main
git merge <branch-name>
git push origin main
```

That’s all you need to publish the changes created here onto GitHub.



## Quick command sequence
Copy/paste this from the repo root, replacing `<branch-name>` with your branch (for example, `work`):
```bash
git status -sb
git fetch origin
git push -u origin <branch-name>
```
Then open GitHub, create a PR from `<branch-name>` into `main` (or your default branch), and merge.
