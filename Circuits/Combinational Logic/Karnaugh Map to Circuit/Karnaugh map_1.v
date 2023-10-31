module top_module (
    input [4:1] x, 
    output f );

    always @ (*) begin

        case (x) 

        4'b1011 : f = 1'b1;
        4'b1110 : f = 1'b1;
        4'b0101 : f = 1'b1;
        4'b1100 : f = 1'b1;
        4'b0100 : f = 1'b1;
        4'b0110 : f = 1'b1;
        default : f = 1'b0;
        endcase

    end

endmodule


