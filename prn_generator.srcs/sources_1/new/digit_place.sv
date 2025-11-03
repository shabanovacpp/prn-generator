`timescale 1ns / 1ps

module digit_place(
    input [14:0] number,
    output logic [3:0] thousands,
    output logic [3:0] hundreds,
    output logic [3:0] tens,
    output logic [3:0] ones
    );
    
    logic [14:0] temp_digit;
    always_comb begin
        temp_digit = number;
        
        thousands = temp_digit / 1000;
        temp_digit = temp_digit % 1000;
        
        hundreds = temp_digit / 100;
        temp_digit = temp_digit % 100;
        
        tens = temp_digit / 10;
        
        ones = temp_digit % 10;
    end
    
endmodule
