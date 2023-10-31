module top_module (
    input [4:1] x, 
    output f );

    always @ (*) begin

        case (x) 

        4'h4 : f = 1'b1;
        4'h1 : f = 1'b1;
        4'h5 : f = 1'b1;
        4'h6 : f = 1'b1;
        4'hc : f = 1'b1;
        4'hf : f = 1'b1;
        4'h0 : f = 1'b1;
        4'he : f = 1'b1;
        default : f = 1'b0;
        endcase

    end

endmodule


