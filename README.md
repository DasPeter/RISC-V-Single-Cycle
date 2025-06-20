# RISC-V Single Cycle Processor

A Verilog implementation of a single-cycle RISC-V microprocessor designed for educational purposes at ITESO.

## Authors
- **Pedro García Romero** (is722342)
- **Miguel González Barajas** (is722298)

## Project Overview

This project implements a basic RISC-V single-cycle processor in Verilog HDL. The processor is synthesizable and can execute fundamental arithmetic instructions. It was developed as part of a computer organization course at ITESO.

## Architecture

The processor implements a classic single-cycle RISC-V architecture with the following components:

- **Program Counter (PC)**: Manages instruction sequencing
- **Program Memory**: Stores the instruction set to be executed
- **Register File**: 32 general-purpose registers (RISC-V RV32I)
- **Control Unit**: Generates control signals for instruction execution
- **ALU Control**: Decodes ALU operations
- **Arithmetic Logic Unit (ALU)**: Performs arithmetic and logical operations
- **Immediate Unit**: Handles immediate value extraction and sign extension
- **Multiplexers**: Route data between components

## Supported Instructions

Currently, the processor supports the following RISC-V instructions:

- `add` - Register-register addition
- `addi` - Register-immediate addition

## Project Structure

```
RISC-V-Single-Cycle/
├── src/                          # Verilog source files
│   ├── RISC_V_Single_Cycle.v     # Top-level processor module
│   ├── RISC_V_Single_Cycle_TB.v  # Testbench
│   ├── Control.v                 # Control unit
│   ├── ALU.v                     # Arithmetic Logic Unit
│   ├── ALU_Control.v             # ALU control logic
│   ├── Register_File.v           # Register file implementation
│   ├── Program_Memory.v          # Instruction memory
│   ├── PC_Register.v             # Program counter
│   ├── Immediate_Unit.v          # Immediate value handling
│   ├── Multiplexer_2_to_1.v      # 2-to-1 multiplexer
│   ├── Adder_32_Bits.v           # 32-bit adder
│   └── text.dat                  # Memory initialization file
├── assembly_code/
│   └── Test_Program.asm          # Sample assembly program
├── proj_modelsim/
│   └── Single_Cycle.do           # ModelSim project configuration
├── proj_quartus/
│   ├── RISC_V_Single_Cycle.qpf   # Quartus project file
│   └── RISC_V_Single_Cycle.qsf   # Quartus settings file
└── README.md                     # This file
```

## Key Features

- **Configurable Memory**: Program and data memory depths are parameterized
- **Synthesizable Design**: Ready for FPGA implementation
- **Comprehensive Testbench**: Includes waveform configuration for debugging
- **Multiple Development Environments**: Support for both ModelSim and Quartus

## Parameters

The processor can be configured with the following parameters:

- `PROGRAM_MEMORY_DEPTH`: Size of program memory (default: 64)
- `DATA_MEMORY_DEPTH`: Size of data memory (default: 128)

## Development Environment Setup

### ModelSim
1. Open ModelSim
2. Navigate to the `proj_modelsim/` directory
3. Run the `Single_Cycle.do` script to set up the project
4. Compile and simulate the design

### Quartus
1. Open Quartus Prime
2. Open the project file `proj_quartus/RISC_V_Single_Cycle.qpf`
3. Compile the design for your target FPGA

## Testing

The project includes a testbench (`RISC_V_Single_Cycle_TB.v`) that:
- Generates a clock signal (period: 4 time units)
- Provides reset functionality
- Includes comprehensive waveform configuration for debugging

### Sample Test Program

The `assembly_code/Test_Program.asm` contains a simple test program:

```assembly
MAIN:
    addi t1, zero, 3    # t1 = 3
    addi t2, zero, 7    # t2 = 7
    addi t3, zero, 1    # t3 = 1
    add t1, t1, t1      # t1 = t1 + t1 = 6
    add t2, t2, t1      # t2 = t2 + t1 = 13
    add t3, t2, t1      # t3 = t2 + t1 = 19
```

## Waveform Analysis

The ModelSim project includes a comprehensive waveform configuration that monitors:
- Clock and reset signals
- ALU inputs, outputs, and operations
- Control unit signals
- Register file contents
- Program memory access
- Instruction execution flow

## Version History

- **Version 1.0**: Initial implementation with basic ADD and ADDI instructions
- Original author: Dr. José Luis Pizano Escalante (luispizano@iteso.mx)
- Date: 16/08/2021

## Future Enhancements

Potential areas for expansion:
- Additional arithmetic and logical instructions
- Memory access instructions (load/store)
- Branch and jump instructions
- Pipeline implementation
- Interrupt handling

## License

This project was developed for educational purposes at ITESO. Please refer to your course guidelines for usage and distribution policies.
