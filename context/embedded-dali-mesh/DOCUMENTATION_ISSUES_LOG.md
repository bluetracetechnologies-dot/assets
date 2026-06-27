# Documentation Issues Log

Purpose: preserve real documentation problems and fixes so future AI tools do not repeat mistakes.

## Incident 001
- Date: 2026-04-30
- Area: Protocol documentation and firmware semantics
- Issue: DALI waveform/encoding representation did not match required bus behavior.
- Impact: Potential interoperability misunderstanding in implementation and docs.
- Root cause: Incorrect polarity assumptions in encoding narrative and implementation references.
- Fix applied: Inversion behavior aligned; docs updated to match corrected waveform logic.
- Prevention: Add protocol conformance review step before publishing diagrams.

## Incident 002
- Date: 2026-04-30
- Area: API and addressing docs
- Issue: Confusion between command address semantics and DAPC address semantics.
- Impact: Wrong frame type risk in examples and control paths.
- Root cause: Mixed examples without explicit command-vs-DAPC distinction.
- Fix applied: Explicit address macros and examples split by frame class.
- Prevention: Add address-frame classification table in every API guide.

## Incident 003
- Date: 2026-05-29
- Area: Hardware validation documentation
- Issue: Custom board TX waveform weak/unstable compared to DK baseline.
- Impact: Inconsistent field behavior and unclear bring-up guidance.
- Root cause: Missing high-drive note in board-specific operational docs.
- Fix applied: Added high-drive requirement and board-aware guidance.
- Prevention: Hardware-specific caveats must be captured in board matrix docs.

## Incident 004
- Date: 2026-06-23 to 2026-06-24
- Area: Diagram quality and export readiness
- Issue: Character encoding artifacts appeared in waveform diagram text (examples: broken symbols).
- Impact: Unprofessional output; reduced audit readability.
- Root cause: Encoding mismatch during authoring/export chain.
- Fix applied: Replaced problematic symbols with standards-safe ASCII forms and standardized wording.
- Prevention: Add encoding check in release checklist and verify at 100% zoom before export.

## Incident 005
- Date: 2026-06-24
- Area: Evidence traceability
- Issue: Strong verification claims in diagrams without explicit capture IDs and measurement references.
- Impact: Harder to defend claims in formal review.
- Root cause: Evidence summary detached from instrument/capture metadata.
- Fix applied: Compliance map created with required traceability additions.
- Prevention: Enforce measurement-ID field and instrument settings block in verification visuals.

## Entry format for future incidents
- Date:
- Area:
- Issue:
- Impact:
- Root cause:
- Fix applied:
- Prevention:
