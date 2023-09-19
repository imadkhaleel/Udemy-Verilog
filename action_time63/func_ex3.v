`timescale 1us/1ns
module fucn_ex3();

    function automatic integer factorial (input integer N);
        // make an internal variable for intermediary results 
        // have to be declared before the "begin/end"

        integer result = 0;
        begin 
            if (N == 0)
                result = 1;
            else
                result = N * factorial(N-1);
                factorial = result;
        end 
    endfunction

    initial begin
        #1; $display($time,"factorial (2) = %d", factorial(2));
        #1; $display($time, "factorial (5) = %d", factorial(5));
        #1; $display($time, "factorial(10) = %d", factorial(10));
    end

endmodule