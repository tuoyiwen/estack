---
name: e-innovation-map
description: Map and prioritize enterprise AI innovation use cases. Use when an organization needs to identify where AI should be applied first, compare candidate innovation or knowledge-work scenarios, choose pilots, or decide which human-AI collaboration configuration fits each use case.
---

# E-Innovation Map

Use this skill to turn a vague enterprise AI ambition into a prioritized portfolio of innovation use cases. Focus on innovation and knowledge work, not generic automation.

## Scope

Include use cases such as product concept development, customer insight synthesis, marketing ideation, strategic option generation, R&D problem framing, service redesign, proposal development, content planning, and decision-prep work.

Exclude purely routine back-office automation unless it directly supports innovation speed, quality, learning, or decision-making.

## Workflow

1. Identify candidate innovation tasks across departments.
2. Decompose each task into the innovation job it performs: problem finding, information search, idea generation, option evaluation, decision synthesis, implementation learning, or stakeholder communication.
3. Score each candidate on:
   - strategic value
   - current workflow pain
   - AI leverage
   - data and knowledge readiness
   - human judgment intensity
   - adoption feasibility
   - risk and governance sensitivity
4. Assign a likely human-AI configuration:
   - human-first problem definition, AI expands
   - AI-first option generation, human selects
   - alternating human-AI iteration
   - parallel human and AI exploration
   - AI prepares evidence, human decides
5. Classify candidates as **Now**, **Next**, **Later**, or **Avoid**.

## Output Format

Produce an **AI Innovation Use Case Portfolio**:

| Use Case | Department | Innovation Job | Current Bottleneck | AI Opportunity | Likely Configuration | Value | Feasibility | Risk | First Experiment | Decision |
|---|---|---|---|---|---|---:|---:|---:|---|---|

Then add:

- **Top 3 recommendations** with short rationale.
- **Do not start with** list for attractive but weak candidates.
- **Configuration notes** explaining why a case needs human-first, AI-first, alternating, or parallel work.
- **Next skill** recommendation, usually `$e-collaboration-design` for the top use case.

## Guardrails

- Do not produce a generic department-by-department AI checklist.
- Do not equate high efficiency potential with high innovation value.
- Do not recommend a pilot unless there is a clear task owner, repeatable work episode, measurable output, and manageable risk.
