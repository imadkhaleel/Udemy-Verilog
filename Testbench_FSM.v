module Testbench_FSM();

	reg clk,reset,ins;
	wire outs;
	integer i;
	
	FSM f1(.*);
	initial begin
		clk=0;reset=0;ins=0;
		#2 reset=1;
		#4 reset=0;ins=0;
		#4 ins=0;
		#4 ins=1;
		#4 ins=0;
		#4 ins=1;
		#4 ins=1;
		#4 ins=1;
		#4 ins=0;
		#4 ins=1;
		#4 ins=1;
		#4 ins=1;
		#4 ins=0;
		#4 ins=1;
		#10 ins=0;
		#4 $finish;
	end
	
	initial begin
		
		for(i = 0; i <= 62; i = i + 4) begin
			#i;
			$monitor("Time = %0t, ins = %b, outs = %b", $time, ins, outs);
		end
	end

	initial forever
	
		#2 clk=~clk;

	
endmodule
