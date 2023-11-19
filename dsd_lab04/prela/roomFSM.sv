module roomFSM(
    input logic clk,
    input n,
    input s,
    input e,
    input w,
    input v,
    input reset,
    output logic s6,
    output logic win,
    output logic s5,
    output logic d,
    output logic s4,
    output logic s3,
    output logic sw,
    output logic s2,
    output logic s1,
    output logic s0
);

    logic s0;
    assign s0 = reset | (~reset&s1&w) | (~resets0&~e);

    logic s1;
    assign s1 = (~reset&s0&e) | (~reset&s2&n) | ((~reset&s1&~s) & (~reset&s1&~w));

    logic s2;
    assign s2 = (~reset&s1&s) | (~reset&s4&e) | ((~reset&s2&~n) & (~reset&s2&(~e|~s)) & (~reset&s2&~w));

    logic s3;
    assign s3 = (~reset&s2&e&s);

    logic s4;
    assign s4 = (~reset&s2&w) | (~reset&s4&~e);

    logic s5;
    assign s5 = (~reset&s3&v) | (~reset&s5);

    logic s6;
    assign s6 = (~reset&s3&~v) | (~reset&s6);

    d_ff s0ff (s0,clk,s0);
    d_ff s1ff (s1,clk,s1);
    d_ff s2ff (s2,clk,s2);
    d_ff s3ff (s3,clk,s3);
    d_ff s4ff (s4,clk,s4);
    d_ff s5ff (s5,clk,s5);
    d_ff s6ff (s6,clk,s6);
    d_ff s7ff (s4,clk,sw);
    d_ff s8ff (s5,clk,win);
    d_ff s9ff (s9,clk,d);

endmodule 





