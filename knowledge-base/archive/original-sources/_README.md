---
project: estack
type: original-sources-index
status: active
created: 2026-07-03
updated: 2026-07-03
---

# Original Sources

这个文件夹保存 estack knowledge-base 的原始来源证据。

## 归档规则

1. **全文归档 / transcript 归档**：用户提供了全文、转录或 extended summary 时，保存为正式原始来源文件。
2. **来源卡片**：如果只取得标题、摘要、网页元数据或社交媒体片段，则保存 source card，不强行复制全文。
3. **提炼文件不替代原文**：`core/governance-controls.md`、`references/benchmark-cases.md` 等文件只放可复用判断；证据原文保存在这里。

## 当前来源清单

| Source | Local file | Status | Main placement |
|---|---|---|---|
| 微信文章：迈向AI Native：技术团队的范式跃迁与组织进化 | `2026-07-03_迈向AI-Native_技术团队的范式跃迁与组织进化_原文.md` | full text archived | `references/benchmark-cases.md` / `core/workflow-patterns.md` |
| HBR / BestBlogs: AI Adoption Is Overloading Your Middle Managers | `2026-07-03_HBR_AI-Adoption-Overloading-Middle-Managers_原文.md` | full text archived | `core/governance-controls.md` / `references/research-anchors.md` |
| InfoQ: Fine Tuning the Enterprise: Reinforcement Learning in Practice | `2026-07-03_InfoQ_Fine-Tuning-the-Enterprise_transcript.md` | transcript archived | `references/technical-enablers.md` |
| Block: Building an Autonomous Engineering Organization | `2026-07-03_Block_Agentic-Engineering-Organization_transcript.md` | transcript / extended summary archived | `references/benchmark-cases.md` / `core/workflow-patterns.md` |
| X 评论：组织结构限制 agent 的宏观提效 | `2026-07-03_X_Organization-Boundaries-Agent-Productivity_source-card.md` | source card only | `references/research-anchors.md` |
| OpenAI Web Search Tool | `2026-07-03_OpenAI_Web-Search-Tool_source-card.md` | official doc card | `references/web-search-evidence-workflows.md` |
| Anthropic Claude Web Search Tool | `2026-07-03_Anthropic_Claude-Web-Search-Tool_source-card.md` | official doc card | `references/web-search-evidence-workflows.md` |
| Google Grounding with Google Search | `2026-07-03_Google_Grounding-With-Google-Search_source-card.md` | official doc card | `references/web-search-evidence-workflows.md` |
| Microsoft Azure AI Search RAG | `2026-07-03_Microsoft_Azure-AI-Search-RAG_source-card.md` | official doc card | `references/web-search-evidence-workflows.md` |
| 腾讯云开发者：Loop Engineering 四层工程进化论 | `2026-07-05_腾讯云开发者_Loop-Engineering四层工程进化论_原文.md` | full text archived | `core/workflow-patterns.md` / `core/governance-controls.md` |
| Lenny's Podcast: Codex 产品工作重塑（Andrew Ambrosino） | `2026-07-05_Lennys-Podcast_Codex-Andrew-Ambrosino_transcript.md` | transcript / extended summary archived | `references/benchmark-cases.md` / `core/workflow-patterns.md` |
| 腾讯研究院：Token 不经济 | `2026-07-05_腾讯研究院_Token不经济_原文.md` | full text archived | `core/governance-controls.md` / `core/metrics-and-rubrics.md` / `references/research-anchors.md` |
| Mitchell Hashimoto: My AI Adoption Journey | `2026-07-05_MitchellHashimoto_My-AI-Adoption-Journey_source-card.md` | source card only | `core/workflow-patterns.md` |
| OpenAI: Harness Engineering | `2026-07-05_OpenAI_Harness-Engineering_source-card.md` | source card only | `core/workflow-patterns.md` |
| Addy Osmani: Loop Engineering | `2026-07-05_AddyOsmani_Loop-Engineering_source-card.md` | source card only | `core/governance-controls.md` |
| Anthropic: Effective Context Engineering | `2026-07-05_Anthropic_Effective-Context-Engineering_source-card.md` | official doc card | `core/workflow-patterns.md` |
| Salim et al. 2026: Tokenomics (MSR) | `2026-07-05_Salim-etal_Tokenomics-MSR_source-card.md` | paper card | `core/metrics-and-rubrics.md` |
| Gao et al. 2026: SkillReducer | `2026-07-05_Gao-etal_SkillReducer_source-card.md` | paper card | `references/technical-enablers.md` |
| Han et al. 2026: SWE-Skills-Bench | `2026-07-05_Han-etal_SWE-Skills-Bench_source-card.md` | paper card | `references/technical-enablers.md` / `core/metrics-and-rubrics.md` |
| Lenny's Newsletter: 2026 tech worker sentiment survey | `2026-07-08_Lennys-Newsletter_Tech-Worker-Sentiment-2026_原文.md` | full text archived | `core/governance-controls.md` / `references/research-anchors.md` / `core/metrics-and-rubrics.md` |

## 后续处理原则

每新增一个外部来源，先进入本文件夹：有全文就归档全文；没有全文就建 source card。然后再决定是否抽取到 P0/P1/P2 知识文件。
