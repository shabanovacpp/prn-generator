`timescale 1ns / 1ps

parameter CODE_LENGTH   = 1023;
parameter SR_LENGTH     = 10;   //shift register's length 
parameter N_OUT_GLN     = 7;    //номер выходного бита
parameter N_SV          = 37;
parameter [9:0] polynomeGLN    = 10'b0100010000;
parameter [9:0] polynomeGPS1   = 10'b1000000100; 
parameter [9:0] polynomeGPS2   = 10'b1110100110; 

module top(
    input clk,
    input BTN,
    output bit [3:0] act_seg,
//    input [N_SV-1:0] SV,
    output bit LED,
    output bit LED_DONE,
    output bit LED_RST,
    output bit [7:0] seg
    `ifdef SIMULATION
    ,
    output bit clk_btn,  // отладка
    output bit [CODE_LENGTH-1:0] prn_test,  // отладка
    output bit [SR_LENGTH-1:0] s_reg // отладка
    `endif
    );
    
    bit done;
    bit bit_prn;
    assign LED = !bit_prn;
    assign LED_DONE = !done;
    reg [CODE_LENGTH-1:0] prn;
    
    bit [30:0] counter_clk = '0;              
    bit [$clog2(CODE_LENGTH)-1:0] counter = '0;
    
    bit [23:0] counter_btn = '0;
    bit btn_clk;
    bit rst = 1'b0;
    assign LED_RST = rst; 
    `ifdef SIMULATION
    assign clk_btn = btn_clk;  // отладка
    assign prn_test = prn;  // отладка
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
    
    m_seq_gen #(.n_out(N_OUT_GLN), .code_length(CODE_LENGTH), .sr_length(SR_LENGTH)) gln_l1of 
    (
        .m_clk(clk),
        .m_rst(rst),
        .polynome(polynomeGLN),
        .out(prn), 
        .m_done(done)
        `ifdef SIMULATION
        ,
        .sr(s_reg)
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
    
    always_ff @(posedge clk) begin
        counter_clk <= counter_clk + 1;
        `ifdef SYNTHESIS
        if (!rst & counter_clk > 24'hFFFFFF)
            rst <= 1'b1;
        `else
        if (!rst & counter_clk > 2'b11)
            rst <= 1'b1;
        `endif
    end
    
    always_ff @(posedge btn_clk) begin
        if (!rst)
            counter <= 1'b0;
        else if(done) begin
            counter <= counter + 1;
            bit_prn <= !prn[counter];
        end
    end
    
    always_ff @(posedge clk) begin
        if (BTN == 0) begin 
            if (counter_btn < 24'hFFFFFF) 
                counter_btn <= counter_btn + 1;
        end else begin
            counter_btn <= 0;
        end
        `ifdef SYNTHESIS
        if (counter_btn >  16'hFFFF && counter_btn <  24'hFFFFFF) begin
            btn_clk <= 1;
        end
        else
            btn_clk <= 0;
        `else
            btn_clk <= counter_clk[0];
        `endif
    end 
    
endmodule



