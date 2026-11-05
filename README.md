# Asynchronous FIFO — RTL to GDSII

A parameterizable asynchronous FIFO implemented in Verilog and taken through a complete RTL-to-GDSII digital implementation flow.

## Overview

An asynchronous FIFO enables reliable data transfer between two independent clock domains. This project implements a dual-clock FIFO with Gray-coded pointer synchronization, reset synchronization, and full/empty status generation.

The design demonstrates RTL development, functional verification, clock-domain crossing analysis, logic synthesis, and physical implementation.

## Design Specifications

| Parameter   | Description        | Default  |
| ----------- | ------------------ | -------- |
| `DATASIZE`  | FIFO data width    | 8 bits   |
| `ADDRSIZE`  | FIFO address width | 4 bits   |
| `MEM_DEPTH` | FIFO storage depth | 16 words |

### Features

- Independent read and write clocks and resets
- FIFO memory with separate read and write pointers
- Binary-to-Gray pointer conversion
- Two-stage pointer synchronizers across clock domains
- Full and empty flag generation
- Asynchronous reset assertion with clock-domain synchronization

## Architecture

The design consists of the following modules:

- **FIFO top module:** Integrates the memory, pointers, synchronizers, and status logic.
- **FIFO memory:** Stores data and supports write and read operations.
- **Reset synchronizer:** Synchronizes reset deassertion to the respective clock domain.
- **Pointer synchronizer:** Transfers Gray-coded pointers safely between clock domains.
- **Full detection:** Prevents writes when the FIFO is full.
- **Empty detection:** Prevents reads when the FIFO is empty.

## RTL-to-GDSII Flow

The project includes the following implementation stages:

1. RTL source development
2. Testbench development and functional simulation
3. Lint analysis
4. CDC and RDC verification
5. X-propagation analysis
6. Logic synthesis
7. Post-synthesis formal equivalence checking
8. Gate-level simulation
9. Floorplanning
10. Power planning
11. Placement
12. Clock tree synthesis
13. Routing
14. Post-route formal equivalence checking and gate-level simulation
15. Timing signoff
16. Physical verification
17. Final tapeout signoff

## Repository Structure

```text
.
├── 01_Async_FIFO_src/
├── 02_Async_FIFO_tb/
├── 03_Async_FIFO_sim/
├── 04_Async_FIFO_SuperLint/
├── 05_Async_FIFO_CDC_RDC/
├── 06_Async_FIFO_Xprop/
├── 07_Async_FIFO_Synthesis/
├── 08_Async_FIFO_Post_Synthesis_LEC/
├── 09_Async_FIFO_Post_Synthesis_GLS/
├── 10_Async_FIFO_Floorplanning/
├── 11_Async_FIFO_Powerplanning/
├── 12_Async_FIFO_Placement/
├── 13_Async_FIFO_ClockTreeSynthesis/
├── 14_Async_FIFO_Routing/
├── 15_Async_FIFO_Post_Route_LEC/
├── 16_Async_FIFO_Post_Route_GLS/
├── 17_Async_FIFO_PhysicalDesign_Signoff/
├── 18_Async_FIFO_Timing_Signoff/
├── 19_Async_FIFO_PhysicalVerification/
├── 20_Async_FIFO_SealRing_DummyFill/
├── 21_Async_FIFO_SPICE_Sim/
└── 22_Async_FIFO_TapeOut_SignOff/
```

## Verification

The project includes verification at multiple stages:

- RTL functional simulation
- Lint and CDC/RDC checks
- Synthesis and post-synthesis equivalence
- Gate-level simulation
- Post-route equivalence and timing signoff
- Physical verification


### Synthesis Results

| Metric | Result |
|---|---:|
| FIFO data width | 8 bits |
| FIFO depth | 16 words |
| Synthesized cell area | 51,487.36 µm² |
| Total cell area after synthesis optimization | 51,487 µm² |
| Cell instances | 376 |
| Memory-related cell area | 13,871.81 µm² |

### Timing Results

| Metric | Result |
|---|---:|
| Reported setup slack | 3,854 ps |
| Final setup timing slack (WNS) | 3,854 ps |
| Total negative slack (TNS) | 0 ps |
| Failing timing paths | 0 |

### Physical Verification

- Completed physical design signoff.
- DRC verification reported zero violations.
- Completed post-route equivalence and gate-level verification.

### Power Analysis

The synthesis power report estimates total power of approximately **5.93 mW** under the reported analysis conditions.

This is a synthesis-stage estimate and should not be presented as final post-route power.

## Author

**Revanth Puchhakayala**  

## Acknowledgments

Developed as part of the work at NSDCS Lab.

## License

This project is currently provided for educational and research purposes. Please contact the author for permission to reuse or redistribute the code.

