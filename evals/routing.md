# Routing evals for `$estack`

Golden cases for the router in `skills/estack/SKILL.md`. When you edit the
routing table there, re-check every row below by hand or feed it to the
skill-creator eval harness. Each row states a user request and the single skill
the router should hand off to first.

| # | User request | Expected first skill |
|---|---|---|
| 1 | "Where should we apply AI first across our company?" | `$e-innovation-map` |
| 2 | "How should our people and AI divide the work on this task?" | `$e-collaboration-design` |
| 3 | "Redesign our campaign-production process to be AI-native." | `$e-innovation-workflow` |
| 4 | "We want to test this in one business unit for a quarter." | `$e-innovation-pilot` |
| 5 | "How do we prove whether the AI rollout actually worked?" | `$e-innovation-metrics` |
| 6 | "What approvals and risk limits do we need before scaling?" | `$e-ai-governance` |
| 7 | "企业AI转型该从哪里开始？" | `$e-innovation-map` |
| 8 | "90% of staff use AI tools but delivery has not changed." | `$e-innovation-map` |
| 9 | "Give us the full path from opportunity to safe scale." | `$estack` sequence (map, collaboration, workflow, pilot, metrics, governance) |

## How to run

Manual pass, open `skills/estack/SKILL.md`, read the First Pass Routing table,
confirm each request above still lands on the expected skill.

Automated pass, use the installed skill-creator eval capability with these rows
as the assertion set.
