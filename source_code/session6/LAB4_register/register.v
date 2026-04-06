`timescale 1ns / 1ps

module register (
	rst_n, 
	clk, 
	in1, // 1-bit input 
	in2, // 4-bit input
	out1, // 1-bit input
	out2 // 4-bit output
); // port list

// port declaration and IO direction
input wire rst_n;
input wire clk;
input wire in1;
input wire [3:0] in2; // 4bit input
output reg out1;
output reg [3:0] out2; // 4bit output


// behavioral modeling: 1-bit register
// reg out1;
always @(posedge clk or negedge rst_n) 
begin
	if ( ~rst_n ) out1 <= 1'b0; // active low | rst enable
	else out1 <= in1;
end



// behavioral meodeling: 4-bit register
//reg [3:0] out2;
always @(posedge clk, negedge rst_n) 
begin
	if ( rst_n == 0 ) out2 <= 4'b0;
	else out2 <= in2;
end
	
endmodule
