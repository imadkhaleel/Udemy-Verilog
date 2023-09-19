module shift_reg_pipo_buggy(
    input reset_n,
    input clk,
    input [7:0] d,
    output reg [7:0] q
);

    always @(posedge clk or negedge reset_n) begin

        if(!reset_n)
            q <= 0;
        else
            q[7:0] <= d[6:0]; //  this is wrong, it is done intentionally to show bug results on task test bench
    end

endmodule