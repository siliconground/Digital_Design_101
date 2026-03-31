module bitwise;

initial begin
	// Bitwise negeation
	$display(" ~4'b0001	= %b", (~4'b0001));
	$display(" ~4'bx001	= %b", (~4'bx001));
	$display(" ~4'bz001	= %b", (~4'bz001));

	// Bitwise AND
	$display(" 4'b0001 & 4'b1001 = %b", (4'b0001 & 4'b1001));
	$display(" 4'b1001 & 4'bx001 = %b", (4'b1001 & 4'bx001));
	$display(" 4'b1001 & 4'bz001 = %b", (4'b1001 & 4'bz001));

	// Bitwise OR
	$display(" 4'b0001 | 4'b1001 = %b", (4'b0001 | 4'b1001));
	$display(" 4'b0001 | 4'b1001 = %b", (4'b0001 | 4'b1001));
	$display(" 4'b0001 | 4'b1001 = %b", (4'b0001 | 4'b1001));

	// Bitwise XOR
	$display(" 4'b0001 ^ 4'b1001 = %b", (4'b0001 ^ 4'b1001));
	$display(" 4'b0001 ^ 4'b1001 = %b", (4'b0001 ^ 4'b1001));
	$display(" 4'b0001 ^ 4'b1001 = %b", (4'b0001 ^ 4'b1001));

	// Bitwise XNOR	
	$display(" 4'b0001 ~^ 4'b1001 = %b", (4'b0001 ~^ 4'b1001));
	$display(" 4'b0001 ~^ 4'b1001 = %b", (4'b0001 ~^ 4'b1001));
	$display(" 4'b0001 ~^ 4'b1001 = %b", (4'b0001 ~^ 4'b1001));
end
	
endmodule

