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
