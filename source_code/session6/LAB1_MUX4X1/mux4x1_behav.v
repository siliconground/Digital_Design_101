`timescale 1ns / 1ps
module mux4x1_behav (
    out, 
    in0, 
	in1, 
	in2, 
	in3, 
    sel1, 
	sel0
);

output out;
input in0, in1, in2, in3;
input sel1, sel0;

/*
reg out;
always @(*) // same as always @(sel0, sel1, in0, in1, in2, in3, in4)
    case ({sel1, sel0}) // bit concatenantion
        2'd0 : out = in0;
        2'd1 : out = in1;
        2'd2 : out = in2;
        2'd3 : out = in3;
        default: $display("Error!!!"); // prevent latch
    endcase
endmodule
*/



//always @(*) 
always @(sel1, sel0, in0, in1, in2, in3)  
	if ({sel1, sel0} == 2'b00)
    out <= in0;
    else if ({sel1, sel0} == 2'b01)
    out <= in1;
    else if({sel1, sel0} == 2'b10)
    out <= in2;
	//else if({sel1, sel0} == 2'b11)
    else out <= in3;
    //else
    //$display("Error!!");
endmodule


/*

*/
