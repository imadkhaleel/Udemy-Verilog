module comparator_1bit (
    input a,
    input b,
    output smaller,
    output equal,
    output greater
);
    
    wire not_a;
    wire not_b;

    not not1 (not_a, a);
    not not2 (not_b, b);

    and and1 (smaller, a,b);
    xnor nxor1 (equal, a, b);
    and and2 (greater, a, not_b);

endmodule