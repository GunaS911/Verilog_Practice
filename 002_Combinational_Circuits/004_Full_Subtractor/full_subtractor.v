module full_subtractor(input a,b,bi,output d,bo);
assign d = a^b^bi;
assign bo = ~a&bi | ~a&b | b&bi;
endmodule
