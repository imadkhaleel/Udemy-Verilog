module FSM(input clk, input reset, input ins, output reg outs);

	reg [1:0] currState, nextState;
	parameter S0=0;
	parameter S1=1;
	parameter S2=2; 
	parameter S3=3;

	always @(posedge clk or posedge reset)
		if (reset)
			currState <= S0;
		else
			currState <= nextState;
	always @(currState) 
		begin
			case(currState)
			S0: outs <= 1;
			S1: outs <= 0;
			S2: outs <= 0;
			S3: outs <= 1;
			endcase
		end
	always @(currState or ins)
		begin
		nextState <= S0;
			case(currState)
			S0: begin
				if(!ins)
					nextState<=S0;
				else
					nextState<=S1;
				end
			S1: begin
				if(!ins)
					nextState <= S1;
				else
					nextState<=S2;
				end
			S2:begin
				if(!ins)
					nextState<=S2;
				else
					nextState<=S3;
				end
			S3: begin
				if(!ins)
					nextState<=S3;
				else
					nextState<=S1;
				end
			endcase
		end
endmodule
