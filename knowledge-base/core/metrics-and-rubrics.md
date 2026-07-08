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

## Measurement Pitfalls

来自快手案例（[[../references/benchmark-cases#Kuaishou main-site: 千人工程团队的 AI Native 三层重构|benchmark cases]]）的三个度量教训：

1. **采纳率不等于交付结果**：代码生成率 17% -> 30%、各环节采纳率都高，但端到端交付周期不变。使用率指标只能证明工具被用了，不能证明组织变快了。
2. **个体指标和组织指标必须分层看**：个体耗时在降、组织周期不动，说明断裂在协作层。指标体系要能定位断在哪一层（个体 / 协作 / 组织），而不是只出一个总分。
3. **度量地基先于 AI 度量**：研发活动在线化、数据可信、指标可拆解可归因，是谈 AI 提效的前提。客户连 baseline 都量不出来时，pilot 第一步是建度量，不是上 AI。

## AI Maturity Metrics

| Metric | Definition | 用途 |
|---|---|---|
| AI 渗透率 | AI 参与的需求/任务占比 | 广度指标，容易虚高，只作背景 |
| AI 成熟度（L1/L2/L3 占比） | 需求按 L1 辅助 / L2 协作 / L3 自主分级后的分布 | 核心结构指标：L2/L3 占比上升才代表范式在升级 |
| 分级周期对比 | L2 vs L1、L3 vs L1 的交付周期差 | 证明范式升级的收益（快手：L2 较 L1 缩短 20%-30%） |

## Collaboration Friction Metrics

对应四类人机协作摩擦（[[../references/research-anchors|research anchors]]）：

| Friction | Metric |
|---|---|
| 人工补位 | 人在系统间搬运信息的时间占比 |
| 上下文对齐 | 每个任务的上下文准备时间 |
| 验证与纠偏 | 验证时长 / 生成时长比；返工率 |
| 能力边界判断 | 高估返工次数；低估漏用机会（抽样评估） |

## Token ROI Metrics

Source: [[../archive/original-sources/2026-07-05_腾讯研究院_Token不经济_原文|Token 不经济归档]]。核心原则：考核的不是"用 AI 最多"，而是"用最少 token 完成最多工作"。

| Metric | Definition | 参考基准 / 依据 |
|---|---|---|
| 单位任务 token 成本 | 完成一个可验证产出所消耗的 token | 建 baseline 后追踪趋势 |
| 无效消耗占比 | 沟通税 + 熵税（协调、重复传递、自我纠偏）占总消耗比例 | ChatDev 实测 code review 阶段占 39.5%（Salim et al. 2026） |
| Skill 调用增益 | 加载技能前后的任务通过率差 vs token 开销增量 | 79.6% 公开技能零增益、开销最高 +451%（Han et al. 2026），盲目加载即浪费 |
| Cache 命中率 | 输入 token 命中缓存的比例 | Agent 路径高度分叉时会失效，需配合语义压缩 |
| Token 预算利用率 | 各任务/团队实际消耗 vs 预算上限 | 超预算触发审查，而不是自动追加 |

## Workforce Sentiment Metrics

Source: [[../archive/original-sources/2026-07-08_Lennys-Newsletter_Tech-Worker-Sentiment-2026_原文|Lenny 2026 情绪调查归档]]。用途：pilot 前后追踪员工侧感受，防止把 sorting risk 当 productivity win。行业基线来自 product-centric 自选样本，作参照不作规范。

| Metric | Definition | 2026 行业参照 |
|---|---|---|
| AI 身份分布 | amplified / redefined / destabilized / diminished 四选一 | 49% / 27% / 14% / 5%；身份立场是感受的最强预测变量（d≈1.55） |
| Squeeze 感知 | 认同"被期待同酬做更多"的比例 | 51%（远高于怕被替代的 22%） |
| Burnout 率 | 中度及以上倦怠比例 | 55.7%（年增 11pp） |
| 矛盾情绪率 | 同时勾选至少一正一负情绪的比例 | 77%（smiling exhaustion） |
| Resentful 占比 | 感到"被迫使用 AI"的比例 | 约 12%；该群体乐观度与推荐意愿最低 |
| Manager 有效性 | 员工评价 manager 高效的比例 | 25.5%；manager 质量是 burnout 最强驱动 |

解读规则：采纳率高 + squeeze 感知高 = 收益正在被 pocket 成预期，先处理负荷再推广度；destabilized 比例在创意/研究类角色和 junior 中偏高属预期，需配专门支持而非统一培训。

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