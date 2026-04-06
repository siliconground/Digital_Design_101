`timescale 1ns / 1ps
module tb_counter_loop ();

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
		// t =3150
		# 3000
		rst_n <= 1'b0;
		// t = 3350
		# 2000
		$finish;
	end


	// DUT instantiation
	counter_loop DUT (
	.clk(clk), 
	.rst_n(rst_n), 
	.cnt(cnt)
);

endmodule
