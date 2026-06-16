module jk_latch_tb;
wire q,qn;
reg j,k;
jk_latch uut(
.j(j),
.k(k),
.q(q),
.qn(qn)
);
initial begin
$dumpfile("jk_latch.vcd");
$dumpvars(0,jk_latch_tb);
j=0;k=0;#10;
j=0;k=1;#10;
j=0;k=0;#10;
j=1;k=0;#10;
j=0;k=0;#10;
j=1;k=1;#10;
j=0;k=0;#10;
j=1;k=1;#10;
$finish;
end
endmodule
