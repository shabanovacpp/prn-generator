`timescale 1ns / 1ps


module tb;

    logic clk;
    logic btn;
    logic [7:0] seg;
    logic [3:0] act_seg;
    logic led;
    logic led_done;
    logic led_rst;
    logic clk_btn;  
    logic [4096-1:0] prn_test;  
    logic [SR_LENGTH-1:0] s_reg;
    
    top DUT (.clk(clk), .BTN(btn), .act_seg(act_seg), .LED(led), .LED_DONE(led_done), .LED_RST(led_rst), .seg(seg), .clk_btn(clk_btn),
    .prn_test(prn_test), .s_reg(s_reg));
    
    initial begin
         
        clk = 1'b0;
        btn = 1'b0;
        forever
           # 5 clk = !clk; 
                    
    end

endmodule
