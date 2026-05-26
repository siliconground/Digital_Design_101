`timescale 1ns / 1ps
module bit_counter (
	// port list
	data_word, 
	bit_count
);

// port declaration
input [7:0] data_word;
output [3:0] bit_count;

reg [3:0] bit_count;

always @( data_word )
		count_ones(data_word, bit_count); // call task
/* name : count ones
 * param : 8-bit binary
 * return value : number of one
*/

task count_ones;
	// parametet and return value
	input [7:0] reg_a; // parameter
	output [3:0] count; // return value
	
	// internal register to store param and return value
	reg [3:0] count;
	reg [7:0] temp_reg;

	begin
		count = 0;
		temp_reg = reg_a;
		while ( temp_reg ) begin
			if ( temp_reg[0] ) count = count + 1; // count the number of 1 at LSB if existing
			temp_reg = temp_reg >> 1; // shift right to eliminate the existing LSB and pad 0 to MSB
		end
	end
endtask
	
endmodule
