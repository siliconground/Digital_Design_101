`timescale 1ns / 1ps

module tb_clk_gating ();
	
// signal declaration
reg in_clk;
reg clk_en;
wire out_clk;

// clock generation
always #5 in_clk = ~in_clk;


// set stimulus values

initial begin
	// 1. initial value set(t = 0ns)
	in_clk <= 1'b0;
	clk_en <= 1'b0;
	$display("Initial Value [%d]", $time);

	// 2. t = 100ns: clock enable
	# 100
	clk_en <=1'b1;
	$display("Clock enable [%d]", $time);

	// 3. t = 200ns: clock disable
	# 100
	clk_en <= 1'b0;
	$display("Clock disable [%d]", $time);

	// 4. t = 300ns: sim termination
	# 100
	$display("Simulation ends [%d]", $time);
	$finish;
end

// DUT instantiation
clk_gating DUT
(
	.in_clk 	(in_clk)	, 
	.clk_en 	(clk_en)	, 
	.out_clk 	(out_clk)
);

	
endmodule
