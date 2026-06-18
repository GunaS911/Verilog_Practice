module non_overlap_0110_tb;
reg clk,rst,x;
wire y;
non_overlap_0110 uut(
.clk(clk),
.rst(rst),
.x(x),
.y(y)
);
always #5 clk = ~clk;
initial begin
$dumpfile("0110_non_overlap.vcd");
$dumpvars(0,non_overlap_0110_tb);
clk =0;
rst = 1;
x =0;
#10 rst =0;
x=0;#10;
x=1;#10;
x=1;#10;
x=0;#10;
x=1;#10;
x=1;#10;
x=0;#10;
x=0;#10;
$finish;
end
endmodule

