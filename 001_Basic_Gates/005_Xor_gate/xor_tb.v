`timescale 1ns/1ps
module xor_tb;
reg a,b;
wire y;
xor_gate uut(
.a(a),
.b(b),
.y(y)
);
initial begin 
$dumpfile("xor.vcd");
$dumpvars(0,xor_tb);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
