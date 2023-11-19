module roomFSM (
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

    always @(posedge clk or posedge reset)
        if (reset)
            {s6, win, s5, d, s4, s3, sw, s2, s1, s0} <= 10'b0;
        else begin
            s0 = reset | (~reset & s1 & w) | (~reset & ~e);
            s1 = (~reset & s0 & e) | (~reset & s2 & n) | ((~reset & s1 & ~s) & (~reset & s1 & ~w));
            s2 = (~reset & s1 & s) | (~reset & s4 & e) | ((~reset & s2 & ~n) & (~reset & s2 & (~e | ~s)) & (~reset & s2 & ~w));
            s3 = (~reset & s2 & e & s);
            s4 = (~reset & s2 & w) | (~reset & s4 & ~e);
            s5 = (~reset & s3 & v) | (~reset & s5);
            s6 = (~reset & s3 & ~v) | (~reset & s6);
        end

    dff s0ff (.d(s0), .clk(clk), .q(s0));
    dff s1ff (.d(s1), .clk(clk), .q(s1));
    dff s2ff (.d(s2), .clk(clk), .q(s2));
    dff s3ff (.d(s3), .clk(clk), .q(s3));
    dff s4ff (.d(s4), .clk(clk), .q(s4));
    dff s5ff (.d(s5), .clk(clk), .q(s5));
    dff s6ff (.d(s6), .clk(clk), .q(s6));
    dff s7ff (.d(s4), .clk(clk), .q(sw));
    dff s8ff (.d(s5), .clk(clk), .q(win));
    dff s9ff (.d(d), .clk(clk), .q(d));

endmodule
