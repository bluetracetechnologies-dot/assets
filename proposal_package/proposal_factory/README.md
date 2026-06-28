# Proposal Factory

This folder provides a reusable system to generate a ready-to-submit proposal package quickly.

## Folder Structure
- intake: job input JSON files
- templates: reusable template files
- scripts: automation scripts
- output: generated proposal folders per job

## Naming Convention
Generated folders use:
- JOB_YYYYMMDD_CLIENTKEYWORD_ROLEKEY

Example:
- JOB_20260627_UPWORK_EMBEDDED_WEARABLE

## Quick Usage
1. Copy intake/JOB_INTAKE_TEMPLATE.json to a new file in intake/.
2. Fill the values for the new job.
3. Run:
   powershell -ExecutionPolicy Bypass -File .\proposal_package\proposal_factory\scripts\generate_proposal.ps1 -IntakeFile .\proposal_package\proposal_factory\intake\<your_file>.json
4. Attach generated docs from output/<generated_folder>/.

## Reusable Execution Pattern (Standard)
Use this exact sequence for every new job bundle:

1. Intake creation
- Create a new JSON in intake/ with date, client_keyword, role_keyword, budget model, timeline, milestones, and metadata.

2. Bundle generation
- Run scripts/generate_proposal.ps1 with the intake file.

3. Source rewrite
- Replace template-general wording in source/ files with job-specific scope and deliverables.

4. Packaging
- Ensure output bundle contains: source/, diagrams/, pdfs/, text/, JOB_REFERENCE.txt.
- Copy quick-submit files to text/ (cover letter and submission instructions).

5. Diagram retargeting (mandatory)
- Update all 3 .drawio files in diagrams/ to match project scope.
- Update metadata strip fields: Doc ID, Version, Revision, Date, Classification.

6. XML validation (mandatory)
- Validate each .drawio file parses as XML before export.

7. PDF export from draw.io (mandatory)
- Do not copy stale PDFs.
- Always regenerate PDFs from diagrams using:
   powershell -NoProfile -ExecutionPolicy Bypass -File .\proposal_package\proposal_factory\scripts\refresh_bundle_pdfs.ps1 .\proposal_package\proposal_factory\output\<generated_folder>

8. Final check and publish
- Confirm pdfs/ timestamps are current.
- Commit intake + output bundle and push.

## PDF Export Helper
- Script: scripts/refresh_bundle_pdfs.ps1
- Purpose: Converts each diagrams/*.drawio to pdfs/*.drawio.pdf for one or more bundles.

## Output Contents
- source/COVER_LETTER_PLAIN_TEXT.txt
- source/PROJECT_SUMMARY.md
- source/EXPERIENCE_HIGHLIGHTS.md
- source/TECHNICAL_REQUIREMENTS_CHECKLIST.md
- source/SUBMISSION_INSTRUCTIONS.txt
- source/JOB_INTAKE.json

## Notes
- Keep values ASCII-safe for best compatibility.
- Update milestone dates manually in Upwork form while submitting.
