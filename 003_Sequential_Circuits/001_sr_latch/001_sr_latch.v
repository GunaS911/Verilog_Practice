module sr_latch(input s,r,output Q,Qn);
assign Q = ~(r&Qn);
assign Qn = ~(s&Q);
endmodule 

