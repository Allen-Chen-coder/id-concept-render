# 成本约束与可制造性（Cost / DFM）：B端批量产品与穿戴形态专项

> Brief 涉及 B端批量采购、目标售价、成本上限或穿戴形态时，在第 1（解构）、3（提示词 CMF/结构层）、5（评审）步使用。核心原则：**先定成本档位再谈 CMF，便宜不等于廉价**。

## 目录

- 一、工艺成本阶梯（从高到低）
- 二、按目标售价倒推外壳预算
- 三、低成本做出高级感的手段
- 四、穿戴产品专项约束（无感佩戴）
- 五、B端商务调性的 CMF 边界
- 六、渲染图中的成本表达（提示词写法）

## 一、工艺成本阶梯（单件外壳成本量级，批量 1K–100K）

| 工艺 | 成本 | 说明 |
|---|---|---|
| 注塑 PC+ABS / PC（喷手感漆或免喷涂） | 最低 | B端批量默认选项；模具前期投入摊薄后单件极低 |
| 钣金冲压 + 折弯（铝/钢） | 低 | 适配扁平形态（工牌、夹板类） |
| 压铸铝合金 + 喷砂氧化 | 中 | 有金属体量感，模具费中等 |
| CNC 铝（单件/小批量） | 高 | 批量生产的成本毒药；只用于 ≤10% 面积的点缀件（旋钮、环、铭牌） |
| 多色注塑 / 双料注塑（overmolding） | 中高 | 软胶握持区好用但开模贵；成本敏感时改用装配式 TPE 件或取消 |
| 二次加工（喷涂、电镀、IML） | 叠加 | 每多一道工序单件成本叠加；B端批量优先"一次成型即成品"（免喷涂料 + 模具蚀纹） |

规则：**主壳永远选阶梯最底层的工艺，把预算集中在一个"触点级"高级件**（用户手指一定会碰到的那一处：一个旋钮、一道环、一个按键帽）。

## 二、按目标售价倒推外壳预算

- 经验比例：硬件 BOM ≈ 零售价的 25%–35%（B端微利走量模式取低值）。
- 例：零售 200–300 元的走量硬件 → BOM 约 60–100 元 → 外壳结构件（含模具摊销）通常只允许占 BOM 的 10%–20%，即**个位数到十几元/台**量级 → 注塑主壳 + 至多一处小型金属点缀是上限。
- 把这条算给用户看：如果渲染图里出现了全 CNC 铝壳、双料注塑、玻璃盖板三件套，这张图在成本档上就不可制造。

## 三、低成本做出高级感的手段（成本几乎为零，出图时主动用）

1. **模具蚀纹**：`fine mold-textured matte finish` 防指纹、遮瑕疵，比亮面塑料显贵——成本为 0。
2. **分型线设计为图形**：让分模线落在设计好的环线上（`parting line aligned with the decorative groove`），把工艺痕迹变成造型元素。
3. **单一纯色 + 结构光影**：无喷涂的纯色注塑 + 大圆角产生的自然高光带，比廉价喷涂耐看。
4. **一处金属触点**：一个铝合金按键帽或装饰环（`single anodized aluminum accent ring`）就能撑起整机的"用料感"。
5. **隐藏一切廉价感来源**：螺丝藏进卡扣、指示灯藏进遮光缝（`concealed screw, hidden snap-fit assembly`）。

## 四、穿戴产品专项约束（无感佩戴）

- **重量**：领夹/胸挂类目标 <20 g（约 3–4 枚一元硬币），腕戴类 <30 g。渲染时若有尺度参照（衣领、衬衫、手腕），体型要跟着重量走——又大又厚必然重。
- **固定机构必须在图里成立**：领夹类要画出夹子的可信度（背夹弹簧、咬合量、与体块的连接），磁吸类要有对应触点/充电区，腕带类要有表耳与腕带穿入逻辑。机构不允许"悬空挂"（见 accuracy.md 结构清单）。
- **人体贴合**：接触面为小曲率弧面或球面；边缘全部 R 角过渡，不能有棱线压肉。
- **灯效克制但可见**：穿戴设备的状态灯用"光环缝 / 光导条 / 透光 Logo"形式（`breathing light glow through a thin light-guide slot`），而不是一颗裸 LED 灯珠——裸灯珠在商务产品上显廉价且刺眼。
- **声/热孔位**：麦克风孔、扬声器孔要在渲染图中有位置逻辑（多麦克风阵列沿边缘均布），孔径与形态匹配（弧形孔阵、针孔网格）。
- **充电**：B端批量场景优先磁吸触点或底部 USB-C；图中要交代得通。

## 五、B端商务调性的 CMF 边界

- 安全配色：石墨灰 / 深空灰 / 藏蓝 / 米白 + 至多一处点缀色（状态灯色或品牌色）。
- 禁忌：高饱和多色、RGB 灯效（呼吸灯除外且仅限单一色温/单色彩）、镜面大面积电镀、卡通圆角比例。
- 灯的语义：状态灯颜色即状态语言（录音中/待机/低电），渲染图若画灯，必须只亮一个语义、其余熄灭——全亮等于没设计。

## 六、渲染图中的成本表达（提示词写法）

- 外壳：`matte injection-molded PC+ABS shell, fine mold texture`（默认 B端批量）。
- 点缀（仅一处）：`single small anodized aluminum button cap` / `thin aluminum accent ring`。
- 避免写出成本毒药组合：`full aluminum unibody, CNC-machined enclosure, glass front and back`——除非用户明确高端定位。
- 在交付说明里标注："本方案按注塑主壳 + 一处铝点缀估算，单件外壳成本在 [X] 元量级"，让审美决策和成本决策同时可见。

---

# English Version

> Read whenever a brief involves B2B bulk purchasing, target price, cost ceilings, or wearable form factors — at Steps 1 (deconstruction), 3 (CMF/structure layers), and 5 (review). Core principle: **set the cost tier before choosing CMF — cheap doesn't have to look cheap**.

## I. Process cost ladder (per-unit casing cost, volumes 1K–100K)

| Process | Cost | Notes |
|---|---|---|
| Injection-molded PC+ABS / PC (soft-touch painted or paint-free) | Lowest | Default for B2B volume; high mold investment amortized to near-zero per unit |
| Sheet-metal stamping + bending (aluminum/steel) | Low | Fits flat forms (badges, plates) |
| Die-cast aluminum + sandblasted anodizing | Medium | Metallic mass feel; moderate tooling cost |
| CNC aluminum (one-off / small batches) | High | The cost poison of mass production; use only for ≤10%-area accents (knob, ring, badge) |
| Multi-color / overmolding | Medium-high | Great soft-grip zones but expensive molds; when cost-sensitive, use assembled TPE parts or skip |
| Secondary processes (spray coating, plating, IML) | Additive | Every added process stacks unit cost; prefer "one-shot finish" for B2B (paint-free material + mold texture) |

Rule: **the main shell always uses the bottom of the ladder; concentrate the budget on one "touch-level" premium part** (the one spot the user's fingers definitely touch: a knob, a ring, a button cap).

## II. Back-calculate casing budget from retail price

- Rule of thumb: hardware BOM ≈ 25%–35% of retail price (take the low end for thin-margin volume models).
- Example: a ¥200–300 volume product → BOM ≈ ¥60–100 → casing (incl. mold amortization) is usually capped at 10%–20% of BOM, i.e. **single-digit to low-teens yuan per unit** → injection-molded main shell + at most one small metal accent is the ceiling.
- Show users this math: if a render shows a full CNC aluminum shell, two-shot molding, and glass front+back, that image is unmanufacturable at the target tier.

## III. Zero-cost ways to look premium (use proactively when rendering)

1. **Mold texture**: `fine mold-textured matte finish` — fingerprint-hiding, blemish-masking, and it reads more expensive than glossy plastic. Zero cost.
2. **Parting line as graphics**: place the mold line along a designed ring (`parting line aligned with the decorative groove`) — turn a process trace into a styling element.
3. **Single solid color + structural light and shadow**: paint-free solid-color injection + natural highlight bands from generous radii age better than cheap spray jobs.
4. **One metal touch point**: a single aluminum button cap or accent ring (`single anodized aluminum accent ring`) carries the whole product's "material honesty" feeling.
5. **Hide every cheapness source**: screws hidden in snap-fits; indicator lights hidden in light-mask slots (`concealed screw, hidden snap-fit assembly`).

## IV. Wearable-specific constraints (imperceptible wear)

- **Weight**: clip/collar types target <20 g (about 3–4 one-yuan coins); wrist-worn <30 g. If a scale reference appears (collar, shirt, wrist), the volume must match the weight — big and thick means heavy.
- **Fastening must be drawn believably**: clips need visible spring/bite depth/connection to the body; magnetic types need matching contacts/charging zones; straps need lugs and strap-feed logic. Never "floating suspension".
- **Body fit**: contact surfaces are small-curvature arcs or spheres; all edges R-transitioned — no edges pressing flesh.
- **Restrained but visible light**: status lights as "light-ring slots / light guides / translucent logo" (`breathing light glow through a thin light-guide slot`), never a bare LED bead — bare beads read cheap and harsh on business products.
- **Acoustic/thermal openings**: mic/speaker holes need positional logic in the render (multi-mic arrays evenly along edges), hole size matched to form (arc arrays, pinhole grids).
- **Charging**: B2B volume scenarios prefer magnetic contacts or bottom USB-C; the image must account for it.

## V. B2B business-tone CMF boundaries

- Safe palettes: graphite / space gray / navy / off-white + at most one accent (status-light color or brand color).
- Taboos: high-saturation multi-color, RGB lighting (breathing lights excepted, and only single-color-temperature/single-hue), large mirror-plated areas, cartoonish corner ratios.
- Light semantics: status-light colors ARE the status language (recording/idle/low-battery); if a render shows a light, exactly one semantic glows, the rest stay off — all-on equals no design.

## VI. Expressing cost in renders (prompt phrasing)

- Shell: `matte injection-molded PC+ABS shell, fine mold texture` (default for B2B volume).
- Accent (one only): `single small anodized aluminum button cap` / `thin aluminum accent ring`.
- Avoid cost-poison combos: `full aluminum unibody, CNC-machined enclosure, glass front and back` — unless the user explicitly positions premium.
- In delivery notes, annotate: "This concept is estimated as injection-molded main shell + one aluminum accent; per-unit casing cost in the [X] yuan range" — make the aesthetic decision and the cost decision visible at the same time.
