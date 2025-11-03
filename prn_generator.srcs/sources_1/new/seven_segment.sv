`timescale 1ns / 1ps

module seven_segment(
    input bit clk,
    input bit [3:0] p0,
    input bit [3:0] p1,
    input bit [3:0] p2,
    input bit [3:0] p3,
    output bit[7:0] seg,
    output bit [3:0] act_seg
    );
    
    bit [3:0] digit;
    bit [3:0] shift_reg_seg = 4'b1110;
    
    typedef enum bit [7:0]
    {
        D1     = 8'b1111_1001,
        D2     = 8'b1010_0100,
        D3     = 8'b1011_0000,
        D4     = 8'b1001_1001,
        D5     = 8'b1001_0010,
        D6     = 8'b1000_0010,
        D7     = 8'b1111_1000,
        D8     = 8'b1000_0000,
        D9     = 8'b1001_0000,
        D0     = 8'b1100_0000,
        NONE   = 8'b1111_1111
    }   seven_seg_encoding_e;

    seven_seg_encoding_e encoded_digit;
    
    assign seg = encoded_digit;
    assign act_seg = shift_reg_seg;
        
    always @(shift_reg_seg)
      case (shift_reg_seg)
      4'b0111: digit = p0;
      4'b1011: digit = p1;
      4'b1101: digit = p2;
      4'b1110: digit = p3;
      default: digit = 4'b0000;
      endcase
      
    always @(digit)
      case (digit)
      4'b0000: encoded_digit = D0;
      4'b0001: encoded_digit = D1;
      4'b0010: encoded_digit = D2;
      4'b0011: encoded_digit = D3;
      4'b0100: encoded_digit = D4;
      4'b0101: encoded_digit = D5;
      4'b0110: encoded_digit = D6;
      4'b0111: encoded_digit = D7;
      4'b1000: encoded_digit = D8;
      4'b1001: encoded_digit = D9;
      default: encoded_digit = NONE;
      endcase
    
    always_ff @ (posedge clk) begin
        shift_reg_seg <= { shift_reg_seg [0], shift_reg_seg [3:1] };
    end
    
    
endmodule
