// theory help https://www.youtube.com/watch?v=6OBhE0AAT5U
module top_module (
    input clk,
    input [7:0] in,
    output  [7:0] pedge
);

	reg [7:0] reg1, reg2;
	
 always @ (posedge clk) begin
    
	 reg1 <= in;
    reg2 <= reg1;
	 

end

assign pedge = reg1 & (~reg2);

endmodule