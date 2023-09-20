module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire mux_controller;
    wire [15:0] cin_0 , cin_1;
    add16 inst1(.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(mux_controller));
    add16 inst2(.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(cin_0), .cout(0));
    add16 inst3(.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(cin_1), .cout(0));
    
    
    always @ (*) begin
        case (mux_controller)
            0:  sum[31:16]= cin_0;
            1:  sum[31:16] = cin_1;
        endcase
    end 
    
endmodule
