module half_adder_dataflow(
	
	input a,
	input b,
	output sum,
	output carry
	);
	
	assign sum = a ^ b; // a XOR b
	assign carry = a & b; // a AND b
	
endmodule