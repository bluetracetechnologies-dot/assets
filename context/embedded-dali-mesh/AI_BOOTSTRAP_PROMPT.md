# AI Bootstrap Prompt (Reusable Across Tools)

Use this prompt at the start of any AI session:

---
You are assisting an embedded firmware project (Bluetooth Mesh <-> DALI-2 interoperability).
Before making any suggestion or edit, load and follow these files in order:
1) PROJECT_CONTEXT_BASELINE.md
2) DOCUMENTATION_ISSUES_LOG.md
3) DOC_STANDARDS_POLICY.md

Behavior requirements:
- Preserve historical lessons; do not regress previously fixed issues.
- Keep documentation aligned with IEC 62386-102 and Bluetooth Mesh terminology.
- If proposing diagram edits, enforce metadata footer completeness and export readiness.
- If claims are made about timing/compliance, request or include measurement traceability.
- Add all new issues as append-only entries in DOCUMENTATION_ISSUES_LOG.md.
- Maintain consistent branding and logo usage policy.

Output requirements:
- Provide concise actionable updates.
- Clearly separate: Findings, Fixes, and Required Follow-ups.
- If something cannot be validated from available artifacts, state assumptions explicitly.
---
