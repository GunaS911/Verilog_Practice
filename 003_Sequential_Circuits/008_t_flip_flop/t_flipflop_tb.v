module t_ff_tb;
wire q,qn;
reg t,clk;
t_ff uut(
.t(t),
.clk(clk),
.q(q),
.qn(qn)
);
always #5 clk = ~clk;
initial begin
$dumpfile("t_flipflop.vcd");
$dumpvars(0,t_ff_tb);
clk=0;
t=0;#10;
t=1;#10;
t=0;#10;
t=1;#10;
$finish;
end
endmodule
