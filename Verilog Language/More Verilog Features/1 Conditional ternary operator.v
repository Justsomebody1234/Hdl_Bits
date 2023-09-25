module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] a_b, c_d;
    assign a_b = a < b ? a : b;
    assign c_d = c < a_b ? c : a_b;
    assign min = d < c_d ? d : c_d;
    // assign intermediate_result1 = compare? true: false;


endmodule
