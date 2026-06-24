# Documentation and Diagram Standards Policy

## Mandatory standards alignment
- IEC 62386-102 context for DALI protocol, timing, and claims.
- Bluetooth Mesh SIG naming and model references.
- ISO/IEC/IEEE 42010 viewpoint clarity for architecture communication.
- ISO 82079-1 quality practices for technical instructions and document consistency.

## Diagram construction rules
1. Use `.drawio` as editable source and keep exported `.png` adjacent.
2. Always include:
   - Title with project scope
   - Metadata footer (Company, Doc ID, Version, Revision, Date, Author, Classification)
   - Clear labels for interfaces and direction of flow
3. Keep text readable at 100% zoom, no overlap, no clipped lines.
4. Use one approved logo variant and fixed placement policy.
5. Keep color semantics consistent (do not reassign meaning without legend).
6. Follow detailed visual QA controls defined in `VISUAL_VALIDATION_SPEC.md`.

## Mandatory visual validation controls
1. Text-to-border padding in boxed content must be at least:
   - Top: 14 px
   - Left: 14 px
   - Right: 14 px
   - Bottom: 12 px
2. No overlaps are allowed between text and:
   - Borders
   - Neighboring objects
   - Arrows/connectors
   - Logos/icons
3. Indentation consistency is required:
   - Bullet indentation must be uniform in each section
   - Wrapped lines align with text block start
4. Typography system must be explicit and consistent:
   - Heading levels must have fixed font family, size, and color mapping
   - Body text must remain smaller than heading text
5. Heading color-size linkage must be consistent across the entire diagram set.
6. Validate at both 100% and 125% zoom before release.
7. Apply pagination quality rules:
   - heading must not be stranded at page bottom,
   - heading must keep with next content block,
   - widow/orphan single-line splits are not allowed.

## Verification/evidence rules
1. Any performance or compliance claim must be evidence traceable.
2. Include instrument and capture context when waveform/test claims are shown.
3. Do not claim standard compliance without explicit reference and measured basis.

## Export/release rules
1. Update source first, then re-export artifacts.
2. Bump revision/date in metadata before export.
3. Run release checklist before client sharing.
4. Keep changelog entry for what changed and why.
5. Release fails if border-touching text, overlap, inconsistent heading scale, or stale metadata is detected.
6. Release fails if heading pagination is poor (orphan heading or widow/orphan text lines).

## AI tool continuity rules
1. Every AI-assisted update must read:
   - `PROJECT_CONTEXT_BASELINE.md`
   - `DOCUMENTATION_ISSUES_LOG.md`
   - `DOC_STANDARDS_POLICY.md`
2. AI output must preserve existing terminology and naming conventions.
3. AI must append incidents; never rewrite historical issue entries.
