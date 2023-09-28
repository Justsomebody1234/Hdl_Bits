module B( input x, input y, output z );
    assign z= ~(x^y);
endmodule

module A(input x, input y, output z);
    assign z = (x^y) & x;
endmodule


module top_module (input x, input y, output z);

wire  zIA1, zIB1, zIA2, zIB2;


A IA1(x,y,zIA1);
B IB1(x,y,zIB1);
A IA2(x,y,zIA2);
B IB2(x,y,zIB2);


assign z = (zIA1 | zIB1) ^ (zIA2 & zIB2); 



endmodule
