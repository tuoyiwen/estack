---
name: estack
description: Enterprise AI-Native Innovation Stack router for enterprise AI adoption, AI transformation, and AI-native innovation work. Use when the user asks where to start, which estack skill to use, how to sequence the six core skills, or how to turn human-AI collaboration into enterprise-ready innovation workflows, pilots, metrics, and governance.
---

# Estack

Use this as the main router for the Enterprise AI-Native Innovation Stack. Keep the public language centered on innovation, adoption, workflow, governance, and business value; keep the underlying logic centered on human-AI configuration in creative problem solving.

## Core Idea

Help enterprises redesign how humans and AI work together inside innovation and knowledge-work processes. Do not frame estack as a generic AI tool recommendation kit. Frame it as a practical transformation system that produces meeting-ready artifacts: use case portfolios, workflow blueprints, human-AI interaction protocols, pilot plans, metrics, and governance boundaries.

## First Pass Routing

Route the user to one or two skills based on the real task:

| User Need | Use |
|---|---|
| "Where should we apply AI first?" | `$e-innovation-map` |
| "How should humans and AI divide work?" | `$e-collaboration-design` |
| "How do we redesign this process?" | `$e-innovation-workflow` |
| "How do we test this in a real business unit?" | `$e-innovation-pilot` |
| "How do we measure whether this worked?" | `$e-innovation-metrics` |
| "What rules, risk controls, and approvals do we need?" | `$e-ai-governance` |

## Knowledge Base Routing

Before producing output, read the smallest useful layer of `knowledge-base/`. Open `references/` only when the task needs cases, mechanisms, or evidence workflows.

| User need | Read first | Read if needed |
|---|---|---|
| Find enterprise AI opportunities | `knowledge-base/core/use-cases.md` | `knowledge-base/references/benchmark-cases.md` |
| Design human-AI interaction | `knowledge-base/core/collaboration-patterns.md` | `knowledge-base/references/research-anchors.md` |
| Redesign a workflow | `knowledge-base/core/workflow-patterns.md` | `knowledge-base/references/benchmark-cases.md` |
| Produce client-ready artifacts | `knowledge-base/core/output-templates.md` | `knowledge-base/core/onboarding-prompts.md` |
| Define pilot success | `knowledge-base/core/metrics-and-rubrics.md` | `knowledge-base/references/web-search-evidence-workflows.md` |
| Set risk boundaries | `knowledge-base/core/governance-controls.md` | `knowledge-base/references/technical-enablers.md` |
| Ground claims in external evidence | `knowledge-base/references/web-search-evidence-workflows.md` | `knowledge-base/archive/original-sources/` |

Useful diagnostic assets in the knowledge base:

- **Two inequalities** (Kuaishou case): using AI tools ≠ individual productivity; individual productivity ≠ organizational productivity. Use them to locate where the client's adoption is stuck before recommending a path.
- **Maturity models**: Block's six-stage agentic ladder and Kuaishou's L1/L2/L3 paradigm levels, both in `references/benchmark-cases.md`.
- **Completed example**: a filled Collaboration Configuration Card in `core/output-templates.md` for showing what estack output looks like.

If the user gives a broad transformation request, use this sequence:

1. `$e-innovation-map` to identify and prioritize candidate innovation use cases.
2. `$e-collaboration-design` to define the human-AI configuration for the top use case.
3. `$e-innovation-workflow` to turn the configuration into an operating workflow.
4. `$e-innovation-pilot` to design a 30/60/90-day experiment.
5. `$e-innovation-metrics` to define evidence and decision criteria.
6. `$e-ai-governance` to set risk boundaries before scaling.

## Minimum Intake

If context is missing, ask only for the smallest useful set of inputs:

- enterprise or department context
- target innovation or knowledge-work task
- current process and pain point
- people involved and decision owner
- tools, data, or policy constraints
- desired output: diagnosis, workflow, pilot, metrics, or governance

## Default Output

When acting as the router, produce:

1. **Current situation read**: what kind of enterprise AI transformation problem this is.
2. **Recommended path**: the next 2-3 estack skills to run, with reasons.
3. **Immediate artifact**: the concrete output to produce next.
4. **Missing inputs**: only the inputs that would materially change the recommendation.

## Guardrails

- Do not over-index on tools, vendors, or model features.
- Do not call a process "AI-native" unless roles, sequence, authority, validation, and escalation are specified.
- Do not hide human judgment. Make explicit where humans define problems, interpret context, evaluate novelty/usefulness, make commitments, or take accountability.
- Do not treat AI-first as automatically better than human-first. Choose the sequence based on the task's uncertainty, risk, and susceptibility to anchoring.
- Use ordinary enterprise language externally; keep academic terms in the background unless the user asks for theory.
