module t_latch(input t, output reg q,output qn);
assign qn = ~q;
always@(t)begin
q=~t;
end
endmodule
