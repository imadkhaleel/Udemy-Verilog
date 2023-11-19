module swordFSM (
    input sw,
    input reset,
    input clk,
    output reg v
);

    reg sw1;

    always @(posedge clk or posedge reset) begin
        if (reset)
            v <= 1'b0;
        else
            v <= (~reset & sw & ~v) | (~reset & v);
    end

    dff dffsw (.d(sw), .clk(clk), .q(sw1));

endmodule
