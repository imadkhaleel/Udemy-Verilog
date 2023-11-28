module FSM(input clk, input reset, input x, output reg z);

	reg [1:0] state, nextstate;
	parameter S0=0, S1=1 , S2=2 , S3=3;

	always @(posedge clk or posedge reset) // always block to update state
		if (reset)
			state <= S0;
		else
			state <= nextstate;
	always @(state) // always block to compute output
		begin
			case(state)
			S0: z <= 1;// for 0 at start 
			S1: z <= 0;
			S2: z<=0;
			S3: z<=1;// when the sequence reaches number of 1 divisible by 3
			endcase
		end
	always @(state or x) // always block to compute nextstate
		begin
		nextstate <= S0;
			case(state)
			S0: begin
				if(!x)
					nextstate<=S0;
				else
					nextstate<=S1;
				end
			S1: begin
				if(!x)
					nextstate <= S1;
				else
					nextstate<=S2;
				end
			S2:begin
				if(!x)
					nextstate<=S2;
				else
					nextstate<=S3;
				end
			S3: begin
				if(!x)
					nextstate<=S3;
				else
					nextstate<=S1;
				end
			endcase
		end
endmodule
