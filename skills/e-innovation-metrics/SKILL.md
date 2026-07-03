---
name: e-innovation-metrics
description: Define metrics for enterprise AI innovation outcomes and adoption effects. Use when the user needs to measure novelty, usefulness, quality, diversity, cycle time, adoption, AI contribution, human review, ROI, risk, or scale readiness for AI-native innovation workflows. Also triggers on Chinese requests about AI效果怎么衡量, 指标体系, 怎么证明AI有用.
---

# E-Innovation Metrics

Use this skill to define evidence for whether an AI-native innovation workflow actually improves business work. Publicly call this innovation measurement; internally preserve the distinction between novelty and usefulness when relevant.

## Metric Layers

Use five layers:

1. **Output quality**: novelty, usefulness, feasibility, strategic fit, clarity, evidence quality.
2. **Process quality**: option diversity, problem framing quality, cycle time, iteration depth, decision traceability.
3. **Human-AI interaction**: AI suggestion adoption rate, revision rate, rejection reasons, escalation frequency, review quality.
4. **Adoption**: active users, repeat usage, manager support, workflow compliance, training needs.
5. **Business impact and risk**: revenue opportunity, cost reduction, customer value, error reduction, compliance incidents, IP or privacy issues.

## Workflow

1. Define the unit of analysis: idea, proposal, campaign, product concept, decision memo, workflow cycle, or team.
2. Establish the baseline or comparison condition.
3. Choose 5-8 metrics only.
4. Define how each metric will be captured.
5. Separate leading indicators from lagging indicators.
6. Define the review cadence and decision threshold.

## Output Format

Produce an **AI Innovation Metrics Dashboard Spec**:

| Metric | Layer | Definition | Data Source | Collection Method | Review Cadence | Target/Threshold | Owner |
|---|---|---|---|---|---|---|---|

Then produce:

1. **Innovation Quality Rubric**

| Dimension | 1 - Weak | 3 - Acceptable | 5 - Strong |
|---|---|---|---|
| Novelty |  |  |  |
| Usefulness |  |  |  |
| Feasibility |  |  |  |
| Strategic fit |  |  |  |

2. **Human-AI Interaction Evidence Log**

| Task | AI Contribution | Human Change | Accepted/Revised/Rejected | Reason | Final Outcome |
|---|---|---|---|---|---|

3. **Decision Rule**

State what evidence would justify scaling, iterating, or stopping the workflow.

## Measurement Pitfalls

Check these before proposing any dashboard, with or without the knowledge base:

- Adoption rate is not a delivery outcome. High tool usage with unchanged delivery is the default failure mode, not a success signal.
- Individual and organizational metrics must be separated. Individual productivity gains do not aggregate automatically; handoffs and review capacity absorb them.
- A measurement baseline must exist before AI metrics mean anything. If the client cannot measure the current process, the first metric task is the baseline, not the AI dashboard.

## Knowledge Base

The knowledge base lives at `knowledge-base/` in the estack repository root. If it is not present (standalone install), work from the layers and pitfalls in this file and note the full knowledge base is at <https://github.com/tuoyiwen/estack>.

- Read `knowledge-base/core/metrics-and-rubrics.md` first: the seven-layer metrics stack, rubrics, AI maturity metrics (L1/L2/L3 share), collaboration friction metrics, and the minimum pilot dashboard.

## Guardrails

- Write the dashboard spec and rubrics in the user's working language; keep metric layer names in English.
- Do not reduce innovation value to time saved.
- Do not claim causal impact without a comparison or baseline.
- Do not use vague "quality improved" claims without a scoring rubric or artifact review.
- Do not ignore rejected AI outputs; rejection reasons often reveal where the workflow needs redesign.

## Next Skill

If the metrics reveal risk exposure (compliance incidents, review gaps, unclear accountability), run `$e-ai-governance` before scaling.
