---
project: estack
type: original-source
status: archived
created: 2026-07-05
source_type: podcast-transcript
source_url: https://www.bestblogs.dev/video/6daf60e
guest: Andrew Ambrosino (Product & Engineering Lead, Codex app, OpenAI)
host: Lenny's Podcast
primary_placement: references/benchmark-cases
secondary_placement: core/workflow-patterns, references/research-anchors, core/collaboration-patterns
---

# OpenAI Codex Lead on the New Shape of Product Work（transcript / extended summary 归档）

> 原始音频转录噪音较大（自动转写），本归档为保留关键原话的 extended summary。引用时用意译。抽取判断见 [[../source-triage/2026-07-05|2026-07-05 triage]]。

## 关键事实与数字（时效性强，date checked 2026-07-05）

- OpenAI 全公司 90% 的人使用 Codex（不只是工程师；内部近 100% 员工每周使用）。
- 自 2026 年 1 月起 Codex 使用量增长 6x，超过 500 万周活用户。
- Codex 团队规模：两位数工程师，设计约为其一半，少量产品人员；多为前创业者或"founder shaped"人才。
- Codex app 于 2025 年 11 月启动开发，2026 年 2 月发布。

## 核心论点与关键原话

### 1. 产品流程的倒置（inversion of the product process)

> "It's backwards. The implementation is actually not the expensive part anymore. It's, dare I say, taste. It's the curation process: of those 90 attempts, what's good about these, what should we fold into other aspects, how should we frame this."

旧流程（research -> ideation -> prototype -> build）的前提是 implementation 昂贵，所以要用文档、研究、原型前置降险。现在实现变廉价，任何人都能建任何东西：同一个急需的功能，公司内可能有 90 个互不协调的团队在并行实现和尝试。人类判断上移到策展（curation）：评估平行尝试、决定折叠进什么、如何取舍。

### 2. PRD 没死：实现丰裕时更要选对媒介

> "One of the interesting things happening right now is that because implementation has gotten so cheap across every medium, it's very tempting to jump straight to a prototype... What I've also noticed is that for engineers it's really tempting to write a lot of documents not worth reading. If implementation is abundant, it's really important to pick the right format for the point you're trying to make."

- 求"模糊领域的产品清晰度"-> 文档；求"交互模式压力测试"-> 原型。
- 旧世界里媒介本身携带流程阶段信号（看起来像生产环境 = 流程后期、假设已降险）；现在这种信号解耦了。危险在于：探索性原型看起来 production-ready，公司里的人会问"能不能直接上线"，造成过度锚定（over-anchoring）。
- "Baby codebase" 做法：维护一个大幅简化、近似生产 app 全部交互的代码库，供快速 vibe-code 探索（baby cursor / baby codex）。设计流程没死，死的是与特定工具绑定的流程仪式；"我们处在流程哪个阶段"的元信息比以往更重要。

### 3. Taste 的构成

> "There's an aesthetic part... there's a systems thinking part: how does this fit in the system; there's where are we going, what theme is this part of; how to present this; a lot of it is wider context."

Taste 不只是审美：系统思维（如何嵌入现有系统）、情境意识（属于哪个主题、为什么该存在）、语义执行（交互动画是否匹配语义）、媒介选择（用什么形式表达这个观点）。"知道该做什么、如何呈现、用什么媒介"正在成为最重要的能力。

### 4. AI 为什么（暂时）做不好设计

- 设计难以自动评分：taste 的人类成分是反馈机制的一部分，训练闭环远比"代码能否编译"繁琐。
- 实验室历史上优先投资能加速 AI 研究的能力（写代码在飞轮里，设计不在）。
- 设计需要文化新颖性和随机性（模型输出 linear 官网复制品不是好设计）；软件工程反而希望过度索引已知模式。
- 更深的障碍：软件设计与代码之间的抽象层（组件间共享的语义结构），当前技术仍够不着。

### 5. Role collapse：角色 = 时间分配的平均

> "Everybody's sort of defined less by the fence and the boundaries of where design stops and engineering starts, but more by the average of where they're working."

- Codex 组的 role collapse 比公司其他部分更彻底（设计师会写代码、PM 有 CS 硕士）。Member of Technical Staff 传统源自研究型公司。
- 警告：取消角色概念的危险在于顺带取消了"专业有可知的最佳实践"这一事实。"我听很多公司说要取消产品角色、人人都是 builder，结果是整个 product discipline 积累的最佳实践被抛弃了。Yes you can use Excel, but you cannot work on the finance team."
- 角色流动性上升：换角色更容易、学最佳实践更容易、角色效能与特定工具解绑（"我曾长期觉得自己不该当软件工程师，因为我不在乎汇编语言和 TypeScript 语法"）。
- IC 与管理的边界也在融合：IC 在管理 agents 和正在发生的工作，管理者做同样的事只是颗粒度不同。

### 6. Zone defense 产品管理

> "If two product people are working too closely, that's often not a good signal... you want company coverage, so you spread out: who's best at what, create some space between us so we've got full coverage, and then you fill in the gaps."

在人人都在扔想法的混乱环境里，产品人的工作是拉开站位、覆盖全场、在缺口处补位，把方向从 inception 引导到产品该有的样子；同时要求工程师本身 product minded，而不是靠全团队 review 保产品一致性。

### 7. 为未来模型规划：build ahead of models

> "Anything that you could have planned in November may have been true for December but isn't what happened... The whole premise of whether features were good or not was based on whether the models were smart enough, not the shape of them."

- 越短期计划越细；9 个月计划必须保持模糊，任何精度都是虚假精度（false precision）。
- 方法：列出未来一两年感兴趣的所有事 -> 全部原型化 -> 判断哪些现在就绪 -> 其余入库放着 -> 每次模型跃迁时换上新模型再试一次。
- "写了代码不等于该发布，它意味着你有了一个可以对未来模型持续测试的 artifact。"
- 时机教训：2 月发布的 Codex app 如果 11 月就绪会彻底失败，唯一区别是模型；Operator -> Atlas agent -> Codex/ChatGPT 是同一功能反复以不同智能水平重发，结果完全不同。"我们曾经 too AGI-pilled"（Codex web 委派形态太超前，Claude Code 贴着当时模型能力反而赢）。同一形态可能要发布六次才成立。

### 8. Dogfooding 与产品形态

- 团队刻意"在 app 里做一切，即使它还不是最好的工具，为了让它成为最好的工具"；不改进流程本身是为了逼产品变好，"深度不舒适但每周都在变"。
- 通用 vs 垂直的教训：为非工程人群另建通用工具的尝试失败了——"没有人愿意离开 Codex app 去用那些据称为他们准备的 app"。developer tool vs general knowledge work tool 不是二选一。
- Home base 愿景：app 是工作的起点、终点和自动化中枢，通过 connector、computer use、extension 编排专业工具（Premiere Pro 案例：Codex 不会剪视频，就给自己造了个 Premiere 扩展再与之对话；Excel 案例：直接驱动桌面 Excel 插件）。
- 个人工作流 -> 产品原语的筛选：观察每个人自建的系统，共性主题上升为一等公民功能（如 memory），纯个人流程留给用户。

### 9. 其他

- 失败观："我失败了大概 10 到 15 年才到这个点"（创业公司卖零件、受监管行业 AI 工具反复碰壁）；内部 2000 条消息的"这很蠢"吐槽线程是外部产品质量的原因。
- 给个人的建议："Do not get married to your exact process. Get married to the outcomes you are uniquely able to deliver, and then change your process to try things." 以及自我认知（self-awareness）是用好 AI 的关键。
