# Ivan Codex Skills

Personal Codex plugin repository for Ivan's reusable skills.

This repository packages two skills as a single installable plugin:

- `ivan-human-ui`: remove generic AI-looking UI patterns and ship more intentional product pages
- `ivan-bazi-architect`: citation-backed BaZi workflow with configurable local PDF indexing

## Install

Clone this repository locally, then open the repo in Codex. The repo-local marketplace entry at `.agents/plugins/marketplace.json` exposes the bundled plugin.

The plugin lives at:

`./plugins/ivan-skill-pack`

If you prefer direct skill installation after publishing this repo to GitHub, each skill can also be installed from its folder URL:

- `https://github.com/flychicken067/ivan-codex-skills/tree/main/plugins/ivan-skill-pack/skills/ivan-human-ui`
- `https://github.com/flychicken067/ivan-codex-skills/tree/main/plugins/ivan-skill-pack/skills/ivan-bazi-architect`

## Included Skills

### Ivan Human UI

- Best for landing pages, dashboards, and presentation-style web sections
- Focuses on explicit visual constraints, eval loops, and evidence-backed polish

### Ivan Bazi Architect

- Best for explicit BaZi or 命理 requests
- Uses local PDF references, indexed snippets, citations, and uncertainty boundaries

## Repository Layout

- `.agents/plugins/marketplace.json`: local marketplace entry
- `plugins/ivan-skill-pack/.codex-plugin/plugin.json`: plugin manifest
- `plugins/ivan-skill-pack/skills/`: bundled skill directories

## Publishing

This repo is meant for direct GitHub publishing and personal distribution. It does not depend on acceptance into `openai/skills`.

## Privacy

These skills are developer-managed. `ivan-bazi-architect` reads only local files you explicitly point it at through `config.json` or `--source-dir`.

## Terms

Use these skills at your own discretion. Outputs from both skills should be reviewed by a human before being used for high-impact decisions.
