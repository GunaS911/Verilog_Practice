module t_latch_tb;
wire q,qn;
reg t;
t_latch uut(
.q(q),
.qn(qn),
.t(t)
);
initial begin
$dumpfile("t_latch.vcd");
$dumpvars(0,t_latch_tb);
t=0;#10;
t=1;#10;
t=0;#10;
t=1;#10;
$finish;
end
endmodule
