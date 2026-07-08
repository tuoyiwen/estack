# Contributing to estack

estack ships 7 skills under `skills/` plus a judgment library under
`knowledge-base/`. Everything is markdown and YAML. Run `bash scripts/validate.sh`
before every commit; CI runs the same script on push and pull request.

## Add or change a skill

1. Each skill lives in `skills/<name>/` with a `SKILL.md` and an
   `agents/openai.yaml`.
2. `SKILL.md` frontmatter must carry `name` and `description`, and `name` must
   equal the folder name. `scripts/validate.sh` fails the build otherwise.
3. `agents/openai.yaml` must carry a `version` equal to the `VERSION` file.
4. If `SKILL.md` points at a knowledge-base file, use a path like
   `knowledge-base/core/use-cases.md`. The validator resolves every such path
   and fails on a dead link.

## Add a source to the knowledge base

1. Put the original under
   `knowledge-base/archive/original-sources/`, named
   `YYYY-MM-DD_Publisher_Title_source-card.md` (or `_transcript.md` /
   `_原文.md`). The validator rejects any file that does not start with an ISO
   date.
2. Record the triage in `knowledge-base/archive/source-triage/YYYY-MM-DD.md`.
3. Fold the durable judgment into the relevant `knowledge-base/core/*.md` or
   `references/*.md` file, so skills read the distilled version rather than the
   raw source.

## Add a routing eval

Add a row to `evals/routing.md`. Each row states a user request and the skill
`$estack` should route it to. Use these when editing the routing table in
`skills/estack/SKILL.md`.

## Cut a release

1. Run `bash scripts/release.sh <new-version>` (example `0.5.0`). It bumps
   `VERSION`, `package.json`, and every `openai.yaml`, then runs the validator.
2. Add a dated section for the new version to `CHANGELOG.md`.
3. `git commit`, then `git tag v<new-version>`, then `git push --tags`.
