`timescale 1ns/1ps
module decoder_2to4_tb;
reg y1,y0;
wire i3,i2,i1,i0;
decoder_2to4 uut(
.i3(i3),
.i2(i2),
.i1(i1),
.i0(i0),
.y1(y1),
.y0(y0)
);
initial begin
$dumpfile("decoder_2to4.vcd");
$dumpvars(0,decoder_2to4_tb);
y1=0;y0=0;#10;
y1=0;y0=1;#10;
y1=1;y0=0;#10;
y1=1;y0=1;#10;
$finish;
end
endmodule
