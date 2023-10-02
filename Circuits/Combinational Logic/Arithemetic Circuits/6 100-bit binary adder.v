module top_module(
    input [99:0] a,
    input [99:0] b,
    input cin,
    output cout,
    output [99:0] sum
);
    wire [100:0] sum_temp;  // Temporary sum with an extra bit for potential overflow
    wire carry_out;         // Carry-out for the addition

    assign sum_temp = a + b + cin;  // Calculate the sum, considering cin
    assign sum = sum_temp[99:0];    // Extract the actual sum (100 bits)
    assign cout = sum_temp[100];     // Extract the carry-out

endmodule