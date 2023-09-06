module adder_4bit_behavioral(
    input [3:0] a,
    input [3:0] b,
    input carry_in,
    output [3:0] sum,
    output carry_out
);

    assign {carry_out, sum} = a + b + carry_in; // doesn't carer bout how to do it and will leave it for sythesis

endmodule

