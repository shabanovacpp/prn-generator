`timescale 1ns/1ns

module tb_controller;
    reg clk, ref_clk;
    wire tx, tx_busy;
    reg tx_enable;
    reg [7:0] num1;
    
    controller_uart DUT(
        .clk_100MHz(clk),
        .data(num1),
        .tx_enable(tx_enable),
        .tx(tx),          // A18
        .tx_busy(tx_busy),     // V19
        .uart_clk(ref_clk)
    );
    

    reg f = 0;
    reg f1 = 0;
    reg [7:0] i = 0;
    
    initial begin
        clk = 0;
        num1 = 8'b01010101;
        tx_enable = 1;
        i = 0;
            
    end
    
    always @(posedge ref_clk) begin
                    
        if (i == 0) begin
            num1 <= (num1 == 8'b01010101) ? 8'b01000101 : 8'b01010101;
        end
        if (i < 8'd150) begin
            i <= i + 1;
            f <= 0;
        end
        else begin
            i <= 0;
            f <= 1;
        end
        if (i % 15 == 0) begin
            f1 <= 1;
        end
        else begin
            f1 <= 0;
        end
    end

    always #5 clk <= ~clk;
    always #500000 tx_enable <= ~tx_enable;
endmodule