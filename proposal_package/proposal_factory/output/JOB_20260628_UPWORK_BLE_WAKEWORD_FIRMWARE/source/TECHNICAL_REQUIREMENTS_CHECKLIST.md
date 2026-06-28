# Technical Requirements Checklist

## Architecture and Existing Assets
- Confirm target MCU/SoC, revision, and board spin status
- Confirm available schematic, BOM, and PCB/PCBA revisions
- Confirm existing firmware baseline and build workflow
- Confirm boot and recovery strategy

## Interfaces and Features
- Clarify required implementation for Wake word detection, BLE communication, microphone integration, LED and buzzer control, low-power battery optimization
- Confirm wake-word engine boundary: on-device model, trigger API, and CPU/RAM budget
- Confirm microphone interface: PDM/I2S path, sampling rate, gain path, and buffering limits
- Confirm BLE role/profile expectations and packet update cadence
- Confirm LED and buzzer event map, alert patterns, and timing constraints
- Identify mandatory interfaces for phase-1 delivery
- Define timing, throughput, and stability expectations
- Define compatibility constraints if any

## Validation and Acceptance
- Define milestone completion criteria
- Confirm test setup availability and access model
- Confirm expected evidence format (logs, captures, test matrix)
- Confirm target current limits in active, idle, and deep sleep modes
- Confirm endurance or environmental test scope

## Delivery and Release
- Confirm repository and branch workflow
- Confirm code and documentation standards
- Confirm handover artifacts and support window
- Confirm final signoff process

