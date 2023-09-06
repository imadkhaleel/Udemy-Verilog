module adder8bit(

	input [7:0] a,
	input [7:0] b, 
	input [8:0] sum
	);
	
	assign sum = a + b;
	
endmodule