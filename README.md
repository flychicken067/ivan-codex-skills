# Ivan Codex Skills

Ivan's personal Codex plugin repository for reusable skills that do not depend on `openai/skills` approval.

This repository currently ships:

- `ivan-human-ui`
- `ivan-bazi-architect`

## What You Get

### `ivan-human-ui`

- Removes generic AI-looking UI patterns from landing pages, dashboards, and presentation-style pages
- Uses explicit visual constraints instead of vague "make it nicer" prompts
- Includes repeatable evaluation prompts, scoring, and deterministic visibility checks

### `ivan-bazi-architect`

- Provides a citation-backed BaZi workflow using local PDF references
- Structures output as SW-1, SW-2, SW-3 diagnosis with uncertainty boundaries
- Supports local indexing through `config.json` or `--source-dir`

## Example Prompts

- `Use ivan-human-ui to remove the AI vibe from this landing page and verify all testimonial tracks render.`
- `Use ivan-human-ui to give me 3 concrete visual directions before editing the page.`
- `Use ivan-bazi-architect to produce a cited SW-1 SW-2 SW-3 brief from my configured PDF library.`
- `Use ivan-bazi-architect to build an audit memo with citations and uncertainty notes.`

## Install Options

### Option A: Use the whole plugin locally

1. Clone this repository.
2. Open the repository in Codex.
3. The repo-local marketplace entry at `.agents/plugins/marketplace.json` exposes:
   - `./plugins/ivan-skill-pack`

### Option B: Install one skill directly from GitHub

Use `$skill-installer` with the GitHub folder URL:

- `$skill-installer install https://github.com/flychicken067/ivan-codex-skills/tree/main/plugins/ivan-skill-pack/skills/ivan-human-ui`
- `$skill-installer install https://github.com/flychicken067/ivan-codex-skills/tree/main/plugins/ivan-skill-pack/skills/ivan-bazi-architect`

Restart Codex after installing a skill.

## Repository Layout

- `.agents/plugins/marketplace.json`: repo-local marketplace entry
- `plugins/ivan-skill-pack/.codex-plugin/plugin.json`: plugin manifest
- `plugins/ivan-skill-pack/skills/ivan-human-ui`: UI polish skill
- `plugins/ivan-skill-pack/skills/ivan-bazi-architect`: BaZi workflow skill

## Privacy

These skills are developer-managed. `ivan-bazi-architect` reads only local files you explicitly point it at through `config.json` or `--source-dir`.

## Terms

Use these skills at your own discretion. Outputs from both skills should be reviewed by a human before being used for high-impact decisions.

## 中文说明

这个仓库是 Ivan 自己发布的 Codex skills 仓库，不依赖 `openai/skills` 官方审核。

- `ivan-human-ui`：用于网页和演示型页面去掉 AI 味道，强调具体约束、可复现评测和真实视觉验证。
- `ivan-bazi-architect`：用于基于本地命理 PDF 资料做有引用、带边界说明的结构化分析。

如果你只是想装单个 skill，最简单的方法就是直接用上面的 GitHub folder URL 配合 `$skill-installer`。
