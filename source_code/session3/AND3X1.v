`timescale 1ns / 1ps

module AND3X1 (
	// port list
	in_1	, 
	in_2	, 
	in_3	, 
	out
);

// port declaration
input 	in_1	;
input 	in_2	;
input 	in_3	;
output 	out		;

and and3X1 (out, in_1, in_2, in_3);
	
endmodule
