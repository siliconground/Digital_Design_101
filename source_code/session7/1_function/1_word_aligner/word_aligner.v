`timescale 1ns / 1ps

module word_aligner (
	// port list
	word_in, 
	word_out
);

// port declaration
input 	[7:0] word_in		;
output 	[7:0] word_out		;


/* name : word align
 * param : 8-bit binary
 * return type : 1-byte word
 * return : aligned word starting 1
*/
function [7:0] word_align;
	input [7:0] word;
	reg [7:0] temp;
	integer i;

	begin
		temp = word;
		if ( temp == 8'b0 || temp[7] == 1'b1 )
			word_align = temp;
		else
			for (i=7; i>0; i=i-1 ) begin
				if ( temp[7] == 0 ) temp = temp << 1;
				else word_align = temp;
			end
	end
endfunction
	
assign word_out = word_align (word_in);

endmodule
