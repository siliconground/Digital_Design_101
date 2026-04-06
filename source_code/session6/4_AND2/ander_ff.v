`timescale 1ns / 1ps

module ander_ff 
(
// port list
	in1, 
	in2, 
	clk,
	out
);

// port declaration
input wire in1;
input wire in2;
input wire clk;
output reg out;


always @(posedge clk) 
begin
	out = in1 & in2;	
end
	
endmodule
