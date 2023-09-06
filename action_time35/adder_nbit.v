module adder_nbit 
    // Parameters Section
    # (parameter N = 3)
    //ports section
    (input [N-1:0] a,
     input [N-1:0] b,
     output reg [N:0] sum);
    
    //the wildcard operator is the best procedure's sensitivity list control

    always @(*) begin
        sum[N:0] = a[N-1:0] + b[N-1:0];
        //sum = a + b;
    end
    
endmodule