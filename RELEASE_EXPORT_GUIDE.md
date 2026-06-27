# Release Export Guide (2026-06-27)

## Status: Ready for Export
All source diagrams have been validated and updated with current metadata. Follow this guide to complete the release cycle.

## Pre-Export Checklist
- [x] Metadata updated with current date (2026-06-27)
- [x] Revision numbers bumped (R0 → R1)
- [x] Typography/color profile normalized (Arial, 10pt body, 18pt title)
- [x] Logo embedded in source files for reliability
- [x] XML structure validated (all files parse cleanly)
- [x] Text-fit check passed (no overflow risk in boxes)
- [ ] Export to PNG (ready for manual step)
- [ ] Export to PDF (ready for manual step)
- [ ] 100% zoom visual spot-check
- [ ] 125% zoom visual spot-check
- [ ] Final approval

## Export Steps (Manual)

### Using draw.io Desktop or Web
For each diagram file:

1. **Open in draw.io**
   - Desktop: File → Open → select `.drawio` file
   - Web: https://app.diagrams.net → File → Open from Device

2. **Verify at 100% zoom**
   - Use View menu or press `Ctrl+1` to set 100% zoom
   - Scan for:
     - No clipped or cut-off text
     - No border-touching text
     - Logo visible and crisp at top-left
     - Metadata footer readable at bottom

3. **Verify at 125% zoom**
   - Press `Ctrl+Shift+=` or use View menu to zoom to 125%
   - Check:
     - No overlaps between elements
     - No text crossing connector lines
     - All content still readable
     - No artifact glitches

4. **Export to PNG**
   - File → Export As → PNG
   - Filename: `{DiagramName}_v1.0.png`
   - Make sure "Crop" is OFF, full canvas is captured
   - DPI: 100 (or 150 for crisp print)
   - Save to: `proposal_package/pdfs/`

5. **Export to PDF**
   - File → Export As → PDF
   - Filename: `{DiagramName}_v1.0.pdf`
   - Page size: Letter or A4 (match your submission format)
   - "Entire diagram" should be selected
   - Save to: `proposal_package/pdfs/`

### Export File Naming Convention
- `Client_Facing_Delivery_Architecture_v1.0.png`
- `Client_Facing_Delivery_Architecture_v1.0.pdf`
- `Embedded_Firmware_Project_Architecture_v1.0.png`
- `Embedded_Firmware_Project_Architecture_v1.0.pdf`
- `Technical_System_Architecture_v1.0.png`
- `Technical_System_Architecture_v1.0.pdf`

## Post-Export Validation

### Visual Spot-Check at 100% Zoom
- [ ] Title text is bold, dark blue, readable
- [ ] Subtitle text is bold, dark gray, readable
- [ ] All section headers follow consistent size/color
- [ ] Body text is regular weight, dark, consistent
- [ ] Metadata footer is present at bottom: Company, Doc ID, Version, Revision, Date, Author, Classification
- [ ] Logo at top-left is sharp and not colliding with title
- [ ] No text overlaps with box borders
- [ ] Connectors/arrows are clean, not crossing text

### Visual Spot-Check at 125% Zoom
- [ ] Repeat all checks from 100% zoom
- [ ] Verify no scaling artifacts (pixelation, blur)
- [ ] Confirm text is still readable when enlarged
- [ ] Check that metadata footer and logo scale gracefully

### Encoding Check
- [ ] PNG file opens without corruption
- [ ] PDF file opens and is searchable
- [ ] File sizes are reasonable (PNG < 500KB, PDF < 2MB per diagram)
- [ ] No garbled text or symbol encoding issues

## Metadata Validation

Current metadata in all diagrams:
```
Company: Bluetrace Technologies
Doc ID: BT-EMB2500-{DIAGRAM}
Version: v1.0
Revision: R1
Date: 2026-06-27
Author: A.R. Ansari
Classification: Client Shareable
```

Verify in exported files that metadata is readable and complete.

## Defect Prevention

If any issues are found during export validation:
1. Note the issue and diagram ID
2. Return to source `.drawio` file
3. Fix the issue in draw.io
4. Re-export the affected diagram(s)
5. Document the change in a changelog entry

## Storage and Submission
Once export validation is complete:
- Keep all `.png` and `.pdf` files in `proposal_package/pdfs/`
- Keep source `.drawio` files in root directory (version control)
- Attach `.pdf` files to Upwork proposal submission
- Include link to `.drawio` source in project notes for client reference

## References
- Diagram checklist templates: `*.CHECKLIST.md` files in root
- Formatting standards: `proposal_package/source/ASSETS_REPO_STANDARDS.md`
- Upstream validation rules: `proposal_package/source/upstream_assets_repo/*.md`
