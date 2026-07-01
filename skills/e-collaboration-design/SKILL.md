---
name: e-collaboration-design
description: Design enterprise human-AI collaboration configurations and interaction protocols for innovation work. Use when the user needs to decide who does what between humans and AI, in what order, with what authority, review, feedback, escalation, and evidence requirements.
---

# E-Collaboration Design

Use this skill to design the core human-AI interaction pattern behind an AI-native innovation workflow. This is the heart of estack.

## Design Dimensions

Specify the configuration across six dimensions:

1. **Sequence**: human-first, AI-first, alternating, parallel, or AI-background support.
2. **Task allocation**: problem definition, knowledge search, idea generation, evaluation, integration, communication, and learning.
3. **Authority**: AI drafts, recommends, ranks, flags, executes, or only prepares evidence.
4. **Feedback loop**: how humans revise AI outputs and how AI incorporates feedback.
5. **Verification**: what must be checked before adoption.
6. **Escalation**: when human judgment, manager review, legal review, or domain expert review is required.

## Workflow

1. Name the target innovation task and its business context.
2. Break the work into stages from problem framing to final decision.
3. Identify where AI can expand search, generate alternatives, compare options, surface assumptions, or prepare evidence.
4. Identify where humans must preserve context, values, novelty judgment, feasibility judgment, responsibility, and stakeholder commitments.
5. Choose the sequence and explain why.
6. Write the interaction protocol in operational language.

## Output Format

Produce a **Human-AI Collaboration Configuration Card**:

- Task:
- Business context:
- Recommended sequence:
- Why this sequence:
- AI role:
- Human role:
- Decision authority:
- Main risk:
- Required safeguards:

Then produce a stage table:

| Stage | Human Role | AI Role | Handoff Artifact | Review Criteria | Escalation Trigger | Record Needed |
|---|---|---|---|---|---|---|

Finally produce a **Human-AI Interaction Protocol**:

1. Task initiation prompt or briefing format.
2. Required AI response structure.
3. Human review checklist.
4. Accept / revise / reject criteria.
5. Escalation rules.
6. Learning loop for future tasks.

## Common Risks To Check

- AI anchors the problem definition too early.
- AI produces plausible but conventional options.
- Human accepts AI ranking without inspecting criteria.
- Human edits style but not assumptions.
- The process records final outputs but not rejected alternatives.
- Accountability becomes ambiguous after AI involvement.

## Guardrails

- Do not recommend "AI does first draft, human reviews" as the default for every task.
- Do not erase problem definition. In innovation work, who defines the problem often shapes the novelty and usefulness of the outcome.
- Do not treat human oversight as a vague phrase. Specify who reviews what, when, and against which criteria.
