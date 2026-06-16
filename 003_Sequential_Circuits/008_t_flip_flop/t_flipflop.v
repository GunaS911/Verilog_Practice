module t_ff(input t,clk,output reg q,output qn);
assign qn = ~q;
always @(posedge clk)begin
case(t)
1'b0:q=1'b1;
1'b1:q=1'b0;
endcase
end
endmodule
