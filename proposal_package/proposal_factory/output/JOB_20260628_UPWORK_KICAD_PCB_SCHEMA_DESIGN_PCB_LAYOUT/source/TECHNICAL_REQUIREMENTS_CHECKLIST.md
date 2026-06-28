# Technical Requirements Checklist

## Architecture and Existing Assets
- Confirm current schematic completeness level and unresolved design notes
- Confirm preferred board layer count (2-layer vs 4-layer) and stack-up constraints
- Confirm final board envelope and connector/mechanical keepout limits
- Confirm expected Raspberry Pi 4 carrier interface set and pin mapping source of truth

## Interfaces and Features
- Confirm Southco R4-EM drive stage electrical requirements and protection components
- Confirm PN532 UART level compatibility, pin mapping, and placement constraints
- Confirm power input rails, latch-current peaks, and thermal expectations
- Confirm mounting holes, connector orientation, and serviceability constraints

## Validation and Acceptance
- Define milestone completion criteria
- Confirm schematic approval gate before final placement
- Confirm placement/routing review gate before manufacturing output generation
- Confirm DRC/ERC rule set and minimum fab constraints
- Confirm required fabrication output format and naming convention

## Delivery and Release
- Confirm final handoff set: KiCad source, Gerbers, drill, fab drawing, BOM, PnP
- Confirm optional deliverables needed (assembly drawing, centroid variants, revision notes)
- Confirm post-delivery revision expectations within hourly scope
- Confirm final signoff and archive handover flow

