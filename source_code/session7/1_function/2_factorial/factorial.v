`timescale 1ns / 1ps

module factorial ();


/* name : factorial
 * param : 8-bit operand
 * return type : integer
 * return : integer result of factorial operation
 */
function automatic integer factorial;
	input [7:0] operand;
	if ( operand >= 2 ) factorial = factorial(operand - 1) * operand;
	else factorial = 1;
endfunction

integer result, n;
initial begin
	for ( n=0; n<=7; n=n+1 ) begin // recursive call
		result = factorial(n);
		$display("%0d factorial = %0d", n, result);
	end
end

endmodule
