module twos_complementer(
	input clk,
	input rst,
	input x,
	output reg y
);
parameter A = 1'b0,
B = 1'b1;
reg state,next_state;
always @(posedge clk or posedge rst)begin
	if(rst)
		state<=A;
	else
		state <= next_state;
	end
always @(*) begin
case(state)
A: begin
if(x)
next_state = B;
else
next_state = A;
end
B:begin
next_state = B;
end
default:
next_state = A;
endcase
end
always @(*) begin
case(state)
A:y =x;
B:y=~x;
default: y =1'b0;
endcase
end
endmodule
