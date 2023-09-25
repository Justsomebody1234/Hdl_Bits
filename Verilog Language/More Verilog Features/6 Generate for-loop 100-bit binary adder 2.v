module top_module(a,b,cin,cout,sum);
	parameter size = 100;
	input [size-1 : 0] a,b;
	input cin;
	output[size-1 : 0] cout,sum;
    wire [size-1 : 0] old_carry;
    genvar i;
	full_add instanc(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(old_carry[0]));
    generate
        for (i = 1; i < (size-1);i =i+ 1)begin : adders
		    full_add gen(.a(a[i]),.b(b[i]),.cin(old_carry[i-1]),.sum(sum[i]),.cout(old_carry[i]));
		end
    endgenerate
    full_add final_inst(.a(a[size-1]),.b(b[size-1]),.cin(old_carry[size-2]),.sum(sum[size-1]),.cout(old_carry[size-1]));
    assign cout = old_carry;
endmodule
    		  
		  
module full_add(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  wire x,y,z;
  half_add h1(.a(a),.b(b),.s(x),.c(y));
  half_add h2(.a(x),.b(cin),.s(sum),.c(z));
  or o1(cout,y,z);
endmodule 

        
module half_add(a,b,s,c); 
  input a,b;
  output s,c;
  xor x1(s,a,b);
  and a1(c,a,b);
endmodule 