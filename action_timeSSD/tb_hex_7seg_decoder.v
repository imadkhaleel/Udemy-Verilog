module tb_hex_7seg_decoder();

    reg [3:0] in;
    wire a,b,c,d,e,f,g;
    wire dot;
    integer i;

    hex_7seg_decoder DEC_7SEG(
        .in(in),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .dot(dot)
    );

    initial begin
        $monitor($time,"in  = %d, seven seg code = %7b dot = %1b", in, {a,b,c,d,e,f,g}, dot);
        #1; in = 0;
        for (i = 0; i <16; i = i+1 ) begin
            
            #1 in = i;
        end
        #1;
    end

endmodule