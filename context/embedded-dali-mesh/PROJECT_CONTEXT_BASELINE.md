# Project Context Baseline

## Project
- Name: Bluetooth Mesh and DALI-2 Interoperability Firmware
- Domain: Embedded firmware, BLE Mesh, DALI-2 lighting control
- Primary platform: nRF52840 / Zephyr RTOS

## Technical scope baseline
- Mesh models implemented: OnOff, Level, Lightness, LC, Scene, Time, Scheduler, Vendor
- DALI stack: command translation, Manchester encoding, GPIO timing, commissioning paths
- Key hardware signals:
  - DALI TX on P0.15
  - DALI RX on P0.16

## Known critical engineering facts
1. DALI bus polarity and Manchester logic required inversion corrections to match IEC behavior.
2. Address byte handling differs between command frames and DAPC level frames.
3. Custom boards required TX high-drive configuration for stable output waveform.
4. BLE stability required connection-parameter and buffer tuning.

## Documentation expectations
- Architecture, protocol, hardware, waveform, and milestone diagrams must stay synchronized.
- Each diagram must include metadata footer:
  - Company, Doc ID, Version, Revision, Date, Author, Classification
- Waveform claims must include traceable measurement context.

## Branding baseline
- Company brand: Bluetrace Technologies
- Prefer approved logo variants only.
- Keep logo placement and size consistent across all diagrams.
- Avoid ad-hoc branding differences between exports.

## Change control rule
Any update that changes behavior, verification evidence, or user-facing claims must update:
1. Relevant technical doc(s)
2. Diagram source (`.drawio`) and export (`.png`) if applicable
3. `DOCUMENTATION_ISSUES_LOG.md` if a new issue was encountered
