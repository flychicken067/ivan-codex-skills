# Marketplace submission draft

This file is the source of truth for marketplace submissions. It contains no private company material and no unverified adoption claims.

## Publisher

- Display name: Ivan
- GitHub: https://github.com/flychicken067
- Repository: https://github.com/flychicken067/ivan-codex-skills
- Contact for public manifests: `flychicken067@users.noreply.github.com`
- License: MIT, included in each published Skill directory

## Plugin 1 — Ivan Human UI

- Slug: `ivan-human-ui`
- One-line description: Diagnose and remove generic AI-template patterns from real interfaces, then verify the visible result.
- Intended users: Agent Skill creators, product designers, and developers reviewing generated interfaces.
- Source: https://github.com/flychicken067/ivan-codex-skills/tree/main/plugins/ivan-skill-pack/skills/ivan-human-ui
- Release ZIP: https://github.com/flychicken067/ivan-codex-skills/releases/download/v0.3.0/ivan-human-ui.zip
- Example prompt: `Review this page with Ivan Human UI. Identify the three issues that most harm comprehension, improve them without replacing the product structure, and report the visible verification result.`
- Expected evidence: a diagnosis, scoped changes, code diff where applicable, and visible interaction or asset checks.

## Plugin 2 — Ivan Skill Value Cover

- Slug: `ivan-skill-value-cover`
- Source Skill name: `ivan-youmind-skill-cover`
- One-line description: Turn an abstract Agent Skill into a scene-based input/output value cover without inventing evidence.
- Intended users: Skill creators publishing to Claude, Codex, WorkBuddy, YouMind, or a documentation hub.
- Source: https://github.com/flychicken067/ivan-codex-skills/tree/main/plugins/ivan-skill-pack/skills/ivan-youmind-skill-cover
- Release ZIP: https://github.com/flychicken067/ivan-codex-skills/releases/download/v0.3.0/ivan-youmind-skill-cover.zip
- Example prompt: `Use Ivan Skill Value Cover on this SKILL.md. Show one real user, the input before using it, and the result they can take away. Mark unsupported claims as placeholders.`
- Expected evidence: a 16:9 cover, a value statement, explicit input/output meaning, and a list of claims that still need confirmation.

## Installation verification

### Claude Code

```text
/plugin marketplace add flychicken067/ivan-codex-skills
/plugin install ivan-human-ui@ivan-creator-tools
/plugin install ivan-skill-value-cover@ivan-creator-tools
```

The marketplace is validated with `claude plugin validate .` before release.

### Claude.ai

Download the corresponding ZIP from the GitHub Release and upload it from **Customize → Skills**.

### OpenAI Codex

Install the individual public Skill directory with `$skill-installer`, restart the session, and explicitly invoke the Skill once with a redacted sample.

### WorkBuddy

Import the corresponding ZIP from **Skills → Upload Skill**. Verify source, permissions, inputs, outputs, version, and known limitations before using work data.

## Safety and privacy statement

- The published packages contain instructions, reference material, validation scripts, and visual assets; they do not contain API keys or company credentials.
- Users should test with a redacted sample before supplying company or customer data.
- The Skills do not claim sales, ratings, time savings, or customer outcomes without verifiable evidence.
- Generated covers and mockups are explanations, not proof that a Skill ran successfully.
- Issues can be reported at https://github.com/flychicken067/ivan-codex-skills/issues/new?template=skill-feedback.yml

## Submission status

- GitHub public source and release: ready
- Claude Code independent marketplace: ready
- Claude official marketplace: submission not yet sent
- WorkBuddy local ZIP distribution: ready
- WorkBuddy SkillHub: first collect one redacted real-run record per Skill, then publish from the client if the publisher account exposes **Publish to SkillHub**
- Feishu discovery document: created; external/public access is not enabled by this repository
