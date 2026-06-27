# Visual Validation Specification (Diagrams and Technical Docs)

Purpose: define measurable validation points for diagram layout, typography, spacing, border clearance, indentation, and heading color-size consistency.

## 1) Canvas and Grid
- Canvas size must be explicit and consistent per diagram type.
- Snap-to-grid must be enabled during editing.
- Minimum horizontal spacing between major boxes: 24 px.
- Minimum vertical spacing between major boxes: 24 px.
- No object may touch canvas edges unless intentionally full-bleed.

## 2) Text-to-Border Clearance
For any boxed content (rounded rectangles, callouts, tables, metadata bars):
- Minimum top padding: 14 px.
- Minimum left padding: 14 px.
- Minimum right padding: 14 px.
- Minimum bottom padding: 12 px.
- Text baseline must not sit on border lines.
- Last line must keep at least one spare line worth of visual space before bottom border.

## 3) Overlap and Collision Rules
- Zero text overlap with:
  - shape borders
  - neighboring shapes
  - arrows/connectors
  - icons/logos
- Arrowheads must not cover text.
- Connector lines must route around labels.
- Label boxes for connectors are required when meaning is non-obvious.

## 4) Indentation and Line Structure
- Bulleted text indentation must be consistent within the same box.
- Recommended hanging indent for bullets: 10 to 14 px.
- No mixed indentation style inside the same section.
- Wrapped lines must align to text block start, not to bullet symbol.
- Max recommended line length in dense boxes: 40 to 55 characters.

## 5) Typography System (Mandatory)
Use this heading/body scale unless project-specific policy overrides it.

| Text Role | Font Family | Font Weight | Size | Line Height | Color |
|---|---|---|---|---|---|
| Document title bar | Arial or Calibri | Bold | 18 | 1.2 | #0D47A1 or #111111 on light bg |
| Section heading | Arial or Calibri | Bold | 11 | 1.3 | #0D47A1 |
| Subheading | Arial or Calibri | Bold | 10 | 1.3 | #263238 |
| Body text | Arial or Calibri | Regular | 9 to 10 | 1.35 | #212121 |
| Metadata footer text | Arial or Calibri | Regular | 8 to 9 | 1.25 | #37474F |
| Warning or risk labels | Arial or Calibri | Bold | 9 to 10 | 1.3 | #D32F2F |
| Success or pass labels | Arial or Calibri | Bold | 9 to 10 | 1.3 | #1B5E20 |

Rules:
- Do not mix multiple font families in one diagram unless explicitly approved.
- For every heading level, size and color must be consistent across all pages in the set.
- Color must not be the only indicator of meaning; use label text too.

## 6) Heading Color-Size Linkage
- H1 always uses the same size/color pair in the full diagram set.
- H2 always uses the same size/color pair.
- Body text must never exceed heading size.
- If heading color changes due to dark background, contrast ratio must stay readable.

## 7) Contrast and Accessibility
- Minimum contrast target for text: WCAG AA equivalent readability.
- Light background text should use dark font colors (#111111 to #37474F range).
- Dark background title bars must use high-contrast light text.
- Avoid pale gray text for critical information.

## 8) Metadata Block Validation
Each released diagram must include:
- Company
- Doc ID
- Version
- Revision
- Date
- Author
- Classification

Layout checks:
- Metadata text fits without clipping.
- Metadata block does not overlap diagram content.
- Date must reflect latest export update.

## 9) Branding and Logo Controls
- Use only approved logo variants.
- Keep logo size consistent for same output family.
- Logo must not collide with title or tagline.
- If embedded as inline image, verify crispness at export scale.

## 10) Evidence and Claim Integrity
When a diagram includes performance/compliance claims:
- Include measurement basis (instrument, setup, capture count).
- Keep units consistent (use us, ms, V, Ohm, percent).
- Avoid ambiguous symbols if encoding stability is uncertain.
- Prefer ASCII-safe arrows (->) where toolchain corruption risk exists.

## 11) Export Readiness
Before export:
- Validate at 100% zoom and 125% zoom.
- Check for cut-off text after export in PNG/PDF.
- Reconfirm no symbol encoding artifacts.
- Ensure source and export filenames match revision state.

## 12) Pagination and Heading Flow Control
- A heading must never appear as the last line of a page.
- A heading must stay with following content (keep-with-next rule).
- Minimum requirement under each heading on same page:
  - at least 2 body lines, or
  - at least 1 bullet item with wrapped continuation line.
- If space is insufficient, move heading to the next page.
- Avoid widow/orphan text in multi-line paragraphs:
  - no single trailing line isolated at top of next page,
  - no single opening line isolated at bottom of current page.
- For dense sections, reserve a minimum vertical buffer before heading placement (recommended 18-24 px equivalent).

## 13) Pass/Fail Gate
A diagram fails release if any one condition is true:
- Border-touching text exists.
- Overlap/collision exists.
- Heading size/color mapping is inconsistent.
- Metadata missing or stale.
- Claims lack evidence basis.
- Export contains encoding artifacts.
- Heading appears at page bottom without following content.
- Widow/orphan line condition is present.
