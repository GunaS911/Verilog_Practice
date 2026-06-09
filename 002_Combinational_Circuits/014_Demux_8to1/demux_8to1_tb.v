`timescale 1ns/1ps

module demux_1to8_tb;

reg D;
reg [2:0] sel;
wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

demux_1to8 uut (
    .D(D),
    .sel(sel),
    .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3),
    .Y4(Y4), .Y5(Y5), .Y6(Y6), .Y7(Y7)
);

initial begin
    $dumpfile("demux_1to8.vcd");
    $dumpvars(0, demux_1to8_tb);
    D = 0;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;



    D = 1;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
end

endmodule
