`timescale 1ns / 1ps

module tb_initial ();
	
	reg x, y, a, b, m;

// block #1
initial 
	m = 1'b0; // t=0ns
// block #2
initial begin // t=0ns
	#5 a = 1'b1; // t=5ns
	#25 b = 1'b0; // t=30ns
	#10 a = 1'b0;
end
// block #3
initial begin // t=0ns
	#10 x = 1'b0; // t=10ns
	#25 y = 1'b1; // t=35ns
end

// block #4
initial // t=0ns
	#50 $finish; // t=50ns 


endmodule
