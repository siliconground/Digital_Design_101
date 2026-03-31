module logical;

reg [7:0] foo;
reg [7:0] bar;

initial begin
    foo = 45; bar = 9;
    $display("Logical result for foo(%0d) && bar(%0d) : %0d", foo, bar, foo == bar);
    foo = 0; bar = 4;
    $display("Logical result for foo(%0d) && bar(%0d) : %0d", foo, bar, foo == bar);
    foo = 'dx; bar = 3;
    $display("Logical result for foo(%0d) && bar(%0d) : %0d", foo, bar, foo == bar);
    foo = 'b101z; bar = 5;
    $display("Logical result for foo(%0d) && bar(%0d) : %0d", foo, bar, foo == bar);
    foo = 45; bar = 9;
    $display("Logical result for foo(%0d) || bar(%0d) : %0d", foo, bar, foo || bar);
    foo = 0; bar = 4;
    $display("Logical result for foo(%0d) || bar(%0d) : %0d", foo, bar, foo || bar);
    foo = 'dx; bar = 3;
    $display("Logical result for foo(%0d) || bar(%0d) : %0d", foo, bar, foo || bar);
    foo = 'b101z; bar = 5;
    $display("Logical result for foo(%0d) || bar(%0d) : %0d", foo, bar, foo || bar);
    foo = 4;
    $display("Logical result for !foo(%0d) : %0d", foo, !foo);
    foo = 0;
    $display("Logical result for !foo(%0d) : %0d", foo, !foo);
end



endmodule
