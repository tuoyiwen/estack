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

Source: [[original-sources/2026-07-03_Block_Agentic-Engineering-Organization_transcript|Block transcript 归档]]

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
