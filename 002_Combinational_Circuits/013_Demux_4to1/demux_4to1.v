module demux_1to4(
    input D,
    input [1:0] sel,
    output Y0, Y1, Y2, Y3
);

assign Y0 = D & ~sel[1] & ~sel[0];
assign Y1 = D & ~sel[1] &  sel[0];
assign Y2 = D &  sel[1] & ~sel[0];
assign Y3 = D &  sel[1] &  sel[0];

endmodule
