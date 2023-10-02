module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    wire [2:0] tem;

 fulladd ins1(.a(a[0]), 
         .b(b[0]), 
         .cin(cin), 
         .cout(tem[0]), 
         .sum(sum[0]) );


 fulladd ins2(.a(a[1]), 
         .b(b[1]), 
         .cin(tem[0]), 
         .cout(tem[1]), 
         .sum(sum[1]) );




 fulladd ins3(.a(a[2]), 
         .b(b[2]), 
         .cin(tem[1]), 
         .cout(tem[2]), 
         .sum(sum[2]) );


assign cout = {tem[2],tem[1],tem[0]};

endmodule


module fulladd( 
    input a, b, cin,
    output cout, sum );
    assign sum = (a ^ b) ^ cin ;
    assign cout = (a & b) | ((a ^ b) & cin) ; 

endmodule
