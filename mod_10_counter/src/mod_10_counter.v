`timescale 1ns / 1ps

module mod_10_counter(
    input on,        // Enable signal
    input clk,       // Clock input
    input reset,     // Reset input
    output [3:0] out  // 4-bit counter output
);
    // Instantiate T Flip-Flops
	 tff tff0(.T(on),						 	.clk(clk), .reset(reset | (out[3] & out[1])), .Q(out[0]));
	 tff tff1(.T(on & out[0]) , 					.clk(clk), .reset(reset | (out[3] & out[1])), .Q(out[1]));
	 tff tff2(.T(on & out[0] & out[1]) ,		 	.clk(clk), .reset(reset | (out[3] & out[1])), .Q(out[2]));
	 tff tff3(.T(on & out[0] & out[1] & out[2]) ,.clk(clk), .reset(reset | (out[3] & out[1])), .Q(out[3]));

endmodule