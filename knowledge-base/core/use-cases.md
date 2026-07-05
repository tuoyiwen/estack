---
project: estack
type: enterprise-innovation-use-cases
status: active
created: 2026-07-03
updated: 2026-07-03
---

# Enterprise Innovation Use Cases

这个文件收集企业中最适合被 AI 重构的创新/知识工作场景，服务 `$e-innovation-map`。

核心判断：不是所有 AI 应用都值得进入 estack。estack 优先处理那些涉及 **问题定义、信息搜索、方案生成、方案评价、决策整合、学习反馈** 的知识工作。

## Use Case Portfolio

| Use case | 职能 | 当前痛点 | AI 机会 | 人类不可替代判断 | 推荐配置 | 主要风险 | 可输出材料 |
|---|---|---|---|---|---|---|---|
| 新产品概念开发 | 产品 / 战略 / 市场 | 概念来源窄、证据弱、讨论靠经验 | 扩展趋势/竞品/客户痛点，生成多组概念，形成 evidence-backed opportunity brief | 战略取舍、品牌边界、客户承诺、资源优先级 | Human-first, AI expands + Search-first | AI 生成看似新颖但不可行；证据弱 | Use Case Portfolio、Concept Brief、Evidence Matrix |
| 营销创意生成与筛选 | 市场 / 品牌 / 增长 | 创意同质化、评估主观、复用差 | 并行生成创意方向，模拟受众反应，整理证据和风险 | 品牌语气、文化敏感性、最终选择 | Parallel exploration + AI prepares, human decides | 偏见、版权/IP、品牌风险 | Creative Option Set、Evaluation Rubric、Risk Check |
| 客户洞察到产品机会 | 客服 / 销售 / 产品 | 客户反馈碎片化、难以转成机会 | 汇总反馈、聚类痛点、识别机会、连接竞品/市场证据 | 判断真实需求、商业价值、客户优先级 | Search-first + Alternating interaction | 数据隐私、样本偏差、过度概括 | Customer Insight Map、Opportunity Backlog |
| 战略选项生成与评估 | 战略 / 高管 / BU | 选项少、论证慢、假设不透明 | 生成战略选项，列出假设、证据、风险和反证 | 风险偏好、组织能力、时机判断 | AI-first, human reframes + AI prepares, human decides | AI 强化既有叙事；证据选择性 | Strategy Option Memo、Assumption Matrix |
| Web research / evidence scan | 研究 / 情报 / 战略 / 产品 | 搜索分散、来源质量不一、结论不可追溯 | 设计 query plan，抓取证据，生成 evidence matrix 和 citation log | 判断来源可信度、遗漏角度、是否足够支持决策 | Search-first, AI synthesizes, human verifies | 引用不准、来源偏差、网页时效变化 | Web Research Brief、Evidence Matrix、Citation Log |
| 工程组织 agentic workflow | 技术 / 研发平台 | AI 工具使用率高但交付未变快 | 建 AI-ready repository、agent delegation、review loop、multi-agent orchestration | 架构决策、质量验收、责任归属 | Agent delegates, human reviews | review bottleneck、责任不清、人员影响 | AI-native Workflow Blueprint、Pilot Charter |
| 内部知识检索与决策支持 | HR / 法务 / 财务 / 运营 / IT | 知识散在文档和系统中，问答不可追溯 | RAG / internal retrieval，生成带来源的流程建议 | 政策解释、例外处理、合规责任 | AI prepares, human decides | 数据权限、过期知识、错误建议 | Retrieval Boundary Decision、Governance Matrix |
| AIGC 内容生产流水线 | 运营 / 内容 / 设计 / 市场 | 创意产能受限于人的认知和时间，上新周期长 | Agent 承担方向、分镜、生成、剪辑、评审全链路，消费反馈因子回流 | 内容方向、品牌与合规底线、商业化取舍 | Human sets goals, AI produces and evaluates | 内容质量漂移、评测标准失真、版权/IP | Workflow Blueprint、Evaluation Rubric（实证：快手直播礼物上新 20 天 -> 4 天，见 [[../references/benchmark-cases\|benchmark cases]]） |

## Use Case Selection Rubric

每个候选 use case 先按 1-5 分评估，不建议只凭“看起来酷”进入 pilot。

| Dimension | 1 分 | 3 分 | 5 分 |
|---|---|---|---|
| Business value | 影响边缘任务 | 影响团队效率 | 影响收入、客户价值或战略决策 |
| AI leverage | 只是文本润色 | 能扩展信息/方案 | 能重构流程和决策质量 |
| Human judgment need | 几乎可自动化 | 需要人工选择 | 涉及价值判断、承诺和责任 |
| Evidence availability | 无来源/无数据 | 有部分材料 | 有内外部证据可验证 |
| Workflow readiness | 流程混乱 | 有大致流程 | 有明确输入、输出、owner、review |
| Risk manageability | 风险不明 | 可局部控制 | 有明确边界和复核机制 |
| Manager load | 会增加隐性负担 | 可估算 | 有 review time 和支持机制 |
| Feedback signal | 只能人工验证，验证成本接近或超过生成收益 | 弱确定性反馈：有标准/历史数据/模板可回测比对 | 自动确定性验证（编译、测试、规则校验） |

Feedback signal 维度依据：编程是"通用性的特例"，其 token 经济建立在自动验证闭环上（见 [[../references/research-anchors|research anchors]]）。得分低的场景不代表不能做，而是 pilot 必须先回答验证成本由谁承担；1-3 分之间的弱确定性反馈场景（影像筛查、需求预测、合同初筛）是从数字场景走向传统行业的桥梁 use case。

## Routing Rules

- 如果问题是“我们哪些业务场景适合先做 AI？” -> `$e-innovation-map`
- 如果问题是“人和 AI 怎么分工？” -> `$e-collaboration-design`
- 如果问题是“流程怎么改？” -> `$e-innovation-workflow`
- 如果问题是“怎么试点？” -> `$e-innovation-pilot`
- 如果问题是“怎么证明有效？” -> `$e-innovation-metrics`
- 如果问题是“有什么风险和边界？” -> `$e-ai-governance`