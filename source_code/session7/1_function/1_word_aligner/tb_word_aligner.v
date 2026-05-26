`timescale 1ns / 1ps

module tb_word_aligner ();
	// stimulus signal
	reg [7:0] word_in;
	// monitor signal
	wire [7:0] word_out;

	// DUT instantiation
	word_aligner DUT (
		.word_in 	( word_in	),
		.word_out 	( word_out	)
	);

	initial begin
		// t=0
		word_in = 8'b0010_1000;
		#10;
		word_in = 8'b1010_0010;
		#10;
		word_in = 8'b0000_1001;
		#10;
		word_in = 8'b0001_0100;
		#10;
		word_in = 8'b0110_1100;
		#10;
		word_in = 1110_1000;
		#10;
		word_in = 8'b0;
		#10;
		$finish;
	end

endmodule
