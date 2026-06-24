# AI Context Pack (Tool-Agnostic)

Purpose: provide stable project context across AI assistants (Copilot, Augment, or any other tool) so documentation quality, branding, and issue history are preserved.

## What this pack contains
- `PROJECT_CONTEXT_BASELINE.md`: stable technical and business context.
- `DOCUMENTATION_ISSUES_LOG.md`: real issues faced and how they were resolved.
- `DOC_STANDARDS_POLICY.md`: mandatory documentation and diagram standards.
- `AI_BOOTSTRAP_PROMPT.md`: a reusable prompt any AI tool can load at session start.
- `templates/SESSION_UPDATE_TEMPLATE.md`: standard format for adding new session learnings.
- `templates/DIAGRAM_RELEASE_CHECKLIST.md`: release gate before sharing docs externally.

## How to use with any AI tool
1. Load `AI_BOOTSTRAP_PROMPT.md` into the tool as initial context.
2. Provide `PROJECT_CONTEXT_BASELINE.md` and `DOC_STANDARDS_POLICY.md`.
3. Ask the AI to append updates using `templates/SESSION_UPDATE_TEMPLATE.md`.
4. Before export/submission, run `templates/DIAGRAM_RELEASE_CHECKLIST.md`.

## Source-of-truth rules
- Do not overwrite historical incidents in `DOCUMENTATION_ISSUES_LOG.md`.
- Add new incidents as append-only entries with date, impact, root cause, fix, prevention.
- Every diagram release must include Version, Revision, Date, Author, Classification.
- Use one consistent logo variant and keep branding placement consistent.

## Recommended repo layout in github.com/bluetracetechnologies-dot/assets
- `context/embedded-dali-mesh/` (this entire pack)
- `branding/logos/` (approved logo files + version notes)
- `templates/` (cross-project templates)
- `standards/` (organization-wide standards references)

## Version
- Context Pack Version: v1.0
- Last Updated: 2026-06-24
- Owner: Bluetrace Engineering
