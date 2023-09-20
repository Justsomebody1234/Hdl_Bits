module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire temp_c;
    wire [31:0] xor_b;
    assign xor_b = {32{sub}} ^ b;
    
    add16 ins_1(.a(a[15:0]), .b(xor_b[15:0]), .cin(sub), .sum(sum[15:0]), .cout(temp_c));
    add16 ins_2(.a(a[31:16]),.b(xor_b[31:16]), .cin(temp_c), .sum(sum[31:16]));

endmodule
