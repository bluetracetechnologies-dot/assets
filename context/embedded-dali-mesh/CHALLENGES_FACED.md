# Challenges Faced and How We Handled Them

## 1) Protocol interpretation drift
- Challenge: DALI waveform and Manchester behavior were at risk of being represented incorrectly.
- Impact: Could cause wrong implementation assumptions and interoperability issues.
- Resolution: Corrected behavior and aligned docs/examples with protocol expectations.
- Preventive control: Protocol conformance review before release.

## 2) Addressing ambiguity (Command vs DAPC)
- Challenge: Command frames and DAPC level frames were mixed in examples.
- Impact: Wrong address byte usage risk.
- Resolution: Split macros and examples clearly by frame type.
- Preventive control: Keep explicit address classification tables in API docs.

## 3) Hardware-specific TX behavior on custom board
- Challenge: Custom board TX behavior differed from DK baseline.
- Impact: Unstable/weak practical waveform if board-specific settings are omitted.
- Resolution: Captured board-specific high-drive guidance and workflow notes.
- Preventive control: Mandatory board matrix and board-aware validation notes.

## 4) Documentation encoding artifacts
- Challenge: Waveform diagram text had corrupted characters from encoding path issues.
- Impact: Unprofessional deliverables and potential review confusion.
- Resolution: Replaced problematic symbols with standards-safe notation.
- Preventive control: Add encoding and readability gate to release checklist.

## 5) Evidence traceability gap
- Challenge: Strong verification claims without consistent capture IDs/measurement context.
- Impact: Harder to defend in formal audits or client review.
- Resolution: Added compliance mapping and required traceability controls.
- Preventive control: Require instrument/capture metadata for waveform claims.

## 6) Tool portability and context loss risk
- Challenge: Switching between AI tools can lose historical context.
- Impact: Repeated mistakes and inconsistent documentation output.
- Resolution: Built tool-agnostic context pack + org-wide standard pack + fixed load order.
- Preventive control: Enforce `CONTEXT_INDEX.md` at every AI session start.

## 7) Environment limitation during publishing
- Challenge: Git CLI not available in this runtime environment.
- Impact: Could not directly initialize/push repository here.
- Resolution: Prepared git-ready staging structure and auto-init script.
- Preventive control: Keep fallback publish workflow and script checked in.

## Current status
- Context continuity controls: Implemented.
- Standards mapping: Implemented.
- Waveform encoding cleanup: Implemented.
- Publish automation readiness: Implemented (pending git availability on host).
