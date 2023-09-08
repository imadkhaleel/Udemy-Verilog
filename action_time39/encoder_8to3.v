module encoder_3to8(
    
    input [7:0] d,
    input enable,
    output reg [2:0] y
);

    always @(*) begin
        if(enable == 0)
            y = 8'b0;
        else begin
                case (d) // having the case statement it can check all 8 combinations.
                8'b00000001 : y = 3'd0;
                8'b00000010 : y = 3'd1;
                8'b00000100 : y = 3'd2;
                8'b00001000 : y = 3'd3;
                8'b00010000 : y = 3'd4;
                8'b00100000 : y = 3'd5;
                8'b01000000 : y = 3'd6;
                8'b10000000 : y = 3'd7;
                // PRO Tip: always make a default value to avoid latch creation
                default : y = 3'd0;
            endcase
        end
    end

endmodule

