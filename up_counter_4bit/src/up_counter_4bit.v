`timescale 1ns / 1ps

module up_counter_4bit(on,clk,reset,out);
	input on,clk,reset;
	output [3:0] out;
	tff tf1(on,clk,reset,out[0]);
	tff tf2(on,~out[0],reset,out[1]);
	tff tf3(on,~out[1],reset,out[2]);
	tff tf4(on,~out[2],reset,out[3]);
endmodule
