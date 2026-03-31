module arithmetic;

reg [7:0] foo;
reg [7:0] bar; // type casting

initial 
begin

foo = 45;
bar = 9;

$display("foo + bar = %d", foo + bar);
$display("foo - bar = %d", foo - bar);
$display("foo x bar = %d", foo * bar);
$display("foo / bar = %d", foo / bar);
$display("foo %% bar = %d", foo % bar);
$display("foo^2 = %d", bar ** 2);

end


endmodule


