module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);

/* rv o
   00 00
   01 00
   10 10
   11 01

*/

wire [1:0] temp;

always @(*)begin

case ({ring,vibrate_mode})
   2'b00 : temp = 2'b00;
   2'b01 : temp = 2'b00;
   2'b10 : temp = 2'b10;
   2'b11 : temp = 2'b01;
    default: temp = 2'b00;
endcase

end

assign ringer = temp[1];
assign motor = temp[0];

endmodule
