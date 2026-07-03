---
project: estack
type: onboarding-prompts-and-user-stories
status: active
created: 2026-07-03
updated: 2026-07-03
---

# Onboarding Prompts and User Stories

这个文件用于设计 README、demo 和 `$estack` router 的第一入口。

核心判断：用户第一次接触 estack 时，不应该先读理论，而应该立刻知道“我属于哪类用户、可以输入什么、会得到什么”。

## User Stories

| User | Job to be done | First output they want | Best entry skill |
|---|---|---|---|
| 企业管理者 | 想知道 AI transformation 从哪里开始 | AI Innovation Use Case Portfolio + top 3 pilots | `$estack` -> `$e-innovation-map` |
| 咨询顾问 / 转型负责人 | 想给客户做诊断和路线图 | Workflow Blueprint + Pilot Charter + Governance Matrix | `$estack` -> `$e-innovation-workflow` |
| 产品/市场负责人 | 想把 AI 用在创新流程里 | Concept Brief + Evidence Matrix + Creative Option Set | `$e-innovation-map` + `$e-collaboration-design` |
| 工程/平台负责人 | 想从 AI coding tool 走向 agentic workflow | Maturity Assessment + AI-ready Repository Checklist | `$e-innovation-workflow` |
| 研究/情报团队 | 想用 web search 支持决策 | Web Research Brief + Evidence Matrix + Citation Log | `$e-innovation-map` + `12_web-search` |
| 研究者 | 想连接论文机制和企业实践 | Human-AI configuration map + metrics design | `$e-collaboration-design` + `$e-innovation-metrics` |

## Router Prompt

```text
你是 estack router。请根据我的业务问题，判断应该调用哪个 estack skill。

我的背景：{企业管理者 / 顾问 / 产品负责人 / 工程负责人 / 研究者 / research team}
我的问题：{一句话描述}
我已有材料：{流程文档 / 会议纪要 / 客户反馈 / 竞品资料 / 没有材料}
我想要的输出：{use case portfolio / workflow blueprint / pilot charter / metrics / governance / web research brief}

请输出：
1. 推荐调用的 skill
2. 需要我补充的 3 个输入
3. 预期产出物
4. 需要注意的风险
```

## Starter Prompts

### 企业管理者

```text
我是一名企业管理者，想知道我们公司应该从哪些 AI innovation use cases 开始。
业务背景：{行业、部门、当前目标}
当前痛点：{慢、质量不稳、成本高、创新不足、客户反馈多等}
限制条件：{数据、合规、预算、人员}

请用 estack 帮我生成：
1. AI Innovation Use Case Portfolio
2. 每个 use case 的人机协作配置
3. Top 3 pilot 建议
4. 主要治理风险
```

### 咨询顾问 / 转型负责人

```text
我正在为一个企业客户设计 AI transformation 方案。
客户当前流程：{描述 as-is workflow}
客户目标：{效率、创新、质量、增长、降本等}
组织限制：{部门边界、数据权限、中层负荷、治理要求}

请生成：
1. AI-native Workflow Blueprint
2. Collaboration Configuration Card
3. 90 天 Pilot Charter
4. Metrics Dashboard
5. Governance Matrix
```

### 产品 / 市场负责人

```text
我想用 AI 改造一个创新流程：{新产品概念 / 营销创意 / 客户洞察 / 战略选项}。
请先判断适合哪种 human-AI collaboration pattern，再生成一个可执行流程。

输出要求：
1. 推荐协作模式
2. 流程步骤
3. AI 输入和输出
4. 人类判断点
5. 证据和复核要求
```

### 工程 / 平台负责人

```text
我们已经有很多人使用 AI coding tools，但还没有看到交付明显变快。
请用 estack 诊断我们处于 Block maturity ladder 的哪个阶段，并给出进入下一阶段的计划。

请输出：
1. 当前成熟度判断
2. AI-ready repository checklist
3. Champion program 建议
4. Workflow integration plan
5. Review bottleneck 和 role impact 风险
```

### Research / 情报团队

```text
我需要为一个企业 AI innovation 决策做 web research。
决策问题：{要不要进入某市场 / 是否采用某技术 / 竞品是否已有类似方案 / 法规是否允许}
时间范围：{最近 3 个月 / 1 年 / 不限}
优先来源：{官方、学术、行业报告、新闻、竞品页、社区}

请生成：
1. Web Research Brief
2. Query Plan
3. Evidence Matrix
4. Source Quality Rubric
5. Research-to-Action Brief
```

### 研究者

```text
我想把 estack 和我的 human-AI interaction / AI transformation 研究连接起来。
研究问题：{描述}
我关心的机制：{问题定义顺序、人机配置、认知灵活性、新颖性/有用性、采用与治理}

请输出：
1. 相关 estack skill
2. 可观察机制
3. 企业场景映射
4. 可测指标
5. 可能的研究命题
```

## Onboarding Rules

- 第一次不要让用户选择太多 skill，先由 `$estack` router 推荐。
- 输出必须是 artifact，不只是建议。
- 如果用户没有材料，用假设模板启动；如果用户有流程/文档/链接，先做 source triage。
- 对企业用户，避免先讲 creativity，门面语言用 innovation / workflow / transformation。
- 对研究用户，可以在底层解释 creativity、novelty/usefulness、problem definition order 等机制。