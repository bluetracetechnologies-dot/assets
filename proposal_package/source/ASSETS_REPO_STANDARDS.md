# Assets Repo Standards Reference

Source repository:
- https://github.com/bluetracetechnologies-dot/assets

This project now follows formatting and documentation controls from:
- context/embedded-dali-mesh/DOC_STANDARDS_POLICY.md
- context/embedded-dali-mesh/VISUAL_VALIDATION_SPEC.md
- standards/org-ai-context/ORG_DOCUMENTATION_POLICY.md

## Mandatory Diagram Rules
- Keep boxed text padding at minimum: top 14, left 14, right 14, bottom 12.
- No overlap between text and borders/connectors/icons.
- Validate readability at both 100% and 125% zoom.
- Include metadata footer in every release diagram:
  Company, Doc ID, Version, Revision, Date, Author, Classification.
- Keep heading/body typography mapping consistent across the diagram set.

## Branding and Logo Policy
- Use approved logo variant only.
- Keep logo placement and scale consistent across all diagrams.
- Current upstream repo has no dedicated logo image asset file.
- Temporary implementation in this workspace uses `assets/logo.png` embedded in draw.io source for reliable rendering.

## Documentation and Export Controls
- Source of truth is `.drawio` and markdown source files.
- Export artifacts (PNG/PDF) only from latest source.
- Update metadata date/revision before export.
- Release is blocked if there is border-touching text, overlap/clipping, encoding artifacts, or stale metadata.

## Upstream Reference Links
- https://raw.githubusercontent.com/bluetracetechnologies-dot/assets/main/context/embedded-dali-mesh/DOC_STANDARDS_POLICY.md
- https://raw.githubusercontent.com/bluetracetechnologies-dot/assets/main/context/embedded-dali-mesh/VISUAL_VALIDATION_SPEC.md
- https://raw.githubusercontent.com/bluetracetechnologies-dot/assets/main/standards/org-ai-context/ORG_DOCUMENTATION_POLICY.md
- https://raw.githubusercontent.com/bluetracetechnologies-dot/assets/main/branding/README.md
