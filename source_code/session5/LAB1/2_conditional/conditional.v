module conditional;

reg [7:0] foo;
reg [7:0] bar;

initial begin
    /* case 1 */
    foo = 45;
    bar = 9;
    if (foo >= bar) begin
        $display("foo >= bar");
    end else begin
        $display("foo < bar");
    end

    /* case 2 */
    foo = 45;
    bar = 45;
    if (foo <= bar) begin
        $display("foo <= bar");
    end else begin
        $display("foo <bar");
    end

    /* case 3 */
    foo = 9;
    bar = 8;
    if (foo > bar) begin
        $display("foo > bar");
    end else begin
        $display("foo <= bar");
    end

    /* case 4 */
    foo = 22;
    bar = 22;
    if (foo < bar) begin
        $display("foo < bar");
    end else begin
        $display("foo >= bar");
    end
end
endmodule




