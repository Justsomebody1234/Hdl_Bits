module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
); 
    wire [15:0]a1, b1 , a2, b2;
    wire cout_1;

    assign a1 = a[15:0];
    assign b1 = b[15:0];
    assign a2 = a[31:16];   
    assign b2 =  b[31:16];  
       
        
    add16 mod_1(.a(a1), .b(b1), .cin(0), .sum(sum[15:0]), .cout(cout_1));
    add16 mod_2(.a(a2), .b(b2), .cin(cout_1), .sum(sum[31:16]), .cout(0));

endmodule
