`timescale 1ns / 1ps

module half_adder (
    // port list
    a, 
    b, 
    sum,
    cout
);
// port declaration
input a;
input b;
output sum;
output cout;

// gate level modling
xor U0 (sum, a, b);
nand (cout_bar, a, b);
not (cout, cout_bar);
    
endmodule
