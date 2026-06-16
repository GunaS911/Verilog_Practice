module d_ff(input d,clk,output reg q,output qn);
assign qn = ~q;
always @(posedge clk)begin
case(d)
1'b0:q=1'b0;
1'b1:q=1'b1;
endcase
end
endmodule
