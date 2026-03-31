module equality;

reg [7:0] foo;
reg [7:0] bar;

initial begin
    foo = 45; bar = 9; 
    $display("Logical result for foo(%0d) === bar(%0d) : %0d", foo, bar, foo === bar);
    
	foo = 'b101x; bar = 'b1011;
    $display("Logical result for foo(%0b) === bar(%0b) : %0d", foo, bar, foo === bar);
    $display("Logical result for foo(%0b) === bar(%0b) : %0d", foo, bar, foo == bar);
    
	foo = 'b101x; bar = 'b101x;
    $display("Logical result for foo(%0b) === bar(%0b) : %0d", foo, bar, foo === bar);
    
	foo = 'b101z; bar = 'b1z00;
    $display("Logical result for foo(%0b) !== bar(%0b) : %0d", foo, bar, foo !== bar);
    
	foo = 39; bar = 39;
    $display("Logical result for foo(%0d) == bar(%0d) : %0d", foo, bar, foo == bar);
    
	foo = 14; bar = 14;
    $display("Logical result for foo(%0d) != bar(%0d) : %0d", foo, bar, foo != bar);

end
endmodule
