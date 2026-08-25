module mux_8to1(
	input i0,i1,i2,i3,i4,i5,i6,i7,
	input [2:0]sel,
	output y
);
wire [1:0]sel1;
wire y0,y1;
assign sel1[1:0] = sel[1:0];
	mux_4to1 mux_1(
		.i0(i0),
		.i1(i1),
		.i2(i2),
		.i3(i3),
		.sel(sel1),
		.y(y0)
	);
	mux_4to1 mux_2(
		.i0(i4),
		.i1(i5),
		.i2(i6),
		.i3(i7),
		.sel(sel1),
		.y(y1)
	);
	assign y = (sel[2] == 0) ? y0 : y1;
endmodule
module mux_4to1(
	input i0,i1,i2,i3,
	input [1:0]sel,
	output y
);
assign y = (sel == 2'b00) ? i0:
	(sel == 2'b01) ? i1 :
	(sel == 2'b10) ? i2 :
	i3;
endmodule
