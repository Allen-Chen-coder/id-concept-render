# 工业设计审美体系：形态语言、CMF 与标杆锚点

> 第 2 步"定审美方向"使用。目标：把"好看"翻译成可写进提示词的具体语言。

## 目录

- 一、为什么 AI 直出图"丑"：三个典型病因
- 二、形态语言库（form language）
- 三、设计奖项级产品的共性
- 四、CMF 审美原则
- 五、标杆锚点（没有参考图时的风格替代方案）

## 一、为什么 AI 直出图"丑"：三个典型病因

1. **没有形态语言**：提示词只有 "modern / sleek / premium"，模型只能输出训练数据里最常见、最平庸的消费电子脸。
2. **视觉元素互相打架**：圆角与锐角混用、哑光与亮面无逻辑并置、颜色超过 3 种，画面失去统一性。
3. **没有主次**：所有面同等对待，没有视觉重心（一个最强的特征 + 有节制的次要特征 = 高级感）。

**处方**：每个方案锁定 1 个主形态语言 + 至多 1 个辅助语言；CMF 遵守"主色 ≤2、点缀色 ≤1、材质 ≤2"；明确指定一个视觉焦点。

## 二、形态语言库（form language）

每个方向给出：核心词汇（可直接写入提示词）、代表产品气质、适用品类、风险。

### 1. Soft Minimalism 柔和极简
- 词汇：`seamless unibody, rounded continuous surfaces, monolithic volume, soft-touch matte finish, recessed details, no visible screws`
- 气质：安静、可信、家居友好。适用：家居电子、个人护理、医疗消费级。
- 风险：容易平庸——必须加一个记忆点（如一道分型线、一处材质对撞）。

### 2. Neo-Futurism 新未来主义
- 词汇：`sculpted aerodynamic surfaces, parametric texture, floating layered volumes, ambient light accents, dark chrome accents`
- 气质：高性能、科技领导力。适用：电竞、AI 硬件、出行。
- 风险：容易沦为"黑色+RGB"套路；灯带要克制，一处即可。

### 3. Retro-Futurism / Neo-Retro 复古未来
- 词汇：`retro-futuristic, warm off-white and orange accents, tactile chunky buttons, brushed aluminum, Kodachrome product photography vibe`
- 气质：亲和力、怀旧情绪、功能可见性。适用：音频设备、小家电、工具类。
- 风险：做旧过度会变廉价玩具；材质要真（拉丝铝、真旋钮阻尼感）。

### 4. Organic Fluidity 有机流体
- 词汇：`soft liquid-like forms, pebble-inspired silhouette, translucent gradient shell, biomimetic curves`
- 气质：温和、人性化、女性向友好。适用：母婴、健康、香氛个护。
- 风险：形态软弱无骨——需要一个"硬"元素锚定（金属环、玻璃面板）。

### 5. Precision Instrument 精密仪器
- 词汇：`machined aluminum unibody, knurled knobs, precise chamfered edges, anodized finish, technical engraving, visible mechanical structure`
- 气质：专业、可靠、工具感。适用：摄影配件、音频专业设备、测量工具。
- 风险：过度堆细节会显乱；细节服务功能。

### 6. Architectural Monolith 建筑感体块
- 词汇：`bold geometric volumes, strong cantilever, tension between mass and void, split-line as graphic element, stone-like matte texture`
- 气质：高端家居、艺术品气质。适用：音箱、智能家居中枢、显示器底座类。
- 风险：体量感需要光影衬；渲染时要强调单一强光源。

### 7. Transparent Tech 透明科技
- 词汇：`transparent smoked shell revealing internal structure, visible circuit board as aesthetic, gradient tinted acrylic, internal components arranged compositionally`
- 气质：工程自信、极客审美。适用：音频、桌面设备、充电器类。
- 风险：内部结构走线穿帮；要求 `internal components neatly arranged, cable-managed`。

### 组合规则
- 主语言决定 70% 的形态决策；辅助语言只取 1–2 个特征点缀（如 Soft Minimalism 主体 + Precision Instrument 的滚花旋钮）。
- 禁止两个强语言并置（Neo-Futurism + Architectural Monolith 会打架）。

## 三、设计奖项级产品的共性（iF / Red Dot / IDEA 入围者的可迁移特征）

1. **一个清晰的概念句**：整个设计能用一句话说清（"一块悬浮的圆盘"）。生成前先写出这句话，放进提示词的核心位置。
2. **分型线即图形**：接缝、卡扣线不只是工艺痕迹，而是构成设计的一部分（如 unibody 上的一道 CNC 亮边）。
3. **材质对撞有逻辑**：软/硬、哑/亮、暖/冷，对撞用于表达功能分区（握持区软、展示区硬）。
4. **细节密度递减**：视觉焦点处细节最密，越远越简。提示词中明确 `fine details concentrated on [焦点部位]`。
5. **色彩克制的例外**：只有当产品属于儿童、运动、工具品类时才允许高饱和多色。

## 四、CMF 审美原则

- **配色公式**：主色 1–2（大面积壳体）+ 点缀色 1（按键、灯、logo 区）+ 中性色（黑/白/灰缓冲）。写提示词时直接给比例提示，如 `90% matte warm gray, 8% dark graphite, 2% amber accent`。
- **材质即信息**：握持区 = 软质（硅胶、织物、软触漆）；交互区 = 硬质（玻璃、金属、亚克力）；结构区 = 工程感（PC+ABS、裸铝）。
- **高级感关键词**：`fine grain matte texture, tight parting lines, consistent surface quality, subtle anodized hue`。廉价感来源：`glossy plastic, oversaturated color, visible draft lines, uneven gaps`——这些词在负面约束中可用。
- **界面文字**：消费产品屏幕上默认 `minimal clean UI with no readable text`（AI 生成的文字几乎必然乱码）。

## 五、标杆锚点

无参考图时，在提示词中用一句话锚定要接近的已知优秀设计气质（不是抄袭形态，是锚定完成度）。**按产品品类选典范，详见 `design-exemplars.md`**；跨品类快速锚点：

- 苹果系完成度：`Apple-level fit and finish, seamless assembly`
- 戴森系工程感：`Dyson-like engineering precision, exposed functional structure`
- Teenage Engineering 系：`Teenage Engineering playfulness, flat colors, graphic buttons`
- 北欧家居系：`Bang & Olufsen sculptural elegance, aluminum and fabric`
- 无印良品系：`MUJI-like quiet restraint, unassuming material honesty`

一次只锚一个，且放在渲染风格层而非形态层，避免直接复刻。

---

# English Version

> Used in Step 2 "set aesthetic direction". Goal: translate "good-looking" into concrete vocabulary that can go into a prompt.

## I. Why AI renders look "ugly": three typical causes

1. **No form language**: the prompt only has "modern / sleek / premium", so the model outputs the most average consumer-electronics face from its training data.
2. **Visual elements fight each other**: rounded corners mixed with sharp edges, matte next to gloss with no logic, more than 3 colors — the image loses unity.
3. **No hierarchy**: every surface treated equally, no visual focus. (One strongest feature + restrained secondary features = premium feel.)

**Prescription**: lock 1 primary + at most 1 secondary form language per concept; CMF follows "≤2 main colors + ≤1 accent + ≤2 materials"; define one visual focal point.

## II. Form-language library

Each entry: core vocabulary (paste into prompts), product temperament, suitable categories, risks.

1. **Soft Minimalism** — `seamless unibody, rounded continuous surfaces, monolithic volume, soft-touch matte finish, recessed details, no visible screws`. Quiet, trustworthy, home-friendly. For home electronics, personal care, consumer medical. Risk: easily mediocre — add one memory point (a parting line, a material collision).
2. **Neo-Futurism** — `sculpted aerodynamic surfaces, parametric texture, floating layered volumes, ambient light accents, dark chrome accents`. High performance, tech leadership. For gaming, AI hardware, mobility. Risk: collapses into "black + RGB"; keep light strips to one spot.
3. **Retro-Futurism / Neo-Retro** — `retro-futuristic, warm off-white and orange accents, tactile chunky buttons, brushed aluminum, Kodachrome product photography vibe`. Friendly, nostalgic, function-visible. For audio, small appliances, tools. Risk: over-distressing looks cheap; materials must be real (brushed aluminum, knurled knobs).
4. **Organic Fluidity** — `soft liquid-like forms, pebble-inspired silhouette, translucent gradient shell, biomimetic curves`. Gentle, human, female-friendly. For baby, health, fragrance/personal care. Risk: formless mush — anchor with one "hard" element (metal ring, glass panel).
5. **Precision Instrument** — `machined aluminum unibody, knurled knobs, precise chamfered edges, anodized finish, technical engraving, visible mechanical structure`. Professional, reliable, tool-like. For camera accessories, pro audio, measuring tools. Risk: detail overload reads messy; details serve functions.
6. **Architectural Monolith** — `bold geometric volumes, strong cantilever, tension between mass and void, split-line as graphic element, stone-like matte texture`. Premium home, art-object vibe. For speakers, smart-home hubs, monitor stands. Risk: mass needs light and shadow; render with a single strong key light.
7. **Transparent Tech** — `transparent smoked shell revealing internal structure, visible circuit board as aesthetic, gradient tinted acrylic, internal components arranged compositionally`. Engineering confidence, geek aesthetic. For audio, desktop devices, chargers. Risk: internal wiring chaos — require `internal components neatly arranged, cable-managed`.

**Combination rule**: primary language drives 70% of form decisions; secondary contributes only 1–2 accent features (e.g. soft-minimalist body + knurled knob from Precision Instrument). Never pair two strong languages (Neo-Futurism + Architectural Monolith will fight).

## III. Common traits of award-level products (iF / Red Dot / IDEA shortlists)

1. **One clear concept sentence**: the whole design can be stated in one line ("a floating disk"). Write this sentence first and put it at the core of the prompt.
2. **Parting lines as graphics**: seams and snap lines are part of the composition (e.g. a CNC highlight edge on a unibody).
3. **Material collisions with logic**: soft/hard, matte/gloss, warm/cold — collisions express functional zoning (soft grip zone, hard display zone).
4. **Decreasing detail density**: finest details at the focal point, simpler further away — specify `fine details concentrated on [focal part]`.
5. **Color restraint exception**: high-saturation multi-color only for kids, sports, or tools.

## IV. CMF principles

- **Color formula**: 1–2 main (large shell areas) + 1 accent (button, light, logo area) + neutrals (black/white/gray buffer). Give ratios in prompts, e.g. `90% matte warm gray, 8% dark graphite, 2% amber accent`.
- **Material as information**: grip zones = soft (silicone, fabric, soft-touch paint); interaction zones = hard (glass, metal, acrylic); structure zones = engineering feel (PC+ABS, bare aluminum).
- **Premium keywords**: `fine grain matte texture, tight parting lines, consistent surface quality, subtle anodized hue`. Cheapness sources: `glossy plastic, oversaturated color, visible draft lines, uneven gaps` — usable as negative constraints.
- **On-screen text**: consumer screens default to `minimal clean UI with no readable text` (generated text is almost always garbled).

## V. Benchmark anchors

Without reference images, anchor the desired design temperament with one line (not copying form — anchoring finish level). Look up exemplars by product category in `design-exemplars.md`. Quick cross-category anchors:

- Apple-tier finish: `Apple-level fit and finish, seamless assembly`
- Dyson-tier engineering: `Dyson-like engineering precision, exposed functional structure`
- Teenage Engineering: `Teenage Engineering playfulness, flat colors, graphic buttons`
- Scandinavian home: `Bang & Olufsen sculptural elegance, aluminum and fabric`
- MUJI: `MUJI-like quiet restraint, unassuming material honesty`

Anchor only one at a time, placed in the render-style layer (layer 5), not the form layer, to avoid direct replication.
