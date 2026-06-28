# Technical Requirements Checklist

## Architecture and Existing Assets
- Confirm exact Nordic nRF54 reference board repository and revision to branch from
- Confirm complete KiCad project set (schematic, PCB, libraries, and 3D models)
- Confirm immutable RF/antenna section boundaries and keepout definition
- Confirm fixed mechanical envelope, board thickness, and connector height limits

## Interfaces and Features
- Confirm replacement sensor part number, package, and electrical interface constraints
- Confirm I2C peripheral part number/addressing and pull-up strategy ownership
- Confirm LED drive requirements (color, current, control pin preference)
- Confirm board-to-flex connector pinout, mating part, and placement side constraints
- Confirm USB-C charging topology and Li-ion charging IC preferences or locked parts

## Validation and Acceptance
- Confirm required ERC/DRC rule set and manufacturer-specific DFM limits
- Confirm acceptance criteria at schematic review gate
- Confirm acceptance criteria at placement review gate before final routing
- Confirm fabrication output requirements (Gerber standard, drill format, fab notes)

## Delivery and Release
- Confirm final file package: KiCad source, Gerbers, drill, fab drawing, BOM, PnP, STEP, height map
- Confirm naming/versioning convention for release archives
- Confirm whether one post-delivery revision round is expected within scope
- Confirm NDA and communication cadence during design review cycle

