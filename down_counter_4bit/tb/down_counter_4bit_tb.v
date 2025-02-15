`timescale 1ns / 1ps

module down_counter_4bit_tb();
	reg on,clk,reset;
	wire [3:0] count;
	always begin
		#5 clk=~clk;
	end
	down_counter_4bit uut(on,clk,reset,count);
	initial begin
		clk=0;
		on=1;
		reset=1;
		#20 reset=0;
		#205 reset=1;
		#10 reset=0;
		#100 $finish;
	end
	
endmodule