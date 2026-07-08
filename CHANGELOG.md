# Changelog

All notable changes to estack are recorded here. Format follows
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Versions follow
[semver](https://semver.org/). Each tag `vX.Y.Z` matches the `VERSION` file.

## [Unreleased]

### Added

- `LICENSE` (Apache-2.0) and `NOTICE` so enterprises can legally install and
  use the skill set, with an explicit patent grant and attribution terms.
- `package.json` carrying name, version, license, author, and repository so a
  registry can read package metadata.
- `version` field in every `skills/*/agents/openai.yaml`, so a standalone
  install of one skill still reports a version.
- `scripts/validate.sh` and `.github/workflows/validate.yml` that check version
  consistency, `SKILL.md` frontmatter, knowledge-base link integrity, and
  original-source naming on every push and pull request.
- `scripts/release.sh` that bumps `VERSION`, `package.json`, and all
  `openai.yaml` files in one command, then runs validation.
- `CONTRIBUTING.md` describing how to add a skill, add a source, and cut a
  release.
- `evals/routing.md` golden cases for the `$estack` router.

## [0.4.0]

### Changed

- Made each skill self-contained. Every `SKILL.md` now embeds its load-bearing
  essentials (collaboration pattern menu, maturity anchors, pilot checks,
  measurement pitfalls, governance controls), so standalone installs work
  without the repo checkout.
- Chained skills through explicit Next Skill sections.
- Made artifacts follow the user's working language.
- Made skill descriptions trigger on Chinese requests.

### Added

- Ingested 2026-07-05 and 2026-07-08 sources (Loop Engineering, Codex product
  work, token economics, Lenny 2026 tech worker sentiment survey).

## [0.2.0]

### Added

- Initial estack skill set and knowledge base.
- Kuaishou AI Native case extracted into the knowledge base and wired to skills.
- Reorganized knowledge base into `core/`, `references/`, and `archive/`.

[Unreleased]: https://github.com/tuoyiwen/estack/compare/v0.4.0...HEAD
[0.4.0]: https://github.com/tuoyiwen/estack/releases/tag/v0.4.0
[0.2.0]: https://github.com/tuoyiwen/estack/releases/tag/v0.2.0
