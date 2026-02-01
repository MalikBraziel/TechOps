# Swift Evolution Import Runbook

Local-only steps to copy per-version Swift changelogs and proposal files into:
- /Users/prayciouswhite/AuraFarms/ReverseMacOS/0_Documentation/3_Wiki/Swift/SwiftEvolution

No GitHub pushes. Keep content verbatim.

## Naming
- Version folders: underscores only — `Swift_Next`, `Swift_6_2`, `Swift_6_1`, `Swift_6_0`, `Swift_5_10`, `Swift_5_9`, `Swift_5_9_2`.
- Per-version changelog: `X_Y_changelog.md` (e.g., `6_1_changelog.md`).
- Proposal files: original filename from GitHub (e.g., `0444-member-import-visibility.md`).

## Sources
- CHANGELOG: `0_Documentation/3_Wiki/Swift/SwiftEvolution/CHANGELOG.md`
  - Version sections: lines 1–1250
  - Proposal link footnotes: lines 10594–10928

## Steps performed (example: Swift 6.1)
1) Create folder `Swift_6_1/`.
2) Download SE-0444 raw file from `swiftlang/swift-evolution` and save verbatim as `Swift_6_1/0444-member-import-visibility.md`.
3) Extract section starting at heading `## Swift 6.1` down to (but not including) the next `## Swift ...` heading; save as `Swift_6_1/6_1_changelog.md`.

## Repeat for other versions
For each label: `Swift Next`, `Swift 6.2`, `Swift 6.1`, `Swift 6.0`, `Swift 5.10`, `Swift 5.9`, `Swift 5.9.2`:
- Make the version folder with underscores (e.g., `Swift_6_0`).
- Extract its section from the first 1250 lines and save as `X_Y_changelog.md`.
- In that section, collect `SE-XXXX` IDs; resolve their links from the footnote block; fetch raw markdown; save files verbatim in the same folder.

## Do
- Use underscores in folder names and `X_Y_changelog.md` naming.
- Keep proposal and changelog content verbatim.
- Use raw GitHub links (`raw.githubusercontent.com`) or convert from `github.com/.../blob/...` to raw.

## Do not
- Do not modify text or reformat proposals.
- Do not fetch from untrusted/non-raw hosts.
- Do not push to remote without review.
