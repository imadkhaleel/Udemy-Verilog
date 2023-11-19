module ALU (
    input signed [31:0] A,
    input signed [31:0] B,
    input [2:0] ALUop,
    output reg signed [31:0] result
);

// ALU Operations


always @(*)
begin
    case (ALUop)
        3'b010: result = A + B;        // ADD
        3'b110: result = A - B;        // SUB
        3'b111: result = (A < B) ? 1 : 0; // SLT (set if less than)
        3'b000: result = A & B;        // AND
        3'b001: result = A | B;        // OR
        default: result = 32'b0;       // Default case
    endcase
end

endmodule

module Testbench_ALU;
    
    reg signed [31:0] A;
    reg signed [31:0] B;
    reg [2:0] ALUop;
    wire signed [31:0] result;
    
    // Instantiate the ALU module
    ALU uut (
        .A(A),
        .B(B),
        .ALUop(ALUop),
        .result(result)
    );

    // Initialize the signals
    initial begin
        $monitor("%d st Test data: input A is %d, input B is %d, ALUOp is %b, result is %d.", 
                 $time, A, B, ALUop, result);
        
        A = 1; B = 2; ALUop = 3'b010; // Example Test 1
        #1; // Delay for results
        
        A = 3; B = 4; ALUop = 3'b110; // Example Test 2
        #1; // Delay for 
        
        A = 1; B = 2; ALUop = 3'b000; // example test 3
        #1; //delay
        
        A = 1; B = 0; ALUop = 3'b001; // example test 4
        #1; // delay
        
        A = 2; B = 3; ALUop = 3'b111; // example test 5
        #1; // delay
        
        // Add more test cases for other ALU operations here

        $finish;
    end
endmodule