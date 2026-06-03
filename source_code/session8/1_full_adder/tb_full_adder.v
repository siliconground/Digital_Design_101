`timescale 1ns / 1ps
module tb_full_adder ();

reg a, b, cin;
wire sum, cout;
integer k;

// DUT instantiation
full_adder DUT (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
 
initial begin
    for (k = 0; k < 8; k = k +1) begin
        cin = k / 4;
        b = (k % 4) / 2;
        a = k % 2;
        #10;
    end
    #10 $finish;
end
    
endmodule


