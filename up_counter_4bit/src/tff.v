`timescale 1ns / 1ps

module tff (
    input T,        // T input
    input clk,      // Clock input
    input reset,    // Reset input (active high)
    output reg Q    // Output Q
);
  
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 0; // Reset the output to 0
        end else begin
            if (T) begin
                Q <= ~Q; // Toggle the output when T = 1
            end
        end
    end
endmodule