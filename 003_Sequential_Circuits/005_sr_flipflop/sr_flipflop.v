module sr_ff(input clk,s,r,output reg q ,output qn);
assign qn = ~q;
always @(posedge clk) begin
case({s,r})
2'b00:;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=1'bx;
endcase
end
endmodule
