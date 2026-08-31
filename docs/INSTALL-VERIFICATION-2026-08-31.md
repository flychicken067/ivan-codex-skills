# Cross-platform installation verification — 2026-08-31

This record distinguishes a real installation from a manifest-only check. It contains no company data or customer inputs.

## Claude Code — passed

Environment:

- Claude Code CLI installed on macOS
- Public source: `flychicken067/ivan-codex-skills`
- Marketplace: `ivan-creator-tools`
- Verified repository revision: `cd9c6f414de4`

Commands used:

```text
claude plugin marketplace add flychicken067/ivan-codex-skills
claude plugin install ivan-human-ui@ivan-creator-tools --scope user
claude plugin install ivan-skill-value-cover@ivan-creator-tools --scope user
claude plugin list --json
```

Observed result:

| Plugin | Installed | Enabled | Scope | Version source |
|---|---:|---:|---|---|
| `ivan-human-ui@ivan-creator-tools` | yes | yes | user | Git revision `cd9c6f414de4` |
| `ivan-skill-value-cover@ivan-creator-tools` | yes | yes | user | Git revision `cd9c6f414de4` |

The two public plugins were copied into Claude Code's plugin cache. This proves the marketplace paths and plugin boundaries work from a fresh public GitHub source; it does not by itself prove every prompt produces an acceptable result.

## WorkBuddy — import route verified, upload pending

Environment:

- WorkBuddy Desktop for macOS 5.3.14
- Skills page opened from **Experts · Skills · Connectors → Skills**

Observed route:

```text
Add Skill → Upload Skill → Import Skill
```

The importer explicitly states:

- a folder or `.zip` must contain `SKILL.md`;
- a standalone Markdown file must contain YAML skill name and description;
- **Auto-install non-high-risk Skills** is an optional checkbox.

Both release ZIPs contain a top-level Skill folder and `SKILL.md`, and both archives pass `unzip -tq`.

The files have not been uploaded to the WorkBuddy account in this verification record. Therefore the accurate public status is **local package ready**, not **installed** and not **published to SkillHub**.

## OpenAI Codex — package validation passed

Both source directories pass the official local Skill validator and are already distributed as isolated folders with `SKILL.md`, assets/references, and no required company credential. Public installation instructions use `$skill-installer` with the individual GitHub directory, not the entire repository.

## Evidence boundary

- Marketplace validation proves manifest structure.
- Installation listing proves the harness accepted and enabled the package.
- A real-run record still requires a redacted input, observed output, and a locatable failure/success result.
- A cover image is never treated as runtime proof.
