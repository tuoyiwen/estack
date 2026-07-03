---
name: e-collaboration-design
description: Design enterprise human-AI collaboration configurations and interaction protocols for innovation work. Use when the user needs to decide who does what between humans and AI, in what order, with what authority, review, feedback, escalation, and evidence requirements. Also triggers on Chinese requests about 人机分工, 人和AI怎么配合, 协作模式设计.
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

## Pattern Menu

Choose from ten named patterns. The full library with review rules and case mappings is in `knowledge-base/core/collaboration-patterns.md`; this menu is the fallback when the knowledge base is unavailable.

| Pattern | Use when |
|---|---|
| Human-first, AI expands | Problem definition is critical and organizational context is strong |
| AI-first, human reframes | The team needs to break out of habitual thinking fast |
| Alternating interaction | Exploratory innovation that needs iterative correction |
| Parallel exploration | Diversity and comparison sets matter |
| AI prepares, human decides | Decision prep and evidence synthesis |
| Search-first, AI synthesizes, human verifies | External facts, current information, or citations are required |
| Agent delegates, human reviews | Clear task, context, and acceptance criteria exist |
| AI reviews, AI fixes, human arbitrates | AI output volume already exceeds human review capacity |
| Align upfront, freeze, then delegate | Multi-role handoff friction is eating the AI productivity gain |
| Human sets goals, AI produces and evaluates | Content/creative throughput is limited by human cognition and time |

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

## Knowledge Base

The knowledge base lives at `knowledge-base/` in the estack repository root. If it is not present (standalone install), work from the Pattern Menu above and note the full knowledge base is at <https://github.com/tuoyiwen/estack>.

- Read `knowledge-base/core/collaboration-patterns.md` first: 10 named patterns with selection rules, review rules, and a real-case mapping (Block, Kuaishou, HBR).
- Check `knowledge-base/references/research-anchors.md` for the four collaboration frictions (manual bridging, context alignment, verification asymmetry, capability-boundary misjudgment); design the configuration to reduce them explicitly.
- Use the completed Collaboration Configuration Card example in `knowledge-base/core/output-templates.md` as the output quality bar.

## Guardrails

- Write the configuration card and protocol in the user's working language; keep pattern names in English.
- Do not recommend "AI does first draft, human reviews" as the default for every task.
- Do not erase problem definition. In innovation work, who defines the problem often shapes the novelty and usefulness of the outcome.
- Do not treat human oversight as a vague phrase. Specify who reviews what, when, and against which criteria.

## Next Skill

Once the configuration is agreed, run `$e-innovation-workflow` to turn it into an operating workflow.
