---
project: estack
type: design-note
status: draft
created: 2026-07-03
---

# onboarding 体验优化

## 目标

让第一次打开 GitHub 的人快速知道：estack 是什么、能解决什么问题、怎么安装、第一条 prompt 怎么写。

## README 首屏应回答

1. estack 是什么？
2. 它不是做什么？
3. 适合谁用？
4. 6 个 skill 分别做什么？
5. 安装后第一步怎么试？

## First 5 Minutes

建议 README 增加一个章节：

```markdown
## First 5 Minutes

1. Install all skills:
   npx -y skills add tuoyiwen/estack -g --all

2. Start with:
   Use $estack to help our company identify where AI should enter our innovation workflow first.

3. Then run:
   Use $e-innovation-map ...
   Use $e-collaboration-design ...
   Use $e-innovation-pilot ...
```

## 三类用户入口

### 企业管理者

关注：先做什么、谁负责、怎么验证价值。

推荐路径：`estack` -> `e-innovation-map` -> `e-innovation-pilot` -> `e-innovation-metrics`

### 咨询顾问 / 转型负责人

关注：如何诊断、设计流程、形成交付物。

推荐路径：`estack` -> `e-innovation-map` -> `e-collaboration-design` -> `e-innovation-workflow` -> `e-ai-governance`

### 研究者 / 博士项目

关注：人机配置、创新过程、衡量指标、试点设计。

推荐路径：`e-collaboration-design` -> `e-innovation-metrics` -> `e-innovation-pilot`

## 示例 prompt

### 1. 找 AI 创新场景

```text
Use $e-innovation-map to identify and prioritize AI innovation use cases for a B2B SaaS company. Focus on product, marketing, and customer success workflows.
```

### 2. 设计人机协作配置

```text
Use $e-collaboration-design to design the human-AI collaboration configuration for a new product concept development workflow.
```

### 3. 设计试点

```text
Use $e-innovation-pilot to design a 30/60/90-day AI innovation pilot for a marketing campaign ideation workflow.
```