module twos_complementer_tb;
reg clk,rst,x;
wire y;
twos_complementer uut(
.x(x),
.clk(clk),
.rst(rst),
.y(y)
);
always #5 clk = ~clk;
initial begin
$dumpfile("twos_complementor.vcd");
$dumpvars(0,twos_complementer_tb);
clk=0;
rst=0;
x=0;#10;
x=0;#10;
x=0;#10;
x=1;#10;
x=0;#10;
x=1;#10;
x=0;#10;
x=1;#10;
x=1;#10;
x=0;#10;
x=1;#10;
x=0;#10;
$finish;
end
endmodule
