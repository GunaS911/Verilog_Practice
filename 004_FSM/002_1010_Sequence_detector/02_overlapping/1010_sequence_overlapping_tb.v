module sequence_1010_tb;
reg clk,rst,x;
wire y;
sequence_1010 uut(
.clk(clk),
.rst(rst),
.x(x),
.y(y)
);
always #5 clk = ~clk;
initial begin
$dumpfile ("1010_sequence_overlap.vcd");
$dumpvars(0,sequence_1010_tb);
rst =1;
clk =0;
x=0;
#10
rst =0;
x=1;#10;
x=0;#10;
x=1;#10;
x=0;#10;
x=1;#10;
x=0;#10;
x=1;#10;
x=0;#10;
$finish;
end
endmodule
