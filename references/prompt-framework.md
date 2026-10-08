# 六层提示词框架：模板、词汇与正反例

> 第 3 步使用。目标：把 brief 变成结构化的生成指令，让每一轮迭代可定位、可复现。

## 目录

- 一、六层模板
- 二、每层可用词汇速查
- 三、正反例对比
- 三B、否定约束短语库
- 四、迭代改词规则

## 一、六层模板

按顺序组装，层与层之间用逗号或换行连接。写完后自查：每层是否回答了它的问题？

```
[第1层 主体] 产品是什么 + 品类常识锚定
    "a portable espresso maker"（不要只写 "a device"）

[第2层 形态与比例] 形态语言词汇（来自 aesthetics.md 第2步选定的方向）+ 体量关系
    "compact cylindrical body with a single hemispherical control knob dominating the top surface"

[第3层 CMF] 配色比例 + 材质 + 工艺
    "90% matte warm-gray polymer, 10% brushed stainless steel brew head, fine texture"

[第4层 结构与细节] 逐一点名关键结构：按键数量与位置、屏幕、接口、开孔、分件线
    "one recessed power button on the side, USB-C port on the rear, hidden seam along the base"

[第5层 光影与渲染风格] 影棚光 + 表面质量词 + 渲染类型
    "studio product photography, softbox key light with subtle rim light, hyper-detailed octane render"

[第6层 构图与镜头] 视角 + 背景 + 画幅
    "three-quarter hero view, floating on seamless light-gray background, centered composition"
```

渲染类型按需求选：
- 概念阶段：`photorealistic product render`（默认，判断形态 CMF 最准）
- 强调设计纯粹感：`clean studio render`
- 强调手绘发散感：`industrial design marker sketch rendering`（发散早期用）

## 二、每层可用词汇速查

**第 2 层 体量关系**（比例常识的核心）：
- 手持：`handheld scale, grip-friendly diameter, weight-distributed lower half`
- 桌面：`stable low center of gravity, footprint-friendly`
- 比例描述：`golden-ratio proportion, elongated 3:1 silhouette, squat 1:1 monolithic form`

**第 4 层 细节控制**：
- 防自由发挥：`exactly one button`, `no visible ports on the front face`
- 分型线：`tight 0.5mm parting line along the equator`
- 屏幕：`minimal dark UI screen with no readable text`

**第 5 层 打光**：
- 默认安全：`soft key light, gentle gradient shadow, subtle reflection`
- 高级感：`single dramatic side light, deep soft shadow`
- 透明材质：`backlit internal glow`

**第 6 层 视角**：
- 单品主图：`three-quarter hero view`
- 展示人机：`held in hand` / `on a desk next to a laptop for scale`
- 细节：`macro close-up of [部件]`

## 三、正反例对比

**反面（典型"AI 丑图"提示词）：**
```
A beautiful futuristic smart water bottle, high-end, premium quality, 
8k, ultra detailed, trending on behance
```
病因：无形态语言（beautiful/futuristic 是空话）、无结构约束（模型乱加屏幕按钮）、
无比例锚定、渲染词堆叠（8k/ultra detailed 不产生审美）。产出必然是平庸赛博瓶子。

**正面（六层完整版）：**
```
Portable smart water bottle, handheld scale (层1); 
soft-minimalist cylinder with a gentle waist pinch at the grip zone and 
a flush circular lid disk (层2); 
92% fine-matte sage-green polymer, 8% satin aluminum lid ring, 
single white LED dot as the only accent (层3); 
exactly one touch-sensitive strip on the upper body, USB-C port at the 
base rear, seam hidden under the lid ring (层4); 
photorealistic product render, soft studio softbox lighting, subtle 
rim light separating bottle from background, Apple-level fit and finish (层5); 
three-quarter hero view on seamless warm-gray backdrop, vertical 4:3 (层6)
```
差异：每一层都可评审、可单独修改；结构被点名锁定；配色给了比例。

## 三B、否定约束短语库（第 4 层常用，直接复制）

生成结果多出来不该有的部件时，不要只说 "simple"，要显式否定：

- 防多余屏幕：`no screen, no display, no visible camera`
- 防多余按键：`exactly one button, no other buttons or switches`
- 防多余开孔：`no speaker grille on the front face, no visible screws`
- 防灯效失控：`only one light source, no RGB lighting, no glowing logo`
- 防文字乱码：`no readable text, blank label area, no logo text`
- 防形态漂移：`no sharp edges, no decorative vents, no antenna lines`

否定约束要具体（写出"哪个面、什么部件"），笼统的 "clean design" 无法抑制幻觉。

## 四、迭代改词规则

- 形态丑 → 只改第 2 层（换形态语言或体量关系词）。
- 不像 brief → 只改第 4 层（把漏掉的结构逐个补进去，把多出来的部件写进否定约束 `no ...`）。
- 材质假 → 只改第 3、5 层（换材质词 + 换打光词）。
- 氛围不对 → 只改第 5、6 层。
- **每次迭代最多动两层**，其余逐字保留，否则无法归因效果变化。
