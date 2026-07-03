---
project: estack
type: output-templates-and-examples
status: active
created: 2026-07-03
updated: 2026-07-03
---

# Output Templates and Examples

这个文件收集 estack 每个 skill 应该产出的企业可用材料。

核心判断：企业用户通常不是问“你知道什么”，而是问“你能给我什么可用材料”。每个 estack skill 都应该落到一个可复制、可评审、可执行的 artifact。

## 1. AI Innovation Use Case Portfolio

服务：`$e-innovation-map`

| Use case | Business objective | Current pain | AI opportunity | Human judgment | Recommended pattern | Evidence needed | Risk | Priority |
|---|---|---|---|---|---|---|---|---|
|  |  |  |  |  |  |  |  |  |

最低要求：至少列出 5 个 use cases，并按 business value、AI leverage、risk manageability 排序。

## 2. Collaboration Configuration Card

服务：`$e-collaboration-design`

| Field | Content |
|---|---|
| Task |  |
| Collaboration pattern |  |
| Human role |  |
| AI role |  |
| Sequence |  |
| Handoff artifact |  |
| Review checkpoints |  |
| Escalation triggers |  |
| Metrics |  |
| Risks |  |

## 3. Human-AI Interaction Protocol

服务：`$e-collaboration-design`, `$e-ai-governance`

```text
1. Human defines: goal, context, constraints, unacceptable outcomes.
2. AI produces: options, evidence, assumptions, risks, open questions.
3. Human checks: source quality, strategic fit, risk, missing stakeholders.
4. AI revises: based on critique and produces final artifact.
5. Human decides: approve / reject / pilot / escalate.
6. System logs: sources, decisions, rejected options, owner, next review date.
```

## 4. AI-native Workflow Blueprint

服务：`$e-innovation-workflow`

| Step | As-is workflow | Bottleneck | AI role | Human role | Handoff artifact | Review criteria | Escalation trigger |
|---|---|---|---|---|---|---|---|
| 1 |  |  |  |  |  |  |  |
| 2 |  |  |  |  |  |  |  |
| 3 |  |  |  |  |  |  |  |

必须包含：AI 进入点、人类判断点、最终责任 owner、回写知识库方式。

## 5. Pilot Charter

服务：`$e-innovation-pilot`

| Field | Content |
|---|---|
| Pilot name |  |
| Business problem |  |
| Target workflow |  |
| Hypothesis | 如果引入某种 human-AI configuration，会改善什么结果？ |
| Scope |  |
| Out of scope |  |
| Users / roles |  |
| AI tools / model / retrieval |  |
| Data boundary |  |
| Review owner |  |
| Middle-manager load | review time、coaching load、knowledge-sharing responsibility |
| Success metrics |  |
| Risks |  |
| Stop / scale criteria |  |
| Timeline |  |

## 6. Innovation Metrics Dashboard

服务：`$e-innovation-metrics`

| Layer | Metric | Baseline | Target | Measurement method | Owner |
|---|---|---|---|---|---|
| Innovation quality | novelty / usefulness / feasibility |  |  |  |  |
| Process quality | cycle time / iteration depth |  |  |  |  |
| Human-AI interaction | adoption / rejection / edit rate |  |  |  |  |
| Evidence quality | citation coverage / source quality |  |  |  |  |
| Governance | review load / escalation / incident |  |  |  |  |
| Business impact | revenue / cost / customer value |  |  |  |  |

## 7. Governance Matrix

服务：`$e-ai-governance`

| Risk | Trigger | Control | Human owner | Evidence / log | Escalation |
|---|---|---|---|---|---|
| Data sensitivity |  |  |  |  |  |
| Incorrect output |  |  |  |  |  |
| Source unreliability |  |  |  |  |  |
| Review bottleneck |  |  |  |  |  |
| Role impact |  |  |  |  |  |

## 8. Web Research Brief

服务：`$e-innovation-map`, `$e-innovation-workflow`, `$e-ai-governance`

| Field | Content |
|---|---|
| Decision question | 这次搜索服务哪个决策？ |
| Search scope | 时间、地域、行业、职能、语言范围 |
| Source tiers | 官方/学术/行业报告/新闻/社区/供应商材料 |
| Excluded sources | 不使用或仅作弱信号的来源 |
| Query plan | 核心关键词、替代关键词、限定域名 |
| Evidence matrix | Claim、source、date、evidence strength、risk |
| Confidence | direct / partial / adjacent / weak |
| Action handoff | 进入哪个 estack skill 输出 |

## 9. Evidence Matrix

服务：`references/web-search-evidence-workflows.md`

| Claim | Source | Date checked | Evidence strength | Use in estack | Caveat |
|---|---|---|---|---|---|
|  |  |  | direct / partial / adjacent / weak |  |  |

## 10. Source Quality Rubric

服务：`$e-ai-governance`, `$e-innovation-metrics`

| Dimension | High | Medium | Low |
|---|---|---|---|
| Authority | 官方文档、原始论文、公司一手材料 | 行业媒体、专家博客 | 二手转述、无来源内容 |
| Freshness | 与问题时效匹配 | 可能仍有效但需确认 | 明显过期 |
| Claim-source fit | 来源直接支持结论 | 来源只支持一部分 | 来源和结论关系弱 |
| Traceability | URL、作者、日期、引用位置完整 | 有 URL 但元数据不全 | 无法追溯 |
| Bias risk | 中立或可交叉验证 | 有商业立场但透明 | 明显营销/夸张/不可验证 |

## 11. Completed Example: Collaboration Configuration Card（快手直播礼物）

这是模板 2 的完整填写示例，材料来自 [[../references/benchmark-cases#Kuaishou main-site: 千人工程团队的 AI Native 三层重构|快手案例]]。给用户演示 estack 输出长什么样时优先用它。

| Field | Content |
|---|---|
| Task | 直播礼物内容的设计、生成与上新 |
| Collaboration pattern | Human sets goals, AI produces and evaluates |
| Human role | 定义目标、标准和关键方向；审定商业化与品牌底线 |
| AI role | 方向/剧本/分镜/美术制作（AIGC agent）；生成、剪辑、合成（Agent Tools）；评审、验证、评测（Agent evaluation） |
| Sequence | 人定目标 -> agent 全链路生产 -> agent 评测初筛 -> 人抽检与终审 -> 上线 -> 消费付费特征因子回流 |
| Handoff artifact | Evaluated content candidates（带评测分和依据） |
| Review checkpoints | 内容方向确认；品牌/合规底线抽检；商业化终审 |
| Escalation triggers | 评测分布异常（质量漂移）；涉敏感题材；付费数据异常 |
| Metrics | 上新周期（20 天 -> 4 天以内）；产出多样性；抽检通过率；付费转化 |
| Risks | 评测标准失真；内容同质化；版权/IP |
| Governance rule | 人定义 evaluation rubric 并定期校准；agent 评审结果定期抽检对照人工判断 |
