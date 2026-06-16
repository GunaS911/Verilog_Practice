module d_ff_tb;
wire q,qn;
reg d,clk;
d_ff uut(
.d(d),
.clk(clk),
.q(q),
.qn(qn)
);
always #5 clk = ~clk;
initial begin
$dumpfile("d_flipflop.vcd");
$dumpvars(0,d_ff_tb);
clk=0;
d=0;#10;
d=1;#10;
d=0;#10;
d=1;#10;
$finish;
end
endmodule
