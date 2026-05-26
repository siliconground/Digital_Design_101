`timescale 1ns / 1ps

module my_task ();
	reg a, b, aORb, aXORb;

task my_task(input xa, xb, 
			 output OR, XOR);

		 begin
			 OR = xa | xb;
			 XOR = xa ^ xb;
		 end
endtask

initial begin
	a = 1'b0; b = 1'b0;
#10 a = 1'b1; b = 1'b1;
#10 a = 1'b0; b = 1'b1;
#10 a = 1'b1; b = 1'b0;
#10 $finish;
end

always @(a, b)
	my_task (a, b, aORb, aXORb); // task invocation

endmodule
