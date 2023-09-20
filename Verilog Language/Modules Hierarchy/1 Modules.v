module top_module ( input a, input b, output out );
// mod_a module is provided by HdlBits.
    mod_a instance1(.in1(a), .in2(b) ,.out(out));
endmodule
