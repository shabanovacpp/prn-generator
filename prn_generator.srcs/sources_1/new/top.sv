`timescale 1ns / 1ps

parameter CODE_LENGTH_GLN   = 511;
parameter CODE_LENGTH_GPS   = 1023;
parameter SR_LENGTH     = 10;   //shift register's length 
parameter N_OUT_GLN     = 7;    //номер выходного бита
parameter N_OUT_GPS     = 10;    //номер выходного бита
parameter N_SV          = 37;
parameter [9:0] polynomeGLN    = 10'b0100010000;
parameter [9:0] polynomeGPS1   = 10'b1000000100; 
parameter [9:0] polynomeGPS2   = 10'b1110100110; 
parameter NUM_SAT = 1;

module top(
    input clk,
    input BTN,
    input BTN_RST,
    output bit [3:0] act_seg,
//    input [N_SV-1:0] SV,
    output bit [2:0] LED,
    output bit LED_RST,
    output bit [7:0] seg
    `ifdef SIMULATION
    ,
    output bit clk_btn,  // отладка
    output bit [CODE_LENGTH_GLN-1:0] prn_test_gln,  // отладка
    output bit [CODE_LENGTH_GPS-1:0] prn_test_gps1,
    output bit [CODE_LENGTH_GPS-1:0] prn_test_gps2,
    output bit [SR_LENGTH-1:0] s_reg_gln,
    output bit [SR_LENGTH-1:0] s_reg_gps_g1, // отладка
    output bit [SR_LENGTH-1:0] s_reg_gps_g2
    `endif
    );
    
    localparam bit [7:0] TAP_G2 [1:32] = '{
        8'b0010_0110, // sat 1, 2^6
        8'b0011_0111, // sat 2, 3^7
        8'b0100_1000, // sat 3
        8'b0101_1001, // sat 4
        8'b0001_1001, // sat 5
        8'b0010_1010, // sat 6
        8'b0001_1000, // sat 7
        8'b0010_1001, // sat 8
        8'b0011_1010, // sat 9
        8'b0010_0011, // sat 10
        8'b0011_0100, // sat 11
        8'b0101_0110, // sat 12
        8'b0110_0111, // sat 13
        8'b0111_1000, // sat 14
        8'b1000_1001, // sat 15
        8'b1001_1010, // sat 16
        8'b0001_0100, // sat 17
        8'b0010_0101, // sat 18
        8'b0011_0110, // sat 19
        8'b0100_0111, // sat 20
        8'b0101_1000, // sat 21
        8'b0110_1001, // sat 22
        8'b0001_0011, // sat 23
        8'b0100_0110, // sat 24
        8'b0101_0111, // sat 25
        8'b0110_1000, // sat 26
        8'b0111_1001, // sat 27
        8'b1000_1010, // sat 28
        8'b0001_0110, // sat 29
        8'b0010_0111, // sat 30
        8'b0011_1000, // sat 31
        8'b0100_1001  // sat 32
    };
    
    bit [30:0] counter_clk = '0;              
    bit [$clog2(CODE_LENGTH_GPS)-1:0] counter = '0;
    
    bit g1, g2_1, g2_2;
    
    assign LED[1] = g1 ^ g2_1 ^ g2_2;
    
    
    bit [23:0] counter_btn = '0;
    bit btn_clk;
    bit [23:0] counter_btn_rst = '0;
    bit btn_clk_rst;
    bit rst = 1'b0;
    assign LED_RST = rst; 
    
    `ifdef SIMULATION
    assign clk_btn = btn_clk;  // отладка
    assign prn_test_gln = prn_gln_l1of;  // отладка
    assign prn_test_gps1 = g1_gps_l1ca;  // отладка
    assign prn_test_gps2 = g2_gps_l1ca;  // отладка
    `endif
    
    bit [3:0] p0;
    bit [3:0] p1;
    bit [3:0] p2;
    bit [3:0] p3;
    
    digit_place d_g1
    (
        .number(counter),
        .thousands(p0),
        .hundreds(p1),
        .tens(p2),
        .ones(p3)
    );
    
    m_seq_gen #(.n_out(N_OUT_GLN), .code_length(CODE_LENGTH_GLN),
                .sr_length(SR_LENGTH), .polynome(polynomeGLN)) gln_l1of 
    (
        .m_clk(btn_clk),
        .m_rst(rst),
        .out(LED[0])
        `ifdef SIMULATION
        ,
        .sr(s_reg_gln)
        `endif
    ); 
    
   m_seq_gen #(.n_out(N_OUT_GPS), .code_length(CODE_LENGTH_GPS),
               .sr_length(SR_LENGTH), .polynome(polynomeGPS1)) gps_l1ca_g1 
    (
        .m_clk(btn_clk),
        .m_rst(rst),
        .out(g1)
        `ifdef SIMULATION
        ,
        .sr(s_reg_gps_g1)
        `endif
    ); 
    
    m_seq_gen #(.n_out(TAP_G2[NUM_SAT][7:4]), .code_length(CODE_LENGTH_GPS),
                .sr_length(SR_LENGTH), .polynome(polynomeGPS2)) gps_l1ca_g2_1 
    (
        .m_clk(btn_clk),
        .m_rst(rst),
        .out(g2_1)
        `ifdef SIMULATION
        ,
        .sr(s_reg_gps_g1)
        `endif
    ); 
    
    m_seq_gen #(.n_out(TAP_G2[NUM_SAT][3:0]), .code_length(CODE_LENGTH_GPS),
                .sr_length(SR_LENGTH), .polynome(polynomeGPS2)) gps_l1ca_g2_2 
    (
        .m_clk(btn_clk),
        .m_rst(rst),
        .out(g2_2)
        `ifdef SIMULATION
        ,
        .sr(s_reg_gps_g1)
        `endif
    ); 
    
    seven_segment s_s1
    (
        .clk(counter_clk[18]),
        .p0(p0),
        .p1(p1),
        .p2(p2),
        .p3(p3),
        .seg(seg),
        .act_seg(act_seg)
    );
    
    always_ff @(posedge clk) begin   //for rst
        counter_clk <= counter_clk + 1;
        `ifdef SYNTHESIS
        if (!rst && counter_clk > 24'hFFFFFF)
            rst <= 1'b1;
        `else
        if (!rst && counter_clk > 2'b11)
            rst <= 1'b1;
        `endif
        
    end
    
    
    always_ff @(posedge btn_clk) begin
        if (!rst)
            counter <= 0;
        else begin
            counter <= counter + 1;
        end
    end
    
    always_ff @(posedge clk) begin  // защита от дребезга контактов кнопки
        if (BTN == 1) begin 
            if (counter_btn < 24'hFFFFFF) 
                counter_btn <= counter_btn + 1;
        end else begin
            counter_btn <= 0;
        end
        `ifdef SYNTHESIS
        if (counter_btn >  18'h22222 && counter_btn <  24'hFFFFFF) begin
            btn_clk <= 1;
        end
        else
            btn_clk <= 0;
        `else
            btn_clk <= counter_clk[0];
        `endif
    end 
    
     
endmodule



