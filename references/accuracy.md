# 出图准确性：翻车模式、对策与保真清单

> 第 5 步评审使用。目标：系统性地把"不像、不合理、乱细节"从结果里清出去。

## 目录

- 一、六类翻车模式与对策
- 二、结构性错误清单（看图强检）
- 三、Brief 保真清单
- 四、文字与界面处理规则

## 一、六类翻车模式与对策

| # | 翻车模式 | 表现 | 对策（改提示词哪一层） |
|---|---|---|---|
| 1 | 结构幻觉 | 莫名多出的按钮、屏幕、开孔；按键位置违反操作逻辑 | 第 4 层逐一点名 + 用 `exactly`、`only`、`no visible ... on the front` 约束 |
| 2 | 比例失调 | 手持物巨大、桌面物轻浮、部件大小关系反常识 | 第 1、2 层加尺度锚：`handheld scale`、`next to a hand/laptop for scale` |
| 3 | 物理不可行 | 悬浮件无支撑、透明件无厚度、铰链位置错、散热孔封死 | 第 4 层补结构逻辑词：`structurally plausible, visible hinge mechanism`；生成后按第二节清单逐查 |
| 4 | 细节漂移 | 每轮生成的按键数量/位置不一样 | 把关键结构描述冻结成固定短语，迭代时不许改第 4 层 |
| 5 | 文字乱码 | 屏幕上、机身上出现扭曲伪文字 | 全部界面要求 `no readable text` / `blank screen`；机身 logo 区留空后期加 |
| 6 | 风格串味 | 圆角机体长出锐角散热口、哑光壳配廉价亮面件 | 回到第 2 步，检查是否违反了"1 主 1 辅"语言规则；第 3 层材质不超过 2 种 |

## 二、结构性错误清单（看图时逐项检查）

用 `ReadMediaFile` 查看成图后，按此清单过一遍：

- [ ] 支撑：每个悬空部件是否有连接/支撑逻辑？
- [ ] 开合：盖子、翻盖、抽屉的铰链/滑轨位置是否合理？
- [ ] 握持：手持产品是否有合理的受力面和握持区？
- [ ] 散热/出声：密闭壳体上的扬声器孔、散热孔是否存在且位置合理？
- [ ] 接口：充电口位置在使用场景下是否顺手（不在底面正中承重处）？
- [ ] 分件：外壳分件线是否连贯、是否穿过不该断的面（如屏幕）？
- [ ] 左右对称性失误：对称产品是否出现不对称的孔位/按钮（除非设计如此）？
- [ ] 数量：brief 点名的结构数量是否一致（一个旋钮就是一个旋钮）？
- [ ] 穿戴固定机构（穿戴产品）：夹/挂/腕带是否画出了可信的固定逻辑？是否存在悬空悬挂？
- [ ] 佩戴尺度（穿戴产品）：与人体参照（衣领/手腕/衬衫）的比例是否可信？接触面是否圆滑？
- [ ] 灯的语义（带灯产品）：状态灯是否只亮一个语义？灯的形式是否克制（光缝/光导，非裸灯珠）？

任一项有问题 → 记录具体部件 → 在下一轮第 4 层加入针对性约束（如 `hinge on the top edge, lid rotates backward`）。

## 三、Brief 保真清单

交付前对照用户需求逐条核对：

- [ ] 每个"必须有"的结构都可见且位置合理
- [ ] 每个"不要"的元素都不存在（把禁忌写成提示词否定约束）
- [ ] 品类常识未被破坏（咖啡机要有出水逻辑、吹风机要有风道逻辑）
- [ ] 目标用户场景匹配（儿童产品无尖锐棱、专业产品无玩具感配色）
- [ ] 尺寸量级正确（参考物：手、桌面、笔——场景中必须有至少一个尺度参照）

## 四、文字与界面处理规则

1. AI 生成的任何文字默认视为乱码风险。提示词中所有屏幕/显示区域一律写：
   `blank dark screen` 或 `minimal UI with abstract shapes, no readable text`。
2. 机身需要 logo/丝印时，留空并在交付说明中告诉用户"丝印位已留空，可后期加"。
3. 如果用户明确要求界面内容（如 APP 截图级保真），文字必须在后期排版工具中叠加，不靠生成。

---

# English Version

> Used in Step 5 review. Goal: systematically eliminate "doesn't match / illogical / messy details" from results.

## I. Six failure modes and fixes

| # | Mode | Symptom | Fix (which prompt layer) |
|---|---|---|---|
| 1 | Structural hallucination | Extra buttons, screens, openings appear; button positions violate operation logic | Layer 4: name each + constrain with `exactly`, `only`, `no visible ... on the front` |
| 2 | Proportion error | Handheld looks giant, desktop looks floaty, part size relationships defy common sense | Layers 1–2: add scale anchors: `handheld scale`, `next to a hand/laptop for scale` |
| 3 | Physical impossibility | Floating parts without support, transparent parts without thickness, hinge in the wrong place, vents sealed shut | Layer 4: add structural-logic words: `structurally plausible, visible hinge mechanism`; then check against Section II |
| 4 | Detail drift | Button count/position differs every round | Freeze key-structure descriptions into fixed phrases; don't touch Layer 4 during iteration |
| 5 | Text garble | Warped pseudo-text on screens or body | All interfaces: `no readable text` / `blank screen`; leave logo areas blank for post-production |
| 6 | Style bleed | Rounded body grows sharp vents; matte shell paired with cheap glossy parts | Back to Step 2: check the "1 primary + 1 secondary" language rule; Layer 3: max 2 materials |

## II. Structural error checklist (run per image)

After viewing with `ReadMediaFile`, walk this checklist:

- [ ] Support: does every floating part have a connection/support logic?
- [ ] Open/close: are hinge/slide positions of lids, flaps, drawers plausible?
- [ ] Grip: does a handheld product have a believable load-bearing surface and grip zone?
- [ ] Venting/sound: do speaker or heat vents on sealed shells exist and sit logically?
- [ ] Ports: is the charging port conveniently placed (not dead-center on a load-bearing bottom face)?
- [ ] Parting: are shell seams continuous, and do they avoid crossing surfaces that shouldn't break (e.g. a screen)?
- [ ] Symmetry slips: symmetric products without unintended asymmetric holes/buttons (unless designed so)?
- [ ] Counts: do named structures match the brief (one knob means one knob)?

Any failure → note the exact part → add a targeted constraint to Layer 4 next round (e.g. `hinge on the top edge, lid rotates backward`).

Additional wearable checks: is the fastening mechanism (clip/strap/magnet) drawn believably (no floating suspension)? Is scale plausible against a body reference (collar/wrist/shirt)? Is the light's semantics singular (light-guide slot, not a bare LED)?

## III. Brief-fidelity checklist (run before delivery)

- [ ] Every "must-have" structure is visible and plausibly placed
- [ ] Every "must-not" element is absent (taboos written as prompt negations)
- [ ] Category common sense intact (an espresso maker has a brewing logic; a dryer has an airflow logic)
- [ ] Target-user scenario match (kids' products have no sharp edges; pro products have no toy-like colors)
- [ ] Size magnitude correct (scene includes at least one scale reference: hand, desk, pen)

## IV. Text & UI rules

1. Treat any AI-generated text as garble risk. All screen/display areas in prompts read:
   `blank dark screen` or `minimal UI with abstract shapes, no readable text`.
2. When the body needs a logo/print, leave it blank and note in delivery: "print area left blank — can be added in post".
3. If the user explicitly demands interface content (app-screenshot fidelity), text must be composited in a layout tool afterwards — never by generation.
