module top_module (
    input clk,
    input x,
    output z
); 
    reg w_xor, w_and, w_or;

    always @ (posedge clk) begin


        w_xor <= x ^(w_xor);
        w_and <= x &(~w_and);
        w_or <= x | (~w_or);


    end

    assign z = ~(w_xor | w_and | w_or);

endmodule
