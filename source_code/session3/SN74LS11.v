`timescale 1ns / 1ps

module SN74LS11 (
	// port list
	in_1A	, 
	in_2A	, 
	in_3A	, 
	in_1B	, 
	in_2B	, 
	in_3B	, 
	in_1C	, 
	in_2C	, 
	in_3C	, 
	out_1Y	,
	out_2Y	, 
	out_3Y
);

// port declraration
input in_1A		;
input in_2A		;
input in_3A		;
input in_1B		;
input in_2B		;
input in_3B		;
input in_1C		;
input in_2C		;
input in_3C		;
output out_1Y	;
output out_2Y	;
output out_3Y	;

// modeling
AND3X1 AND3X1_1 (.out(out_1Y), .in_1(in_1A), .in_2(in_1B), .in_3(in_1C));
AND3X1 AND3X1_2 (.out(out_2Y), .in_1(in_2A), .in_2(in_2B), .in_3(in_2C));
AND3X1 AND3X1_3 (.out(out_3Y), .in_1(in_3A), .in_2(in_3B), .in_3(in_3C));
 

endmodule
