`timescale 1ns / 1ps

module tb_register (); // top module

	// signal declaration
	reg 		rst_n, clk		;
	reg 		in1				;
	reg [3:0] 	in2				;
	wire 		out1			;
	wire [3:0] 	out2			;

	/***** inject stimulus *****/

	initial begin
	// initial value config(t = 0)
	rst_n 		= 1'b0		; // active low rst
	clk 		= 1'b0		;
	in1 		= 1'b0		;
	in2 		= 4'b0000	;


	// t = 1000ns, rst release
	#1000 rst_n = 1'b1; 
	
	// t = 1200ns
	#200 in1 = 1'b1;

	// t = 1300ns
	#100 in2 = 4'b1010;

	// t = 1800ns, rst enable: erase all value if registers
	#500 rst_n = 1'b0;  

	// t = 2000ns
	#200 in1 = 1'b0;
		 in2 = 4'd0; 

	// t = 2300ns
	#300 in1 = 1'b1;
	     in2 = 4'b1111;
	// t=2400
	#100 rst_n = 1'b1;

	// t = 2500ns, terminate sim
	#200 $finish;
	end
	
	/***** clkgen *****/
 	always #5 clk = ~clk;


	/***** DUT instantiation *****/
	register DUT 
	(
	.rst_n 	( rst_n	), 
	.clk 	( clk	), 
	.in1 	( in1	), 
	.in2 	( in2	), 
	.out1 	( out1	), 
	.out2 	( out2	)
	
	);


		
endmodule
