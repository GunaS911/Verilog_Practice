module half_subtractor(input a,b,output d,bo);
assign bo = ~a & b;
assign d = a^b;
endmodule
