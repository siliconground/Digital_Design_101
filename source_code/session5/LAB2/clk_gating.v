`timescale 1ns / 1ps

module clk_gating (in_clk, clk_en, out_clk);

	input 	wire in_clk;
	input 	wire clk_en	;
	output 	wire out_clk	;

	assign out_clk = in_clk & clk_en;
	
endmodule
