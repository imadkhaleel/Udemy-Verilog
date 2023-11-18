module roomFSM(
    input clk,
    input n,
    input s,
    input e,
    input w,
    input v,
    input reset,
    output reg s6,
    output reg win,
    output reg s5,
    output reg d,
    output reg s4,
    output reg s3,
    output reg sw,
    output reg s2,
    output reg s1,
    output reg s0
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
    assign s4 = 


