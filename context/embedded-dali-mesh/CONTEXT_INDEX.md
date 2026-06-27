# Context Index (Cross-Tool Load Order)

This file defines the exact loading order for AI tools (Copilot, Augment, and others) to preserve continuity.

## Load Order (Mandatory)
1. `AI_BOOTSTRAP_PROMPT.md`
2. `PROJECT_CONTEXT_BASELINE.md`
3. `DOC_STANDARDS_POLICY.md`
4. `DOCUMENTATION_ISSUES_LOG.md`
5. `templates/DIAGRAM_RELEASE_CHECKLIST.md` (before export/submission)
6. `templates/SESSION_UPDATE_TEMPLATE.md` (end of session handoff)

## Why this order
- Step 1 sets tool behavior.
- Steps 2-3 provide stable project and policy context.
- Step 4 prevents repeating known failures.
- Steps 5-6 enforce release quality and handoff continuity.

## Tool-specific startup snippets

### Copilot startup
"Load `AI_BOOTSTRAP_PROMPT.md`, then read all files listed in `CONTEXT_INDEX.md` in order. Use append-only updates for issue history."

### Augment startup
"Initialize with `AI_BOOTSTRAP_PROMPT.md`. Follow `CONTEXT_INDEX.md` load order exactly. Preserve prior incidents and standards constraints."

### Any other AI tool
"You must follow `CONTEXT_INDEX.md` load order and not skip issue history or standards policy."

## Session-end requirements
- Update issues only via append in `DOCUMENTATION_ISSUES_LOG.md`.
- Record session summary using `templates/SESSION_UPDATE_TEMPLATE.md`.
- If diagrams changed, run `templates/DIAGRAM_RELEASE_CHECKLIST.md`.

## Linked docs
- `README.md`
- `AI_BOOTSTRAP_PROMPT.md`
- `PROJECT_CONTEXT_BASELINE.md`
- `DOC_STANDARDS_POLICY.md`
- `DOCUMENTATION_ISSUES_LOG.md`
