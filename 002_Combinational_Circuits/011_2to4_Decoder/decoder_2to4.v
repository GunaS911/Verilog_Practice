module decoder_2to4(input y1,y0,output i3,i2,i1,i0);
assign i0 = ~(y0|y1);
assign i1 = ~y1 & y0;
assign i2= y1 & ~y0;
assign i3 = y1&y0;
endmodule
