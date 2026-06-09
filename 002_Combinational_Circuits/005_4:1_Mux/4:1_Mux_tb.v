`timescale 1ns/1ps

module mux_4to1_tb;

reg i0, i1, i2, i3;
reg [1:0] sel;
wire y;

mux_4to1 uut (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux_4to1.vcd");
    $dumpvars(0, mux_4to1_tb);
    i0 = 0; i1 = 1; i2 = 0; i3 = 1;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    $finish;
end

endmodule
