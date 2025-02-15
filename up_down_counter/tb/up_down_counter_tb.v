`timescale 1ns / 1ps

module up_down_counter_tb;

    // Testbench Signals   
     reg clk;
    reg on;
    reg reset;   
    reg up_down;

    wire [3:0] out;

    // Instantiate the DUT (Device Under Test)
    up_down_counter uut (
        .on(on),
        .up_down(up_down),
        .clk(clk),
        .reset(reset),
        .out(out)
    );

    // Clock Generation (50MHz -> 20ns period)
    always #5 clk = ~clk;

    initial begin
        // Initialize inputs
        clk = 0;
        reset = 1;
        on = 0;
        up_down = 1;  // Start with Up Counting
        #20;
        
        // Release reset
        reset = 0;
        on = 1;
        #100;
        
        // Change to Down Counting
        up_down = 0;
        #100;

        // Disable counter
        on = 0;
        #50;

        // Re-enable counter and count up again
        on = 1;
        up_down = 1;
        #100;

        // Apply reset
        reset = 1;
        #20;
        reset = 0;
        #100;

        // End simulation
        $stop;
    end

endmodule
