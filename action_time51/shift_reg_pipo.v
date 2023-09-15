module shift_reg_pipo(
    input [3:0] d,
    input clk,
    input reset_n,
    output reg [3:0] q
);

    // Async negative reset is used
    // the input data is the same as the output data
    // this can be used as a pipleine register

    always @(posedge clk or negedge reset_n) begin
        if(!reset_n)
            q <= 4'b0;
        else
            q[3:0]  <= d[3:0];
    end

endmodule