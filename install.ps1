#Requires -Version 5.0
# id-concept-render 一键安装脚本（Windows PowerShell）
# 用法:
#   irm https://raw.githubusercontent.com/Allen-Chen-coder/id-concept-render/main/install.ps1 | iex
#   或指定目标: irm ... | iex   然后它会自动探测；也可下载后运行: .\install.ps1 -Target claude
param(
  [ValidateSet('auto', 'kimi', 'claude', 'cursor', 'agents')]
  [string]$Target = 'auto'
)

$ErrorActionPreference = 'Stop'
$RepoZip = 'https://github.com/Allen-Chen-coder/id-concept-render/archive/refs/heads/main.zip'
$SkillName = 'id-concept-render'

# 1. 确定目标目录
$Candidates = @{
  'kimi'   = "$env:APPDATA\kimi-desktop\daimon-share\daimon\skills"
  'claude' = "$HOME\.claude\skills"
  'cursor' = "$HOME\.cursor\skills"
  'agents' = "$HOME\.config\agents\skills"
}
if ($Target -ne 'auto') {
  $Base = $Candidates[$Target]
} else {
  $Base = $null
  foreach ($key in @('kimi', 'claude', 'cursor', 'agents')) {
    if (Test-Path $Candidates[$key]) { $Base = $Candidates[$key]; break }
  }
  if (-not $Base) { $Base = $Candidates['agents'] }
}

$Dest = Join-Path $Base $SkillName
New-Item -ItemType Directory -Force -Path $Base | Out-Null

# 2. 优先 git clone，无 git 则用 zip 下载
if (Test-Path (Join-Path $Dest '.git')) {
  Write-Host "已存在，更新中: $Dest"
  git -C $Dest pull --ff-only -q
} else {
  Remove-Item -Recurse -Force $Dest -ErrorAction SilentlyContinue
  if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "安装到: $Dest"
    git clone --depth 1 -q https://github.com/Allen-Chen-coder/id-concept-render.git $Dest
  } else {
    Write-Host "未检测到 git，使用 ZIP 下载: $Dest"
    $Tmp = Join-Path $env:TEMP "icr_$([guid]::NewGuid().ToString('N').Substring(0,8))"
    New-Item -ItemType Directory -Force -Path $Tmp | Out-Null
    Invoke-WebRequest -Uri $RepoZip -OutFile (Join-Path $Tmp 'main.zip') -UseBasicParsing
    Expand-Archive -Path (Join-Path $Tmp 'main.zip') -DestinationPath $Tmp
    Move-Item (Join-Path $Tmp 'id-concept-render-main') $Dest
    Remove-Item -Recurse -Force $Tmp
  }
}

Write-Host ""
Write-Host "✅ 安装完成: $Dest" -ForegroundColor Green
Write-Host "   对你的 AI 说: 帮我生成一个 XX 产品的概念渲染图"
