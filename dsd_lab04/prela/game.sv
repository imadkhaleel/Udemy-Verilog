module game(
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

    roomFSM room_FSM(clk, n, s, e, w, v, reset, s6,win, s5, d, s4, s3, sw, s2, s1, s0);

    swordFSM sword_FSM(sw, reset, clk, v);

    endmodule