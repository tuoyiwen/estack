---
project: estack
type: knowledge-map
status: draft
created: 2026-07-03
---

# knowledge-base 知识类型地图

## 核心判断

estack 的 knowledge-base 应该做成 **skill 执行时可以调用的判断库**。我们收集的资料是要服务 6 个核心 skill 的输出：
- 找企业 AI innovation 场景 | D:\Obsidian\yiwen\Projects\estack\knowledge-base\01_enterprise-innovation-use-cases.md
- 设计人机协作配置 | D:\Obsidian\yiwen\Projects\estack\knowledge-base\02_human-ai-collaboration-patterns.md
- 重构 AI-native workflow | D:\Obsidian\yiwen\Projects\estack\knowledge-base\03_ai-native-workflow-patterns.md
- 设计 pilot | D:\Obsidian\yiwen\Projects\estack\knowledge-base\04_output-templates-and-examples.md
- 衡量创新与采用结果 | D:\Obsidian\yiwen\Projects\estack\knowledge-base\05_metrics-and-rubrics.md
- 设置治理与风险边界 | D:\Obsidian\yiwen\Projects\estack\knowledge-base\06_governance-risk-controls.md

## 总体结构建议

```text
knowledge-base/
├── 00_知识类型地图.md
├── 01_enterprise-innovation-use-cases.md
├── 02_human-ai-collaboration-patterns.md
├── 03_ai-native-workflow-patterns.md
├── 04_output-templates-and-examples.md
├── 05_metrics-and-rubrics.md
├── 06_governance-risk-controls.md
├── 07_onboarding-prompts-and-user-stories.md
├── 08_research-anchors.md
└── 09_benchmark-cases.md
```

## P0：必须先收集的 5 类

### 1. 企业 AI innovation use cases

服务 skill：`$e-innovation-map`

收集内容：企业里哪些创新/知识工作最适合被 AI 重构。

重点不是“某部门能用 AI 做什么”，而是：这个场景是否涉及问题定义、信息搜索、方案生成、方案评价、决策整合、学习反馈。

每条 use case 建议记录：

| 字段 | 说明 |
|---|---|
| 场景名称 | 例如新产品概念开发、营销创意筛选、客户洞察综合 |
| 所属职能 | 产品、市场、销售、战略、研发、客服等 |
| 当前流程痛点 | 慢、窄、重复、质量不稳、判断不透明等 |
| AI 机会 | 扩展搜索、生成备选、比较方案、总结证据等 |
| 人类不可替代判断 | 情境判断、价值判断、客户承诺、战略取舍等 |
| 推荐人机配置 | human-first / AI-first / alternating / parallel / AI prepares |
| 风险 | 数据、偏见、责任、IP、错误承诺等 |

### 2. human-AI collaboration patterns

服务 skill：`$e-collaboration-design`

收集内容：不同人机协作顺序与分工模式。

要收集的不是抽象术语，而是“什么时候用、怎么用、容易出什么问题”。

优先模式：

| Pattern | 适合场景 | 核心风险 |
|---|---|---|
| Human-first, AI expands | 问题定义很关键、需要组织情境 | 人的初始框架过窄 |
| AI-first, human reframes | 需要快速打开选项空间 | AI 锚定问题框架 |
| Alternating interaction | 探索性创新、需要反复修正 | 迭代成本高、方向漂移 |
| Parallel exploration | 需要多样方案和对照 | 评估负担高 |
| AI prepares, human decides | 决策准备、资料综合 | 人只接受结论、不审证据 |

### 3. AI-native workflow patterns

服务 skill：`$e-innovation-workflow`

收集内容：不同创新流程如何被 AI-native 化。

每个 workflow pattern 应包含：

- as-is 流程
- 主要瓶颈
- AI 进入点
- human role
- AI role
- handoff artifact
- review criteria
- escalation trigger
- final output

优先收集 4 条流程：

1. 新产品概念开发
2. 营销创意生成与筛选
3. 客户洞察到产品机会
4. 战略选项生成与评估

### 4. output templates and examples

服务所有 skill，尤其是 onboarding。

收集内容：每个 skill 最后应该产出什么样的材料。

优先模板：

- AI Innovation Use Case Portfolio
- Collaboration Configuration Card
- Human-AI Interaction Protocol
- AI-native Workflow Blueprint
- Pilot Charter
- Innovation Metrics Dashboard
- Governance Matrix

这个类别非常重要，因为企业用户通常会问“你能给我什么可用材料”。

### 5. metrics and rubrics

服务 skill：`$e-innovation-metrics`

收集内容：如何衡量 AI 是否真的改善了创新工作。

指标应分层：

| 层级 | 指标例子 |
|---|---|
| 创新质量 | 新颖性、有用性、可行性、战略匹配 |
| 过程质量 | 方案多样性、问题定义质量、迭代深度、周期时间 |
| 人机互动 | AI 建议采纳率、人工修改率、拒绝原因、升级频率 |
| 采用效果 | 活跃使用、复用率、满意度、培训需求 |
| 业务影响 | 收入机会、成本节约、客户价值、错误减少 |

## P1：第二阶段收集的 3 类

### 6. governance and risk controls

服务 skill：`$e-ai-governance`

收集内容：数据、权限、复核、留痕、责任边界。

这类知识要具体到 workflow action：什么数据能进 AI、什么输出必须人工复核、什么场景需要审批。

### 7. onboarding prompts and user stories

服务 README 和 `$estack` router。

收集内容：不同用户第一次应该怎么用。

至少收集 3 类：

- 企业管理者：想知道先做什么、怎么验证价值
- 咨询顾问/转型负责人：想要诊断、流程、交付物
- 研究者：想看人机配置、指标、试点设计

### 8. research anchors

服务 estack 的理论底盘，但不作为对外门面。

收集内容：与你论文相关的机制锚点：

- 人机配置
- 问题定义顺序
- 新颖性 / 有用性
- 选择门槛
- 认知灵活性
- 采用与治理

注意：这里不是文献综述仓库。只有当一个概念能帮助 skill 做判断或解释输出时，才收进来。

## P2：后续增强类

### 9. benchmark cases

收集企业 AI transformation / AI innovation 案例，用于 README、demo、对外说明。

但不要一开始投入太多，因为 benchmark 容易变成“案例展示”，反而稀释 estack 的核心：人机协作配置设计。

## 不应该优先收集的内容

- 泛泛的 AI 新闻
- 模型发布信息
- 工具榜单
- 大而全的 prompt collection
- 没有映射到 skill 输出的学术文献
- 不能转化为场景、模式、模板、指标、治理规则的资料

## 每条知识的最小记录格式

以后每收一条资料，至少记录：

| 字段 | 说明 |
|---|---|
| Title | 资料或知识点名称 |
| Type | use case / pattern / metric / governance / template / research anchor |
| Source | 来源链接或来源说明 |
| Relevant skill | 对应哪个 estack skill |
| What it helps decide | 它帮助 Agent 做什么判断 |
| Reusable output | 能转化成什么模板、规则或示例 |
| Confidence | direct / partial / adjacent |

## 当前建议

v0.2 不要先收很多外部材料。先做 5 个最小文件：

1. `01_enterprise-innovation-use-cases.md`
2. `02_human-ai-collaboration-patterns.md`
3. `03_ai-native-workflow-patterns.md`
4. `04_output-templates-and-examples.md`
5. `05_metrics-and-rubrics.md`

这 5 个足以支撑 onboarding、demo case 和第一次企业试用。
### 10. technical enablers and model capabilities

记录位置：[[11_technical-enablers-and-model-capabilities|11_technical-enablers-and-model-capabilities]]

这类资料包括 RAG、fine-tuning、RFT、agent tooling、evaluation、enterprise data integration 等。它们只作为技术可行性和治理判断的辅助材料，不进入 estack 的核心门面。

处理原则：如果资料不能转化为 use case feasibility、workflow design、governance boundary 或 model capability decision，就不要收。

### 11. web search and research workflows

记录位置：[[12_web-search-and-research-workflows|12_web-search-and-research-workflows]]

这类资料包括 web search、grounded search、external evidence scan、source quality rubric、citation log、research-to-action handoff，以及 public web search 和 internal RAG 的边界。

它服务的不是“查资料”，而是企业 AI innovation / transformation 中的证据化判断：市场是否存在、竞品是否已经做了、法规是否允许、客户反馈是否支持、技术路线是否可信。

处理原则：所有 web search 输出都必须能转化为 Evidence Matrix、Web Research Brief、Source Quality Rubric 或 Research-to-Action Brief。

### 当前缺口审计

记录位置：[[13_knowledge-base-gap-audit|13_knowledge-base-gap-audit]]

当前 P0 缺口主要是：`01_enterprise-innovation-use-cases.md`、`02_human-ai-collaboration-patterns.md`、`04_output-templates-and-examples.md`、`05_metrics-and-rubrics.md`、`07_onboarding-prompts-and-user-stories.md` 仍是 stub 或缺内容。

下一步应先补模板和模式，而不是继续收集大量外部文章。
