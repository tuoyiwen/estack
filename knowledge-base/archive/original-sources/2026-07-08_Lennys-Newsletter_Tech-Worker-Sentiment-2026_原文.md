---
project: estack
type: original-source
status: archived
created: 2026-07-08
source_type: newsletter-survey-report
source: Lenny's Newsletter
authors: Noam Segal, Lenny Rachitsky
published: 2026-07-07
sample: N=5,920 tech professionals (5,332 currently working); product-centric self-selected audience
primary_placement: core/governance-controls
secondary_placement: references/research-anchors, core/metrics-and-rubrics
---

# How tech workers are feeling in 2026: a workforce splitting in two（原文归档）

> 第二届年度 tech worker sentiment survey。样本为 Lenny 读者群（PM 46.9%、偏 senior、自选样本），对 product 类科技从业者 direct，外推 partial。抽取判断见 [[../source-triage/2026-07-08|2026-07-08 triage]]。促销与订阅内容已略去，正文与附录保留。

## 核心结论（原文 takeaways）

1. **The workforce is splitting in two.** Tech workers are either amplified by AI or shaken by it, and that divide shapes their feelings about work more than any title, tenure, or company.
2. **Burnout is surging, optimism fading.** Significant burnout rose from 44.7% to 55.7%; career optimism fell from 54.8% to 48.7%.
3. **Tech workers wouldn't recommend their own field.** 53% would steer a newcomer away (NPS -39), even those optimistic about their own future.
4. **Productivity up, quality questionable.** 82% say AI makes them measurably more productive, but gains come at the cost of sharpness of the work and the worker.
5. **The underlying fear is being overworked.** Only 22% worry about "losing my job to AI"; 51% worry about doing more for the same pay, 46% about unsustainable pace, 41% about quality decline.
6. **Almost everyone is ambivalent.** 77% picked at least one positive and one negative emotion; average person selected 5+ emotions.
7. **Designers and researchers are the most worried** (second year running): most AI anxiety, most job-loss fear, worst-rated managers, lowest field recommendation.
8. **Founders are still the happiest; small companies still the best places to work** (both replicate from 2025; founder effect d≈0.56).
9. **Managers are still the biggest lever for happiness**: manager quality is the strongest driver of burnout in the dataset.
10. **The industry, in workers' own words, is "chaotic"** — sentiment split almost evenly between excitement (37%) and dread (37%).

## Takeaway 1: The workforce is splitting in two

"How has working with AI shifted how you see yourself as a professional?"

- Amplified (I can do more, and better): **49.0%**
- Redefined (role changing shape, not clearly positive or negative): **27.4%**
- Destabilized (less sure where I stand or what's really mine): **13.9%**
- Diminished (I feel less essential or less valuable): **5.0%**
- Unchanged: 3.2%

From amplified to diminished: optimism collapses, burnout climbs, layoff fear climbs, field recommendation falls off. Robustness checks:

- Regression: AI-identity stance is the single strongest predictor of career optimism (standardized β = +0.39) and of recommending one's field (β = +0.60) — stronger than role, level, and company size combined.
- Effect size amplified vs diminished on optimism: Cohen's d ≈ 1.55, roughly 3x the founder effect (d ≈ 0.56). Biggest effect in the dataset.

> The question that best predicts how a tech worker feels about their work in 2026 is no longer "What do you do?" or "Where do you work?" It's "What has AI done to your sense of who you are?"

### 四类型（基于情绪全模式聚类）

- **The Energized (41%)**: excited 91%, curious 83%, hopeful 59%。最乐观、最不倦怠、唯一对行业正面的群体。"Product has become fun again... We're in an amusement park."
- **The Conflicted (35%)**: conflicted 68%, curious 64%, overwhelmed 56%, tired 55%。没有反感 AI，只是被"边跟上边持有两种感受"耗尽。"I'm simultaneously having the most fun I've had as a product builder and also feeling the most uncertainty I've felt."
- **The Disoriented (12%)**: "my role keeps shifting" + overwhelmed 74% + tired 73%。角色在脚下变形快过找回立足点的速度；不是拒绝者，是失去角色线索。"We're like farmers on the cusp of the industrial revolution."
- **The Resentful (12%)**: 全部勾选 "resentful—I feel pressured to use AI"。最低乐观、最低推荐意愿、最低 AI 有用感。AI 疲劳转化为抵抗。"Now all we hear is 'Use AI or you will lose your job'—and then people get fired anyway. I hate it."

## Takeaway 2: Burnout surging, optimism fading

- Significant burnout: 55.7%（2025: 44.7%）；26.2% "very" or "completely" burned out。
- Career optimism: 48.7%（2025: 54.8%）。
- 但 job enjoyment 稳住：42.6% enjoy "very much/extremely"。Enjoyment 关于工作本身，burnout 关于节奏，optimism 关于走向，三者可同时成立。
- 裁员焦虑（新题）：41.2% 至少中度担心，19.9% very/extremely。Layoff worry 是职业悲观的最强相关（r = -0.47）。

## Takeaway 3: Wouldn't recommend their own field

- Field recommendation NPS: **-39**。53% 会劝新人别入行；三分之一自称乐观的人也不推荐自己的领域。
- "The water's fine; don't come in."——对自己的轨迹已和解（有技能、关系、资历），但不再相信 on-ramp 对后来者有效。
- 按角色：founders -5（最高）、VP -23；senior/staff IC 最低（均 -49）；designers/researchers 最不推荐。爬得越高越觉得梯子值得，梯级上的人在劝别人别开始爬。

## Takeaway 4: Productivity up, quality questionable

- 82% 说 AI 已让自己至少中度更胜任工作；49.4% "very much/extremely"。60% 觉得 AI 技能自信或领先同侪，22.5% 焦虑或落后。
- 但 "better" 实际含义 = more + faster，不是 higher quality。
- 认知代价原话："I'm amplified, but my brain is rotting, and my work feels worse." / "I feel like I don't think hard enough anymore—I just follow Claude. I don't fully understand what I merge." / "I miss feeling smart and having aha moments."
- "We just set a new denominator for the job. And it moves higher and higher every month."

## Takeaway 5: The underlying fear is being overworked (the squeeze)

- "Losing my job to AI"：仅 22%，接近榜尾。
- 最大恐惧：expected to do more for the same pay 51%；trapped in unsustainable pace 46%；quality of work going down 41%。
- "AI is replacing parts of my job" 与 layoff worry 的相关 r = +0.05（约为零）：人们怕裁员，但不怪 AI；他们怕 AI 的是被埋进更多工作。
- 原话："More and more work is being handed off to me because I can use AI to get it done. But that makes it impossible to keep up with quality standards and not burn out." / "AI helps with the toil, but then it's also an enabler to do even more toil."
- "Every gain becomes the new baseline, and the people expected to hit it are running out of room to breathe."

## Takeaway 6: Almost everyone is ambivalent

- 情绪多选：curious 与 excited 领先（excited 64%），但紧随其后是 overwhelmed 和 tired；hopeful 仅 33%。对当下的兴奋跑在对未来的希望前面。
- 51% 显式勾选 "conflicted—holding positive and negative feelings at once"；按"至少一正一负"算为 **77%**。平均每人勾选 5+ 种情绪。
- Nikhyl Singhal 命名："smiling exhaustion"——人们又在 shipping、薪酬上涨、角色重生，但没有关机键，节奏残酷、规则每月重写。

## Takeaway 7: Designers and researchers most worried

- 研究员 51% "anxious about my job security" vs founders 15%。
- 设计师 63% "overwhelmed by the pace of change"、61% "tired"（各角色最高）；61% 感到 comp squeeze（最高）。
- 研究员 36% 怕 "losing my job to AI"（仅次于 Data/Analytics 38%）。
- 两角色的 field recommendation 最低；设计师的 manager 评分全场最差（双重打击）。
- 原文作者（研究员）注："Many now feel the seat is being pulled from under us, and the work is being democratized, not to other roles but to AI."
- 按级别：early-career IC 身份动摇比例最高（27%，但悖论地也偏乐观）。按公司规模：10,000+ 公司 23% destabilized vs 1-10 人公司 15%。

## Takeaway 8: Founders happiest, small companies best

- Founders/execs 几乎在每个指标登顶：71% 乐观、最高享受、最低倦怠、最低裁员担忧。Founder effect d ≈ 0.56（数据集第二大效应）。解释：ownership/control 是对一切的最佳缓冲。
- 但 47% 的 founders 仍至少中度倦怠；founder 的推荐 NPS 也只有 -5（净负）。幸存者偏差警告：只调查了现任 founders。
- 公司越小每项福祉指标越好；但最小公司也有 42% 中度以上倦怠，推荐分 -28。"Small companies are winning a race to the least bad."
- 办公地点几乎不影响感受（hybrid 略最好）；contractors 最不倦怠但最怕失业。10,000+ 公司的 layoff worry 全场最高。

## Takeaway 9: Managers still the biggest lever

- Manager effectiveness 是全数据集 burnout 的最强驱动（强于角色、公司规模、AI 态度）。
- 极高效 manager 对应约 65% 更高的 job enjoyment 与显著更低的 burnout。
- 仅 25.5% 评价自己的 manager 高效；36.5% 评为低效（与去年几乎持平）。最差 manager 集中在 Data/Analytics 和 Design。

## Takeaway 10: "Chaotic"

- 开放题"一句话描述行业现状"：约三成用 change/chaotic/uncertain/unstable/in flux；六分之一描述"快到跟不上"；12% AI hype/bubble；11% excitement/opportunity。
- chaos 类回答情感分析：37% 正面、37% 负面、26% 中性。同一场扰动，一半人觉得刺激，一半人觉得恐怖。乐观者用 "exciting, transforming, opportunity"，悲观者用 "chaos, layoffs, greed, dystopia"。

## 原文建议（节选）

For employees: 找到 AI 真正改变产出的两三个任务并做深（什么都用 AI 是 overwhelmed 的来源）；watch the squeeze（产出翻倍就该谈 scope 和薪酬）；manager 关系是最高杠杆；考虑小公司或自己干；early-career 找 mentor。

For leaders: 投资 manager（连续两年的第一建议）；manage the squeeze（把生产力收益变成不可能的预期是制造怨恨的最快方式）；don't let the bottom rung rot（AI 做掉入门工作 = 用今年的产出饿死明年的 senior 人才）；特别关注 design 和 research（连续两年最差情绪，流失前的信号）；**treat AI adoption as a sorting risk rather than a productivity win**（同一技术抬升一部分员工、动摇另一部分；胜出的公司会扶起被动摇的那一半而不是丢下他们）。

## 附录：样本构成

- N=5,920（在职 5,332，分析基于在职者）。
- 角色：PM 46.9%、Engineering 12.6%、Founder/Executive 9.1%、Design 7.9%、Operations 4.3%、PMM 4.0%、Research 3.2%、Data/Analytics 2.9%、Sales/GTM 2.8%。
- 级别：IC-Senior 28.9%、IC-Staff/Principal 19.9%、Director 15.4%、Manager 12.1%、Founder/Exec 10.8%、VP+ 7.4%、IC-Early 5.5%（约 54% IC）。
- 公司规模：1-10 人 11.1% 至 10,000+ 18.0%，中段均有代表。
- 办公方式：远程 47%、混合 43%、全办公室 10%。
- 方法注：仅对措辞一致的题做逐年比较；今年未收集年龄、任期、地理，career stage 用 job level 代理。
