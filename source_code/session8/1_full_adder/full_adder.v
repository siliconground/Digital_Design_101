`timescale 1ns / 1ps

module full_adder (
    // port list
    a,
    b, 
    cin, 
    sum, 
    cout
);

// port declaration
input a;
input b;
input cin;
output sum;
output cout;

half_adder U0 (a, b, temp_sum, temp_c1) ;
half_adder U1 ( .a(a)               , 
                .b(b)               , 
                .sum(sum)           , 
                .cout(temp_c2))         ;
or U2 (cout, temp1_c1, temp_c2)         ;
    
endmodule
