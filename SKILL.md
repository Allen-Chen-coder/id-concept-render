---
name: id-concept-render
description: 工业设计（ID）产品概念渲染图的定向生成与迭代。当用户要求根据文字描述生成产品外观概念图、产品渲染图、工业设计概念方案，或抱怨 AI 生成的产品图"丑、审美差、不像、没创意"时使用。覆盖三大目标：提升审美（形态语言与调性先行的生成方法）、出图准确性（brief 保真、结构合理、无幻觉细节）、创新性（差异化形态/CMF/结构方向）。配合 image_generation 插件出图。包含渐进式需求访谈剧本，可引导表述不清、不知道从哪开始的用户逐步明确需求。Use for industrial design concept renders, product rendering prompts, AI-generated product images that look ugly or off-brief. Works with any agent that loads SKILL.md skills.
---

# ID 概念渲染：定向出图工作流

AI 直出产品图"丑且不准"的根因是：把审美、保真、创意全部丢给一次生成，提示词只有空泛形容词（"高级、精美、未来感"）。本 skill 把三个目标拆成可执行流程：**先定审美方向 → 结构化提示词 → 生成 → 按清单评审迭代 → 创新变体**。

## 工作流（必须按序执行，不可跳过确认闸门与评审环节）

### 第 1 步：Brief 解构

**先判断 brief 充分性，再决定走访谈还是走假设：**

- **描述模糊**（一两句话、没有结构/用户/成本信息，或用户明确说"不知道怎么说"）→ **走渐进式访谈**：按 `references/intake-questions.md` 的剧本分轮提问——每轮最多 3 题、全部选项化、答过的跳过、答"随便"就给默认值。访谈结束后依次过第 1.5 步（开放补充）和第 1.6 步（确认闸门），再进第 2 步。
- **已有 PRD 或详细描述** → 跳过访谈，直接按下表解构，并把做出的假设逐条列给用户确认。
- **用户任何时刻说"别问了直接出图"** → 立即停止提问，列出全部默认假设，直接进第 2 步。

| 维度 | 要点 |
|---|---|
| 品类与功能 | 产品是什么、核心功能、使用场景 |
| 目标用户与定位 | 消费级/专业级/高端；B端批量采购还是 C端零售（影响商务感与成本） |
| 佩戴/使用方式 | 手持/桌面/穿戴（穿戴需明确佩戴部位与固定机构：夹/挂/腕带/磁吸） |
| 形态语言 | 从 aesthetics.md 中选 1 个主方向 + 1 个辅助方向（见第 2 步） |
| CMF | 主色、材质（哑光/亮面/金属/织物/透明）、工艺暗示 |
| 成本与采购 | 目标售价量级、批量规模、工艺成本上限（决定注塑/CNC/材料选择，见 cost-dfm.md） |
| 约束 | 必须保留的结构（按键、灯、接口、拾音孔）、尺寸量级、禁忌元素 |
| 输出 | 图幅比例（产品图建议 1:1 或 4:3；场景图 16:9）、数量 |

### 第 1.5 步：初步理解复述 + 开放式补充（先邀请，再定稿）

需求了解完毕后，**不要直接出确认单**，先做一次"双向校正"：

1. **说初步理解**：用 3–5 句大白话复述你目前理解到的产品（是什么、给谁用、关键结构、什么感觉），让用户低成本发现偏差。
2. **提开放式问题邀请补充**（1–2 个，问完就停，不连环追问）：
   - 通用收尾："以上是我目前理解到的。你脑子里还有什么想法、细节、参考案例，或者担心我没想到的？随便说，说什么都算数。"
   - 具体开放题（二选一，选与产品更相关的）：
     - "这个产品对你来说最重要的是什么？（比如'戴着别人看不出来'或'一看就很专业'）"
     - "有没有哪个现有产品让你觉得'就是这种感觉'？说说哪里吸引你。"
3. **处理补充**：
   - 有补充 → 整合进理解；补充内容与之前说法矛盾 → 指出矛盾请用户裁决，再进第 1.6 步。
   - 没补充 → 直接进第 1.6 步，不反复追问。
   - 用户说"没了/就按这个来" → 进第 1.6 步。

### 第 1.6 步：理解确认闸门（生图前强制，先确认再动手）

整合完用户补充后、写提示词和生图之前，**必须用简短口语化的话输出最终理解**，等用户确认后才允许进入第 2 步。三条规则：

1. **怎么说**：≤6 行、不用设计术语，按这个格式——
   ```
   我理解你要做的是：一句话产品定义
   给谁用/在哪用：人群 + 场景
   外观上必须有：关键结构清单
   不要出现：禁忌（没有就写"没有特别禁忌"）
   给人的感觉：调性一句话（大白话，如"稳重、不花哨的科技产品"）
   成本/数量：工艺档位 + 出几张
   ```
2. **怎么改**：用户指出问题 → 只改有问题的行，重发行内改动的版本，再次请确认；不相关行原样保留。确认通过前**不写提示词、不生成任何图**。
3. **跳过条件**：用户明确说"不用确认直接出"才跳过；否则一律确认。

### 第 2 步：定审美方向（在写提示词之前）

- 读 `references/aesthetics.md`，根据 brief 选定形态语言（如 soft minimalism / neo-futurism / retro-futurism / organic fluidity 等）和调性关键词。
- **规则：提示词里禁止只写 "beautiful / premium / high-end" 这类空泛词，必须落到具体形态语言词汇**（如 "seamless unibody, continuous curved surfaces, floating volume contrast"）。词汇表见 aesthetics.md。
- 若用户能提供参考图（竞品、获奖产品、 moodboard），用 image_generation 的参考图能力锚定风格；没有参考图时，按 `references/design-exemplars.md` 找到产品所属品类，选 1–2 个设计典范作为标杆锚点写进提示词第 5 层。

### 第 2.5 步：按身份定交付物（同一流程，不同输出组合）

确认闸门前先看用户是谁，交付图组按身份定制（详见 `references/use-scenarios.md`）：

| 用户身份 | 默认交付图组 |
|---|---|
| 创业者 / 产品经理（要拿去找投资或内部汇报） | 1 张主视觉 + 1 张使用场景 + 1 张 CMF/材质特写 |
| 电商卖家（要做上架图） | 1 张白底主图 + 2 张场景图 + 1 张尺寸参照图 |
| 工业设计师（要做提案） | 三视角图（正/侧/45°）+ 1 张细节放大 + 1 张 CMF 板 |
| 硬件工程师（要评估结构可行性） | 三视角图 + 1 张结构/接口细节 + 1 张佩戴/握持场景 |
| 学生 / 爱好者 | 标准流程：主视觉 + 场景图 |

在确认单第 6 行"成本/数量"处把交付图组写清楚，用户确认后即按此出图。

### 第 3 步：构建分层提示词

按 `references/prompt-framework.md` 的六层模板组装提示词：主体定义 → 形态与比例 → CMF → 结构与细节 → 光影与渲染风格 → 构图与镜头。**捷径**：如果产品属于 `references/category-prompts.md` 覆盖的 12 个常见品类，直接调用该品类的骨架包填空（骨架已含品类专属的层级措辞和该品类最易翻车的结构约束），再把六层模板作为校验清单。注意：

- 关键结构（按键数量位置、屏幕、接口）必须逐一点名，否则模型会自由发挥导致不像。
- 需要中文产品语境时，界面文字一律要求 "minimal text" 或留空，避免生成乱码（见 accuracy.md）。
- 每轮迭代只改 1–2 层，其余层原样保留，便于定位问题。

### 第 4 步：生成

- 调用 `image_generation` 插件生成。产品概念图推荐 1:1 或 4:3，单主体；需要展示使用场景时用 16:9。
- 一次生成 2–4 张同提示词变体，先选最优底稿再迭代，不要一次只出一张就交付。
- 需要电商白底图、贴图素材或后期合成时，用 transparent 背景 + PNG 输出；人物/场景图用 opaque。
- 渲染类型按交付物选（预设见 prompt-framework.md 第 5 层）：主视觉/三视角用 photorealistic render；CMF 板用 clean studio render 拼图；发散早期用 marker sketch。

### 第 5 步：评审与迭代（强制，至少 2 轮）

用 `ReadMediaFile` 查看生成结果，对照以下量表逐项打分（1–5），并查 `references/accuracy.md` 的翻车清单。任一项 ≤3 分必须迭代：

| 维度 | 5 分标准 |
|---|---|
| 形态与比例 | 轮廓有记忆点，比例符合品类常识（手持物贴合手、桌面物重心稳），无比例失调部件 |
| 审美调性 | 形态语言统一，与第 2 步选定的方向一致；有获奖产品级别的完成度 |
| CMF 可信度 | 材质光影真实，颜色克制（主色 ≤2 + 点缀色），工艺合理 |
| Brief 保真度 | 关键结构、功能暗示与用户需求一一对应，无多余部件、无结构性错误 |
| 创新性 | 在同品类里有差异化记忆点，但不过度怪异到丧失可用性 |

迭代时把打分最低维度对应的那一层提示词改掉，重新生成；保留每轮图并简短记录改动点，最后向用户展示"初稿 → 终稿"的进化过程。

### 第 6 步：创新变体（用户要"更有创意"或需要方案对比时）

读 `references/innovation.md`，用其中方法在已通过的底稿上生成 2–3 个差异化方向（如：形态重构 / CMF 颠覆 / 结构与交互创新），每个方向单独成组迭代。创新方向必须先口头向用户描述"这个方向改变了什么、为什么成立"，再出图。

## 参考文件索引

- `references/aesthetics.md` — 形态语言体系、设计奖项共性、CMF 审美原则。**第 2 步必读**。
- `references/design-exemplars.md` — 按产品品类分类的设计典范库（12 大品类，54 个标杆及其可迁移提示词短语）。**第 2 步无参考图时按品类查**。
- `references/intake-questions.md` — 渐进式需求访谈剧本：5 轮 13 个带选项的问题、应答话术库、红旗信号。**第 1 步用户表述不清时必读**。
- `references/prompt-framework.md` — 六层提示词模板、每层可用词汇、正反例对比。**第 3 步必读**。
- `references/category-prompts.md` — 12 个常见品类的六层提示词骨架包（填空即用，含品类专属翻车约束）。**第 3 步捷径**。
- `references/use-scenarios.md` — 按用户身份（创业者/电商/设计师/工程师/学生）的交付图组与快速路径。**第 2.5 步必读**。
- `references/accuracy.md` — AI 产品图常见翻车模式与对策、保真检查清单。**第 5 步必读**。
- `references/innovation.md` — 形态/CMF/结构/交互四个层面的创新方法库与案例。**第 6 步必读**。
- `references/cost-dfm.md` — 工艺成本阶梯、低成本高级感手段、穿戴产品专项约束。**Brief 涉及 B端批量/成本目标或穿戴形态时必读（第 1、3、5 步）**。

## 常见请求路由

- "帮我生成 X 产品概念图" → 走完整流程。
- "我想做个产品但说不清 / 不知道从哪里开始" → 第 1 步走 intake-questions.md 访谈剧本，逐轮选项式提问。
- "我是做电商的，帮我出上架图" → 第 2.5 步按 use-scenarios.md 的电商路径出白底主图+场景图+尺寸参照。
- "我要做提案/汇报" → 第 2.5 步按提案路径出主视觉+场景+CMF 特写。
- "这图不好看/不像" → 回到第 2、5 步，先诊断是方向错（审美维度低分）还是执行错（保真维度低分），再迭代。
- "给我几个不同风格方向" → 第 2 步选 2–3 个形态语言，各出一组，再做单方向深挖。

---

# English Version

> **Note**: This is the full English translation of the workflow above. The Chinese and English versions are equivalent — follow whichever you prefer.

## Workflow (execute in order; the confirmation gate and review loops are mandatory)

Ugly, off-brief AI product renders share one root cause: taste, fidelity, and creativity are all crammed into a single generation whose only adjectives are vague ("premium", "futuristic"). This skill splits them into executable steps: **direction first → structured prompts → generate → checklist-based review loops → innovation variants**.

### Step 1 · Brief deconstruction

**Judge brief completeness first, then choose interview or assumptions:**

- **Vague description** (a sentence or two, no structure/user/cost info, or the user says "I don't know how to explain") → **run the progressive interview**: follow the script in `references/intake-questions.md` — max 3 questions per round, all multiple-choice, skip answered dimensions, give defaults when the user says "whatever". After the interview, run Steps 1.5 (open supplement) and 1.6 (confirmation gate), then move to Step 2.
- **PRD or detailed description available** → skip the interview; deconstruct directly against the table below and list every assumption for the user to confirm.
- **User says "stop asking, just render" at any point** → stop asking, list all default assumptions, and go straight to Step 2.

| Dimension | What to capture |
|---|---|
| Category & function | What the product is, core function, usage scenario |
| Target user & positioning | Consumer / pro / premium; B2B bulk purchase or C-end retail (affects business look and cost) |
| Wear / usage mode | Handheld / desktop / wearable (for wearables: exact body location and fastening mechanism — clip / hang / strap / magnetic) |
| Form language | 1 primary + 1 secondary direction from aesthetics.md (see Step 2) |
| CMF | Main color, materials (matte / gloss / metal / fabric / transparent), process hints |
| Cost & procurement | Target price tier, volume, process cost ceiling (decides injection molding vs CNC vs materials — see cost-dfm.md) |
| Constraints | Must-keep structures (buttons, lights, ports, mic holes), size magnitude, forbidden elements |
| Output | Aspect ratio (1:1 or 4:3 for product shots; 16:9 for scenes), quantity |

### Step 1.5 · Play back + open-ended supplement (invite before finalizing)

After gathering requirements, **do not jump straight to the confirmation sheet** — run a two-way correction first:

1. **Play back your preliminary understanding** in 3–5 plain sentences (what it is, who uses it, key structures, the vibe) so the user can spot gaps cheaply.
2. **Ask 1–2 open-ended questions**, then stop:
   - General closer: "That's what I have so far. Any ideas, details, reference products, or worries I haven't asked about? Anything counts."
   - Specific (pick one): "What matters most to you about this product?" / "Is there an existing product that feels like 'that's the vibe'? What draws you to it?"
3. **Handle supplements**: integrate them; if they contradict earlier answers, flag the conflict and ask the user to arbitrate, then go to Step 1.6. If none: proceed to Step 1.6 without pressing.

### Step 1.6 · Understanding confirmation gate (mandatory before rendering)

After integrating supplements and before writing prompts or generating anything, **state the final understanding in plain, short language** and wait for confirmation. Rules:

1. **Format** — ≤6 lines, no design jargon:
   ```
   What I understand you're making: one-sentence product definition
   Who/where: user + scenario
   Must have on the outside: key structure list
   Must NOT appear: taboos (write "no particular taboos" if none)
   The feel: one plain sentence (e.g. "a steady, unflashy tech product")
   Cost/quantity: process tier + how many images
   ```
2. **Revisions**: if the user flags issues → change only those lines, re-issue the sheet, confirm again; keep other lines untouched. **No prompts and no images before confirmation passes.**
3. **Skip condition**: only if the user explicitly says "skip confirmation, render directly".

### Step 2 · Set aesthetic direction (before writing prompts)

- Read `references/aesthetics.md` and pick a form language (soft minimalism / neo-futurism / retro-futurism / organic fluidity / etc.) plus tone keywords.
- **Rule: never use empty adjectives like "beautiful / premium / high-end" in prompts — always concrete form-language vocabulary** (e.g. "seamless unibody, continuous curved surfaces, floating volume contrast"). See the vocabulary in aesthetics.md.
- If the user provides reference images (competitors, award winners, moodboards), anchor style via the image_generation reference-image feature; otherwise open `references/design-exemplars.md`, find the product's category, and use 1–2 exemplars as benchmark anchors in prompt layer 5.

### Step 2.5 · Tailor deliverables to user identity (same workflow, different output sets)

Before the confirmation gate, identify who the user is and customize the deliverable image set by identity (details in `references/use-scenarios.md`):

| User identity | Default deliverable set |
|---|---|
| Founder / product manager (pitching to investors or reporting internally) | 1 hero shot + 1 usage scene + 1 CMF/material close-up |
| E-commerce seller (listing images) | 1 white-background hero + 2 scene shots + 1 size-reference shot |
| Industrial designer (proposal) | Three views (front / side / 45°) + 1 detail zoom + 1 CMF board |
| Hardware engineer (assessing structural feasibility) | Three views + 1 structure/port detail + 1 wearing/grip scene |
| Student / hobbyist | Standard flow: hero shot + scene shot |

Write the deliverable set into line 6 ("cost/quantity") of the confirmation sheet; once confirmed, render to that set.

### Step 3 · Build the layered prompt

Assemble the prompt with the six-layer template in `references/prompt-framework.md`: subject → form & proportion → CMF → structure & details → lighting & render style → composition & camera. **Shortcut**: if the product belongs to one of the 12 categories covered by `references/category-prompts.md`, fill in that category's skeleton pack directly (it already contains category-specific layer phrasing and the structural constraints most likely to fail in that category), then use the six-layer template as a verification checklist. Notes:

- Name every key structure (button count/position, screen, ports) explicitly, or the model freelances and the result won't match the brief.
- For Chinese product contexts, demand "minimal text" or blank UI on screens to avoid garbled glyphs (see accuracy.md).
- Change only 1–2 layers per iteration; keep the rest verbatim so effects can be attributed.

### Step 4 · Generate

- Call the `image_generation` plugin. Product shots: 1:1 or 4:3, single subject; scene shots: 16:9.
- Generate 2–4 variants of the same prompt per round, pick the best base — never deliver a single image from one shot.
- For e-commerce white-background cutouts or compositing assets, use transparent background + PNG; use opaque for people/scenes.
- Pick the render type by deliverable (presets in prompt-framework.md layer 5): photorealistic render for hero shots and three-view sheets; clean studio render collages for CMF boards; marker sketch for early divergence.

### Step 5 · Review and iterate (mandatory, ≥2 rounds)

View results with `ReadMediaFile` and score 1–5 on each dimension below, plus the failure checklist in `references/accuracy.md`. Any dimension ≤3 must be iterated:

| Dimension | 5-point standard |
|---|---|
| Form & proportion | Memorable silhouette; category-common-sense proportions (handheld fits hands, desktop has stable mass); no distorted parts |
| Aesthetic tone | Unified form language matching Step 2; award-level finish |
| CMF credibility | Realistic material lighting; restrained color (≤2 main + 1 accent); plausible processes |
| Brief fidelity | Key structures and functional cues map 1:1 to the request; no extra parts, no structural errors |
| Innovation | Differentiated memory point within the category, without becoming unusably weird |

Iterate by editing only the prompt layers behind the lowest-scoring dimension; keep every round's images and a one-line change log; show the user the "draft → final" evolution at the end.

### Step 6 · Innovation variants (when the user asks for "more creative" or option comparison)

Read `references/innovation.md` and generate 2–3 differentiated directions from the approved base (e.g. form reconstruction / CMF subversion / structure & interaction innovation), each iterated as its own group. Before rendering a direction, describe it to the user in words: "what this changes and why it works".

## Reference index

- `references/intake-questions.md` — Progressive interview script: 13 option-based questions in 5 rounds, response playbook, red-flag signals. **Required reading at Step 1 when the user is vague.**
- `references/aesthetics.md` — Form-language system, award-winner common traits, CMF principles. **Required at Step 2.**
- `references/design-exemplars.md` — 54 design exemplars in 12 categories with migratable prompt phrases. **Look up by category at Step 2 when no reference images.**
- `references/category-prompts.md` — Six-layer prompt skeleton packs for 12 common categories (fill-in-the-blank, with category-specific failure constraints). **Shortcut at Step 3.**
- `references/use-scenarios.md` — Deliverable image sets and fast paths by user identity (founder / e-commerce / designer / engineer / student). **Required at Step 2.5.**
- `references/prompt-framework.md` — Six-layer prompt template, per-layer phrase bank, negative-constraint library, good/bad examples. **Required at Step 3.**
- `references/accuracy.md` — Failure modes & fixes, structural error checklist, fidelity checklist. **Required at Step 5.**
- `references/innovation.md` — Innovation methods across form/CMF/structure/interaction. **Required at Step 6.**
- `references/cost-dfm.md` — Process cost ladder, low-cost premium tricks, wearable-specific constraints. **Required whenever the brief involves B2B volume, cost targets, or wearables (Steps 1, 3, 5).**

## Request routing

- "Generate a concept render of X" → full workflow.
- "I want to make a product but can't articulate it / don't know where to start" → Step 1 runs the intake-questions.md interview script.
- "I'm an e-commerce seller, make me listing images" → Step 2.5, e-commerce path in use-scenarios.md: white-background hero + scene shots + size reference.
- "I need a proposal / deck for a pitch" → Step 2.5, proposal path: hero shot + scene + CMF close-up.
- "This render looks bad / doesn't match" → back to Steps 2 & 5: diagnose direction error (low aesthetic score) vs execution error (low fidelity score), then iterate.
