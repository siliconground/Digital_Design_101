`timescale 1ns / 1ps

module clock_gen ();
	reg clk;
	
	// block #1
	initial
		clk = 1'b0; // t=0
	// block #2
	always
		#5 clk = !clk;
	// block #3
	/*
	initial
		#100 $finish;
	*/
endmodule
