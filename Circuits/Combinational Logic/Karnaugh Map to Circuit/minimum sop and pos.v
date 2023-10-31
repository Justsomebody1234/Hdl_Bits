module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
); 
wire temp;
always @ (*) begin
case ({a,b,c,d})

    4'b0010 : temp = 1'b1;
    4'b0111 : temp = 1'b1;
    4'b1111 : temp = 1'b1;
    4'b0011 : temp = 1'b1;
    4'b1011 : temp = 1'b1;
    default : temp = 1'b0;
endcase

end

assign out_pos  = temp;
assign out_sop = temp;

endmodule
