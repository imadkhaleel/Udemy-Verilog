module swordFSM (
    input logic sw,
    input reset,
    input clk,
    output logic v
);

assign sw = ((~reset&sw&~v) | (~reset &v));

dff dffsw(sw1,clk,v);
endmodule