`timescale 1ns / 1ps


module tb;

    parameter CODE_LENGTH_GLN = 511;
    parameter CODE_LENGTH_GLN   = 511;
    parameter CODE_LENGTH_GPS   = 1023;
    parameter SR_LENGTH     = 10;   //shift register's length 

    logic clk;
    logic btn;
    logic btn_rst;
    logic [7:0] seg;
    logic [3:0] act_seg;
    logic [2:0] led;
    logic led_done;
    logic led_rst;
    logic clk_btn;  
    logic [SR_LENGTH-1:0] s_reg;
    logic [CODE_LENGTH_GLN-1:0] prn_test_gln, 
    logic [CODE_LENGTH_GPS-1:0] prn_test_gps1,
    logic [CODE_LENGTH_GPS-1:0] prn_test_gps2,
    logic [SR_LENGTH-1:0] s_reg_gln,
    logic [SR_LENGTH-1:0] s_reg_gps_g1, 
    logic [SR_LENGTH-1:0] s_reg_gps_g2


    top DUT (.clk(clk), .BTN(btn), .BTN_RST(btn_rst), .act_seg(act_seg), .LED(led), 
             .LED_RST(led_rst), .seg(seg), .tx(tx), .tx_busy(tx_busy), .clk_btn(clk_btn),
             .prn_test_gln(prn_test_gln), .prn_test_gps1(prn_test_gps1), .prn_test_gps2(prn_test_gps2),
             .s_reg_gln(s_reg_gln), .s_reg_gps_g1(s_reg_gps_g1), .s_reg_gps_g2(s_reg_gps_g2));
    
    initial begin
         
        clk = 1'b0;
        btn = 1'b0;
        forever
           # 5 clk = !clk; 
                    
    end

endmodule
