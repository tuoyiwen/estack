---
name: e-ai-governance
description: Design practical AI governance for enterprise innovation and human-AI workflows. Use when the user needs risk classification, data rules, review requirements, human accountability, audit trails, approval flows, allowed/prohibited uses, or governance boundaries for AI adoption. Also triggers on Chinese requests about AI使用规范, 风险边界, AI治理, 数据安全边界.
---

# E-AI Governance

Use this skill to create governance that enables AI adoption while protecting the enterprise. Keep the governance tied to real workflows and decisions.

## Governance Dimensions

Cover six dimensions:

1. **Data**: what data can be used, restricted, anonymized, or prohibited.
2. **Use case risk**: low, medium, high, or prohibited.
3. **Decision authority**: AI assists, AI recommends, AI drafts, AI executes, or human-only.
4. **Review**: who must review what before use.
5. **Traceability**: what prompts, sources, outputs, edits, and decisions must be recorded.
6. **Accountability**: who owns final decisions and external commitments.

## Workflow

1. Identify the target workflow or pilot.
2. Classify data sensitivity and business risk.
3. Define allowed and prohibited AI uses.
4. Set review and approval rules by risk level.
5. Define recordkeeping and audit requirements.
6. Assign owners for governance operations.
7. Write a simple policy that employees can actually follow.

## Output Format

Produce an **AI Governance Matrix**:

| Risk Tier | Example Uses | Data Allowed | AI Authority | Human Review | Approval Needed | Records Required |
|---|---|---|---|---|---|---|

Then produce:

1. **Allowed / Restricted / Prohibited Uses**
2. **Human Accountability Statement**
3. **Review Checklist**
4. **Audit Trail Requirements**
5. **Escalation Path**
6. **Employee-Facing Usage Rules**

## Innovation-Specific Risks

Check for:

- leaking confidential strategy, customer insight, product roadmap, or IP
- AI-generated ideas that infringe, imitate, or homogenize
- unsupported claims in customer-facing innovation materials
- hidden bias in prioritization or ranking
- unclear ownership of AI-assisted concepts
- over-automation of strategic judgment

## Core Controls

Apply these even without the knowledge base:

- **Manager load control**: any rule that adds human review must name who reviews, how much time it takes, and where that time comes from. Unbudgeted review becomes hidden middle-manager load.
- **Blast-radius control**: scope what an AI action can affect before granting authority; wider autonomy requires narrower blast radius or stronger rollback.
- **Verification-at-scale control**: when AI output volume exceeds review capacity, add automated pre-checks or sampling rules instead of pretending full human review happens.
- **Source and citation control**: externally facing claims produced with AI need a source, a date, and a named human owner.

## Knowledge Base

The knowledge base lives at `knowledge-base/` in the estack repository root. If it is not present (standalone install), work from the Core Controls above and note the full knowledge base is at <https://github.com/tuoyiwen/estack>.

- Read `knowledge-base/core/governance-controls.md` first: middle-manager load controls, review bottleneck rules, verification-at-scale and blast-radius controls, web source and citation rules.
- For evidence-dependent outputs, apply the source quality rubric and citation log rules from `knowledge-base/references/web-search-evidence-workflows.md`.
- For model adaptation questions (fine-tuning, RFT), use the boundary rules in `knowledge-base/references/technical-enablers.md`; do not recommend model training as a default transformation step.

## Guardrails

- Write the governance matrix and employee-facing rules in the user's working language; keep control names in English.
- Do not write policy as if all AI use is equally risky.
- Do not bury employees in legal language.
- Do not let governance become a blocker without alternative safe paths.
- Always connect governance rules to concrete workflow actions.

## Next Skill

With boundaries set, return to `$e-innovation-pilot` to run or scale the pilot inside them.
