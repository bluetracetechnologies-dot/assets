# Organization Project Update Guardrails

## Purpose
Capture repeat mistakes observed during live proposal updates and enforce a no-repeat rule set for future projects and revisions.

## Mistakes observed in this project
1. Section headings moved to a new page while related content stayed on previous page, reducing readability.
2. Government credential logos had extra white margins, looked uncropped, and appeared visually inconsistent.
3. Logo strip alignment was uneven because each logo was centered independently rather than baseline aligned.
4. Hero slide duplicated the main title in two locations.
5. Content panel sizing used fixed large boxes, creating excessive empty space on short-content slides.
6. Canonical output overwrite failed when presentation file was open/locked.

## Non-negotiable rules for all updates
1. Keep heading with next block:
   - Any section heading must be rendered together with at least its first content block.
   - No orphan heading at page or slide end.
2. Use crop-safe logos only:
   - Trim white/transparent margins before placement.
   - Preserve aspect ratio; never stretch logos.
3. Align logo strips as a group:
   - Use shared bottom baseline for mixed-aspect logos.
   - Center entire logo group in strip container.
4. Prevent duplicate semantic text:
   - Title appears once per intended region.
   - Do not repeat hero heading in content area unless explicitly required.
5. Use content-density layout sizing:
   - Panel height must scale with bullet count/line count.
   - Avoid fixed-height blocks for variable-length copy.
6. Enforce canonical output policy:
   - Maintain stable release names (`v1` canonical output files).
   - Detect lock conflicts and write a temporary review copy if canonical file is in use.

## Do-not-do list
1. Do not place logos with fixed width+height without aspect fit.
2. Do not manually eyeball alignment when a deterministic baseline function is available.
3. Do not push presentation updates without checking for duplicate titles.
4. Do not ship sparse slides with oversized empty content blocks.
5. Do not assume overwrite succeeded; verify output write completion and file timestamps.

## Required pre-release checklist
1. Pagination check (PDF): no orphan headings and no widow bullets.
2. Logo check (PDF/PPT): trim, aspect ratio, baseline alignment, strip centering.
3. Slide check: no duplicate headings, no clipped text, no excessive empty panel area.
4. Naming check: canonical file names present; old ad-hoc version files removed unless needed for audit.
5. Lock check: no active `~$` files for target `.pptx` outputs.

## Update workflow for future projects
1. Implement changes in source generator only.
2. Regenerate canonical outputs.
3. Run visual QA against this guardrail.
4. Record any new defect class in this document before closing project.

## Governance
- Owner: Bluetrace Engineering
- Version: v1.0
- Date: 2026-06-24
