`timescale 1ns/1ps
module full_subtractor_tb;
reg a,b,bi;
wire bo,d;
full_subtractor uut(
.a(a),
.b(b),
.bi(bi),
.bo(bo),
.d(d)
);
initial begin
$dumpfile("full_subtractor.vcd");
$dumpvars(0,full_subtractor_tb);
a=0;b=0;bi=0;#10;
a=0;b=0;bi=1;#10;
a=0;b=1;bi=0;#10;
a=0;b=1;bi=1;#10;
a=1;b=0;bi=0;#10;
a=1;b=0;bi=1;#10;
a=1;b=1;bi=0;#10;
a=1;b=1;bi=1;#10;
$finish;
end
endmodule
