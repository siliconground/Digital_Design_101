`timescale 1ns / 1ps

module ander (
// port list
	in1, 
	in2, 
	out
);


input wire in1;
input wire in2;
output reg out;

always @(in1 or in2) 
begin
	out = in1 & in2;
end
	
endmodule
