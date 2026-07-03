# estack

Enterprise AI-Native Innovation Stack.

estack is a skill set for helping enterprises redesign human-AI collaboration in innovation and knowledge-work processes. It helps teams decide where AI should enter the work, how humans and AI should divide roles, how workflows should change, how pilots should be run, how outcomes should be measured, and how governance should keep adoption safe.

**What estack is not:** a generic AI tool recommendation kit, a prompt collection, or a model comparison guide. If 90% of your people use AI tools but delivery has not changed, the problem estack works on is the workflow and the organization, not the tools.

## First 5 Minutes

1. Install all skills:

   ```bash
   npx -y skills add tuoyiwen/estack -g --all
   ```

2. Start with the router:

   ```text
   Use $estack to help our company identify where AI should enter our innovation workflow first.
   ```

3. Follow the path it recommends, for example:

   ```text
   Use $e-innovation-map to identify and prioritize AI innovation use cases for a B2B SaaS company. Focus on product, marketing, and customer success workflows.
   ```

Every skill ends with a concrete artifact (a portfolio, a blueprint, a charter, a dashboard spec, a governance matrix), not just advice.

## Who Is It For

| You are | You want | Start with |
|---|---|---|
| Enterprise leader | Where to start AI transformation and how to prove value | `$estack` -> `$e-innovation-map` -> `$e-innovation-pilot` |
| Consultant / transformation lead | Diagnosis, workflow redesign, and client-ready deliverables | `$e-innovation-map` -> `$e-collaboration-design` -> `$e-innovation-workflow` -> `$e-ai-governance` |
| Product / marketing lead | AI inside a real innovation process (concepts, campaigns, insights) | `$e-innovation-map` + `$e-collaboration-design` |
| Engineering / platform lead | From AI coding tools to agentic workflows | `$e-innovation-workflow` (maturity diagnosis + AI-ready checklist) |
| Researcher | Human-AI configurations, metrics, and pilot designs to study | `$e-collaboration-design` + `$e-innovation-metrics` |

Starter prompts for each entry are in [`knowledge-base/core/onboarding-prompts.md`](knowledge-base/core/onboarding-prompts.md).

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

## Recommended Flow

1. Map the enterprise's AI innovation opportunities with `$e-innovation-map`.
2. Choose one high-value use case and design the human-AI configuration with `$e-collaboration-design`.
3. Convert the configuration into an operating workflow with `$e-innovation-workflow`.
4. Test it through a bounded pilot with `$e-innovation-pilot`.
5. Define evidence and scale criteria with `$e-innovation-metrics`.
6. Add practical risk boundaries with `$e-ai-governance`.

## Knowledge Base

The skills are grounded in a compact judgment library rather than general reading:

- `knowledge-base/core/` holds what skills read first: use cases, collaboration patterns, workflow patterns, output templates, metrics, governance controls, and onboarding prompts.
- `knowledge-base/references/` holds research anchors, benchmark cases (Block's agentic engineering organization, Kuaishou's three-layer AI Native restructuring), technical enablers, and web-search/evidence workflows.
- `knowledge-base/archive/` holds source triage notes and original source material. It is evidence storage, not default skill context.

Routing rules are in [`knowledge-base/README.md`](knowledge-base/README.md).

Skills degrade gracefully when installed without the repo: each SKILL.md carries its own inline essentials (pattern menu, maturity anchors, built-in checks, measurement pitfalls, core controls), and the knowledge base adds depth when a full checkout is available.

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

`project-notes/` contains planning notes for how estack is being developed.

## Design Principle

Use "innovation" in outward-facing titles and enterprise communication. Use "creativity" only when discussing measurement logic, academic grounding, or the novelty/usefulness distinction.

This keeps the product credible for enterprises while preserving the research mechanism underneath.

## Version

v0.4 makes each skill self-contained and chains them: every SKILL.md now embeds its load-bearing essentials (collaboration pattern menu, maturity anchors, pilot checks, measurement pitfalls, governance controls) so standalone installs work without the repo checkout; skills hand off to each other via explicit Next Skill sections; artifacts follow the user's working language; descriptions trigger on Chinese requests. Next: a full demo case walkthrough.
