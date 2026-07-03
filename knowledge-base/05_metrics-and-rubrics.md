---
project: estack
type: metrics-and-rubrics
status: active
created: 2026-07-03
updated: 2026-07-03
---

# Metrics and Rubrics

这个文件用于衡量 AI 是否真正改善创新工作，服务 `$e-innovation-metrics`。

核心判断：AI transformation 不能只用“使用率”证明成功。estack 需要同时衡量创新质量、流程质量、人机互动、证据质量、治理负荷和业务影响。

## Metrics Stack

| Layer | What to measure | Example metrics | Why it matters |
|---|---|---|---|
| Innovation quality | 输出是否更好 | 新颖性、有用性、可行性、战略匹配、差异化 | 防止只追求速度 |
| Process quality | 流程是否更好 | cycle time、iteration depth、option diversity、handoff clarity | 判断 workflow 是否真的被重构 |
| Human-AI interaction | 协作是否有效 | AI suggestion adoption rate、human edit rate、rejection reasons、escalation frequency | 判断配置是否合适 |
| Evidence quality | 结论是否有证据 | citation coverage、source diversity、freshness、claim-source fit | 支持 web-grounded decision |
| Adoption effect | 是否被真实使用 | active users、reuse rate、satisfaction、training needs | 区分试用和真正采用 |
| Governance load | 成本是否转移 | manager review time、review queue length、incident count、role impact | 防止隐性组织负荷 |
| Business impact | 是否创造价值 | revenue opportunity、cost saved、customer value、error reduction | 连接业务结果 |

## Innovation Quality Rubric

| Dimension | 1 | 3 | 5 |
|---|---|---|---|
| Novelty | 常规想法 | 有局部新意 | 明显打开新问题空间 |
| Usefulness | 难以落地 | 有潜在用户价值 | 清楚解决重要问题 |
| Feasibility | 缺资源/技术不可行 | 需要中等调整 | 可通过 pilot 验证 |
| Strategic fit | 与战略弱相关 | 支持局部目标 | 支持核心战略或增长方向 |
| Evidence support | 无证据 | 有间接证据 | 有直接来源或内部数据支持 |

## Human-AI Interaction Metrics

| Metric | Definition | Interpretation |
|---|---|---|
| AI suggestion adoption rate | AI 建议被采纳比例 | 太高可能代表过度依赖，太低可能代表质量或配置问题 |
| Human edit rate | 人类修改 AI 输出的比例 | 反映 AI 输出是否接近可用状态 |
| Rejection reason distribution | 被拒原因分类 | 识别事实错误、风格不合、风险、不可行等问题 |
| Escalation frequency | 需要升级给负责人/专家的次数 | 反映任务风险和边界是否清楚 |
| Iteration depth | 人机来回迭代轮数 | 太低可能浅，太高可能流程不清 |

## Evidence Quality Metrics

| Metric | Definition | Minimum standard |
|---|---|---|
| Citation coverage | 关键 claim 中有来源支持的比例 | 高风险输出必须覆盖关键 claim |
| Source diversity | 来源类型和视角多样性 | 不只依赖供应商/媒体单一来源 |
| Freshness | 来源是否符合决策时效 | 市场/政策/价格类必须近期检查 |
| Claim-source fit | 来源是否直接支持结论 | 不允许用弱来源支撑强结论 |
| Caveat visibility | 是否明确限制和不确定性 | 所有 partial/adjacent 证据必须标注 caveat |

## Governance and Load Metrics

| Metric | Why it matters |
|---|---|
| Manager review time | 防止 AI adoption 把隐性成本压给中层 |
| Review queue length | 多 agent 并行后最容易出现的新瓶颈 |
| Rework rate | 判断 AI 输出是否真正减少工作量 |
| Incident / near miss count | 记录错误承诺、数据泄露、错误引用等风险 |
| Knowledge-sharing frequency | 判断 adoption 是否进入团队方法沉淀 |
| Coaching time change | 判断是否损害领导力培养管道 |

## Measurement Cadence

| Stage | Measure |
|---|---|
| Before pilot | baseline cycle time、quality score、manager load、current evidence quality |
| During pilot | adoption/edit/rejection/escalation、review time、source quality |
| End of pilot | innovation quality、workflow improvement、governance incidents、business proxy |
| Scale decision | 是否达到 scale criteria；是否有组织负荷转移；是否需要 workflow redesign |

## Minimum Dashboard for Pilot

每个 estack pilot 至少追踪 8 个指标：

1. cycle time
2. option diversity
3. novelty score
4. usefulness score
5. AI adoption / rejection rate
6. evidence quality score
7. manager review time
8. rework / escalation count