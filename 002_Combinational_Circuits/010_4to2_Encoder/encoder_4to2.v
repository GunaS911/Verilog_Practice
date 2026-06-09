module encoder_4to2(input i3,i2,i1,i0,output y1,y0);
assign y1 = i2 | i3;
assign y0 = i1 | i3;
endmodule
