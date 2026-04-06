`timescale 1ns / 1ps

module tb_adder ();

// stimulus signal declaration

reg clk, rst_n;
reg [9:0] in1;
reg [9:0] in2;
wire [10:0] out;

// clock generation 
always #5 clk = ~clk; // 100MHz

// set stimulus
initial begin
	// init
	rst_n 	= 1'b0	;
	clk 	= 1'b0	;
	in1 	= 10'd0	;
	in2 	= 10'd0	;

	// t = 100ns: rst release
	#100
	rst_n = 1'b1;

	// t = 200ns: set in1 and in2
	#100
	in1 = 10'd10; in2 = 10'd20;

	// t = 300ns: set reset to to empty D-FF
	#100
	rst_n = 1'b0;
	
	// t = 400ns: set in1 and in 2
	#100
	in1 = 10'd123; in2 = 10'd456;

	// t = 500ns: rst release to write values
	#100
	rst_n = 1'b1;

	// t = 550ns: termination of sim
	#50
	$finish;
end

// DUT instatiation

adder DUT (
	.rst_n ( rst_n ), 
	.clk (clk), 
	.in1 (in1), 
	.in2 (in2), 
	.out (out)
);


	
endmodule
