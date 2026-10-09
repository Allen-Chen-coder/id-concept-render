#!/usr/bin/env bash
# id-concept-render 一键安装脚本（macOS / Linux / Git Bash）
# 用法:
#   curl -fsSL https://raw.githubusercontent.com/Allen-Chen-coder/id-concept-render/main/install.sh | bash
#   或指定目标目录: bash install.sh /path/to/skills/dir
set -e

REPO="https://github.com/Allen-Chen-coder/id-concept-render.git"
SKILL_NAME="id-concept-render"

# 1. 确定目标目录：参数 > 环境自动探测 > 默认
if [ -n "$1" ]; then
  BASE="$1"
elif [ -n "$APPDATA" ] && [ -d "$APPDATA/kimi-desktop/daimon-share/daimon/skills" ]; then
  BASE="$APPDATA/kimi-desktop/daimon-share/daimon/skills"        # Kimi Work (Windows)
elif [ -d "$HOME/Library/Application Support/kimi-desktop/daimon-share/daimon/skills" ]; then
  BASE="$HOME/Library/Application Support/kimi-desktop/daimon-share/daimon/skills"  # Kimi Work (macOS)
elif [ -d "$HOME/.claude/skills" ]; then
  BASE="$HOME/.claude/skills"                                    # Claude Code
elif [ -d "$HOME/.config/agents/skills" ]; then
  BASE="$HOME/.config/agents/skills"                             # 通用 agents 目录
elif [ -d "$HOME/.cursor" ]; then
  BASE="$HOME/.cursor/skills"                                    # Cursor
else
  BASE="$HOME/.config/agents/skills"                             # 默认（新建）
fi

DEST="$BASE/$SKILL_NAME"
mkdir -p "$BASE"

# 2. 已存在则更新，否则克隆
if [ -d "$DEST/.git" ]; then
  echo "已存在，更新中: $DEST"
  git -C "$DEST" pull --ff-only -q
else
  rm -rf "$DEST"
  echo "安装到: $DEST"
  git clone --depth 1 -q "$REPO" "$DEST"
fi

# 3. 仓库内非 skill 文件无需进入 skills 目录，保留不影响加载
echo ""
echo "✅ 安装完成: $DEST"
echo "   对你的 AI 说: 帮我生成一个 XX 产品的概念渲染图"
