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

## v0.1 Boundary

This version deliberately starts with six core skills plus a router. Later versions can add vendor selection, data/knowledge readiness, training, benchmarking, and transformation office reporting after the core human-AI innovation workflow is proven.
