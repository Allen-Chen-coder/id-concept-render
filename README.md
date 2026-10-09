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

## 示例输出

用 skill 自带的六层提示词正面例（smart water bottle）一次生成：

![demo](docs/demo_bottle.png)

> 对比反面写法 `A beautiful futuristic smart water bottle, high-end, 8k, ultra detailed` 的效果差异，见 [references/prompt-framework.md](references/prompt-framework.md) 的正反例分析。

## 快速开始

### 一键安装（推荐）

**macOS / Linux / Git Bash** — 自动探测 Kimi Work、Claude Code、Cursor 的 skills 目录：

```bash
curl -fsSL https://raw.githubusercontent.com/Allen-Chen-coder/id-concept-render/main/install.sh | bash
```

**Windows PowerShell** — 自动探测，没有 git 也能装（自动回退 ZIP 下载）：

```powershell
irm https://raw.githubusercontent.com/Allen-Chen-coder/id-concept-render/main/install.ps1 | iex
```

### 手动安装

**Kimi Work**：

```bash
git clone https://github.com/Allen-Chen-coder/id-concept-render.git \
  "%APPDATA%\kimi-desktop\daimon-share\daimon\skills\id-concept-render"
```

**Claude Code / Cursor / 其他 Agent**：放入对应的 skills 目录（如 `~/.claude/skills/`、`.agents/skills/`），或直接把这个仓库的文件放进任何 Agent 的 context 里说"按这个 SKILL.md 执行"。

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

**English summary**: A universal `SKILL.md` package that fixes ugly AI-generated product concept renders. It enforces a six-step workflow — brief deconstruction with guided questions, form-language-first direction, six-layer prompt construction, batch generation, rubric-scored review loops, and structured innovation variants — backed by 36 category-sorted design exemplars, cost/DFM constraints for mass production, and a library of negative-constraint phrases. Works with any agent that loads SKILL.md skills (Kimi Work, Claude Code, Cursor, …).
