# Publish Guide: github.com/bluetracetechnologies-dot/assets

## Target structure in assets repository
- context/embedded-dali-mesh/README.md
- context/embedded-dali-mesh/PROJECT_CONTEXT_BASELINE.md
- context/embedded-dali-mesh/DOCUMENTATION_ISSUES_LOG.md
- context/embedded-dali-mesh/DOC_STANDARDS_POLICY.md
- context/embedded-dali-mesh/AI_BOOTSTRAP_PROMPT.md
- context/embedded-dali-mesh/templates/SESSION_UPDATE_TEMPLATE.md
- context/embedded-dali-mesh/templates/DIAGRAM_RELEASE_CHECKLIST.md

## Recommended additional folders in assets repository
- branding/logos/
- templates/
- standards/

## Manual web upload option
1. Open the assets repository in browser.
2. Create folder path: context/embedded-dali-mesh
3. Upload all files from this context pack.
4. Commit message: docs: add tool-agnostic AI context pack for embedded dali-mesh project

## Git command option (run on your machine with git)
1. Clone repository.
2. Create folder path context/embedded-dali-mesh.
3. Copy files from this pack into that folder.
4. Commit and push.

## Operational rule after publishing
- Every time documentation issues are discovered, append one new entry to DOCUMENTATION_ISSUES_LOG.md.
- Keep policy and bootstrap prompt stable so all AI tools behave consistently.
- Review checklist before external submission.
