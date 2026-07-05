---
project: estack
type: benchmark-cases
status: active
created: 2026-07-03
---

# Benchmark Cases

这个文件收集企业 AI transformation / AI innovation 的案例，用于 estack 的 README、demo、onboarding 和方案解释。

原则：案例不是为了展示热闹，而是为了提炼可复用的组织设计、工作流模式、试点路径、治理边界和指标。

## Block engineering organization: from AI tool adoption to agentic collaboration

| 字段 | 内容 |
|---|---|
| Title | Block 如何让 3500 名工程师走向智能体协作 |
| Type | benchmark case / engineering organization transformation |
| Source | https://www.bestblogs.dev/video/ff1b45c |
| Relevant skill | `$e-innovation-workflow`, `$e-collaboration-design`, `$e-innovation-pilot`, `$e-ai-governance` |
| What it helps decide | 判断企业工程组织如何从广泛使用 AI 工具，推进到可委派任务、自主工作流和多智能体协作。 |
| Reusable output | maturity model prompt；AI-ready repository checklist；agentic workflow pilot design；champion program design |
| Confidence | transcript-backed：原文 / extended summary 已归档，并已抽取六阶段成熟度模型与落地机制。 |

### 可复用洞察

这个案例适合用来说明：企业 AI transformation 不是“给员工一个 AI coding tool”就结束，而是要把组织推向更高阶的人机协作状态。页面摘要显示 Block 的路径包含成熟度模型、精英推动者计划、AI 就绪代码仓库、原生工作流集成与多智能体编排。

### estack 可提炼方向

- 从 adoption 到 delegation：先让员工使用 AI，再让团队把任务边界、上下文和验收标准整理到可委派状态。
- 从 individual tool use 到 workflow integration：AI 必须嵌入 IDE、PR、测试、文档、CI/CD、issue tracking 等原生流程。
- 从 prompt training 到 organizational enablement：需要 champions / enablers 帮团队改造工作方式。
- 从 single-agent use 到 multi-agent orchestration：多智能体适合在 repo ready、任务拆解清晰、评估机制可用后推进。
- 从 efficiency story 到 people impact review：组织必须评估角色变化、技能迁移、责任边界和人员影响。

### 后续补充问题

- Block 的成熟度模型具体分几级？每一级的行为标志是什么？
- “AI-ready repository”包含哪些标准？代码、文档、测试、权限、CI/CD 如何准备？
- 精英推动者计划如何选人、赋权、扩散？
- 多智能体编排应用在哪些任务？人类在哪里复核和接管？
- 对工程师角色、经理角色、绩效评价和学习路径产生了什么影响？

## Full-text extraction: Block agentic engineering maturity case

Source: [[../archive/original-sources/2026-07-03_Block_Agentic-Engineering-Organization_transcript|Block transcript 归档]]

### 核心案例判断

Block 的案例不是“AI coding tool adoption”，而是从 adoption 走向 impact 的组织重构案例。关键发现是：90% 工程师使用 AI 工具并不自动意味着 customer-facing features 更快交付，缺失的是 workflow integration。

### 六阶段成熟度模型

| Stage | 标志 | estack 含义 |
|---|---|---|
| 0 | workflow 中没有 AI | baseline |
| 1 | autocomplete，没有 agent mode | individual productivity |
| 2 | 与 agent chat，但没有 agent-produced PR | advice / assistance |
| 3 | 委派任务并 review agent output | task delegation |
| 4 | 多个 agents 并行 | parallel production and review bottleneck |
| 5 | 委派完整任务，得到可交付结果，少量持续指导 | autonomous / agentic workflow |

### 落地机制

- **AI champions program**：约 50 名 champions，覆盖关键团队和仓库；不是开放志愿者，而是有意选择关键系统代表。
- **AI-ready repository**：通过 `AGENTS.md` / `CLAUDE.md`、rules、slash commands、skills、review guidance 和 attribution，把知识放进 repo。
- **Native workflow integration**：把 agents 接到 Slack、Jira、Linear、GitHub 等需求发生地。
- **Review bottleneck management**：多 agent 并行后，review queue 变成瓶颈，因此需要 automated review 和 auto-fix loop。
- **Company world model**：跨 25,000 个 repositories、services、dependencies 的机器可读组织地图，支撑跨仓库 delegation。
- **People impact question**：成功以后必须追问组织目的、人员影响和责任边界。

### 可用于 estack 的 demo

这个案例可以成为 `$e-innovation-workflow` 的 demo：把“工程组织 AI adoption”诊断为 maturity stage，然后生成 AI-ready repository checklist、champion program、workflow integration plan 和 governance review。

## Kuaishou main-site: 千人工程团队的 AI Native 三层重构

| 字段 | 内容 |
|---|---|
| Title | 快手主站：从个人提效到组织提效的 AI Native 转型 |
| Type | benchmark case / organization-level AI transformation |
| Source | https://mp.weixin.qq.com/s/xtTD12A9KNEbROfNwHDh6Q (GIAC 2026 深圳站，快手主站 AIDevops 负责人李思) |
| Relevant skill | `$estack`, `$e-innovation-workflow`, `$e-collaboration-design`, `$e-innovation-metrics`, `$e-ai-governance` |
| What it helps decide | 判断企业 AI adoption 卡在个体层还是组织层，以及组织层应该重构什么：信息、流程还是组织结构。 |
| Reusable output | 三层重构框架；L1/L2/L3 范式分级；双路径演进；交付/守护分离；决策冻结 + spec handoff；AIGC 内容流水线 demo |
| Confidence | full-text backed：原文已归档，关键数字和机制均来自演讲实录。 |

Source archive: [[../archive/original-sources/2026-07-03_迈向AI-Native_技术团队的范式跃迁与组织进化_原文|快手 AI Native 原文归档]]

### 核心案例判断

这是目前 knowledge-base 里最完整的“个人提效不等于组织提效”实证案例：千余名工程师，代码生成率从 17% 升到 30%，各环节采纳率都高，但端到端交付周期几乎没变。归因发现约 90% 工程师工作方式没有真正改变；差异不在用不用 AI，而在是否改变了和 AI 协作的方式。

### 关键数字

| 数字 | 含义 |
|---|---|
| 89% vs 0.29% | NBER 调查：89% 企业已把 AI 投入业务，平均生产力提升仅 0.29% |
| 17% -> 30% | 代码生成率提升，但交付周期不变 |
| ~10% | 真正改变工作方式的工程师比例 |
| 20%-30% | L2 相对 L1 的交付周期缩短 |
| 20 天 -> 4 天以内 | 直播礼物上新周期（L3 端到端案例） |

### 诊断框架：两个不等式

1. 用 AI 开发工具不等于个人提效。
2. 个人提效不等于组织提效。

组织没变快的根源是围绕人设计的研发结构卡住了 AI：技术栈切分导致信息分离，串行流程导致交接损耗，角色边界导致协调摩擦。AI 越快，人和人之间的协作摩擦反而越显性，人机协作本身也成为新的隐性成本（四类摩擦见 [[research-anchors|research anchors]]）。

### 解法：三层重构

| 层 | 重构内容 |
|---|---|
| 信息层 | 信息架构从围绕人重组为围绕 AI；私域基础设施 AI 友好化；企业知识工程 |
| 流程层 | 从串行多角色协作转向 Agentic 模式；人的对齐前置消化（意图对齐、决策冻结），agent 承担结构化执行 |
| 组织层 | 交付与守护分层：交付层抹平前后端职能，设功能 Owner 单人闭环；守护层由架构师定标准、建机制、守门禁。产研边界溶解：赋能设计师、产品自主交付，研发从默认承接方变成复杂专业问题承接方 |

### 范式分级与演进路径

- L1 辅助：AI 在部分环节提供信息。
- L2 协作：AI 提供初稿，人完善。
- L3 自主：AI 自主完成需求交付。

两条路径并行：L1 -> L2 主航道大规模铺开；结构成熟、边界清晰的场景（B 端、0 到 1、运营类）直接跃迁 L3。目前 L2 已成主流范式。

### 度量前提

组织先花三年建了度量地基：研发活动在线化、可信数据、效能北极星、可拆解可归因的指标体系，之后才扩展出 AI 渗透率和 AI 成熟度维度。没有这个地基，连“组织快没快”都量不出来。

### 尚未解决的问题

- 验证能力规模化：C 端场景如何做稳定、高效的规模化验证。
- 先锋队模式：先锋团队的灵活性与未来标准化如何平衡。
- 人的问题：品味和判断如何被看见；组织是否为判断留时间；AI 跳过了“慢慢写”的过程，年轻工程师如何生长。

### 可用于 estack 的 demo

这个案例适合作为 `$estack` router 的开场故事和 `$e-innovation-metrics` 的核心 demo：先用“两个不等式”诊断客户处在哪一层断裂，再用三层重构框架生成 workflow redesign 方案，用 L1/L2/L3 需求占比作为 AI 成熟度指标。与 Block 案例互补：Block 讲工程组织如何走向 agentic delegation，快手讲整个产研组织如何重构信息、流程和角色边界。

## OpenAI Codex team: 实现廉价化之后的产品组织形态

| 字段 | 内容 |
|---|---|
| Title | OpenAI Codex 团队：产品工作的倒置与角色流动 |
| Type | benchmark case / product organization redesign |
| Source | https://www.bestblogs.dev/video/6daf60e (Lenny's Podcast x Andrew Ambrosino, Codex 产品与工程负责人) |
| Relevant skill | `$e-collaboration-design`, `$e-innovation-workflow`, `$e-innovation-pilot` |
| What it helps decide | 实现成本趋近于零之后，产品团队的流程、角色和规划方式应该怎么变。 |
| Reusable output | 产品流程倒置 pattern；媒介选择规则；角色流动性设计；build-ahead 规划法 |
| Confidence | transcript-backed：extended summary 已归档；使用数字为时点数据（date checked 2026-07-05）。 |

Source archive: [[../archive/original-sources/2026-07-05_Lennys-Podcast_Codex-Andrew-Ambrosino_transcript|Codex 访谈归档]]

### 核心案例判断

这是"实现廉价化改变组织形态"的一手案例：OpenAI 全公司 90% 的人（不只是工程师）每周使用 Codex；同一个功能可能有 90 个并行原型在公司内互不协调地推进。团队的应对不是加流程管控，而是重组人类判断的位置：从生产环节上移到策展与选择环节。

### 关键机制

- **角色流动**：role collapse 在 Codex 组比公司其他部分更彻底；"角色 = 时间分配的平均"，member of technical staff 而非职能头衔。但保留警告：取消角色概念不能顺带取消专业最佳实践（"取消产品角色、人人都是 builder"是坏主意）。
- **Zone defense 产品管理**：两个产品人靠得太近是坏信号；拉开站位求全场覆盖，在缺口处补位，同时要求工程师 product minded。
- **规划方式**：短期精确、长期模糊（9 个月计划的精度是虚假精度）；build ahead of models（原型入库等模型追上；同一形态可能要发布多次才成立——2 月成功的 app 若 11 月发布会失败，唯一区别是模型）。
- **Dogfooding 闭环**：刻意在自己产品里做一切工作，即使它还不是最好的工具，以此逼产品变好。
- **通用 vs 垂直教训**：为非工程人群另建通用工具失败，没人愿意离开 Codex app；正确形态是 home base + 通过 connector/computer use/extension 编排专业工具（Premiere Pro 自建扩展案例）。

### 可用于 estack 的 demo

`$e-collaboration-design` 讲角色设计时的现代案例（与快手"交付/守护分离"互补：快手讲职能抹平后谁守门，Codex 讲判断力上移后角色如何流动）；`$e-innovation-pilot` 的规划部分直接引用 build-ahead 与模糊长期规划。三个组织案例的分工：Block = 工程组织成熟度，快手 = 产研组织重构，Codex = 产品团队形态。
