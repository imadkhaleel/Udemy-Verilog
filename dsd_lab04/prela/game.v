module game (
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


    roomFSM room_FSM (
        .clk(clk),
        .n(n),
        .s(s),
        .e(e),
        .w(w),
        .v(v),
        .reset(reset),
        .s6(s6),
        .win(win),
        .s5(s5),
        .d(d),
        .s4(s4),
        .s3(s3),
        .sw(sw),
        .s2(s2),
        .s1(s1),
        .s0(s0)
    );

    swordFSM sword_FSM (
        .sw(sw),
        .reset(reset),
        .clk(clk),
        .v(v)
    );

endmodule
