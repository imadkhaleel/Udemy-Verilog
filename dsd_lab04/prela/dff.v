module dff(
    input d,
    input clk,
    output reg q
);
    always @ (posedge clk) begin
        q <= d;
    end
endmodule


clk=0;reset=0;x=0;
		#2 reset=1;// resetting
		#4 reset=0; x=0;// inputs sequences
		#4 x=1;
		#4 x=0;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#4 x=0;
		#4 x=0;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=0;
		#4 x=0;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#4 $finish;



        #2 reset=1;// resetting
		#4 reset=0;x=0;// inputs sequences
		#4 x=0;
		#4 x=1;	
		#4 x=0;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#4 x=0;
		#4 x=0;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=0;
		#4 x=0;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#4 x=0;
		#4 x=1;
		#4 x=1;
		#10 x=0;
		#4 $finish