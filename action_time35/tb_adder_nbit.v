`timescale 1us/1ns
module tb_adder_nbit();

    parameter ADDER_WIDTH = 10; // declare the paramets size
    reg [ADDER_WIDTH-1: 0] a;
    reg [ADDER_WIDTH-1: 0] b;
    wire [ADDER_WIDTH: 0] sum;

    //instantiate the parameterizeD dut

    adder_nbit
    #(.N(ADDER_WIDTH))
    ADDER1(
        .a(a),
        .b(b),
        .sum(sum)
    );

    initial begin
        $monitor("a = %d, b = %d, sum = %d", a, b, sum);
        #1; a = 0; b = 0;
        #2 a = 1; b = 99;
        #1; a = 33; b = 66;
        #1; a = 100; b = 47;
        #1; $stop;
    end
    endmodule