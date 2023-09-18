`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire aband, cdand, allor;
    assign aband = a & b ;
    assign cdand = c & d ;
    assign allor = aband | cdand;
    assign out = allor;
    assign out_n = ~allor;

endmodule
