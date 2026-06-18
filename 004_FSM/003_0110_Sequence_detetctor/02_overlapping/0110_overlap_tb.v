module overlap_0110_tb;
reg x,clk,rst;
wire y;
overlap_0110 uut(
	.clk(clk),
	.rst(rst),
	.x(x),
	.y(y)
);
always #5 clk = ~clk;
initial begin
	$dumpfile("0110_overlap.vcd");
	$dumpvars(0,overlap_0110_tb);
	clk=0;
	rst=1;
	x=0;
	#10 rst =0;
	x=0;#10;
	x=1;#10;
	x=1;#10;
	x=0;#10;
	x=1;#10;
	x=1;#10;
	x=0;#10;
	$finish;
end
endmodule

