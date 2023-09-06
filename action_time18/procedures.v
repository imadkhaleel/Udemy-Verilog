module procedures();

    reg [7:0] var1;
    reg [7:0] var2;
    wire [8:0] sum;
    reg [15:0] product;

    assign sum = var1 + var2; // dataflow style aka continous assignment

    always @(var1 or var2) begin // behavioral stlye, it is controlled by the change of var1 or var2
        product = var1 * var2;
    end

    always @ (var1) begin
        $display("MON_VAR1: var1 = %0d", var1);
    end

    always @ (*) begin
        $display("MON_ALL: var1 = %0d, var2 = %0d, sum = %0d, product = %0d", var1, var2, sum, product);
    end

    initial begin
        #1; var1 = 10; var2 = 99;
        #1; var2 = 33;
        #1; var1 = var2 << 2;
        #1; var2 = var2 >> 3;
        #1; var2 = var2 + 1;
    end
endmodule





