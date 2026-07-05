---
project: estack
type: human-ai-collaboration-patterns
status: active
created: 2026-07-03
updated: 2026-07-03
---

# Human-AI Collaboration Patterns

这个文件收集不同人机协作顺序与分工模式，服务 `$e-collaboration-design`。

核心判断：estack 是根据任务性质设计 **谁先定义、谁扩展、谁搜索、谁判断、谁复核、谁承担责任**。

## Pattern Library

| Pattern | 适合场景 | Human role | AI role | Handoff artifact | 核心风险 | 复核规则 |
|---|---|---|---|---|---|---|
| Human-first, AI expands | 问题定义很关键、组织情境强 | 先定义问题、约束、成功标准 | 扩展选项、补充角度、提出反例 | Problem framing + option set | 人的初始框架过窄 | AI 必须输出遗漏角度和反假设 |
| AI-first, human reframes | 需要快速打开选项空间 | 选择、重构、删掉错误方向 | 先生成多个框架和方案 | Reframed problem brief | AI 锚定错误问题 | 人类必须重写问题定义后再进入下一步 |
| Alternating interaction | 探索性创新、需要迭代修正 | 每轮判断方向和取舍 | 每轮生成、比较、反驳、细化 | Iteration log | 方向漂移、时间失控 | 设置 stop rule 和 decision checkpoint |
| Parallel exploration | 需要多样方案和对照 | 定义评价标准、最终选择 | 并行生成多个策略/创意/路径 | Option portfolio | 评估负担高、质量参差 | 先用 rubric 粗筛，再人工深评 |
| AI prepares, human decides | 决策准备、材料综合 | 决策、责任、例外判断 | 汇总证据、列风险、准备建议 | Decision memo | 人只接受结论、不审证据 | 所有关键 claim 必须有 source/caveat |
| Search-first, AI synthesizes, human verifies | 市场/竞品/法规/技术证据扫描 | 定义问题、检查来源、判断是否足够支持决策 | 设计 query plan、搜索、整理 evidence matrix | Web Research Brief + Evidence Matrix | 引用错误、来源偏差、过时信息 | 人类必须检查 source quality 和 claim-source fit |
| Agent delegates, human reviews | 工程、运营、数据分析等可委派任务 | 拆解目标、验收、接管失败 | 执行任务、生成 artifact、修复反馈 | PR / report / workflow artifact | review bottleneck、责任不清 | 明确 owner、review time、escalation path |
| AI reviews, AI fixes, human arbitrates | 多 agent 并行产出后的质量控制 | 设定验收标准和最终裁决 | 自动 review、自动修复、生成差异说明 | Review log + final artifact | 自动互相确认错误 | 高风险变更必须人工验收 |
| Align upfront, freeze, then delegate | 多角色协作流程（产品/设计/研发） | 前置完成意图对齐和决策冻结，审核 spec | 基于结构化 spec 高自主执行 | Structured spec | 对齐不充分导致执行返工；冻结后需求又变 | spec 经人审核冻结后才进入执行；变更走重新冻结 |
| Human sets goals, AI produces and evaluates | 内容生产 / AIGC 流水线 | 定义目标、标准、关键方向 | 方向、分镜、生成、剪辑、评审全链路 + 反馈因子回流 | Evaluated content candidates | 评测标准失真、质量漂移 | 人定义 evaluation rubric，定期抽检 agent 评审结果 |

## Selection Rules

| 如果任务特征是... | 优先模式 |
|---|---|
| 问题本身模糊，组织情境重要 | Human-first, AI expands |
| 需要快速突破惯性思维 | AI-first, human reframes |
| 需要探索、反复修正 | Alternating interaction |
| 需要多样性和备选组合 | Parallel exploration |
| 需要做决策准备 | AI prepares, human decides |
| 需要外部事实、当前信息、引用证据 | Search-first, AI synthesizes, human verifies |
| 有明确任务、上下文、验收标准 | Agent delegates, human reviews |
| 产出速度已经超过人工 review 能力 | AI reviews, AI fixes, human arbitrates |
| 多角色串行协作摩擦在吃掉 AI 提效 | Align upfront, freeze, then delegate |
| 内容/创意产能受限于人的认知和时间 | Human sets goals, AI produces and evaluates |

## 真实案例映射

| Pattern | 真实案例 | 出处 |
|---|---|---|
| Agent delegates, human reviews | Block Stage 3：人拆解任务，agent 产出 PR，人 review | Block 案例 |
| AI reviews, AI fixes, human arbitrates | Block Stage 4：多 agent 并行后用 automated review + auto-fix loop 解 review 瓶颈 | Block 案例 |
| Align upfront, freeze, then delegate | 快手流程层重构：意图对齐、决策冻结前置，spec handoff 后保持执行链路高自主 | 快手案例 |
| Human sets goals, AI produces and evaluates | 快手直播礼物：人定目标和标准，agent 做方向/分镜/生成/评审，上新周期 20 天到 4 天 | 快手案例 |
| AI prepares, human decides（反面教材） | HBR：中层被迫充当 AI 输出的隐形复核层，review 时间没有进 charter | HBR 抽取 |

案例出处：

- Block 案例：[[../references/benchmark-cases#Full-text extraction: Block agentic engineering maturity case]]
- 快手案例：[[../references/benchmark-cases#Kuaishou main-site: 千人工程团队的 AI Native 三层重构]]
- HBR 抽取：[[governance-controls#Full-text extraction: middle-manager load as governance risk]]

## Handoff Artifact 选择规则

Source: Codex 访谈（见下方案例出处）。实现变廉价后，选对交接物媒介比"要不要写文档"更重要：

- 求模糊领域的产品/问题清晰度 -> 文档（PRD 没死，死的是当仪式走的 PRD）。
- 求交互模式/方案的压力测试 -> 原型。
- 警惕过度锚定：探索性原型若看起来 production-ready，会被误当可发布产品。交接时显式声明"处在流程哪个阶段"。
- 工程师的对称陷阱：实现丰裕时容易产出大量不值得读的文档；文档只在服务清晰度时才是对的媒介。

案例出处补充：

- Codex 访谈：[[../archive/original-sources/2026-07-05_Lennys-Podcast_Codex-Andrew-Ambrosino_transcript]]

## Collaboration Configuration Card

| 字段 | 内容 |
|---|---|
| Task | 要完成的任务 |
| Recommended pattern | 推荐协作模式 |
| Human starts with | 人先提供什么 |
| AI starts with | AI 先做什么 |
| Handoff artifact | 交接物是什么 |
| Review checkpoint | 哪些点必须人工复核 |
| Escalation trigger | 什么时候升级给负责人 |
| Success metric | 怎么判断协作有效 |
| Main risk | 最大风险 |
| Governance rule | 对应治理规则 |