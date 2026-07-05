---
project: estack
type: original-source
status: source-card
created: 2026-07-05
source_type: academic-paper
source_url: arXiv (2026-03)
---

# Source Card: Han et al. (2026), "SWE-Skills-Bench: Do Agent Skills Actually Help in Real-World Software Engineering?"

- Authors: Han, T., Zhang, Y., Song, W., Fang, C., Chen, Z., Sun, Y., & Hu, L.
- Status: 未取全文，经腾讯研究院 Token 不经济一文二手引用

## 核心发现

在真实 GitHub 项目上测试 49 个公开软件工程技能：39 个（79.6%）没有带来通过率任何提升；全部技能平均效用增量仅 1.2 个百分点，token 开销最高增加 451%；仅 7 个编码特定领域专业知识的技能带来有意义提升（最高 +30pp）；3 个技能因版本冲突反而降低性能（最高 -10pp）。结论：技能效用高度依赖场景匹配度，盲目调用只会徒增成本。

## estack 用途

"技能不是越多越好"的最强实证；skill 设计原则（领域专业知识 > 通用流程说明）与 token ROI 指标（skill 调用增益）的依据；外部验证了 estack v0.4 的自包含瘦身决定。
