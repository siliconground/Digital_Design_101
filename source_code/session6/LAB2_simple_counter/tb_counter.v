`timescale 1ns / 1ps
module tb_counter ();

	// stimulus signal declaration
	reg clk, rst_n;
	wire [6:0] cnt;

	// clock generation
	always #5 clk = ~clk; // 100MHz

	// set stimulus
	initial begin
		// t= 0: init
		rst_n <= 1'b1; // reset release
		clk <= 1'b0;

		// t = 100: reset enable(active low)
		# 100
		rst_n <= 1'b0;
		
		// t = 150: reset release -> start to count
		# 50
		rst_n <= 1'b1;
	    
		// t = 3150, reset enable -> counter init
		# 3000
		rst_n <= 1'b0;
		// t = 1150
		# 2000
		$finish;
	end


	// DUT instantiation
	counter DUT (
	.clk(clk), 
	.rst_n(rst_n), 
	.cnt(cnt)
);

endmodule
