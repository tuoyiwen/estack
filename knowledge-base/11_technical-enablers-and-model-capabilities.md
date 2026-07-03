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

Source: [[original-sources/2026-07-03_InfoQ_Fine-Tuning-the-Enterprise_transcript|InfoQ transcript 归档]]

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
