# Technical Requirements Checklist

## Architecture and Existing Assets
- What is the exact wearable hardware architecture and ESP32 variant?
- Are current schematics, BOM, and PCB revision files available?
- Is there existing firmware codebase and build toolchain?
- Is the bootloader already update-safe and recoverable?

## Interfaces and Protocols
- What NFC mode is required (read, write, pairing, or authentication flow)?
- What BLE behavior is required alongside NFC workflow?
- Which interfaces are mandatory for first delivery (SPI, I2C, UART, GPIO)?
- Are there known timing, interference, or field stability issues?

## Functional Requirements
- Define must-have wearable features versus optional features
- Define user interaction flow and latency expectations
- Specify power targets (sleep current, active current, battery runtime)
- Clarify watchdog, fail-safe, OTA, and rollback policy

## Validation and Acceptance
- What milestone acceptance tests are required by the client?
- Is hardware available for remote testing or onsite only?
- What validation evidence is expected (logs, captures, test matrix)?
- Are endurance, thermal, or battery-cycle tests in scope?

## Delivery and Release
- Preferred repository, branching, and review workflow
- Coding standard and documentation format requirements
- Required production handover artifacts for PCB/PCBA stage
- Support window after final release and signoff process
