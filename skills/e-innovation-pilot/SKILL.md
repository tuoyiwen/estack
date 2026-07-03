---
name: e-innovation-pilot
description: Design enterprise AI innovation pilots for human-AI collaboration workflows. Use when the user needs a 30/60/90-day pilot, experiment charter, participant plan, task design, comparison condition, rollout plan, or success and stop criteria.
---

# E-Innovation Pilot

Use this skill to turn a proposed human-AI innovation workflow into a real enterprise pilot.

## Pilot Principles

A pilot is not "let people try AI." It is a bounded experiment with a task, participants, workflow, metrics, governance rules, and a decision point.

Prefer pilots that compare human-AI configurations when possible:

- human-first problem definition, AI expansion
- AI-first option generation, human reframing
- alternating human-AI iteration
- AI generates candidates, human applies selection gate
- AI prepares evidence, human makes decision

## Workflow

1. Define the pilot question.
2. Select one repeatable innovation task.
3. Define the participant group and owner.
4. Specify the workflow and human-AI protocol.
5. Choose comparison condition: before/after, team A/team B, or configuration A/configuration B.
6. Define metrics before launch.
7. Set data, security, and approval boundaries.
8. Create the 30/60/90-day plan.
9. Define scale, iterate, or stop decision criteria.

## Output Format

Produce an **AI Innovation Pilot Charter**:

- Pilot name:
- Business owner:
- Target workflow:
- Pilot question:
- Participants:
- AI tools/data allowed:
- Human-AI configuration:
- Comparison design:
- Success criteria:
- Stop criteria:
- Governance constraints:

Then produce a timeline:

| Phase | Days | Activities | Outputs | Decision |
|---|---:|---|---|---|
| Setup | 0-30 |  |  |  |
| Run | 31-60 |  |  |  |
| Evaluate/Scale | 61-90 |  |  |  |

Then add:

- participant instructions
- manager review cadence
- data collection plan
- risk log
- scale decision memo template

## Knowledge Base

- Use the Pilot Charter template in `knowledge-base/core/output-templates.md`, including the middle-manager load and review capacity field.
- Run the pilot governance checks in `knowledge-base/core/governance-controls.md`: manager review capacity, learning time protection, verification-at-scale readiness, role impact.
- For scenario selection, apply the dual-path rule from `knowledge-base/core/workflow-patterns.md`: only promise end-to-end autonomy (L3) when task boundaries are clear, risk is controllable, and error tolerance is high.

## Guardrails

- Do not recommend a pilot without an owner and a measurable work episode.
- Do not measure only satisfaction or time saved.
- Do not run a high-risk pilot without governance review.
- Do not call the pilot successful unless the evidence supports scale, iteration, or a clear stop decision.
