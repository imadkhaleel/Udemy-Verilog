`timescale 1us/1ns
module func_ex4();

    function automatic integer fibonacci (input integer N);
    // make an internal variable for intermediary results 
    // have to be declared before the "begin/end"

        integer result = 0;
            begin
                if(N == 0)
                    result = 0;
                else if (N == 1)
                    result == 1;
                else
                    result = fibonacci(N-1) + fibonacci(N-2);

                    fibonacci = result;
            end
    endfunction


    initial begin
        #1; $display($time,"fibonacci (2) = %d", fibonacci(2));
        #1; $display($time, "fibonacci (5) = %d", fibonacci(5));
        #1; $display($time, "fibonacci(10) = %d", fibonacci(10));
    end
    
endmodule
