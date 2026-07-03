---
name: e-innovation-workflow
description: Redesign existing enterprise workflows into AI-native innovation workflows. Use when the user has a current process and needs an as-is/to-be blueprint, swimlane, SOP, operating cadence, handoff design, or implementation backlog for human-AI work.
---

# E-Innovation Workflow

Use this skill to convert a human-AI collaboration configuration into a repeatable enterprise workflow.

## Workflow

1. Map the current **as-is** workflow:
   - trigger
   - inputs
   - actors
   - decisions
   - artifacts
   - bottlenecks
   - quality failures
2. Identify where the current process limits innovation:
   - narrow problem framing
   - slow information search
   - thin option set
   - weak evaluation criteria
   - decision bottleneck
   - poor learning capture
3. Design the **to-be AI-native workflow**:
   - where AI enters
   - what AI produces
   - what humans decide
   - what gets recorded
   - what gets escalated
4. Define the new operating model:
   - roles
   - artifacts
   - review cadence
   - exception handling
   - governance checkpoints
5. Convert the workflow into an implementation backlog.

## Output Format

Produce:

1. **As-Is Workflow Summary**

| Step | Actor | Input | Activity | Output | Pain Point |
|---|---|---|---|---|---|

2. **To-Be AI-Native Workflow Blueprint**

| Step | Human Work | AI Work | Handoff | Decision | Evidence/Record | Risk Control |
|---|---|---|---|---|---|---|

3. **New SOP**

- When this workflow starts
- Who owns it
- Required inputs
- AI task instructions
- Human review standards
- Approval and escalation rules
- Final artifact format

4. **Implementation Backlog**

| Item | Owner | Effort | Dependency | Priority |
|---|---|---:|---|---|

## Knowledge Base

- Read `knowledge-base/core/workflow-patterns.md` first: maturity ladders (Block six-stage, Kuaishou L1/L2/L3 dual-path), three-layer restructuring (information/process/organization), align-upfront-freeze-then-delegate, delivery/guardian separation, and the AIGC pipeline pattern.
- Use `knowledge-base/references/benchmark-cases.md` to ground the diagnosis in real transformations before proposing the to-be design.

## Guardrails

- Do not merely insert AI into the old workflow. Redesign the sequence, artifacts, and decision rights.
- Do not automate evaluation and approval when strategic, ethical, customer, or legal commitments are involved.
- Do not skip learning capture. AI-native workflows should improve from repeated use.
