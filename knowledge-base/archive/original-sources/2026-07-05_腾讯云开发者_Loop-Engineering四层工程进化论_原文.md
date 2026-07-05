---
project: estack
type: original-source
status: archived
created: 2026-07-05
source_type: wechat-article
source_url: https://www.bestblogs.dev/article/99cc9e2f
author: 李伟山（腾讯云开发者）
published: 2026-07-02
primary_placement: core/workflow-patterns
secondary_placement: core/governance-controls, references/technical-enablers, core/use-cases
---

# Loop Engineering 又是啥？一文讲清企业 Agent 落地的四层工程进化论（原文）

> 原文归档。本文为传声筒型综述，一手来源见文末参考文献，已另建 source card。抽取判断见 [[../source-triage/2026-07-05|2026-07-05 triage]]。

## 摘要（bestblogs AI 摘要）

文章以企业 Agent 在生产环境中"Demo 惊艳、上线拉胯"的普遍困境为切入点，系统拆解了从 Prompt Engineering 到 Loop Engineering 的四层工程范式。每一层都解决了上一层的核心瓶颈：Prompt Engineering 优化"怎么说"，但受限于信息孤岛与无记忆；Context Engineering（含 RAG、MCP）提供正确背景，但无法约束模型输出；Harness Engineering 用 AGENTS.md、linter、test gate 等确定性约束替代概率性引导，是 2026 年企业落地的决胜层；Loop Engineering 通过 Automation、Worktree、Skills、Sub-agents 等要素实现 Agent 的持续自主运转，但也带来成本失控、可靠性新面和认知投降风险。文章强调四层是嵌套而非替代关系，给出了逐层诊断的故障定位框架，按金融、软件工程、客服分析了行业适配差异，并提供了先夯实 L1/L2、重点建设 L3、谨慎试点 L4 的企业采纳路线图。

## 原文

### 引言：为什么你的 Agent 在 Demo 里惊艳，在生产中拉胯？

2026 年，几乎每家企业都在谈 AI Agent。

团队花了三周搭了一个 Agent 原型，接入了内部知识库，看 Demo 效果像那么回事儿。然后呢？上线两周后，Agent 把客户的订单信息张冠李戴，把合同条款搞混，在凌晨三点自动发了一封莫名其妙的邮件。你手忙脚乱地关掉自动化，Agent 又变回了一个需要人盯着的聊天机器人。

这个故事正在无数企业里反复上演。时至今日，模型智能早已不是问题，开源模型们的能力已经足够完成大多数企业任务。问题在于：技术团队在用 Demo 阶段的工程方法论，去解决生产阶段的系统问题。

过去四年，AI 工程领域范式迁移轮替了四遍。从 2022 年的 Prompt Engineering，到 2025 年的 Context Engineering，到 2026 年初的 Harness Engineering，再到 2026 年中的 Loop Engineering。

Andrej Karpathy 在 2025 年说"prompt engineering 应该让位给 context engineering"。Mitchell Hashimoto（HashiCorp 联合创始人）在 2026 年 2 月提出"engineer the harness"。Boris Cherny（Anthropic Claude Code 负责人）在 2026 年 6 月说"我不再 prompt Claude 了，我设计循环来 prompt Claude"。

他们都遇到了同样的瓶颈：单靠改善 prompt 无法让 Agent 在生产环境中可靠运行；单靠优化 context 无法防止 Agent 犯同样的错；单靠搭好 harness 无法让 Agent 持续自主地完成复杂目标。每一层都解决了上一层留下的核心瓶颈，但也引入了新的工程挑战。

### 01 四层演进的时间线：嵌套！

这四层是嵌套关系，不是替代关系。很多团队的误区是把它们当作时间线上的换代（"现在都 2026 年了，还搞 Prompt Engineering？应该搞 Harness Engineering 了！"）。这种理解是错的。正确的关系是：

- Context Engineering 包含 Prompt Engineering
- Harness Engineering 包含 Context Engineering
- Loop Engineering 包含以上所有

外层不取消内层，而是在内层的基础上增加新的工程维度。如果你的 prompt 写得模糊、context 配置混乱，再好的 harness 也救不了你，因为模型每次推理时收到的指令和信息本身就是低质量的。

### 02 L1 · Prompt Engineering：说清楚任务——Agent 的"语言能力"

关注的是：在模型已经拿到所有信息的前提下，如何用最有效的措辞引导模型产出期望行为。技术手段：角色设定、输出格式约束、Few-shot 示例、Chain-of-Thought 引导、结构化 prompt 模板。

对企业 Agent 的正面影响：输出格式可控；角色边界清晰；推理质量提升。

三个无法突破的天花板：

1. **信息孤岛**：Prompt 只能优化"怎么问"，无法解决"模型不知道你的业务数据"的问题。
2. **无记忆**：每个 turn 是独立的，上一轮的洞察、决策、中间状态全部丢失。
3. **人是瓶颈**：触发、判断、下一步决策全在人身上，Agent 的吞吐量等于人的带宽。

企业成熟度定位：个人生产力工具，不是组织基础设施。大多数企业在这一层停留太久了。

### 03 L2 · Context Engineering：提供正确背景——Agent 的"知识能力"

2025 年 6 月 Karpathy 引发范式转移讨论；三个月后 Anthropic 发布《Effective Context Engineering for AI Agents》给出正式定义：策划和维护最优 token 集（信息）的策略集。

核心问题从"怎么说"变成：什么样的 token 配置最可能触发模型的期望行为？Context window 是有限资源，随 token 数量增加，模型对信息的召回准确率会下降（Context Rot）。

技术手段：RAG、MCP、Message History 管理（滑窗/摘要压缩/优先级排序）、Tool Schema 精简。

正面影响：Agent 从"通用对话"变成"业务助手"；token 效率直接影响成本；单 session 内的连贯性得到保障。

天花板：

1. **模型的"手"不受控**：Context 管的是 input side，模型看到正确信息后仍可能做出错误行动（调用错误 API、生成不合规代码）。
2. **错误不会自愈**：没有 linter 拦截、没有 test gate 验证、没有 feedback loop 把错误转化为系统改进。
3. **仍然依赖人触发和人判断**。

企业成熟度定位：业务助手阶段。

### 04 L3 · Harness Engineering：让模型能真实执行——Agent 的"可靠性"

2026-02-05 Mitchell Hashimoto："每次 agent 犯错，我都会工程化一个解决方案，让 agent 再也不会犯同样的错"（engineer the harness）。六天后 OpenAI 发布《Harness Engineering: Leveraging Codex in an Agent-First World》：3-7 人小团队五个月用 Codex agent 构建约一百万行代码，零行手写。核心发现："Early progress was slower than we expected, not because Codex was incapable, but because the environment was underspecified."（不是模型不行，是环境没配好。）LangChain 公式：Agent = Model + Harness。

核心问题：如何构建一个让错误结构性不可重犯的执行环境？

Harness 五个核心组件：

1. **Guides（引导）**：AGENTS.md / CLAUDE.md，每一行都对应一个曾经的失败模式，是错误经验的结构化沉淀。
2. **Sensors（感知）**：output parser、eval pipeline、drift detector。
3. **Enforcement（执行约束）**：linter、test gate、permission 系统。确定性约束替代概率性遵守，这是 L3 与 L2 的本质区别。
4. **Context Pipeline（数据管线）**：L2 的 context engineering 被 harness 的编排逻辑治理。
5. **Observability（可观测性）**：每个 turn 的完整 trace。对金融、医疗、法律等合规行业是硬性前提。

L2 与 L3 的本质区别：L2 是基于信任的策略（给模型看正确的信息，期望它做对）；L3 是基于验证的策略（不信任任何单次输出，信任验证流程）。类比：L2 是给考生发正确的教材，L3 是设置阅卷系统和作弊检测。"请你遵守" vs "你不遵守就过不了"。

正面影响：从"希望正确"到"验证正确"；错误驱动的持续改善（AGENTS.md 增长模式：新错误 -> 根因 -> 加规则/加 check -> 不再出现，可靠性单调递增）；半自主执行释放人力（一个工程师同时监督 3-5 个 Agent）；可审计的决策链满足合规要求。

天花板：仍然是人触发、人收尾；无跨 session 记忆；不能并行规模化。

企业成熟度定位：可靠执行阶段。这是 2026 年大多数企业应该全力投入的层级。

### 05 L4 · Loop Engineering：让 Agent 持续迭代——Agent 的"自主性"

2026-06-08 Addy Osmani（Google Chrome 团队）发文。Peter Steinberger："你不应该再 prompt coding agent 了，你应该设计循环来 prompt 你的 agent。" Boris Cherny："我不再 prompt Claude 了。我有循环在运行，这些循环 prompt Claude 并决定要做什么。我的工作是写循环。"

核心命题：你不再是那个 prompt Agent 的人，你成为了设计那个 prompt Agent 的系统的人。Codex 和 Claude Code 两个竞品已独立收敛到几乎相同的 Loop 架构。

Loop 的五个原语加一个状态存储：

1. **Automations（自动化心跳）**：定时或事件触发，让 Loop 成为 Loop。
2. **Worktrees（工作树隔离）**：多 Agent 并行工作的文件隔离。
3. **Skills（技能编码）**：把项目约定写成可复用 SKILL.md，消除"意图负债"（Intent Debt）。
4. **Plugins / Connectors**：基于 MCP，让 Agent 能在真实工作环境中行动。
5. **Sub-agents（子 Agent）**：maker-checker 分离——写的人和查的人分开，是 Loop 能在你不在场时运行的信任基础。
6. **State（外部状态）**：存活在 context window 之外的持久化存储，是 Loop 跨 run 连续性的唯一保障。

正面影响：从"一次一任务"到"持续运转"；从"串行"到"并行"（Cherny "一天合并 20-30 个 PR"是多 Agent 并行的结果）；知识复利（skill 越完善，首次正确率越高）；内部制衡（不信任单个 Agent，信任验证流程）。

L4 引入的三个新风险：

1. **成本可预测性大幅下降**：L3 成本模型简单（一个任务 × 一次执行 ≈ 可预算），L4 是组合爆炸（automation 每天跑 × spawn M 个 sub-agent × 各自迭代循环）。设计不当的 Loop 可能一晚上烧掉一个月的 token 预算。token 丰富与 token 贫困团队的 Loop 策略完全不同。
2. **可靠性的新风险面**：triage 逻辑错误把高优先级 issue 分类为低优先级；sub-agent 依赖死锁；state 文件损坏导致任务重复或遗漏；maker-checker 用同一模型时系统性偏差不被捕获。
3. **Comprehension Debt（理解力负债）与 Cognitive Surrender（认知投降）**：Loop 越快产出你没写的代码，你对 codebase 的理解缺口越大，且不会在任何指标上报警。更危险的是当 Loop 运行顺畅时，人倾向于停止审查、停止质疑、停止思考。Osmani："同样的操作，相反的结果"——用判断力设计 Loop 是加速器，用 Loop 来逃避思考是灾难。

企业成熟度定位：自主运营阶段。只有在 L3 扎实的基础上才应该尝试 L4。

### 06 四层诊断框架：Agent 出了问题，先判断在哪一层

大量实践表明：2025-2026 年大多数生产级 Agent 的故障是 harness 层故障，被误诊为 prompt 或 context 层故障。修复施加在错误的层面，症状反复出现，团队对 Agent 失去信心。

诊断示例：

- **场景 1：客服 Agent 总是把退款政策搞错。** 初始诊断"prompt 不清楚"，优化两周无效。正确诊断：L2 层故障——RAG 检索到过期文档。修复：文档版本管理机制。
- **场景 2：代码生成 Agent 总是用已废弃的 API。** 初始诊断"context 不够"，塞更多文档无效。正确诊断：L3 层故障——训练数据中旧 API 频率更高。修复：CI 里加 deprecated API detector。确定性约束 > 概率性引导。
- **场景 3：Agent 一天只能处理 5 个 issue，积压 50 个。** 初始诊断"模型太慢"，换模型无效。正确诊断：L4 层瓶颈——人在串行驱动。修复：automation 自动 triage + 并行 sub-agent（worktree 隔离）+ 人工 triage inbox。

### 07 企业采纳路径：先打地基再盖楼

**阶段 1：夯实 L1+L2**。选 2-3 个高频低风险场景，做 prompt 模板 + RAG pipeline + context 管理 + 基础 eval。退出标准：准确率 85%+，且 prompt/context 优化进入收益递减。

**阶段 2：建设 L3**。创建 AGENTS.md 把失败模式编码为规则；CI 接入 output validation；关键场景加 test gate；搭 observability pipeline；建立 AGENTS.md 持续更新机制。退出标准：Agent 可半自主执行，人只做最终 review；AGENTS.md 增长放缓。

**阶段 3：试点 L4**。选低风险高频重复任务；设计最小 Loop（automation + builder + reviewer + state 文件）；设严格 token budget 上限；前两周高频人工 review，逐步降频；定期 code walkthrough 监控 comprehension debt。退出标准：稳定运行 4 周+，人工 review 否决率低于 10%，token 成本在预算内。

**关键 Anti-Pattern：跳过 L3 直接搞 L4。** 没有 L3 的 L4 意味着自动运行的系统里每个 Agent 都不可靠，持续产出需要人工善后的结果。净效率不是正的，是负的。（Cherny 一天合并 30 个 PR 的前提是 Anthropic 内部完善的 harness 基础设施。）

### 08 四层模型的行业适配差异

- **金融**：合规可审计 + 零容错。L3 是核心投入层（合规检查器、风控模型、格式验证器三重 gate；observability 是监管要求）。L4 极度谨慎，只用于辅助性任务（研报生成、数据清洗、异常预警）。
- **软件工程**：Loop Engineering 原生场景。L1/L2 快速通过；L3 是基础（linter、test suite、CI 本身就是 harness 天然组件）；L4 是当前热点（代码有明确验证手段，maker-checker 有自动化基础）。
- **客户服务**：L1/L2 是核心（边界设定 + RAG 准确性）；L3 侧重 content safety、tone consistency、escalation logic；L4 适用有限（客服本质是响应式的），可用于辅助场景（客诉趋势分析、FAQ 更新建议）。

### 09 展望：四层之后是什么？

每一层都把人往更高层抽象推：L1 管每一句话怎么说，L2 管模型看到什么，L3 管执行环境怎么设计，L4 管自动化系统怎么编排。L5 可能是 Meta-Loop Engineering（Agent 自己动态调整 Loop 配置）。

对 2026 年的企业，最务实的行动：停止在 L1 上过度投入；在 L2 上建立扎实基础；把主要精力放在 L3；用 L4 的思维设计，但从最小 Loop 开始。

### 10 结论：Build the Loop, Stay the Engineer

企业 Agent 落地的瓶颈正在从"模型能力"迁移到"系统工程能力"。企业 AI 团队需要的核心能力从"会调模型的人"转向"会做系统设计的人"，更像 DevOps/SRE 思维而非传统 ML 思维。

Addy Osmani 的警告："Build the loop. Stay the engineer." 两个人可以搭建完全相同的 Loop，得到完全相反的结果。一个人用它加速自己深刻理解的工作，另一个人用它逃避理解工作本身。Loop 不知道区别，你知道。

## 参考来源（原文所列）

- Mitchell Hashimoto, "My AI Adoption Journey", mitchellh.com, 2026.02.05
- OpenAI, "Harness Engineering: Leveraging Codex in an Agent-First World", 2026.02.11
- Anthropic, "Effective Context Engineering for AI Agents", anthropic.com, 2025.09.29
- Addy Osmani, "Loop Engineering", addyo.substack.com, 2026.06.08
- Andrej Karpathy, X Post on Context Engineering, 2025.06.25
- Andrej Karpathy, X Post on Agentic Engineering, 2026.02
- LangChain, "Agent = Model + Harness", blog.langchain.com, 2026.02
- Agent Harness Engineering: A Survey, CMU/Yale/JHU et al., 2026
