# Clock Pulse Generator

## Description

This project implements a simple Clock Pulse Generator using Verilog HDL.

The circuit takes a clock signal as input and generates a pulse signal at a regular interval.

A counter is used to count clock cycles. When the counter reaches the selected value, a one-clock-cycle pulse is generated.

## Features

- Simple counter-based design
- Generates one-clock-cycle pulses
- Reset operation
- Easy to understand
- Suitable for beginners

## Inputs

| Input | Description |
|------|-------------|
| `clk` | Input clock |
| `reset` | Resets the circuit |

## Output

| Output | Description |
|------|-------------|
| `pulse` | Generated clock pulse |

## Working

The counter counts the input clock cycles.

When the counter reaches 4, the pulse becomes `1` for one clock cycle.

Then the counter starts again.

Example:

    Counter: 0 1 2 3 4 0 1 2 3 4 ...
    Pulse:   0 0 0 0 1 0 0 0 0 1 ...

## Files

- `clock_pulse_generator.v` - Main Verilog code
- `clock_pulse_generator_tb.v` - Testbench
- `output.vcd` - Simulation waveform
- `README.md` - Project documentation

## How to Run

Compile:

    iverilog -o pulse_sim clock_pulse_generator.v clock_pulse_generator_tb.v

Run:

    vvp pulse_sim

Open waveform:

    gtkwave output.vcd

## Expected Result

The `pulse` output becomes HIGH for one clock cycle after every 5 input clock cycles.

## Conclusion

The Clock Pulse Generator successfully generates regular clock pulses using a simple counter.