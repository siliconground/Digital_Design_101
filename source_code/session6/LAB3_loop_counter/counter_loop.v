`timescale 1ns / 1ps

module counter_loop (
	// port list
	clk, 
	rst_n, 
	cnt
);

// port declaration
input wire clk;
input wire rst_n;
output reg [6:0] cnt;


always @(posedge clk, negedge rst_n) 
begin
	if (~rst_n) cnt <= 7'b0; // similar to loop exit condition
	else if (cnt == 99) cnt <= 7'b0;
	else cnt <= cnt + 1;
end
	
endmodule
