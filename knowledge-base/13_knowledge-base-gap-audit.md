---
project: estack
type: knowledge-base-gap-audit
status: active
created: 2026-07-03
updated: 2026-07-03
---

# Knowledge-base Gap Audit

## 当前结论

第一轮 P0 缺口已经补上最小可用版。现在 knowledge-base 已经不只是 source archive，而是具备 estack skills 可调用的基础判断库。

仍然需要继续深化的是：真实案例示例、每个模板的 completed example、以及快手 AI Native 案例的正式抽取。

## 文件状态表

| File | 类型 | 当前状态 | 优先级 | 下一步 |
|---|---|---|---|---|
| `01_enterprise-innovation-use-cases.md` | use cases | active，已有 7 个 starter use cases | P0 | 为每个 use case 补一个 completed example |
| `02_human-ai-collaboration-patterns.md` | collaboration patterns | active，已有 8 个 pattern | P0 | 增加真实案例映射 |
| `03_ai-native-workflow-patterns.md` | workflow patterns | active，已有 Block agentic workflow | P0 | 继续补新产品、营销、客户洞察、战略流程 |
| `04_output-templates-and-examples.md` | templates | active，已有 10 个核心模板 | P0 | 选 2 个模板做 filled example |
| `05_metrics-and-rubrics.md` | metrics | active，已有指标栈和 rubrics | P0 | 补一个 pilot metrics dashboard 示例 |
| `06_governance-risk-controls.md` | governance | active，有中层负荷、review bottleneck、web source risk | P1 | 继续补 data/IP/privacy controls |
| `07_onboarding-prompts-and-user-stories.md` | onboarding | active，有 6 类用户入口和 starter prompts | P1 | 放入 GitHub README / demo |
| `08_research-anchors.md` | research anchors | active，有 organization absorption layer | P1 | 接论文机制：problem definition order、cognitive flexibility |
| `09_benchmark-cases.md` | benchmark cases | active，有 Block；快手案例待抽 | P2 | 把快手案例正式抽取进去 |
| `10_source-triage.md` | source triage | active | supporting | 继续作为入口登记 |
| `11_technical-enablers-and-model-capabilities.md` | technical enablers | active，有 Agent RFT | P2 | 后续补 RAG、evaluation、connectors |
| `12_web-search-and-research-workflows.md` | web research workflow | active | P1 | 和 templates/metrics/governance 已建立链接 |

## 当前最该做的下一步

1. 从快手原文正式抽取 benchmark case 和 workflow pattern。
2. 为 `04_output-templates-and-examples.md` 做一个 completed example。
3. 把 `07_onboarding-prompts-and-user-stories.md` 转成 GitHub README 的 Quick Start。
4. 更新 estack repo 的 skills，让 `$estack` router 知道这些 knowledge-base 分类。