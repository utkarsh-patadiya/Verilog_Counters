# 4-bit Up Counter using T Flip-Flop (TFF)

This project implements a 4-bit up counter using T flip-flops (TFF). The design is implemented in Verilog, and a testbench is provided to simulate and verify the functionality of the counter.

## Project Structure

The project is organized into the following directories and files:

### `src/`
- `tff.v`: Verilog implementation of the T flip-flop (TFF).
- `up_counter_4bit.v`: Verilog implementation of the 4-bit up counter using T flip-flops.

### `tb/`
- `up_counter_4bit_tb.v`: Verilog testbench for simulating the 4-bit up counter.

### `sim/`
- `sim.png`: Output waveform generated from the simulation in Vivado.
- `wfcg`: Vivado Waveform Configuration file.

### `vivado-project/`
- `xpr`: Vivado project file.

## Description

### T Flip-Flop (TFF)
The T flip-flop is a type of flip-flop that toggles its output state on each clock pulse when the T input is high. The T flip-flop is the fundamental building block for this 4-bit up counter.

### 4-bit Up Counter
The up-counter increments its value on each clock cycle, starting from 0000 (0 in decimal) and counting up to 1111 (15 in decimal). This counter is implemented using 4 T flip-flops connected in a chain.

### Testbench
A testbench (`up_counter_4bit_tb.v`) is provided to simulate the counter's behavior. The testbench includes:
- Initializing the clock and reset signals.
- Monitoring the output of the counter.

## How to Use

1. **Setup Vivado Project**:
   - Create a new project in Xilinx Vivado (name it `up_counter_4bit`).
   - Add files in `src/` as design sources.
   - Add files in `tb/` as simulation sources.

2. **Simulate the Design**:
   - Run the simulation to observe the counter's behavior.
   - The generated waveform is available in the `sim/` folder as `sim.png`.

## Dependencies

- Xilinx Vivado (for simulation and synthesis)
- Verilog support

## License

This project is open-source and available for use and modification under the MIT License.

