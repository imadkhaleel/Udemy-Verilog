module tb_demux ();
    
    reg x;
    reg sel;

    wire y0;
    wire y1;

    demux_1bit DEMUX1(
        .x(x),
        .sel(sel),
        .y0(y0),
        .y1(y1)
    );

    initial begin
        #1; x = 1;
        #1; x = 0;
        #2; x = 1;
        #1.5; x = 0;
        #0.5; x = 1;
        #2;
    end

    initial begin
        #1; sel = 0;
        #1; sel = 1;
        #2; sel = 1;
        #1.8; sel = 0;
        #1; sel = 1;
        #1; sel = 0;
        #5;
    end
endmodule