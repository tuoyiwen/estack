---
project: estack
type: governance-risk-controls
status: active
created: 2026-07-03
---

# Governance and Risk Controls

这个文件收集企业 AI adoption / AI transformation 中可以转化为 workflow action 的治理与风险控制规则。

原则：不要只记录抽象风险。每条风险都要能转化为 pilot charter、workflow design、review rule、role boundary 或 metric。

## AI adoption load on middle managers

| 字段                   | 内容                                                                                            |
| -------------------- | --------------------------------------------------------------------------------------------- |
| Title                | AI 普及正在压垮中层管理者                                                                                |
| Type                 | governance risk / adoption bottleneck                                                         |
| Source               | https://www.bestblogs.dev/article/e44268ef                                                    |
| Relevant skill       | `$e-innovation-pilot`, `$e-ai-governance`, `$e-collaboration-design`, `$e-innovation-metrics` |
| What it helps decide | 判断一个 AI pilot 是否把验证、指导、质量控制和标准解释的隐性成本转嫁给中层管理者。                                                |
| Reusable output      | manager load check；review capacity plan；knowledge-sharing metric；pilot governance questions   |
| Confidence           | direct                                                                                        |

### 核心判断

AI adoption 不是简单的生产率提升。若组织只提高初级员工和高级岗位的输出速度，却没有重新设计中层管理者的时间、职责和支持系统，中层会成为隐形的 AI integration layer。

### 风险信号

- AI 输出需要大量人工验证，但 review owner 和 time budget 没有写进 pilot charter。
- 中层经理要指导员工使用 AI、检查质量、解释标准，同时原有交付压力不变。
- 激励机制奖励个人产出，而不是团队知识共享、可复用方法和质量改进。
- 领导层提出 AI 转型目标，但没有参与标准制定、培训和资源配置。
- 管理者的 coaching 时间被 AI 输出检查和救火工作挤压，影响未来领导力培养。

### 控制规则

- 每个 AI pilot 必须标明谁负责 review AI output，以及这项工作占用多少时间。
- 如果经理是主要复核者，pilot 必须给出 protected learning / review time。
- 指标不只看速度和产量，也要看经理负荷、知识共享、返工率和输出质量。
- 领导层必须参与 adoption standard setting，不能把标准解释完全交给中层。
- 对经理的 AI training 应单独设计，重点不是工具操作，而是 review、coaching、escalation 和 workflow redesign。

## agentic engineering organization 的人员影响

| 字段 | 内容 |
|---|---|
| Title | agentic engineering organization 的人员影响 |
| Type | governance risk / role impact |
| Source | https://www.bestblogs.dev/video/ff1b45c |
| Relevant skill | `$e-ai-governance`, `$e-innovation-pilot`, `$e-innovation-metrics` |
| What it helps decide | 在工程组织推进 agentic collaboration 时，是否同步评估角色变化、技能迁移、责任边界和人员影响。 |
| Reusable output | role impact checklist；pilot governance question；training and review plan |
| Confidence | transcript-backed：原文 / extended summary 已归档；人员影响仍需后续案例验证。 |

### 控制规则

- 任何从 AI tool use 推向 autonomous delegation 的 pilot，都要增加 role impact review。
- 不只评估代码产出效率，也要评估工程师学习路径、经理复核负荷、责任归属和绩效指标变化。
- 多智能体编排上线前，要明确失败时谁接管、谁负责验收、哪些任务不能自动化委派。

## Full-text extraction: middle-manager load as governance risk

Source: [[../archive/original-sources/2026-07-03_HBR_AI-Adoption-Overloading-Middle-Managers_原文|HBR 原文归档]]

### 三个治理断裂

1. **Learning is informal, delivery is relentless**：经理需要自己学习 AI、指导团队、验证输出，但交付节奏和项目压力没有下降。
2. **Incentives reward the wrong behaviors**：组织奖励个人产出和速度，却没有奖励知识共享、复用方法、团队级学习和质量控制。
3. **Leaders and managers operate in different realities**：高层看到战略机会，中层面对执行摩擦和质量风险，标准解释被压给中层。

### estack pilot 必须增加的检查项

- `manager_review_capacity`：经理是否有明确复核时间预算？
- `learning_time_protection`：AI 学习和方法沉淀是否有受保护时间？
- `knowledge_sharing_incentive`：是否奖励团队知识沉淀，而不只是个人产出？
- `leader_standard_setting`：领导层是否参与定义 AI 输出质量标准？
- `leadership_pipeline_risk`：经理 coaching 时间是否被 AI 输出检查挤掉？

### 输出模板影响

`$e-innovation-pilot` 的 Pilot Charter 需要新增一栏：**Middle-manager load and review capacity**。

`$e-innovation-metrics` 不能只看产出速度，还要记录：经理复核负荷、返工率、知识共享频率、AI 输出被拒原因、coaching 时间是否下降。

## Full-text extraction: agentic engineering review bottleneck

Source: [[../archive/original-sources/2026-07-03_Block_Agentic-Engineering-Organization_transcript|Block transcript 归档]]

### 治理风险

Block 案例显示，从单个 agent 到多 agent 并行后，瓶颈会从“能不能生成代码”转移到 review queue、责任归属和人员影响。

### 控制规则

- Stage 4 以后必须检查 review queue 是否成为新瓶颈。
- 自动 code review 和 auto-fix loop 需要清楚标明人类最终验收点。
- 跨仓库 / 跨服务 delegation 需要 company world model，但也需要权限、依赖和失败接管机制。
- Stage 5 完整任务委派不能只看是否能 ship，还要问：谁拥有最终责任？哪些角色被重塑？组织是否知道自动化成功后要走向哪里？

## Web search, citation, and source-risk controls

Source: [[../references/web-search-evidence-workflows|Web Search and Research Workflows]]

### 适用场景

当 AI 输出依赖外部事实、市场信息、竞品动态、法规政策、技术能力或供应商说法时，必须启用 web search / evidence workflow 的治理规则。

### 风险信号

- AI 给出当前市场/法规/竞品判断，但没有来源。
- 引用来源存在，但 claim 和 source 并不直接匹配。
- 使用供应商材料证明供应商能力，而没有第三方或用户证据。
- 使用过期网页支持时效性强的结论。
- 搜索结果只覆盖英文/中文/单一地区，遗漏关键市场。
- 内部 RAG 和公开 web search 的边界不清，导致敏感信息外泄或证据不可追溯。

### 控制规则

- 所有 web-grounded 输出必须保留 citation log：URL、标题、日期、source type、date checked。
- 高风险结论必须进入 Evidence Matrix，而不是只写自然语言总结。
- 每个关键 claim 都要标注 evidence strength：direct / partial / adjacent / weak。
- 官方、法规、财务、医疗、安全相关结论必须优先使用一手来源。
- 供应商/工具官网只能作为 capability claim，不能单独证明真实效果。
- 如果 evidence strength 是 partial 或 weak，输出中必须显式写 caveat。
- 使用内部文档/RAG 时，必须记录 retrieval boundary、权限和敏感信息处理方式。

### Pilot checklist additions

- 是否需要 external evidence scan？
- 是否需要 internal retrieval / RAG？
- 谁负责检查 source quality？
- Citation log 存在哪里？
- 哪些 claim 必须人工核验原文？
- 哪些来源被排除或只能作弱信号？
