module tb_logic();

    reg a;
    reg b;

    wire c;

    some_logic LOGIC(
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        $monitor("a = %b, b = %b, c = %b", a, b, c);
        #1; a = 0; b = 0;
        #1; a = 1; b = 0;
        #1; a = 0; b = 1;
        #1; a = 1; b = 1;
        #1;

    end

    endmodule