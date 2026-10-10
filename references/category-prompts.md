# 品类提示词骨架包（category-prompts）：12 个常见品类填空模板

> 第 3 步捷径。产品属于下列品类时，直接复制骨架填空，比从零组装六层更快更稳。骨架已含该品类最易翻车的结构约束；填完后用 prompt-framework.md 的六层模板做最终校验。
> 填空规则：`[ ]` 内替换为 brief 内容；每个骨架给的是层 1–4 的措辞，层 5（光影+标杆锚点）和层 6（构图）按 prompt-framework.md 选用。

## 目录

- 1. 智能穿戴（领夹/手环/胸牌）
- 2. 音频设备（音箱/耳机/麦克风）
- 3. 3C 配件（充电器/支架/扩展坞）
- 4. 桌面办公设备（会议设备/桌面钟/文具电子）
- 5. 厨房小家电（咖啡机/料理机/电水壶）
- 6. 个护美容（牙刷/剃须刀/美容仪/吹风机）
- 7. 母婴儿童（监测器/温奶器/儿童餐具）
- 8. 宠物用品（喂食器/饮水机/定位器）
- 9. 智能家居（门锁/摄像头/传感器/音箱）
- 10. 医疗健康（血压计/雾化器/按摩仪）
- 11. 工具仪器（测距仪/万用表/电动工具）
- 12. 灯具照明（台灯/氛围灯/户外灯）

## 1. 智能穿戴（领夹/手环/胸牌）

```
L1: a [clip-on badge / wristband] [product function] for [user], wearable scale, about the size of a [walnut / watch face]
L2: [pebble-like bean / slim band module] form, smooth continuous curves, gently flattened contact face, slim profile
L3: [color ratio], [matte texture], [one metal accent part]
L4: exactly one [button], [light guide slot / small e-ink window], [charging port or magnetic contacts], fastening: [integrated clip / strap with lugs], no screen [unless required], no visible screws
```
品类翻车约束：`no charging port on the collar-contacting face` / `strap feeds through lugs, not glued`。

## 2. 音频设备（音箱/耳机/麦克风）

```
L1: a [speaker / earbuds / microphone] for [scenario], [desktop / handheld / in-ear] scale
L2: [single monolithic volume / dual pod form], [driver-facing surface treatment hint]
L3: [shell material] + [grille fabric / mesh] combination, [knob material if any]
L4: acoustic [grille perforation pattern covering X% of the front face], exactly [N] knobs/buttons, [port] at [position], cable [hidden / exposed by design]
```
翻车约束：网罩孔阵必须成图案 `perforation arranged as a precise geometric pattern, not random holes`；耳机必须成对且左右一致。

## 3. 3C 配件（充电器/支架/扩展坞）

```
L1: a [charger / stand / hub] for [device], [desk-palm] scale
L2: [low-squat block / vertical slab / folding arm], [folded/thickness dimensions if relevant]
L3: [matte shell], [one metal accent: hinge / rim / port ring]
L4: exactly [N] ports [types] on [edge], [cable exit], [indicator light as single dot], hidden seam [location]
```
翻车约束：接口必须可用 `ports cut into the edge, not printed on the surface`；折叠件要画铰链。

## 4. 桌面办公设备（会议设备/桌面钟/文具电子）

```
L1: a [meeting speakerphone / desk clock / smart pen holder] for [office / home desk]
L2: [low stable footprint], [upright angle if screen], [weight-distributed base]
L3: [fabric + polymer / aluminum + polymer], [color ratio]
L4: [speaker grille arc], [screen: blank minimal UI], [buttons on top edge], [USB-C at rear], cable groove [location]
```
翻车约束：屏幕一律 blank；拾音孔沿边均布。

## 5. 厨房小家电（咖啡机/料理机/电水壶）

```
L1: a [espresso machine / blender / kettle] for [home / office kitchen], [countertop] scale
L2: [body volume] + [handle / spout / carafe negative space], [control surface: top / front]
L3: [matte body + metal accent on functional part: spout / brew head / blade housing]
L4: [water inlet / lid], [drip tray / container], [button / dial: exactly N], [power cord exit at base rear]
```
翻车约束：功能路径要通——水从哪进、从哪出必须画出来 `visible water path from reservoir to spout`；蒸汽/散热孔在热源上方。

## 6. 个护美容（牙刷/剃须刀/美容仪/吹风机）

```
L1: a [electric toothbrush / shaver / beauty device / dryer] for [user], [handheld] scale
L2: [grip-zone diameter], [head-body ratio], [charging-stand posture]
L3: [soft-touch grip], [head material: metal / ceramic / brush], [color ratio ≤ 3]
L4: exactly one power button [position], [mode indicator: ring / dots], [charging: port at base / wireless coil], [waterproof: sealed seam]
```
翻车约束：刷头/刀头与机身的连接要可信；全身水洗产品 `no open grilles`。

## 7. 母婴儿童（监测器/温奶器/儿童餐具）

```
L1: a [baby monitor / bottle warmer / smart tableware] for [home / travel]
L2: [soft friendly rounded forms], [no sharp edges anywhere], [size: one-hand operable]
L3: [warm matte colors: cream / sage / soft pink-gray], [food-contact-safe material hint: smooth gloss interior]
L4: [display: blank or icon-only], [large obvious button], [charging port sealed behind flap]
```
翻车约束：禁锐角 `fully rounded, zero sharp edges`；禁小零件感 `no small detachable-looking parts`。

## 8. 宠物用品（喂食器/饮水机/定位器）

```
L1: an automatic [feeder / water fountain / pet tracker] for [cat / dog], [floor / collar] scale
L2: [stable low body + elevated bowl / compact tracker module], [tip-proof base]
L3: [matte body + transparent food/water window], [color: neutral + one warm accent]
L4: [hopper / reservoir with visible level], [button hidden under rim], [power: sealed port / chew-safe cable], [sensor window]
```
翻车约束：宠物能碰到的地方无棱 `chew-zone surfaces fully rounded`；粮道/水道可见。

## 9. 智能家居（门锁/摄像头/传感器/音箱）

```
L1: a smart [lock / camera / sensor / speaker] for [door / wall / room corner]
L2: [form follows mounting surface: flush / wedge / cylinder], [lens/face orientation]
L3: [monolithic front panel], [material split: front / body]
L4: [keypad hidden until lit / no keypad], [camera lens: single, flush], [status light: single dot], [power or battery cover seam], no visible screws [unless design]
```
翻车约束：锁体必须有把手/握持结构；摄像头只有一个镜头 `exactly one camera lens, flush-mounted`。

## 10. 医疗健康（血压计/雾化器/按摩仪）

```
L1: a [BP monitor / nebulizer / massager] for [home / clinical], [handheld / tabletop] scale
L2: [calm monolithic body], [cuff / mask / massage head integrated or docked], [grip or handle logic]
L3: [clean white / light gray matte], [soft-touch grip], [single blue or green accent]
L4: [large start button], [display: blank minimal], [air tube / cuff connector], [charging port at base]
```
翻车约束：医疗白不是冷白 `warm white, not clinical cold`；气路/管路连接要画出。

## 11. 工具仪器（测距仪/万用表/电动工具）

```
L1: a [laser measure / multimeter / power tool] for [pros / DIY], [one-hand / two-hand] scale
L2: [protective rubber overmold zones], [display-upright posture when held]
L3: [brand colorway or yellow-gray engineering], [grip texture], [screen lens material]
L4: [measurement aperture / probe jacks / bit holder], [exactly N buttons + rotary selector], [IP-rated sealed seams], [hang hole / belt clip]
```
翻车约束：测量口/表笔孔位置符合手持方向；防护套与壳体咬合线要画。

## 12. 灯具照明（台灯/氛围灯/户外灯）

```
L1: a [desk lamp / ambient light / outdoor lantern] for [desk / bedroom / camping]
L2: [base-arm-head proportion], [fold / pivot logic], [light-emitting surface: face / ring / strip]
L3: [metal arm + polymer base / full aluminum], [diffuser material: opal / fabric]
L4: [one control: knob / touch strip], [charging port on base rear], [hinge mechanism visible and plausible], [cable or battery]
```
翻车约束：灯臂关节必须可动 `visible pivot joint with believable range`；发光面不露灯珠 `fully diffused glow, no visible LED dots`。

---

# English Version

> Step 3 shortcut. If the product belongs to one of the 12 categories below, copy the skeleton and fill in the blanks — faster and more stable than assembling six layers from scratch. Each skeleton carries that category's most common failure constraints; after filling, run the final check against the six-layer template in prompt-framework.md.
> Filling rules: replace `[ ]` with brief content; each skeleton covers layers 1–4 wording — pick layers 5 (lighting + benchmark anchor) and 6 (composition) from prompt-framework.md.

(The 12 skeletons above are language-independent: use the same English skeletons for prompts; the failure constraints translate directly, e.g. `no charging port on the collar-contacting face`, `perforation arranged as a precise geometric pattern`, `visible water path from reservoir to spout`, `fully rounded, zero sharp edges`, `chew-zone surfaces fully rounded`, `exactly one camera lens, flush-mounted`, `visible pivot joint with believable range`, `fully diffused glow, no visible LED dots`.)

## Quick category index

| Category | Key form anchor | Top failure to suppress |
|---|---|---|
| Wearables | pebble/band + contact face | floating fastening, port on contact face |
| Audio | grille as pattern | random holes, asymmetric buds |
| 3C accessories | ports cut into edge | ports printed on surface |
| Desktop office | low stable footprint | garbled screen text |
| Kitchen appliances | visible function path | broken water/food path logic |
| Personal care | grip zone + credible head joint | open grilles on waterproof gear |
| Baby & kids | zero sharp edges | small detachable-looking parts |
| Pet supplies | tip-proof + chew-safe | sharp edges in chew zone |
| Smart home | form follows mounting surface | multiple camera lenses |
| Medical | calm monolith, warm white | broken air-tube logic |
| Tools | overmold zones, upright display | misaligned measurement apertures |
| Lighting | believable joints | visible LED dots |
