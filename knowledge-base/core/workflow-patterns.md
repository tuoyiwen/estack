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

## Pattern: 三层重构（信息 / 流程 / 组织）

Source: [[../archive/original-sources/2026-07-03_迈向AI-Native_技术团队的范式跃迁与组织进化_原文|快手 AI Native 原文归档]]

### 模式目的

当诊断显示“个人提效但组织没提效”时，用这个框架判断该重构哪一层，而不是继续加 AI 工具。

| 层 | 诊断问题 | 重构动作 |
|---|---|---|
| 信息层 | AI 能不能拿到完成任务所需的上下文？ | 信息架构从围绕人重组为围绕 AI；私域基础设施 AI 友好化；企业知识工程 |
| 流程层 | 串行多角色协作是否在消耗 AI 带来的局部提效？ | 从串行 SDLC 转向 agentic 模式；协作与执行分层 |
| 组织层 | 角色和团队边界是否卡住了端到端交付？ | 交付与守护分离；产研边界溶解；角色赋能 |

### estack 使用方式

`$e-innovation-workflow` 的诊断顺序：先量（个人层 vs 组织层指标），再定位断裂层，再选对应重构动作。不要在信息层没就绪时直接推流程层的 agentic 改造。

## Pattern: 协作与执行分层（决策冻结 + spec handoff）

Source: [[../archive/original-sources/2026-07-03_迈向AI-Native_技术团队的范式跃迁与组织进化_原文|快手 AI Native 原文归档]]

### 模式定义

人擅长松散、模糊、创造性的沟通；agent 擅长结构化、确定性、可重复的执行。把两层分开：所有需要人对齐的事（意图对齐、决策冻结）前置消化掉，不让协作摩擦渗透进 agent 执行链路。

### 关键构件

- 意图对齐与决策冻结发生在执行之前，冻结后不再回头改。
- 工具把人的产出汇合成结构化 Spec：产品用 skill/工具把意图转成 Spec，设计师用 Design Agent 产出贴合实现的视觉稿，或用原型驱动开发替代 PRD/设计稿交接。
- 人审核 Spec 后，执行链路保持 AI 高自主。

### estack 使用方式

在 `$e-collaboration-design` 和 `$e-innovation-workflow` 中，把“哪些对齐必须前置、什么时候冻结决策、handoff artifact 是什么”作为流程设计的三个必答问题。

## Pattern: L1/L2/L3 范式分级与双路径演进

Source: [[../archive/original-sources/2026-07-03_迈向AI-Native_技术团队的范式跃迁与组织进化_原文|快手 AI Native 原文归档]]

### 分级

- **L1 辅助**：AI 在部分环节提供信息。
- **L2 协作**：AI 在部分工作单元提供初稿，人做完善。
- **L3 自主**：AI 自主完成需求交付。

### 双路径

不是所有场景走同一条演进路：

1. **主航道**：L1 -> L2，大规模研发场景循序渐进。
2. **快速路**：任务边界清晰、风险可控、容错空间大的场景（B 端、0 到 1、运营类）直接跃迁 L3。

### 与 Block maturity ladder 的关系

两个框架可互相映射：L1 约等于 Stage 1-2，L2 约等于 Stage 3，L3 约等于 Stage 5。Block 的阶梯细在 agent 交付形态（PR、并行、review），快手的分级粗但配了组织演进路线（哪些场景走哪条路）。诊断个人/团队用 Block 阶梯，规划组织路线用 L1/L2/L3 双路径。

### estack 使用方式

`$e-innovation-pilot` 选场景时先问：这个场景属于主航道还是快速路？快速路条件（边界清晰、风险可控、容错大）不满足时，不要承诺端到端自主交付。

## Pattern: 交付与守护分离

Source: [[../archive/original-sources/2026-07-03_迈向AI-Native_技术团队的范式跃迁与组织进化_原文|快手 AI Native 原文归档]]

### 模式定义

传统按技术栈分团队的逻辑（谁写代码谁守护代码）在 AI 时代被打破：当 agent 能帮前端工程师写出合格的后端代码，交付和守护绑在一起反而成为瓶颈。

- **交付层**：抹平前后端职能，设功能 Owner，通过 AI 协同完成单人闭环交付。
- **守护层**：架构师负责定标准、建机制、守门禁。

### 延伸：产研边界溶解

判断力在哪个角色，就赋能哪个角色自主交付：设计优化的判断力在设计师，运营需求的判断力在产品运营。研发从所有需求的默认承接方，变成复杂专业问题的承接方。

### estack 使用方式

`$e-collaboration-design` 做角色设计时，先问“这个需求的判断力在谁身上”，再问“谁守标准和门禁”，而不是默认沿用现有部门分工。

## Pattern: 以 AI 为中心重设计内容生产流水线（直播礼物案例）

Source: [[../archive/original-sources/2026-07-03_迈向AI-Native_技术团队的范式跃迁与组织进化_原文|快手 AI Native 原文归档]]

### As-is vs to-be

| 环节 | 旧流程（围绕人） | 新流程（围绕 AI） |
|---|---|---|
| 方向/剧本/分镜/美术 | 人构思创意 | AIGC agent 专业制作 |
| 生成/剪辑/合成 | 人选模型抽卡 | AI Agent Tools |
| 评审/验证/评测 | 人工审稿 | Agent evaluation |
| 反馈 | 无系统回流 | 消费付费特征因子回流 |
| 人的位置 | 每个环节的执行者和瓶颈 | 上移到定义目标、标准和关键方向 |

结果：上新周期从 20 天压缩到 4 天以内。

### estack 使用方式

这是 `$e-innovation-workflow` 最好的非工程 demo：展示“把业务流程拆解后以 AI 为中心重新设计”，而不是在旧流程的每个环节里塞 AI。适用于营销创意、内容生产、运营物料等结构相似的场景。

## Pattern: 四层工程栈与逐层诊断（Prompt / Context / Harness / Loop）

Source: [[../archive/original-sources/2026-07-05_腾讯云开发者_Loop-Engineering四层工程进化论_原文|Loop Engineering 综述归档]]

### 模式定义

Agent 工程能力分四层嵌套（外层包含内层，不替代内层）：

| 层 | 解决什么 | 核心手段 | 天花板 |
|---|---|---|---|
| L1 Prompt | 怎么说清楚任务 | 角色设定、格式约束、CoT | 信息孤岛、无记忆、人是瓶颈 |
| L2 Context | 模型看到什么 | RAG、MCP、历史管理 | 模型的"手"不受控，错误不会自愈 |
| L3 Harness | 错误结构性不可重犯 | AGENTS.md、linter、test gate、observability | 仍是人触发人收尾，不能并行规模化 |
| L4 Loop | 持续自主运转 | automation、worktree、maker-checker、外部 state | 成本组合爆炸、理解力负债 |

L2 与 L3 的本质区别：L2 是基于信任的策略（给正确信息，期望做对），L3 是基于验证的策略（不信任单次输出，信任验证流程）。

### 逐层诊断框架

大多数生产级 Agent 故障在 Harness 层，却被误诊为 Prompt 或 Context 层，修复施加在错误层面导致症状反复。诊断顺序：

1. 指令和信息本身质量差？-> L1/L2（例：RAG 检索到过期文档，修文档版本管理而不是改 prompt）。
2. 信息正确但行为出错、同样的错反复出现？-> L3（例：模型惯性用废弃 API，加 CI detector 而不是塞更多文档）。
3. 单任务可靠但吞吐量卡在人身上？-> L4（例：人在串行驱动 50 个积压 issue，需要 automation + 并行 sub-agent）。

### 采纳路径与退出标准

夯实 L1/L2（准确率 85%+ 且优化进入收益递减）-> 重点建设 L3（可半自主执行、失败模式规则化、AGENTS.md 增长放缓）-> 谨慎试点 L4（最小 Loop + 硬预算 + 高频 review 渐降频）。Anti-pattern：跳过 L3 直接 L4（详见 [[governance-controls|governance-controls]]）。

### 与其他框架的映射

三个框架分别回答不同问题：Block 六阶段答"组织成熟到哪一步"，快手三层重构答"组织该改什么"，四层工程栈答"工程该建什么、故障出在哪"。粗略对应：L1/L2 ≈ Block Stage 1-2 ≈ 快手 L1；L3 ≈ Stage 3 ≈ 快手 L2 的工程前提；L4 ≈ Stage 4-5 ≈ 快手 L3。行业适配：金融以 L3 为核心投入层、L4 只用于辅助任务；软件工程是 L4 原生场景；客服以 L1/L2 为核心、L4 适用有限。

## Pattern: 产品流程倒置（前置降险 -> 并行探索 + 策展）

Source: [[../archive/original-sources/2026-07-05_Lennys-Podcast_Codex-Andrew-Ambrosino_transcript|Codex 访谈归档]]

### 模式定义

旧产品流程（研究 -> 文档 -> 原型 -> 实现）的前提是实现昂贵，一切前置活动都为降低实现风险。实现变廉价后流程倒置：并行做出大量原型（同一功能可能有 90 个探索），人类判断上移到策展——评估、比较、折叠、取舍。

### 关键构件

- **媒介选择规则**：实现丰裕时更要选对表达媒介。求模糊领域的产品清晰度用文档（PRD 没死）；求交互模式压力测试用原型。警惕过度锚定：探索性原型看起来 production-ready，会被误当成可发布产品。
- **流程阶段元信息**：旧世界里媒介自带阶段信号（像生产环境 = 已降险），现在信号解耦，必须显式声明"我们处在流程哪个阶段"。
- **Build ahead of models**：把未来一两年想做的事全部原型化，判断哪些现在就绪，其余入库；每次模型跃迁换上新模型重试。"写了代码不等于该发布，它是可以对未来模型持续测试的 artifact。"同一形态可能要发布多次才成立（Operator -> Atlas -> Codex 是同一功能在不同智能水平下的重发）。
- **模糊长期规划**：越短期计划越细；9 个月计划保持模糊，任何精度都是虚假精度。

### estack 使用方式

`$e-innovation-workflow` 处理产品/创新流程重设计时的第二个非工程 demo（与直播礼物互补：一个讲内容流水线，一个讲产品探索流程）。`$e-innovation-pilot` 的规划建议直接引用"短期细、长期糊"和 build-ahead 原则。
