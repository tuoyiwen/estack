<div align="center">

# estack

### Enterprise AI-Native Innovation Stack

**A skill set for redesigning how humans and AI work together inside real innovation and knowledge-work processes.**

[![License](https://img.shields.io/badge/license-Apache--2.0-1f6feb.svg?style=flat-square)](LICENSE)
[![Version](https://img.shields.io/badge/version-0.4.0-3fb950.svg?style=flat-square)](VERSION)
[![Validate](https://img.shields.io/github/actions/workflow/status/tuoyiwen/estack/validate.yml?style=flat-square&label=validate)](.github/workflows/validate.yml)
[![Skills](https://img.shields.io/badge/skills-7-8957e5.svg?style=flat-square)](skills/)

</div>

---

estack turns "we should use more AI" into a sequence of decisions an enterprise can actually run. It helps a team decide where AI should enter the work, how humans and AI should divide roles, how the workflow itself should change, how to prove value in a bounded pilot, how to measure the outcome, and how governance should keep adoption safe. Every skill ends in a meeting-ready artifact, so a leadership team walks away with a portfolio, a blueprint, or a charter, never with a vague recommendation.

> **What estack is not.** It is not a tool recommendation kit, a prompt collection, or a model comparison guide. When 90% of a company uses AI tools but delivery has not moved, the constraint lives in the workflow and the organization, and that is the layer estack works on.

## The problem it targets

Most enterprise AI adoption stalls on two gaps that no tool purchase closes. estack names them up front and locates a client on them before recommending anything.

Using AI tools does not equal individual productivity. A designer with a copilot still ships at the old rate when the review loop and the handoff are unchanged.

Individual productivity does not equal organizational productivity. Ten engineers each 30% faster produce nothing extra when the bottleneck is a weekly release train and a single approver.

These two inequalities come from the Kuaishou AI-Native restructuring case and drive the diagnosis in `$e-innovation-map`.

## What you get

Each of the six working skills produces one concrete deliverable.

| Skill | Deliverable |
|---|---|
| `$e-innovation-map` | AI innovation use-case portfolio, scored and prioritized |
| `$e-collaboration-design` | Human-AI collaboration configuration and interaction protocol |
| `$e-innovation-workflow` | As-is / to-be AI-native workflow blueprint and SOP |
| `$e-innovation-pilot` | 30 / 60 / 90-day pilot plan with success criteria |
| `$e-innovation-metrics` | Outcome, adoption, and interaction metric set with a dashboard spec |
| `$e-ai-governance` | Governance matrix, review rules, and risk boundaries |

`$estack` sits above them as the router that reads the request and hands off to the right skill in the right order. A filled example artifact (a Collaboration Configuration Card) lives in [`knowledge-base/core/output-templates.md`](knowledge-base/core/output-templates.md).

## Quickstart

Install the full set with one command.

```bash
npx -y skills add tuoyiwen/estack -g --all
```

Start with the router and let it choose the path.

```text
Use $estack to help our company decide where AI should enter our innovation workflow first.
```

Or jump straight to a specific stage.

```text
Use $e-innovation-map to identify and prioritize AI innovation use cases for a B2B SaaS company,
focusing on product, marketing, and customer success workflows.
```

Starter prompts for every entry point are in [`knowledge-base/core/onboarding-prompts.md`](knowledge-base/core/onboarding-prompts.md).

## Choose your path

| You are | You want | Start with |
|---|---|---|
| Enterprise leader | Where to start and how to prove value | `$estack` → `$e-innovation-map` → `$e-innovation-pilot` |
| Consultant / transformation lead | Diagnosis, redesign, and client-ready deliverables | `$e-innovation-map` → `$e-collaboration-design` → `$e-innovation-workflow` → `$e-ai-governance` |
| Product / marketing lead | AI inside a real innovation process | `$e-innovation-map` + `$e-collaboration-design` |
| Engineering / platform lead | From AI coding tools to agentic workflows | `$e-innovation-workflow` (maturity diagnosis + AI-ready checklist) |
| Researcher | Human-AI configurations, metrics, pilot designs | `$e-collaboration-design` + `$e-innovation-metrics` |

## How the skills chain

The six skills form one operating sequence from opportunity to safe scale.

```text
$e-innovation-map        find and rank where AI creates value
        ↓
$e-collaboration-design  define the human-AI split for the top use case
        ↓
$e-innovation-workflow   turn that split into an operating workflow
        ↓
$e-innovation-pilot      test it in a bounded 30/60/90-day experiment
        ↓
$e-innovation-metrics    define the evidence and the scale decision
        ↓
$e-ai-governance         set risk boundaries before rollout
```

Each `SKILL.md` closes with an explicit handoff to the next skill, so the chain runs without a human re-routing it every step.

## Grounded in evidence, not general reading

The skills read from a compact judgment library instead of open-ended browsing, which keeps output consistent and defensible in front of a client.

The `core/` layer holds what skills read first, including use cases, collaboration patterns, workflow patterns, output templates, metrics, and governance controls. The `references/` layer holds research anchors and benchmark cases, including Block's six-stage agentic engineering ladder and Kuaishou's three-layer AI-Native restructuring, plus a web-search evidence workflow for grounding claims in current sources. The `archive/` layer holds triaged original sources as evidence storage rather than default context.

Skills degrade gracefully offline. Every `SKILL.md` embeds its load-bearing essentials, so a standalone install still runs a full diagnosis, and a repo checkout only adds depth.

## Built to ship

estack is maintained like a product, not a folder of notes.

Continuous validation runs on every push and pull request through [`.github/workflows/validate.yml`](.github/workflows/validate.yml). The check in [`scripts/validate.sh`](scripts/validate.sh) verifies version consistency across `VERSION`, `package.json`, and all seven skills, confirms every `SKILL.md` carries valid frontmatter, resolves every knowledge-base link referenced by a skill, and enforces source-file naming. A one-command release path lives in [`scripts/release.sh`](scripts/release.sh), routing rules are covered by golden cases in [`evals/routing.md`](evals/routing.md), and every change is recorded in [`CHANGELOG.md`](CHANGELOG.md). Contribution rules are in [`CONTRIBUTING.md`](CONTRIBUTING.md).

## Repository layout

```text
estack/
├── skills/                     # 7 skills, each a SKILL.md + agents/openai.yaml
│   ├── estack/                 # router
│   ├── e-innovation-map/
│   ├── e-collaboration-design/
│   ├── e-innovation-workflow/
│   ├── e-innovation-pilot/
│   ├── e-innovation-metrics/
│   └── e-ai-governance/
├── knowledge-base/             # judgment library the skills read from
│   ├── core/                   # read-first patterns, templates, metrics, controls
│   ├── references/             # research anchors and benchmark cases
│   └── archive/                # triaged original sources (evidence storage)
├── evals/routing.md            # golden routing cases for $estack
├── scripts/                    # validate.sh, release.sh
├── .github/workflows/          # CI validation
├── LICENSE  NOTICE  CHANGELOG.md  CONTRIBUTING.md  VERSION  package.json
└── project-notes/              # development planning notes
```

## A note on language

estack keeps "innovation" in outward-facing titles and enterprise communication, and reserves "creativity" for measurement logic and academic grounding, where the novelty-and-usefulness distinction matters. This keeps the product credible for a business audience while preserving the research mechanism underneath.

## License

Licensed under the [Apache License 2.0](LICENSE). You may use, modify, and redistribute estack, including commercially, provided you retain the attribution in [`NOTICE`](NOTICE). The license includes an explicit patent grant.

<div align="center">
<sub>estack · Enterprise AI-Native Innovation Stack · v0.4.0</sub>
</div>
