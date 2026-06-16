module d_latch_tb;
reg d;
wire q,qn;
d_latch uut(
.d(d),
.q(q),
.qn(qn)
);
initial begin
$dumpfile("d_latch.vcd");
$dumpvars(0,d_latch_tb);
d=0;#10;
d=1;#10;
d=0;#10;
d=1;#10;
$finish;
end
endmodule
