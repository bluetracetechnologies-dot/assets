# Project Summary

## Project Name
PCB Modifications for nRF54 Board

## Objective
Adapt a provided open-source Nordic nRF54 reference board into a compact, thickness-constrained wearable product PCB while preserving the proven RF/antenna section and delivering complete manufacturable design outputs.

## Scope Focus
- Adapt existing KiCad source instead of starting from scratch
- Swap one sensor, add one I2C peripheral and one indicator LED
- Add board-to-flex connectors and remove unused schematic/layout blocks
- Maintain RF/antenna section integrity and enforce RF keepout constraints
- Optimize placement/routing for a thin wearable mechanical envelope
- Integrate USB-C charging path and Li-ion power handling

## Execution Phases
1. Reference design audit, block pruning, and schematic modification plan
2. Schematic updates: sensor swap, I2C peripheral, LED, flex connectors, and charging path
3. Mechanical-envelope PCB placement and routing with RF keepout protection
4. Final DFM pass and manufacturing package (Gerber, drill, BOM/PnP, STEP, source)

## Deliverables
- Editable schematic source (KiCad)
- PCB layout within provided mechanical envelope
- Gerbers, drill files, and fabrication drawing
- BOM and pick-and-place outputs
- 3D STEP model and component height map
- Native KiCad source files for full ownership transfer

## Commercial Baseline
- Total Budget: USD 300
- Estimated Timeline: Fixed-price contract (planned 10 to 12 days)

## Milestones
1. Reference design audit, block pruning, and schematic modification plan - USD 90
2. Schematic updates: sensor swap, I2C peripheral, LED, flex connectors, and charging path - USD 90
3. Mechanical-envelope PCB placement and routing with RF keepout protection - USD 75
4. Final DFM pass and manufacturing package (Gerber, drill, BOM/PnP, STEP, source) - USD 45

## Metadata
- Doc ID: BT-NRF54-PCB-MODS
- Version: v1.0
- Revision: R0
- Date: 2026-06-28
- Classification: Client Shareable

