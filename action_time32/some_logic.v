module some_logic (
    input a,
    input b,
    output c
);
    wire a_not; // declare internal nets
    wire a_or_b;

    assign c = a_or_b | (a_not & a_or_b);
    assign a_not = ~a;
    assign a_or_b = a | b;
    
endmodule