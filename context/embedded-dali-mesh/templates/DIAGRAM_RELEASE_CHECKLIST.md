# Diagram Release Checklist

## Pre-Release Quality
- [ ] No encoding artifacts or broken symbols.
- [ ] No text overlap/clipping at 100% zoom.
- [ ] No text overlap/clipping at 125% zoom.
- [ ] Flow arrows and direction labels are explicit.
- [ ] Legend is present if color semantics are used.
- [ ] Text does not touch borders in any content box.
- [ ] Minimum box padding validated (Top 14 px, Left 14 px, Right 14 px, Bottom 12 px).
- [ ] No arrowhead or connector crossing text blocks.
- [ ] Bullets and wrapped lines use consistent indentation.

## Metadata and Branding
- [ ] Company is correct.
- [ ] Doc ID present and correct.
- [ ] Version and Revision are present.
- [ ] Date reflects latest update.
- [ ] Author field is correct.
- [ ] Classification field is set.
- [ ] Approved logo variant used with consistent placement.
- [ ] Logo does not collide with title/tagline or metadata.

## Standards and Evidence
- [ ] Standard reference line included where protocol behavior is claimed.
- [ ] Compliance/performance claims include evidence basis.
- [ ] Waveform/test visuals include instrument/capture context.

## Typography and Color Mapping
- [ ] Font family is consistent (approved family only).
- [ ] Heading levels use fixed size and color mapping.
- [ ] Body text size is lower than heading size.
- [ ] Heading color-size linkage is consistent across all diagrams in the set.
- [ ] Text contrast is readable against background.

## Export Control
- [ ] `.drawio` source saved first.
- [ ] PNG/PDF exports regenerated from latest source.
- [ ] Export filenames and revisions match metadata.
- [ ] Changelog entry added.
- [ ] Validation points in `VISUAL_VALIDATION_SPEC.md` reviewed and passed.
