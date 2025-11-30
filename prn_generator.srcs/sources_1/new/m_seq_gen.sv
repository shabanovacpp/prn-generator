`timescale 1ns / 1ps

module m_seq_gen
#(
  parameter n_out = 9,
  parameter code_length = 1023,
  parameter sr_length = 10,
  parameter [sr_length-1:0] polynome = 10'b0100010000
)
(
    input m_clk,
    input m_rst,
    output bit out
    `ifdef SIMULATION
    ,
    output bit [sr_length-1:0] sr // отладка
    `endif
);
    bit [$clog2(code_length):0] m_counter = '0;
    reg [sr_length-1:0] shift_reg = '1;
    
//    assign out = shift_reg[n_out-1];
    
    `ifdef SIMULATION
    assign sr = shift_reg;
    `endif
    always_ff @(posedge m_clk) begin
        if (!m_rst) begin
            m_counter <= '0;
            shift_reg <= '1;
        end
//        else if (m_counter < code_length) begin
//            m_counter <= m_counter + 1;
//            out <= shift_reg[n_out-1];
//            shift_reg <= {shift_reg[sr_length-2:0], ^(shift_reg & polynome)}; //
//        end
        else begin
            m_counter <= m_counter + 1;
            out <= shift_reg[n_out-1];
            shift_reg <= {shift_reg[sr_length-2:0], ^(shift_reg & polynome)}; //
        end
    
        if (m_counter < code_length) begin
            m_counter <= m_counter + 1;
        end
        else begin
            m_counter <= 0;
        end
        
        
    end
    
endmodule

