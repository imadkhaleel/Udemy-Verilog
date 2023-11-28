module Testbench_FSM();

	reg clk,reset,x;
	wire z;
	integer i;
	
	FSM f1(.*);// module instanciation and connection to testbench
	initial begin
		clk=0;reset=0;x=0;
#2 reset=1;// resetting
#4 reset=0;x=0;// inputs sequences
#4 x=0;
#4 x=1;
#4 x=0;
#4 x=1;
#4 x=1;
#4 x=1;
#4 x=0;
#4 x=1;
#4 x=1;
#4 x=1;
#4 x=0;
#4 x=1;
#10 x=0;
#4 $finish;
		
	end
	
	initial begin// variable dump fil creation for waveform viewing
		$dumpfile("dump.vcd");
		$dumpvars(1);
	end

	initial begin
		
		for(i = 0; i <= 62; i = i + 4) begin
			#i;
			$monitor("Time = %0t, x = %b, z = %b", $time, x, z);
		end
	end

	initial forever// clock generation
	
		#2 clk=~clk;

	
endmodule
