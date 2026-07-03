---
project: estack
type: ai-native-workflow-patterns
status: active
created: 2026-07-03
---

# AI-Native Workflow Patterns

这个文件收集企业工作流从传统 human-led process 走向 AI-native / agentic collaboration 的可复用模式。

原则：每个 pattern 都要能转化为 workflow redesign、pilot charter、role boundary、handoff artifact 或 maturity model。

## Pattern: 从 AI 工具使用到自主委派任务

| 字段 | 内容 |
|---|---|
| Title | 从 AI 工具使用到自主委派任务 |
| Type | workflow pattern / agentic collaboration maturity path |
| Source | https://www.bestblogs.dev/video/ff1b45c |
| Relevant skill | `$e-innovation-workflow`, `$e-collaboration-design`, `$e-innovation-pilot` |
| What it helps decide | 判断一个团队是否只是“使用 AI 工具”，还是已经具备把任务交给 AI/agent 执行的工作流条件。 |
| Reusable output | maturity ladder；workflow redesign checklist；AI-ready context checklist |
| Confidence | transcript-backed：六阶段成熟度模型和关键机制已从归档文本抽取。 |

### 模式定义

很多企业的 AI adoption 停在“个人使用 AI 工具”。真正的 AI-native transformation 需要进入“任务可委派”状态：团队能把目标、上下文、约束、数据、验收标准和复核机制结构化，让 AI/agent 可以承担一部分端到端任务。

### 关键构件

- 成熟度模型：定义从 tool use 到 assisted workflow、delegated task、multi-agent orchestration 的阶段。
- AI-ready knowledge base / repository：代码、文档、业务规则、测试和历史决策能被 AI 使用。
- 原生流程集成：AI 进入现有工作系统，而不是停在独立聊天窗口。
- 推动者网络：由内部 expert / champion 帮助团队改造真实流程。
- 多智能体编排：当任务可拆解、上下文充分、评价标准清晰后，再引入多个 agent 协作。
- 人类复核点：在需求确认、任务拆解、关键决策、质量验收和风险升级处保留明确的人类责任。

### estack 使用方式

在 `$e-innovation-workflow` 中，可以把这个 pattern 变成一组诊断问题：

- 当前 AI 使用发生在个人工具层，还是团队流程层？
- 哪些任务已经具备清晰输入、上下文、约束和验收标准？
- 哪些知识还藏在个人脑中，导致 AI 无法稳定执行？
- AI 输出在哪里进入正式 workflow？谁复核？如何回写知识库？
- 是否有 champion 帮团队把一次性 prompt 变成可复用 workflow？

## Pattern: Agentic workflow maturity ladder

Source: [[../archive/original-sources/2026-07-03_Block_Agentic-Engineering-Organization_transcript|Block transcript 归档]]

### 模式目的

帮助企业判断自己到底是在“使用 AI 工具”，还是已经具备“委派任务给 AI/agent 并产出可交付结果”的组织能力。

### 成熟度阶梯

- **Stage 0: No AI**：没有进入 workflow。
- **Stage 1: Autocomplete**：个人层面的代码补全或文本补全。
- **Stage 2: Agent chat**：与 agent 对话，但输出还不进入正式交付链条。
- **Stage 3: Delegated task**：人类拆解任务，agent 产出 PR / artifact，人类 review。
- **Stage 4: Parallel agents**：多个 agents 并行探索、生成、修复；review 成为关键瓶颈。
- **Stage 5: Complete-task delegation**：从需求到可交付结果，agent 承担更完整任务，人类负责目标、边界、验收和责任。

### Workflow redesign checklist

- 需求入口在哪里？Slack、Jira、Linear、GitHub、CRM、文档还是会议纪要？
- agent 需要哪些 repo / knowledge / rules / historical decisions？
- 是否有 `AGENTS.md` / rules / slash commands / skills 这类可复用上下文？
- agent 输出在哪里进入正式流程？PR、ticket、brief、design doc 还是 dashboard？
- 谁 review？review backlog 是否会成为新瓶颈？
- agent 修改失败时谁接管？如何回写经验？
- 哪些任务可以并行？哪些任务必须串行或人工确认？

### 关键提醒

Stage 4/5 不是简单加更多 agents，而是组织需要同步建设：AI-ready knowledge, native integration, review capacity, world model, governance boundary。
