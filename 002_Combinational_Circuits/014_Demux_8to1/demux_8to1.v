module demux_1to8(
input D,
input [2:0]sel,
output Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0
);
assign Y0 = D & ~sel[2] & ~sel[1] & ~sel[0];
assign Y1 = D & ~sel[2] & ~sel[1] & sel[0];
assign Y2 = D & ~sel[2] & sel[1] & ~sel[0];
assign Y3 = D & ~sel[2] & sel[1] & sel[0];
assign Y4 = D & sel[2] & ~sel[1] & ~sel[0];
assign Y5 = D & sel[2] & ~sel[1] & sel[0];
assign Y6 = D & sel[2] & sel[1] & ~sel[0];
assign Y7 = D & sel[2] & sel[1] & sel[0];
endmodule
