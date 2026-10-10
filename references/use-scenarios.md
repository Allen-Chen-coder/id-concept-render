# 使用场景库（use-scenarios）：按身份给路径，按身份给图组

> 第 2.5 步使用。同一个 skill，不同身份的人要的东西完全不同：创业者要"能讲的故事"，电商要"能上架的图"，工程师要"能评估的结构"。识别身份 → 走对应路径，不要拿同一套图糊弄所有人。

## 一、五种身份速查

| 身份 | 识别信号 | 必问的一个补充问题 | 默认交付图组 | 交付说明重点 |
|---|---|---|---|---|
| 创业者 / 产品经理 | "要拿去融资/汇报""做个 PPT 用" | "这张图要讲给谁听？投资人还是内部？" | ① 主视觉（1:1）② 使用场景（16:9）③ CMF/材质特写（1:1） | 讲清设计概念句和差异化记忆点，一句话能复述 |
| 电商卖家 | "做上架图""做主图""亚马逊/淘宝用" | "平台要求白底还是场景图？尺寸规格？" | ① 白底主图（transparent PNG）② 场景图 ×2（居家/手持）③ 尺寸参照图（产品+手/常见物） | 提醒：文字卖点后期加，生成图只出产品本体；留好透明底方便排版 |
| 工业设计师 | "做提案""给客户看方案""设计说明" | "需要 CMF 板和三视图吗？要不要发散草图？" | ① 三视角（正/侧/45°，同一提示词改 layer 6）② 细节放大（macro close-up）③ CMF 板（材质平铺+产品小图，clean studio render） | 给出形态语言选择理由 + 每次迭代的改动记录（提案要过程） |
| 硬件工程师 | "评估下能不能做""结构可行吗" | "哪些结构是必须评估的？按键/接口/散热？" | ① 三视角 ② 结构/接口细节 macro ③ 握持/佩戴场景（受力与操作验证） | 标注工艺假设（注塑/CNC/钣金）与成本档，提示渲染图≠工程图 |
| 学生 / 爱好者 | "做着玩""交作业""学习" | 无（走标准流程即可） | ① 主视觉 ② 场景图 | 鼓励走完整流程，迭代记录就是作业素材 |

## 二、图组的提示词差异（同一产品，换 layer 6 出不同图）

- **三视角图**：冻结层 1–5 逐字不动，只改层 6——`straight front view` / `pure side view` / `three-quarter view`，并要求 `orthographic consistency, same lighting across views`。三张图分开生成，不要要求一张图里画三视图（模型会画乱）。
- **白底主图**：层 6 改 `centered on pure white background, soft shadow beneath, e-commerce product photography`，transparent PNG 输出。
- **CMF 板**：提示词改为 `CMF moodboard: flat lay of [materials] swatches — [matte polymer], [anodized aluminum], [fabric] — with a small product render in the corner, clean studio render`。
- **尺寸参照图**：层 6 加 `held in an average adult hand` 或 `next to a common object for scale`。
- **场景图**：层 5/6 换成生活光 `natural window light, lifestyle photography`，背景 `blurred [kitchen/office/bedroom] background`。

## 三、按身份的流程微调

- **创业者**：第 6 步创新变体优先——投资人要看到"为什么是你们"。建议固定出 2 个方向对比。
- **电商**：第 5 步评审把"平台合规"加进去：白底图主视觉居中、无文字、无道具喧宾夺主；场景图不得出现误导性尺寸暗示。
- **设计师**：第 3 步后追加一步"过程留痕"——每轮图 + 改动一句，最后打包进提案附录。
- **工程师**：第 5 步评审重点看 accuracy.md 的结构清单；交付时显式列出"渲染图未验证：内部堆叠/散热/壁厚"。
- **学生**：无微调，完整流程就是最好的练习。

---

# English Version

> Used at Step 2.5. The same skill serves very different needs: founders want "a story to tell", sellers want "images that can go live", engineers want "structures they can assess". Identify the persona → follow the matching path. Never hand everyone the same image set.

## I. Five-persona quick table

| Persona | Recognition signal | One must-ask follow-up | Default deliverable set | Delivery-note focus |
|---|---|---|---|---|
| Founder / PM | "for a pitch deck / internal review" | "Who will see this image — investors or internal stakeholders?" | ① hero shot (1:1) ② usage scene (16:9) ③ CMF close-up (1:1) | State the concept sentence and the differentiating memory point — repeatable in one line |
| E-commerce seller | "for product listing / main image / Amazon-Taobao" | "White background or lifestyle? Platform size specs?" | ① white-background main image (transparent PNG) ② lifestyle scenes ×2 (home / in-hand) ③ size-reference image (product + hand/object) | Note: copy and selling points are added in post — generated images contain the product only; transparent PNG eases layout |
| Industrial designer | "for a client proposal / design review" | "Need a CMF board and three views? Divergent sketches?" | ① three views (front / side / 45°, via layer-6 swaps) ② detail macro ③ CMF board (material flat-lay + small render, clean studio render) | Explain form-language rationale + per-round change log (proposals need process) |
| Hardware engineer | "can this be manufactured?" "structure feasible?" | "Which structures must be evaluated — buttons / ports / thermal?" | ① three views ② structure/port macro ③ grip/wear scene (load & operation check) | State process assumptions (injection/CNC/sheet metal) and cost tier; warn that renders ≠ engineering drawings |
| Student / hobbyist | "for fun / homework / learning" | None (standard flow) | ① hero shot ② scene image | Encourage the full workflow — the iteration log is homework material |

## II. Prompt differences per image type (same product, swap layer 6)

- **Three views**: freeze layers 1–5 verbatim, change only layer 6 — `straight front view` / `pure side view` / `three-quarter view`, requiring `orthographic consistency, same lighting across views`. Generate the three images separately; never ask for one image containing all three views (the model mangles them).
- **White-background main image**: layer 6 → `centered on pure white background, soft shadow beneath, e-commerce product photography`; transparent PNG output.
- **CMF board**: prompt → `CMF moodboard: flat lay of [materials] swatches — [matte polymer], [anodized aluminum], [fabric] — with a small product render in the corner, clean studio render`.
- **Size-reference image**: layer 6 adds `held in an average adult hand` or `next to a common object for scale`.
- **Lifestyle scene**: layers 5/6 → `natural window light, lifestyle photography` + `blurred [kitchen/office/bedroom] background`.

## III. Per-persona flow tweaks

- **Founder**: prioritize Step 6 innovation variants — investors need to see "why you". Default to a 2-direction comparison.
- **Seller**: add "platform compliance" to Step 5 review: main image centered on white, no text, no props stealing focus; lifestyle images must not imply misleading sizes.
- **Designer**: after Step 3, add a "process trail" — every round's image + one-line change note, packaged as a proposal appendix.
- **Engineer**: Step 5 review focuses on the accuracy.md structural checklist; delivery must explicitly list "not validated by render: internal stacking / thermal / wall thickness".
- **Student**: no tweaks — the full workflow is the practice.
