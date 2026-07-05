---
project: estack
type: original-source
status: source-card
created: 2026-07-05
source_type: academic-paper
source_url: arXiv (2026-03)
---

# Source Card: Gao et al. (2026), "SkillReducer: Optimizing LLM Agent Skills for Token Efficiency"

- Authors: Gao, Y., Li, Z., Yuan, Y., Ji, Z., Ma, P., & Wang, S.
- Status: 未取全文，经腾讯研究院 Token 不经济一文二手引用

## 核心发现

对 55,315 个公开技能的大规模实证：26.4% 完全没有路由描述（增加无效加载概率）；超过 60% 的正文是背景解释/示例而非可执行规则；部分技能单次调用注入数万至十余万 token。优化两路径：描述压缩 + 渐进式加载，叠加实现 39% 技能体压缩，功能质量反升 2.8%。

## estack 用途

skill 减法思维的实证依据；直接支持 estack v0.4 skill 自包含瘦身决定；`references/technical-enablers` 技能优化条目的一手来源。
