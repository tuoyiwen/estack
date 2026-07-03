---
project: estack
type: web-search-and-research-workflows
status: active
created: 2026-07-03
---

# Web Search and Research Workflows

这个文件收集 web search、grounded search、RAG / retrieval、evidence synthesis 在企业 AI adoption / AI transformation 中的使用方式。

核心判断：web search 不是“查资料”这么简单，而是企业 AI-native workflow 中的 **evidence acquisition and grounding layer**。它决定 AI 方案是否能连接外部事实、当前市场、竞品变化、法规动态和可引用证据。

## 为什么需要单独一类

现有知识库已经有 workflow、governance、benchmark 和 technical enablers，但还缺一个横跨这些类别的能力：**如何让 AI 获取、筛选、引用和综合外部证据**。

如果没有这类知识，estack 容易变成只会生成框架，而不能支持企业真实决策中的证据要求。

## 位置判断

- Priority: P1
- Primary related skills: `$e-innovation-map`, `$e-innovation-workflow`, `$e-ai-governance`, `$e-innovation-metrics`
- Secondary related skills: `$e-collaboration-design`, `$e-innovation-pilot`
- 不是纯技术能力，也不是纯治理能力，而是 research workflow / evidence workflow。

## 子类型

| Type | What it decides | Reusable output |
|---|---|---|
| External evidence search | 一个创新/转型问题需要查哪些外部事实 | Search Brief |
| Source strategy | 应该搜网页、新闻、论文、官方文档、法规、竞品页还是社区讨论 | Source Plan |
| Search query design | 如何拆解查询、迭代关键词、限定域名和时间范围 | Query Plan |
| Grounded synthesis | 如何把来源转成可验证结论，而不是泛泛总结 | Evidence Matrix |
| Source quality review | 哪些来源可信，哪些只作弱信号 | Source Quality Rubric |
| Search-to-workflow handoff | 搜索结果如何进入 use case、pilot、metrics 和 governance | Research-to-Action Brief |
| Citation and audit trail | 如何记录来源、日期、引用、证据强度和不确定性 | Citation Log |
| Internal vs external retrieval | 什么时候查公开 web，什么时候用内部文档/RAG | Retrieval Boundary Decision |

## 适用企业场景

- 新产品机会扫描：市场趋势、客户痛点、竞品功能、技术可能性。
- 竞品和行业 intelligence：产品发布、价格、组织动作、合作伙伴、客户反馈。
- 法规和风险扫描：AI policy、数据合规、行业监管、版权/IP 风险。
- 供应商/工具评估：不同 AI 工具、平台、模型能力和成本边界。
- 技术可行性评估：RAG、agent tooling、fine-tuning、web search、grounding 等能力是否适用。
- 创新方案证据化：把创意从“听起来不错”变成有来源支持的 opportunity brief。

## Human-AI collaboration pattern

推荐默认配置：**Search-first, AI synthesizes, human verifies**。

步骤：

1. Human 定义问题、决策用途、时间范围和不可接受来源。
2. AI 拆解搜索任务，提出 source strategy 和 query plan。
3. AI 执行 web search / retrieval，保留引用和来源元数据。
4. AI 生成 evidence matrix，而不是直接给结论。
5. Human 检查来源可信度、claim-source fit 和遗漏角度。
6. AI 将证据转成 use case、workflow、pilot 或 governance output。

## Web Research Brief 模板

| 字段 | 内容 |
|---|---|
| Decision question | 这次搜索服务哪个决策？ |
| Search scope | 时间、地域、行业、职能、语言范围 |
| Source tiers | 官方/学术/行业报告/新闻/社区/供应商材料 |
| Excluded sources | 不使用或仅作弱信号的来源 |
| Query plan | 核心关键词、替代关键词、限定域名 |
| Evidence matrix | Claim、source、date、evidence strength、risk |
| Confidence | direct / partial / adjacent / weak |
| Action handoff | 进入哪个 estack skill 输出 |

## Evidence Matrix 模板

| Claim | Source | Date checked | Evidence strength | Use in estack | Caveat |
|---|---|---|---|---|---|

## Source Quality Rubric

| Dimension | High | Medium | Low |
|---|---|---|---|
| Authority | 官方文档、原始论文、公司一手材料 | 行业媒体、专家博客 | 二手转述、无来源内容 |
| Freshness | 与问题时效匹配 | 可能仍有效但需确认 | 明显过期 |
| Claim-source fit | 来源直接支持结论 | 来源只支持一部分 | 来源和结论关系弱 |
| Traceability | 有 URL、作者、日期、引用位置 | 有 URL 但元数据不全 | 无法追溯 |
| Bias risk | 中立或可交叉验证 | 有商业立场但透明 | 明显营销/夸张/不可验证 |

## Governance rules

- 高风险决策不能只依赖 AI 总结，必须查看原文证据。
- 所有 web-grounded 输出必须保留 clickable citations 或 source log。
- 搜索结果要记录 date checked，因为网页内容会变化。
- 对法规、财务、医疗、合规、安全等内容，必须优先使用官方或一手来源。
- 供应商材料只能证明供应商自称能力，不能单独证明真实效果。
- 如果使用内部文档/RAG，必须记录数据边界、访问权限和敏感信息处理方式。

## 参考来源

- [[original-sources/2026-07-03_OpenAI_Web-Search-Tool_source-card|OpenAI Web Search tool]]
- [[original-sources/2026-07-03_Anthropic_Claude-Web-Search-Tool_source-card|Anthropic Claude Web Search tool]]
- [[original-sources/2026-07-03_Google_Grounding-With-Google-Search_source-card|Google Grounding with Google Search]]
- [[original-sources/2026-07-03_Microsoft_Azure-AI-Search-RAG_source-card|Microsoft Azure AI Search RAG]]

## 下一步

- 把 Web Research Brief 放进 `04_output-templates-and-examples.md`。
- 把 evidence quality 指标放进 `05_metrics-and-rubrics.md`。
- 把 search-first collaboration pattern 放进 `02_human-ai-collaboration-patterns.md`。
- 在 `$e-innovation-map` 中加入：先做 external evidence scan，再生成 use case portfolio。