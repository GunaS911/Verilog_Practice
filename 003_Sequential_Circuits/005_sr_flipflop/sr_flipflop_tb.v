module sr_ff_tb;
reg s,r,clk;
wire q,qn;
sr_ff uut(
.clk(clk),
.s(s),
.r(r),
.q(q),
.qn(qn)
);
always #5 clk = ~clk;
initial begin
clk=0;
$dumpfile("sr_flipflop.vcd");
$dumpvars(0,sr_ff_tb);
s=0;r=0;#10;
s=0;r=1;#10;
s=0;r=0;#10;
s=1;r=0;#10;
s=0;r=0;#10;
s=1;r=1;#10;
$finish;
end
endmodule
