module top_module (
    input clk,
    input w , R, E, L,
    output reg Q
);
	reg mux_1, mux_2;
	reg temp_Q;	
	always @(w|R|E|L)begin
		case(E)
		1'b0: mux_1 = Q;
		1'b1: mux_1 = w;
		endcase
		case(L)
		1'b0: mux_2 = mux_1;
		1'b1: mux_2 = R;
		endcase
    end
	always @(posedge clk)begin
	Q <= mux_2;
	end
	
endmodule