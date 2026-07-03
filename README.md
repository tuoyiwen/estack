# estack

Enterprise AI-Native Innovation Stack.

estack is a skill set for helping enterprises redesign human-AI collaboration in innovation and knowledge-work processes. It is not a generic AI tool recommendation kit. It helps teams decide where AI should enter the work, how humans and AI should divide roles, how workflows should change, how pilots should be run, how outcomes should be measured, and how governance should keep adoption safe.

## Positioning

Public language:

> AI-native innovation workflows for the enterprise.

Internal logic:

> Human-AI configuration for creative problem solving, translated into enterprise innovation language.

## Core Skills

| Skill | What It Produces |
|---|---|
| `$estack` | Route the user to the right estack skill and recommend the next path |
| `$e-innovation-map` | AI innovation use case portfolio and prioritization |
| `$e-collaboration-design` | Human-AI collaboration configuration and interaction protocol |
| `$e-innovation-workflow` | As-is/to-be AI-native workflow blueprint and SOP |
| `$e-innovation-pilot` | 30/60/90-day enterprise AI innovation pilot plan |
| `$e-innovation-metrics` | Innovation outcome, adoption, and interaction metrics |
| `$e-ai-governance` | AI governance matrix, review rules, and risk boundaries |

## Repository Layout

```text
estack/
├── README.md
├── VERSION
├── knowledge-base/
│   ├── README.md
│   ├── core/
│   ├── references/
│   └── archive/
├── project-notes/
└── skills/
    ├── estack/
    ├── e-innovation-map/
    ├── e-collaboration-design/
    ├── e-innovation-workflow/
    ├── e-innovation-pilot/
    ├── e-innovation-metrics/
    └── e-ai-governance/
```

Each skill folder contains:

- `SKILL.md`: the agent-facing workflow and output instructions
- `agents/openai.yaml`: UI metadata for skill lists and default prompts

`knowledge-base/` contains the judgment library behind the skills. It is split into `core/` for default skill context, `references/` for cases and evidence, and `archive/` for original sources and dated triage notes.

`project-notes/` contains planning notes for how estack is being developed.

## Installation

After this repository is pushed to GitHub, install all skills with:

```bash
npx -y skills add <github-owner>/estack -g --all
```

Replace `<github-owner>` with the GitHub account or organization that owns the repository.

## Recommended Flow

1. Map the enterprise's AI innovation opportunities with `$e-innovation-map`.
2. Choose one high-value use case and design the human-AI configuration with `$e-collaboration-design`.
3. Convert the configuration into an operating workflow with `$e-innovation-workflow`.
4. Test it through a bounded pilot with `$e-innovation-pilot`.
5. Define evidence and scale criteria with `$e-innovation-metrics`.
6. Add practical risk boundaries with `$e-ai-governance`.

## Design Principle

Use "innovation" in outward-facing titles and enterprise communication. Use "creativity" only when discussing measurement logic, academic grounding, or the novelty/usefulness distinction.

This keeps the product credible for enterprises while preserving the research mechanism underneath.

## Knowledge Base

The current knowledge base is intentionally compact:

- `knowledge-base/core/` holds the materials skills should read first: use cases, collaboration patterns, workflow patterns, output templates, metrics, governance controls, and onboarding prompts.
- `knowledge-base/references/` holds supporting research anchors, benchmark cases, technical enablers, and web-search/evidence workflows.
- `knowledge-base/archive/` holds source triage notes and original source material. It is evidence storage, not default skill context.

## v0.2 Boundary

This version adds a practical knowledge base behind the six core skills and router. The next step is to connect the skills more explicitly to the knowledge-base categories and add completed enterprise examples.
