`timescale 1ns/1ns

    // this funcvtions returns the sum of 2 x 8bit numbers
    // An interval variable with the same name as function is
    // created inside it and is used for returning the value

module func_ex1 ();
    
    function [8:0] sum (input [7:0] a, input [7:0] b); //  kinda like a programming function
        begin
            sum = a + b;
        end
    endfunction

    // this will be the variables for the stimulus
    reg [7:0] a, b;

    initial begin
        $monitor($time, "a = %d, b = %d, sum = %d", a, b, sum(a,b));
        #1 a = 1; b = 9;
        #1 a = 13; b = 66;
        #1 a = 255; b = 1;
        #1 a = 255;  b = 255;
    end
endmodule