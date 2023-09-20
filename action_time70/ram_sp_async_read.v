module  ram_sp_async_read(
    input clk,
    input [7:0] data_in,
    input [3:0] address,
    input write_en,
    output [7:0] data_out
);

    reg [7:0] ram [0:15]; // bidirectional declaration
    // RAM don't have reset
    // the default value form each location is X
    // the write is synchronous

    always @(posedge clk) begin
        if(write_en) begin
            ram[address] <= data_in;
        end
    end

    assign data_out = ram[address];

endmodule