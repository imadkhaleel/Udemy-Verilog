module tb_comp ();

    reg a;
    reg b;
    
    wire smaller;
    wire equal;
    wire greater;

    comparator_1bit CMP1(
        .a(a),
        .b(b),
        .smaller(smaller),
        .equal(equal),
        .greater(greater)
    );

    initial begin
        $monitor(" a = %b, b = %b, smaller = %b, equal = %b, greater = %b", a, b, smaller, equal, greater);
    
    #1; a = 0; b = 0;
    #1; a = 1; b = 0;    
    #1; a = 1; b = 0;
    #1; a = 0; b = 1;
    #1; a = 1; b = 1;
    #1; $stop;
    end

endmodule