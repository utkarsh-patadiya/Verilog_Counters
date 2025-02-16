// Testbench for mod_10_counter
`timescale 1ns / 1ps  // Time scale for simulation: 1 ns time unit, 1 ps precision

module mod_10_counter_tb();  // Testbench module

    // Declare signals for the testbench
    reg on;       // Control signal to turn the counter on or off
    reg clk;      // Clock signal
    reg reset;    // Reset signal to initialize the counter
    wire [3:0] count;  // 4-bit wire to hold the count value from the counter

    // Clock generation: Toggle clock every 5 ns
    always begin
        #5 clk = ~clk;  // Flip clock every 5 ns (period = 10 ns)
    end

    // Instantiate the mod_10_counter module (the Unit Under Test)
    mod_10_counter uut (
        .on(on),       // Connect 'on' signal to the counter's 'on' input
        .clk(clk),     // Connect 'clk' signal to the counter's 'clk' input
        .reset(reset), // Connect 'reset' signal to the counter's 'reset' input
        .out(count)  // Connect the 4-bit 'count' output from the counter
    );

    // Initial block for test sequence
    initial begin
        // Initialize signals
        clk = 0;      // Start clock at 0
        on = 1;       // Enable the counter at the start
        reset = 1;    // Apply initial reset

        // Apply reset for 20 ns
        #20 reset = 0;  // Deassert reset after 20 ns

        // Apply reset again after 185 ns
        #185 reset = 1; // Assert reset for 185 ns

        // Release reset again
        #10 reset = 0;  // Deassert reset after 10 ns

        // End the simulation after 100 ns
        #100 $finish;  // Terminate the simulation
    end

endmodule
