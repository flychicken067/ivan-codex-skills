---
name: ivan-bazi-architect
description: Use when users explicitly ask for 八字 or BaZi style analysis, SW-1 SW-2 SW-3 structured diagnosis, or citation-backed summaries from classical BaZi references. Do not trigger for scientific, legal, medical, or deterministic certainty requests.
---

# Ivan Bazi Architect

Convert classical BaZi references into a structured, auditable decision workflow.

## Workflow

1. Load source knowledge and setup.
   - Use `references/core-books.md` to map canonical books and filename variants.
   - Use `config.example.json` as the setup template.
   - Prefer a local `config.json` that is not committed.
2. Build or refresh index.
   - Run `scripts/build_pdf_index.py` to extract searchable PDF metadata and snippets.
   - `--source-dir` overrides config.
   - Keep output under local skill workspace (do not overwrite source PDFs).
3. Run layered diagnosis.
   - SW-1 (调候层): identify first-priority environmental resource.
   - SW-2 (格局层): identify dominant system logic and flow chain.
   - SW-3 (反馈层): run conflict/combination stress checks.
4. Trigger circuit-breaker rules.
   - Detect high-risk 用神受损 scenarios.
   - Emit warning tier and fallback options.
5. Publish output with boundaries.
   - Provide concise recommendations with references and confidence levels.
   - Keep ethical boundary: advisory for reflection/decision support, not deterministic fate claims.
6. Check repeat failure patterns.
   - Read `references/gotchas.md` before finalizing the response.

## Output Contract

Return in this structure:

1. Input summary (what data was analyzed).
2. SW-1 / SW-2 / SW-3 findings.
3. Circuit-breaker alerts (if any).
4. Recommended actions (primary + fallback).
5. Source citations (book + section snippet).
6. Boundary note (scope, uncertainty, ethical limits).
