<div align="center">

# id-concept-render

**让 AI 不再生成又丑、又不像、没创意的产品概念图**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Skill 格式](https://img.shields.io/badge/format-SKILL.md-blue)](SKILL.md)

</div>

![banner](docs/banner.png)

一个通用的 **AI 工业设计（ID）概念渲染 Skill**：不管 Kimi、Claude Code 还是 Cursor，任何能加载 `SKILL.md` 的 Agent 装上它，就能按"审美先行、结构保真、创新有据"的方法出产品概念图——而不是把 `beautiful, premium, 8k` 丢给模型听天由命。

## 为什么你需要它

直接用文字让 AI 出产品渲染图，典型结果是：**又丑（审美平庸）、又不像（乱加屏幕按键）、没创意（通用模板脸）**。

根因不是模型不行，是把审美、保真、创意三件事全压在一次生成上。本 Skill 把它们拆成可执行、可评审、可迭代的六步工作流：

```
① Brief 解构（模糊需求→引导式提问；详细描述→列假设）
② 定审美方向（形态语言先行，禁止空泛形容词）
③ 六层提示词（主体→形态→CMF→结构→光影→构图）
④ 批量生成（一次 2–4 张选底稿）
⑤ 量表评审迭代（五维打分 + 结构强检清单，强制 ≥2 轮）
⑥ 创新变体（形态/CMF/结构/交互四层面创新方法库）
```

## 仓库里有什么

| 文件 | 内容 |
|---|---|
| `SKILL.md` | 六步工作流主文件（Agent 加载入口） |
| `references/aesthetics.md` | 7 种形态语言体系、设计奖项共性、CMF 审美原则 |
| `references/design-exemplars.md` | **按 8 大品类分类的 36 个设计典范**（每类附可直接迁移的提示词短语） |
| `references/prompt-framework.md` | 六层提示词模板 + 词汇速查 + 否定约束短语库 + 正反例对比 |
| `references/accuracy.md` | 六类翻车模式对策、结构错误强检清单、保真清单 |
| `references/innovation.md` | 四层面创新方法库 + 方向描述模板 |
| `references/cost-dfm.md` | 工艺成本阶梯、按售价倒推外壳预算、低成本高级感手段、穿戴产品专项 |
| `references/intake-questions.md` | 渐进式需求访谈剧本：5 轮 13 个选项式问题，专治"不知道怎么说" |

## 示例输出

用 skill 自带的六层提示词正面例（smart water bottle）一次生成：

![demo](docs/demo_bottle.png)

> 对比反面写法 `A beautiful futuristic smart water bottle, high-end, 8k, ultra detailed` 的效果差异，见 [references/prompt-framework.md](references/prompt-framework.md) 的正反例分析。

## 快速开始

按你用的 AI 类型选一条路径：

### A. 命令行 AI 一键安装（Codex / Claude Code / Cursor / Kimi Work）

让 AI 自己装——直接把下面这句发给它：

> 执行这条命令帮我安装一个 skill：`curl -fsSL https://raw.githubusercontent.com/Allen-Chen-coder/id-concept-render/main/install.sh | bash`（Windows PowerShell 用 `irm https://raw.githubusercontent.com/Allen-Chen-coder/id-concept-render/main/install.ps1 | iex`）

脚本会自动探测 Kimi Work、Claude Code、Cursor 的 skills 目录，装完即可用。也可以自己在终端跑这两条命令，效果相同。

### B. 命令行 AI 手动安装

```bash
git clone https://github.com/Allen-Chen-coder/id-concept-render.git
```

然后把文件夹放进 AI 的 skills 目录：

| AI | skills 目录 |
|---|---|
| Kimi Work（Windows） | `%APPDATA%\kimi-desktop\daimon-share\daimon\skills\` |
| Kimi Work（macOS） | `~/Library/Application Support/kimi-desktop/daimon-share/daimon/skills/` |
| Claude Code | `~/.claude/skills/` |
| Cursor | `~/.cursor/skills/` |
| 其他 Agent | `~/.config/agents/skills/` 或项目内 `.agents/skills/` |

### C. 网页版 AI 免安装（Gemini / ChatGPT / Kimi 网页版等）

网页 AI 不能跑本地命令，直接把 skill 文件喂给它：

1. **下载**：仓库首页 → 绿色 `Code` 按钮 → `Download ZIP`，解压得到 `id-concept-render-main` 文件夹
2. **上传**：新开一个对话，把 `SKILL.md` 和 `references/` 下的全部 7 个 `.md` 文件一起上传（Gemini / ChatGPT 都支持多文件上传；文件太多可分两批）
3. **发指令**：

   > 请完整阅读 SKILL.md，它是你的工作流程说明书；references 文件夹里的 7 个 md 是它的配套参考资料。从现在起，我让你生成产品概念渲染图时，请严格按 SKILL.md 的流程执行，需要参考资料时优先从你已读到的内容里取。读完请只回复"已就绪"。

4. **之后正常使用**：直接描述你的产品需求即可，它会先走提问/确认流程再出图

**进阶（Gemini 用户）**：把第 3 步的内容粘进 [Gems](https://gemini.google.com/gems) 的自定义指令里，references 按需贴入，skill 就永久生效，不用每次上传。

> ⚠️ 注意：网页版 AI 的出图能力取决于平台本身（Gemini 可直接生图，ChatGPT 需有图像生成权限）；SKILL.md 中的评审迭代方法在任何能出图的 AI 上都有效。

然后直接说：

> "帮我生成一个 XX 产品的概念渲染图"

模糊需求会被引导式提问补齐；带着详细描述或 PRD 来则直接解构出图。

## 特色

- 🎯 **审美可执行**：形态语言库把"好看"翻译成可写进提示词的词汇，杜绝 `beautiful/premium` 式空话
- 🧱 **保真有清单**：结构逐一点名 + 否定约束短语库，抑制乱加屏幕按键的结构幻觉
- 💡 **创新有方法**：70% 熟悉 + 30% 陌生的边界规则，四层面创新方法各配提示词切入示例
- 💰 **成本有档位**：批量生产场景按售价倒推外壳预算，低成本不等于廉价（蚀纹/分型线/单点金属）
- 🗂️ **品类有典范**：36 个公认设计标杆按品类归档，跨品类迁移即创新来源

## 贡献

欢迎补充品类典范（`references/design-exemplars.md` 的"未覆盖品类"规则）、新的翻车模式对策、你的使用案例。提 Issue 或 PR 均可。

## License

[MIT](LICENSE)

---

**English summary**: A universal `SKILL.md` package that fixes ugly AI-generated product concept renders. It enforces a six-step workflow — brief deconstruction with guided questions, form-language-first direction, six-layer prompt construction, batch generation, rubric-scored review loops, and structured innovation variants — backed by 36 category-sorted design exemplars, cost/DFM constraints for mass production, and a library of negative-constraint phrases. Works with any agent that loads SKILL.md skills (Kimi Work, Claude Code, Cursor, …), and with web-based AIs (Gemini, ChatGPT) by uploading the files directly.
