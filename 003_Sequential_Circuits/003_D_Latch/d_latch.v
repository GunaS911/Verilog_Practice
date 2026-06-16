module d_latch(input d,output reg q, output qn);
assign qn = ~q;
always @(d) begin
q=d;
end
endmodule
