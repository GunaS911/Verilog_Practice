`timescale 1ns/1ps
module demux_2to1_tb;
reg i0,sel;
wire y1,y0;
demux_2to1 uut(
.i0(i0),
.sel(sel),
.y1(y1),
.y0(y0)
);
initial begin
$dumpfile("demux_2to1.vcd");
$dumpvars(0,demux_2to1_tb);
i0=0;sel=0;#10;
i0=0;sel=1;#10;
i0=1;sel=0;#10;
i0=1;sel=1;#10;
$finish;
end 
endmodule
