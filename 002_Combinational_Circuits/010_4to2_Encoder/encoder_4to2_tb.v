`timescale 1ns/1ps
module encoder_4to2_tb;
reg i3,i2,i1,i0;
wire y1,y0;
encoder_4to2 uut(
.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.y1(y1),
.y0(y0)
);
initial begin
$dumpfile("encoder_4to2.vcd");
$dumpvars(0,encoder_4to2_tb);
i3=0;i2=0;i1=0;i0=1;#10;
i3=0;i2=0;i1=1;i0=0;#10;
i3=0;i2=1;i1=0;i0=0;#10;
i3=1;i2=0;i1=0;i0=0;#10;
$finish;
end
endmodule
