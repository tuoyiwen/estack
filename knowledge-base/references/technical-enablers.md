---
project: estack
type: technical-enablers
status: active
created: 2026-07-03
---

# Technical Enablers and Model Capabilities

这个文件用于暂存可能影响企业 AI transformation 方案设计的技术能力材料，例如模型微调、RAG、agent tooling、evaluation、enterprise data integration 等。

原则：这些材料只作为 **技术可行性与治理判断的辅助资料**，不进入 estack 的核心门面。estack 的核心仍然是 innovation workflow、人机协作配置、pilot、metrics 和 governance。

## 记录格式

| Source | Capability | Enterprise relevance | Relevant skill | Priority |
|---|---|---|---|---|
| [Fine Tuning the Enterprise: Reinforcement Learning in Practice](https://www.infoq.com/presentations/rft-openai-model/) | Reinforcement learning / reinforcement fine-tuning for enterprise model adaptation | 适合作为“什么时候企业需要模型适配/强化微调，而不是只用通用模型”的技术能力参照；也提醒 estack 不应只做 workflow，还要在后期考虑 data、evaluation、governance 与 model adaptation 的边界 | `$e-ai-governance`；未来 `$e-data-knowledge` / `$e-tooling-vendor` | P2 |

## Full-text extraction: Agent RFT as enterprise model adaptation route

Source: [[../archive/original-sources/2026-07-03_InfoQ_Fine-Tuning-the-Enterprise_transcript|InfoQ transcript 归档]]

### 什么时候考虑 Agent RFT

先尝试 prompt optimization、任务简化、guardrails、工具增删、工具描述优化和工具本身质量提升。如果这些仍无法满足复杂 agentic workflow 的表现，才考虑 Agent RFT。

### 适用任务

- 任务需要复杂推理，而不是简单模式匹配。
- agent 需要调用工具、读取工具输出并继续推理。
- 企业业务上下文和工具形态与基础模型训练时不同。
- 需要优化 tool choice、tool sequence、reasoning tokens、latency、hallucination 或 final outcome。

### 必要构件

- training / validation data
- tools list / endpoint tools
- rollout environment
- reward signal / grader
- model-based grader、Python grader、endpoint grader 或 multigrader
- dashboard：reward、reasoning token usage、tool calls、validation performance

### 风险和治理边界

- reward hacking：模型可能学会绕过测试或利用 grader 漏洞。
- sparse reward：过严的 reward 可能让模型难以学习，需要 batch size / compute / grader design 支撑。
- tool safety：训练时使用真实工具可能不安全，mock tools 与真实工具存在差距。
- hallucination：可以通过 reward signal 降低，但前提是 grader 能可靠识别 grounded answer。
- production trust：工具调用长尾和不可预测轨迹会影响用户信任。

### estack 判断规则

Agent RFT 不应作为企业 AI transformation 的默认建议。它属于后期 technical enabler：当 workflow、tooling、evaluation 和 governance 都已经比较成熟，且业务收益足以支持训练/评估成本时，才进入模型适配路线。

## Token 成本控制技术

Source: [[../archive/original-sources/2026-07-05_腾讯研究院_Token不经济_原文|Token 不经济归档]]

| 技术 | 作用 | 局限 / 注意 |
|---|---|---|
| Context caching | 命中历史缓存时大幅压减输入计费 | Agent 路径高度分叉时缓存失效，企业级复杂部署节省有限 |
| 语义上下文压缩 | 主动压缩而非滑动截断：保留关键指令和推理链路，去重去冗余 | 优于简单滑窗；需保护指令遵循率 |
| 模型路由 / 任务分流 | 简单高频子任务给轻量/开源模型，关键决策点才用 Frontier 模型 | 需要按任务复杂度定义路由规则 |
| 多 Agent 硬预算 + 主持人架构 | 子任务 token 上限 + 主持人监控全局，预算耗尽强制终止 | 防财务失控的同时通常提升系统效率 |
| 分词器监控 | 闭源分词器更新会改变计费基准（实测膨胀 30-50%） | 订阅模型变更时重测基准 prompt token 计数 |

## Skill 设计原则（token 效率）

Sources: [[../archive/original-sources/2026-07-05_Gao-etal_SkillReducer_source-card|SkillReducer]]、[[../archive/original-sources/2026-07-05_Han-etal_SWE-Skills-Bench_source-card|SWE-Skills-Bench]]

- 79.6% 的公开软件工程技能零通过率增益，token 开销最高 +451%；只有编码特定领域专业知识的技能带来有意义提升。技能不是越多越好。
- 优化两路径：描述压缩（补精简路由描述、砍背景解释）+ 渐进式加载（按需而非一次性注入），可压缩 39% 且质量反升。
- 对 estack 自身的含义：每个 skill 内嵌承重内容、保持精瘦（v0.4 的自包含设计），正文写可执行规则而非背景说明，路由描述必须存在且精确。

## Harness / Loop 组件清单

Source: [[../archive/original-sources/2026-07-05_腾讯云开发者_Loop-Engineering四层工程进化论_原文|Loop Engineering 综述归档]]

- **Harness 五组件**：Guides（AGENTS.md，失败模式的结构化沉淀）、Sensors（parser/eval/drift detector）、Enforcement（linter/test gate/permission，确定性约束）、Context Pipeline、Observability（完整 trace，合规行业硬性前提）。
- **Loop 六要素**：Automations（定时/事件触发）、Worktrees（并行隔离）、Skills（消除意图负债）、Connectors（MCP 接真实工作环境）、Sub-agents（maker-checker 分离）、External State（跨 run 连续性的唯一保障）。
- 用途：`$e-innovation-workflow` 做工程组织方案时的构件清单；对应的分层诊断和采纳路径见 [[../core/workflow-patterns|workflow patterns]]。
