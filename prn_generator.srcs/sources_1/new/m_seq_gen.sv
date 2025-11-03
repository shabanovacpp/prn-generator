`timescale 1ns / 1ps

module m_seq_gen
#(
  parameter n_out = 9,
  parameter code_length = 1023,
  parameter sr_length = 10
)
(
    input m_clk,
    input m_rst,
    input [sr_length-1:0] polynome,
    output reg [code_length-1:0] out,
    output bit m_done
    `ifdef SIMULATION
    ,
    output bit [sr_length-1:0] sr // отладка
    `endif
);
    logic first_bit = 1'b0;
    bit [$clog2(code_length):0] m_counter = '0;
    reg [sr_length-1:0] shift_reg = '1;
    `ifdef SIMULATION
    assign sr = shift_reg;
    `endif
    always_ff @(posedge m_clk) begin
        if (!m_rst) begin
            first_bit <= 1'b0;
            m_counter <= '0;
            shift_reg <= '1;
            m_done <= 1'b0; 
        end
        else if (m_counter < code_length) begin
            m_done <= 1'b0; 
            m_counter <= m_counter + 1;
            out[m_counter]   <=  shift_reg[n_out-1];
            shift_reg <= {shift_reg[sr_length-2:0], ^(shift_reg & polynome)}; //
        end
        else begin
//            counter <= 0;
            m_done <= 1'b1;
        end
    end
    
endmodule

