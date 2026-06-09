`timescale 1ns/1ps

module demux_1to4_tb;

reg D;
reg [1:0] sel;
wire Y0, Y1, Y2, Y3;

demux_1to4 uut (
    .D(D),
    .sel(sel),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin
    $dumpfile("demux_1to4.vcd");
    $dumpvars(0, demux_1to4_tb);

    D = 1;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    D = 0;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
end

endmodule
