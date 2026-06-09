module demux_2to1(input i0,sel,output y1,y0);
assign y1 = i0&sel;
assign y0 = i0& ~sel;
endmodule
