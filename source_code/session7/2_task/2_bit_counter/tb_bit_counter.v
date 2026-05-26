`timescale 1ns / 1ps

module tb_bit_counter;
	
	// stimulus signal
	reg [7:0] data_word;
	// monitor signal
	wire [3:0] bit_count;

	// DUT instantiation
	bit_counter uut (
		.data_word	( data_word		),
		.bit_count	( bit_count		)
	);

	// put stimulus
	initial begin
		data_word = 8'b1111_0000;
		#10;
		data_word = 8'b1110_0000;
		#10; 
		data_word = 8'b1110_1110;
		#50;
		$stop;
	end

endmodule
