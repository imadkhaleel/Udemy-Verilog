module fsm1(
    input clk,
    input reset_n,
    input validate_code,
    input [3:0] access_code, // 4 bit metro access code
    output reg open_access_door,
    output [1:0] state_out // used for debug
);

// declare the state values as parameters
    parameter [3:0]     IDLE = 2'b0,
                        CHECK_CODE = 2'b0,
                        ACCESS_GRANTED = 2'b10;

    reg [1:0] state;
    reg [1:0] next_state;
    
    reg [3:0] timer;

    always @(*) begin
        next_state = IDLE; // default value
        open_access_door = 0; // door is closed for unkwown behavior
        case(state)

        IDLE: begin
            if(validate_code)
                next_state = CHECK_CODE;
        end

        CHECK_CODE: begin
            if((access_code >= 4'd4) && (access_code <= 4'd11))
            next_state = ACCESS_GRANTED;
        end

        ACCESS_GRANTED: begin
            open_access_door = 1;
            if (timer == 4'hF)
                next_state = IDLE;
            else
            next_state = ACCESS_GRANTED;
        end

        default: next_state = IDLE;
        endcase
        
    end

    always @(posedge clk or negedge reset_n) begin
        if(!reset_n)
            state <= IDLE;
        else
            state <= next_state;
    end

    assign state_out = state;

    always @ (posedge clk or negedge reset_n) begin
        if(!reset_n)
            timer <= 0;
        else if(state == ACCESS_GRANTED)
            timer <= timer + 1'b1;
        else
            timer <= 0;
    end 
    
endmodule