module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);


    wire [4:0] tem;

    fulladd ins1(.a(x[0]), 
                 .b(y[0]), 
                 .cin(1'b0), 
                 .cout(tem[0]), 
                 .sum(sum[0]) );


    fulladd ins2(.a(x[1]), 
                 .b(y[1]), 
                 .cin(tem[0]), 
                 .cout(tem[1]), 
                 .sum(sum[1]) );



    fulladd ins3(.a(x[2]), 
                 .b(y[2]), 
                 .cin(tem[1]), 
                 .cout(tem[2]), 
                 .sum(sum[2]) );


    fulladd ins4(.a(x[3]), 
                 .b(y[3]), 
                 .cin(tem[2]), 
                 .cout(sum[4]), 
                 .sum(sum[3]) );

endmodule


module fulladd( 
    input a, b, cin,
    output cout, sum );
    assign sum = (a ^ b) ^ cin ;
    assign cout = (a & b) | ((a ^ b) & cin) ; 

endmodule
