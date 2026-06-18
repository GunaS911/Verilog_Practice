module non_overlap_0110(
	input clk,
	input rst,
	input x,
	output reg y
);
reg [2:0]state,next_state;
parameter s0 = 3'b000,
	s1 = 3'b001,
	s2 = 3'b010,
	s3 = 3'b011,
	s4 = 3'b100;
always @(posedge clk or posedge rst)begin
	if(rst)
		state<=s0;
	else
		state <= next_state;
end
always @(*)begin
	case(state)
		s0:next_state=x?s0:s1;
		s1:next_state=x?s2:s1;
		s2:next_state=x?s3:s1;
		s3:next_state=x?s0:s4;
		s4:next_state=s0;
		default:next_state = s0;
	endcase
end
always @(*) y = (state == s4);
endmodule
		
