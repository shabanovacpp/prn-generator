`timescale 1ns / 1ps

module controller_uart(
    input  clk_100MHz,
    input  [7:0] data,
    input tx_enable,        
    output tx,          // A18
    output tx_busy,     // V19
    output uart_clk
);
    
    // FSM states
    localparam IDLE = 0;
    localparam TX_NUM_1 = 1;    // Send high byte of sum
    localparam TX_NUM_2 = 2;    // Send low byte of sum
    
    // Local control logic variables
    // FSM state
    reg [2:0] state;
    
    // This variable is super critical in preventing wrong FSM state changes
    reg allow_next;     // Local signal to prevent race conditions 
    
    reg [7:0] out_data;     // The data that will be sent over TX
    reg tx_enable_ctrl;
    // UART clock related variables
    reg clk_uart;           // (100MHz) / (BAUD_RATE*OVERSAMPLING*2) 
    reg [4:0] counter;

    assign uart_clk = clk_uart;
    
    // See UART TX module
    uart_tx uart_tx_115200(
        .clk(clk_uart),
        .tx_enable(tx_enable),
        .data(out_data),
        .tx(tx),
        .tx_busy(tx_busy)
    );
    
    initial begin
        counter = 0;
        clk_uart = 0;
        tx_enable_ctrl = 0;    
        out_data = 0;
        
        state = IDLE;
        allow_next = 0;
    end
    
    // Divided clock for UART @ 115200 baud
    always @(posedge clk_100MHz) begin
        counter <= counter + 1;

        if(counter == 5'd27) begin
            counter <= 0;
            clk_uart <= ~clk_uart;
        end
    end
    
    always @(posedge clk_uart) begin
        case(state)
            IDLE: begin
                state <= tx_enable ? TX_NUM_1 : IDLE;
            end
           
            TX_NUM_1: begin
                out_data <= data;
                
                // Once TX is complete, allow going to next state
                if(~tx_busy && ~allow_next)
                    tx_enable_ctrl <= 1;
                else begin
                    allow_next <= 1;
                    tx_enable_ctrl <= 0;
                end
                
                // TX complete, go to next state
                if(~tx_busy && allow_next) begin
                    allow_next <= 0;
                    state <= TX_NUM_2;
                end
            end
            
            // Exactly the same as the previous state
            TX_NUM_2: begin
                out_data <= data;
                
                if(~tx_busy && ~allow_next)
                    tx_enable_ctrl <= 1;
                else begin
                    allow_next <= 1;
                    tx_enable_ctrl <= 0;
                end
                
                if(~tx_busy && allow_next) begin
                    allow_next <= 0;
                    state <= TX_NUM_1;
                end
            end
        endcase
    end
endmodule