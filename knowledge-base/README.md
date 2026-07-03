---
project: estack
type: knowledge-base-index
status: active
updated: 2026-07-03
---

# Knowledge Base

This folder is the compact judgment library behind estack. It is not a general reading archive. Skills should read the smallest useful layer first, then open references only when they need cases, evidence, or technical grounding.

## Structure

```text
knowledge-base/
├── core/          # default skill context
├── references/    # cases, research anchors, technical and evidence workflows
└── archive/       # dated triage notes and original source material
```

## Default Reading Order

| User need | Read first | Read if needed |
|---|---|---|
| Find enterprise AI opportunities | `core/use-cases.md` | `references/benchmark-cases.md` |
| Design human-AI interaction | `core/collaboration-patterns.md` | `references/research-anchors.md` |
| Redesign a workflow | `core/workflow-patterns.md` | `references/benchmark-cases.md` |
| Produce client-ready artifacts | `core/output-templates.md` | `core/onboarding-prompts.md` |
| Define pilot success | `core/metrics-and-rubrics.md` | `references/web-search-evidence-workflows.md` |
| Set risk boundaries | `core/governance-controls.md` | `references/technical-enablers.md` |
| Use external evidence | `references/web-search-evidence-workflows.md` | `archive/original-sources/` |

## Core Files

- `core/use-cases.md`: enterprise AI innovation use cases and selection rules
- `core/collaboration-patterns.md`: human-AI collaboration patterns and configuration rules
- `core/workflow-patterns.md`: AI-native workflow redesign patterns
- `core/output-templates.md`: reusable enterprise artifacts
- `core/metrics-and-rubrics.md`: innovation, adoption, interaction, evidence, and governance metrics
- `core/governance-controls.md`: review rules, risk triggers, and responsibility boundaries
- `core/onboarding-prompts.md`: user stories, router prompt, and starter prompts

## Reference Files

- `references/research-anchors.md`: research mechanisms that help explain skill decisions
- `references/benchmark-cases.md`: enterprise examples and reusable case lessons
- `references/technical-enablers.md`: model, RAG, evaluation, and tooling feasibility notes
- `references/web-search-evidence-workflows.md`: evidence acquisition, source quality, and web research workflow rules

## Archive Rules

- `archive/original-sources/` stores full text, transcripts, and source cards.
- `archive/source-triage/` stores dated intake decisions.
- Archive files can preserve older file names and path language; use this README as the current routing map.
- Do not put long source text into `core/`. Extract only reusable judgments, rules, templates, or examples.
