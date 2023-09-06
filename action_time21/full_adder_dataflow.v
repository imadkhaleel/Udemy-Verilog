module full_adder_dataflow(
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
);
    // these are the nets being declared to connect the half adders
    wire sum1;
    wire and1;
    wire and2;


    // this the circuit implementation using the Dataflow style, where we use the assign keyword
    assign sum1 = a ^ b;
    assign and1 = sum1 & carry_in;
    assign and2 = a & b;

    assign sum = sum1 ^ carry_in;
    assign carry_out = and1 | and2;

endmodule
