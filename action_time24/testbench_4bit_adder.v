module testbench_4bit_adder();

    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    wire [3:0] sum;
    wire cout;

    integer i, j;
    parameter LOOP_LIMIT = 4;

    ripple_adder_4bit_dataflow RIPPLE_ADD_4BIT(
        .a(a),
        .b(b),
        .carry_in(cin),
        .sum(sum),
        .carry_out(cout)
    );

    always @(*) begin
        $display("a = 0%d, b = 0%d, carry_in = 0%b, sum = %0d, carry_out = %b", a, b, cin, sum, cout);
    end

    initial begin
        for (i = 0; i < LOOP_LIMIT; i = i+1) begin
            for (j = 0; j < LOOP_LIMIT; j = j + 1) begin
                #1 a = i; b = j; cin = i % 2;
            end
        end
    end

endmodule