module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output reg heater,
    output reg aircon,
    output reg fan
); 



always @(*) begin
        heater =0;
            fan = 0;
            aircon =0;

case (mode)
    
    1'b0 : begin

        if (too_hot ==1 ) begin
            heater =0;
            fan = 1;
            aircon =1;
        end

    end

    1'b1 : begin 

        if (too_cold ==1 ) begin
            heater =1;
            fan = 1;
            aircon =0;
        end

    end


endcase

if (fan_on == 1 ) fan =1;


end
endmodule
