`timescale 1ns / 1ps

module up_down_counter(
    input on,        // Enable signal
    input up_down,   // 1 = Up, 0 = Down
    input clk,       // Clock input
    input reset,     // Reset input
    output [3:0] out  // 4-bit counter output
);
    // Instantiate T Flip-Flops
	tff tff0(.T(on), .clk(clk), .reset(reset), .Q(out[0]));
	tff tff1(.T(on & (up_down ? out[0] : ~out[0])), .clk(clk), .reset(reset), .Q(out[1]));
	tff tff2(.T(on & (up_down ? (out[0] & out[1]) : ~(out[0] | out[1]))), .clk(clk), .reset(reset), .Q(out[2]));
	tff tff3(.T(on & (up_down ? (out[0] & out[1] & out[2]) : ~(out[0] | out[1] | out[2]))), .clk(clk), .reset(reset), .Q(out[3]));

endmodule
