`timescale 1ns / 1ps

module pipeline (
	// port list
	clk, 
	rst_n, 
	in1, 
	in2,
	in3,
	out
);

// port declaration
input wire clk;
input wire rst_n;
input wire [9:0] in1; // 10-bit operand
input wire [9:0] in2;
input wire [9:0] in3;
output reg [11:0] out; // 12-bit output

/* 1st clock operation */
///////////////////////////////////////////////////////////////////////////////
// 1. add1: in1 + in2
reg [10:0] temp_add1;
always @(posedge clk, negedge rst_n) 
begin
	if ( ~rst_n ) temp_add1 <= 11'b0;
	else temp_add1 <= {1'b0, in1} + {1'b0, in2};
end

// 2. prepare to load in3
reg [9:0] temp_in3;
always @(posedge clk, negedge rst_n) 
begin
	if ( ~rst_n ) temp_in3 <= 10'b0;
	else temp_in3 <= in3; // load in3 to calc in the second clock
end
///////////////////////////////////////////////////////////////////////////////
/* End of 1st clock operation */


/* 2ed clock operation */
always @(posedge clk, negedge rst_n) 
begin
	if ( ~rst_n ) out <= 12'b0;
	else out <= {1'b0, temp_add1} + {2'b0, temp_in3};
end
/* End of 2ed clock operation */

	
endmodule
