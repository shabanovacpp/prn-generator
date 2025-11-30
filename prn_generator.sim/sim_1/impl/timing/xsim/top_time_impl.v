// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Nov 30 17:57:44 2025
// Host        : WIN-UFU5MFIKGKT running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               S:/Repos/prn-generator/prn_generator.sim/sim_1/impl/timing/xsim/top_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module controller_uart
   (tx_OBUF,
    clk_uart,
    tx_busy_OBUF,
    CLK,
    clk_uart_reg_0,
    tx_enable,
    Q);
  output tx_OBUF;
  output clk_uart;
  output tx_busy_OBUF;
  input CLK;
  input clk_uart_reg_0;
  input tx_enable;
  input [7:0]Q;

  wire CLK;
  wire [7:0]Q;
  wire allow_next_reg_n_0;
  wire clk_uart;
  wire clk_uart_i_1_n_0;
  wire clk_uart_reg_0;
  wire [4:0]counter;
  wire \counter[4]_i_1__0_n_0 ;
  wire [7:0]out_data;
  wire out_data_0;
  wire [4:0]p_1_in;
  wire [1:0]state;
  wire tx_OBUF;
  wire tx_busy_OBUF;
  wire tx_enable;
  wire uart_tx_115200_n_2;
  wire uart_tx_115200_n_3;
  wire uart_tx_115200_n_4;

  (* FSM_ENCODED_STATES = "TX_NUM_2:10,IDLE:00,TX_NUM_1:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(uart_tx_115200_n_4),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "TX_NUM_2:10,IDLE:00,TX_NUM_1:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(uart_tx_115200_n_3),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    allow_next_reg
       (.C(CLK),
        .CE(1'b1),
        .D(uart_tx_115200_n_2),
        .Q(allow_next_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000080)) 
    clk_uart_i_1
       (.I0(counter[4]),
        .I1(counter[1]),
        .I2(counter[3]),
        .I3(counter[0]),
        .I4(counter[2]),
        .I5(clk_uart),
        .O(clk_uart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_uart_reg
       (.C(clk_uart_reg_0),
        .CE(1'b1),
        .D(clk_uart_i_1_n_0),
        .Q(clk_uart),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_1_in[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(p_1_in[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(counter[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \counter[4]_i_1__0 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[1]),
        .I4(counter[4]),
        .O(\counter[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_2 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(p_1_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_uart_reg_0),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(counter[0]),
        .R(\counter[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_uart_reg_0),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(counter[1]),
        .R(\counter[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_uart_reg_0),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(\counter[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_uart_reg_0),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(\counter[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_uart_reg_0),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(counter[4]),
        .R(\counter[4]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out_data[7]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(out_data_0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(CLK),
        .CE(out_data_0),
        .D(Q[0]),
        .Q(out_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(CLK),
        .CE(out_data_0),
        .D(Q[1]),
        .Q(out_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(CLK),
        .CE(out_data_0),
        .D(Q[2]),
        .Q(out_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(CLK),
        .CE(out_data_0),
        .D(Q[3]),
        .Q(out_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(CLK),
        .CE(out_data_0),
        .D(Q[4]),
        .Q(out_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(CLK),
        .CE(out_data_0),
        .D(Q[5]),
        .Q(out_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(CLK),
        .CE(out_data_0),
        .D(Q[6]),
        .Q(out_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(CLK),
        .CE(out_data_0),
        .D(Q[7]),
        .Q(out_data[7]),
        .R(1'b0));
  uart_tx uart_tx_115200
       (.CLK(CLK),
        .\FSM_sequential_state_reg[0] (uart_tx_115200_n_2),
        .\FSM_sequential_state_reg[1] (uart_tx_115200_n_3),
        .\FSM_sequential_state_reg[1]_0 (allow_next_reg_n_0),
        .Q(out_data),
        .state(state),
        .tx_OBUF(tx_OBUF),
        .tx_busy_reg_0(tx_busy_OBUF),
        .tx_enable(tx_enable),
        .tx_enable_reg(uart_tx_115200_n_4));
endmodule

module digit_place
   (CO,
    O,
    \counter_reg[2] ,
    seg_OBUF,
    \shift_reg_seg_reg[1] ,
    \shift_reg_seg_reg[1]_0 ,
    \counter_reg[2]_0 ,
    \counter_reg[2]_1 ,
    \counter_reg[4] ,
    \counter_reg[4]_0 ,
    Q,
    \seg[0] ,
    \seg[0]_0 ,
    \seg_OBUF[6]_inst_i_5_0 ,
    \seg_OBUF[6]_inst_i_1 ,
    \seg_OBUF[6]_inst_i_1_0 );
  output [0:0]CO;
  output [1:0]O;
  output [0:0]\counter_reg[2] ;
  output [2:0]seg_OBUF;
  output \shift_reg_seg_reg[1] ;
  output \shift_reg_seg_reg[1]_0 ;
  output \counter_reg[2]_0 ;
  output \counter_reg[2]_1 ;
  output \counter_reg[4] ;
  output \counter_reg[4]_0 ;
  input [9:0]Q;
  input \seg[0] ;
  input \seg[0]_0 ;
  input \seg_OBUF[6]_inst_i_5_0 ;
  input \seg_OBUF[6]_inst_i_1 ;
  input \seg_OBUF[6]_inst_i_1_0 ;

  wire [0:0]CO;
  wire [1:0]O;
  wire [9:0]Q;
  wire [0:0]\counter_reg[2] ;
  wire \counter_reg[2]_0 ;
  wire \counter_reg[2]_1 ;
  wire \counter_reg[4] ;
  wire \counter_reg[4]_0 ;
  wire hundreds0__14_carry__0_i_10_n_0;
  wire hundreds0__14_carry__0_i_1_n_0;
  wire hundreds0__14_carry__0_i_2_n_0;
  wire hundreds0__14_carry__0_i_3_n_0;
  wire hundreds0__14_carry__0_i_4_n_0;
  wire hundreds0__14_carry__0_i_5_n_0;
  wire hundreds0__14_carry__0_i_6_n_0;
  wire hundreds0__14_carry__0_i_7_n_0;
  wire hundreds0__14_carry__0_i_8_n_0;
  wire hundreds0__14_carry__0_i_9_n_0;
  wire hundreds0__14_carry__0_n_0;
  wire hundreds0__14_carry_i_1_n_0;
  wire hundreds0__14_carry_i_2_n_0;
  wire hundreds0__14_carry_i_3_n_0;
  wire hundreds0__14_carry_i_4_n_0;
  wire hundreds0__14_carry_i_5_n_0;
  wire hundreds0__14_carry_i_6_n_0;
  wire hundreds0__14_carry_i_7_n_0;
  wire hundreds0__14_carry_n_0;
  wire hundreds0_carry__0_i_1_n_0;
  wire hundreds0_carry__0_i_2_n_0;
  wire hundreds0_carry__0_i_3_n_0;
  wire hundreds0_carry__0_i_4_n_0;
  wire hundreds0_carry__0_i_5_n_0;
  wire hundreds0_carry__0_i_6_n_0;
  wire hundreds0_carry__0_i_7_n_0;
  wire hundreds0_carry__0_i_8_n_0;
  wire hundreds0_carry__0_n_0;
  wire hundreds0_carry__1_i_1_n_0;
  wire hundreds0_carry__1_i_2_n_0;
  wire hundreds0_carry__1_i_3_n_0;
  wire hundreds0_carry__1_i_4_n_0;
  wire hundreds0_carry__1_i_5_n_0;
  wire hundreds0_carry__1_n_0;
  wire hundreds0_carry__1_n_5;
  wire hundreds0_carry_i_1_n_0;
  wire hundreds0_carry_i_2_n_0;
  wire hundreds0_carry_i_3_n_0;
  wire hundreds0_carry_i_4_n_0;
  wire hundreds0_carry_i_5_n_0;
  wire hundreds0_carry_i_6_n_0;
  wire hundreds0_carry_n_0;
  wire \seg[0] ;
  wire \seg[0]_0 ;
  wire [2:0]seg_OBUF;
  wire \seg_OBUF[6]_inst_i_1 ;
  wire \seg_OBUF[6]_inst_i_11_n_0 ;
  wire \seg_OBUF[6]_inst_i_14_n_0 ;
  wire \seg_OBUF[6]_inst_i_15_n_0 ;
  wire \seg_OBUF[6]_inst_i_17_n_0 ;
  wire \seg_OBUF[6]_inst_i_18_n_0 ;
  wire \seg_OBUF[6]_inst_i_19_n_0 ;
  wire \seg_OBUF[6]_inst_i_1_0 ;
  wire \seg_OBUF[6]_inst_i_20_n_0 ;
  wire \seg_OBUF[6]_inst_i_23_n_0 ;
  wire \seg_OBUF[6]_inst_i_25_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_0 ;
  wire \seg_OBUF[6]_inst_i_9_n_0 ;
  wire \shift_reg_seg_reg[1] ;
  wire \shift_reg_seg_reg[1]_0 ;
  wire tens1__13_carry__0_i_1_n_0;
  wire tens1__13_carry__0_i_2_n_0;
  wire tens1__13_carry__0_i_3_n_0;
  wire tens1__13_carry__0_i_4_n_0;
  wire tens1__13_carry__0_i_5_n_0;
  wire tens1__13_carry__0_n_5;
  wire tens1__13_carry__0_n_6;
  wire tens1__13_carry__0_n_7;
  wire tens1__13_carry_i_1_n_0;
  wire tens1__13_carry_i_2_n_0;
  wire tens1__13_carry_i_3_n_0;
  wire tens1__13_carry_i_4_n_0;
  wire tens1__13_carry_i_5_n_0;
  wire tens1__13_carry_i_6_n_0;
  wire tens1__13_carry_n_0;
  wire tens1__13_carry_n_4;
  wire tens1__13_carry_n_5;
  wire tens1__13_carry_n_6;
  wire tens1_carry__0_i_1_n_0;
  wire tens1_carry__0_i_2_n_0;
  wire tens1_carry__0_i_3_n_0;
  wire tens1_carry__0_i_4_n_0;
  wire tens1_carry__0_i_5_n_0;
  wire tens1_carry__0_i_6_n_0;
  wire tens1_carry__0_i_7_n_0;
  wire tens1_carry__0_i_8_n_0;
  wire tens1_carry__0_n_0;
  wire tens1_carry__1_i_1_n_0;
  wire tens1_carry__1_i_2_n_0;
  wire tens1_carry__1_i_3_n_0;
  wire tens1_carry__1_n_0;
  wire tens1_carry__1_n_5;
  wire tens1_carry__1_n_6;
  wire tens1_carry__1_n_7;
  wire tens1_carry_i_1_n_0;
  wire tens1_carry_i_2_n_0;
  wire tens1_carry_i_3_n_0;
  wire tens1_carry_i_4_n_0;
  wire tens1_carry_n_0;
  wire thousands0_carry__0_i_1_n_0;
  wire thousands0_carry__0_i_2_n_0;
  wire thousands0_carry__0_i_3_n_0;
  wire thousands0_carry_i_1_n_0;
  wire thousands0_carry_i_2_n_0;
  wire thousands0_carry_i_3_n_0;
  wire thousands0_carry_n_0;
  wire [2:0]NLW_hundreds0__14_carry_CO_UNCONNECTED;
  wire [3:0]NLW_hundreds0__14_carry_O_UNCONNECTED;
  wire [2:0]NLW_hundreds0__14_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_hundreds0__14_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_hundreds0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_hundreds0_carry_O_UNCONNECTED;
  wire [2:0]NLW_hundreds0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_hundreds0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_hundreds0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_hundreds0_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_tens1__13_carry_CO_UNCONNECTED;
  wire [3:0]NLW_tens1__13_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_tens1__13_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_tens1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_tens1_carry_O_UNCONNECTED;
  wire [2:0]NLW_tens1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_tens1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_tens1_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_tens1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_thousands0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_thousands0_carry_O_UNCONNECTED;
  wire [3:0]NLW_thousands0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_thousands0_carry__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 hundreds0__14_carry
       (.CI(1'b0),
        .CO({hundreds0__14_carry_n_0,NLW_hundreds0__14_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({hundreds0__14_carry_i_1_n_0,hundreds0__14_carry_i_2_n_0,hundreds0__14_carry_i_3_n_0,1'b0}),
        .O(NLW_hundreds0__14_carry_O_UNCONNECTED[3:0]),
        .S({hundreds0__14_carry_i_4_n_0,hundreds0__14_carry_i_5_n_0,hundreds0__14_carry_i_6_n_0,hundreds0__14_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 hundreds0__14_carry__0
       (.CI(hundreds0__14_carry_n_0),
        .CO({hundreds0__14_carry__0_n_0,NLW_hundreds0__14_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({hundreds0__14_carry__0_i_1_n_0,hundreds0__14_carry__0_i_2_n_0,hundreds0__14_carry__0_i_3_n_0,hundreds0__14_carry__0_i_4_n_0}),
        .O(NLW_hundreds0__14_carry__0_O_UNCONNECTED[3:0]),
        .S({hundreds0__14_carry__0_i_5_n_0,hundreds0__14_carry__0_i_6_n_0,hundreds0__14_carry__0_i_7_n_0,hundreds0__14_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'h45105144)) 
    hundreds0__14_carry__0_i_1
       (.I0(hundreds0__14_carry__0_i_9_n_0),
        .I1(hundreds0_carry__1_n_5),
        .I2(O[0]),
        .I3(hundreds0_carry__1_n_0),
        .I4(O[1]),
        .O(hundreds0__14_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hundreds0__14_carry__0_i_10
       (.I0(Q[7]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(hundreds0__14_carry__0_i_10_n_0));
  LUT5 #(
    .INIT(32'h41144150)) 
    hundreds0__14_carry__0_i_2
       (.I0(hundreds0__14_carry__0_i_10_n_0),
        .I1(O[0]),
        .I2(hundreds0_carry__1_n_5),
        .I3(O[1]),
        .I4(hundreds0_carry__1_n_0),
        .O(hundreds0__14_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hF75D)) 
    hundreds0__14_carry__0_i_3
       (.I0(tens1__13_carry__0_i_1_n_0),
        .I1(O[0]),
        .I2(hundreds0_carry__1_n_0),
        .I3(O[1]),
        .O(hundreds0__14_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hDFFD)) 
    hundreds0__14_carry__0_i_4
       (.I0(Q[5]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(hundreds0_carry__1_n_0),
        .I3(O[0]),
        .O(hundreds0__14_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h4D646C24B29B93DB)) 
    hundreds0__14_carry__0_i_5
       (.I0(hundreds0__14_carry__0_i_9_n_0),
        .I1(hundreds0_carry__1_n_5),
        .I2(hundreds0_carry__1_n_0),
        .I3(O[1]),
        .I4(O[0]),
        .I5(hundreds0_carry__1_i_1_n_0),
        .O(hundreds0__14_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hB6D22CB4492DD34B)) 
    hundreds0__14_carry__0_i_6
       (.I0(hundreds0__14_carry__0_i_10_n_0),
        .I1(O[1]),
        .I2(hundreds0_carry__1_n_0),
        .I3(O[0]),
        .I4(hundreds0_carry__1_n_5),
        .I5(hundreds0__14_carry__0_i_9_n_0),
        .O(hundreds0__14_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h24DBFA05DB2405FA)) 
    hundreds0__14_carry__0_i_7
       (.I0(tens1__13_carry__0_i_1_n_0),
        .I1(hundreds0_carry__1_n_0),
        .I2(O[1]),
        .I3(hundreds0_carry__1_n_5),
        .I4(O[0]),
        .I5(hundreds0__14_carry__0_i_10_n_0),
        .O(hundreds0__14_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h1230CF12EDCF30ED)) 
    hundreds0__14_carry__0_i_8
       (.I0(Q[5]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(Q[6]),
        .I3(O[0]),
        .I4(hundreds0_carry__1_n_0),
        .I5(O[1]),
        .O(hundreds0__14_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hundreds0__14_carry__0_i_9
       (.I0(Q[8]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(hundreds0__14_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hundreds0__14_carry_i_1
       (.I0(hundreds0_carry__1_n_5),
        .I1(hundreds0_carry_i_6_n_0),
        .O(hundreds0__14_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h90)) 
    hundreds0__14_carry_i_2
       (.I0(hundreds0_carry_i_5_n_0),
        .I1(Q[3]),
        .I2(O[1]),
        .O(hundreds0__14_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    hundreds0__14_carry_i_3
       (.I0(O[0]),
        .I1(Q[2]),
        .O(hundreds0__14_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h2D22D2DDD2DD2D22)) 
    hundreds0__14_carry_i_4
       (.I0(Q[5]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(hundreds0_carry_i_6_n_0),
        .I3(hundreds0_carry__1_n_5),
        .I4(hundreds0_carry__1_n_0),
        .I5(O[0]),
        .O(hundreds0__14_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h71828E7D)) 
    hundreds0__14_carry_i_5
       (.I0(O[1]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(hundreds0_carry__1_n_5),
        .O(hundreds0__14_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h99696696)) 
    hundreds0__14_carry_i_6
       (.I0(hundreds0_carry_i_5_n_0),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(O[0]),
        .I4(O[1]),
        .O(hundreds0__14_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hundreds0__14_carry_i_7
       (.I0(Q[2]),
        .I1(O[0]),
        .O(hundreds0__14_carry_i_7_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 hundreds0_carry
       (.CI(1'b0),
        .CO({hundreds0_carry_n_0,NLW_hundreds0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({hundreds0_carry_i_1_n_0,Q[1],Q[2],1'b0}),
        .O(NLW_hundreds0_carry_O_UNCONNECTED[3:0]),
        .S({hundreds0_carry_i_2_n_0,hundreds0_carry_i_3_n_0,hundreds0_carry_i_4_n_0,Q[1]}));
  CARRY4 hundreds0_carry__0
       (.CI(hundreds0_carry_n_0),
        .CO({hundreds0_carry__0_n_0,NLW_hundreds0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({hundreds0_carry__0_i_1_n_0,hundreds0_carry__0_i_2_n_0,hundreds0_carry__0_i_3_n_0,hundreds0_carry__0_i_4_n_0}),
        .O(NLW_hundreds0_carry__0_O_UNCONNECTED[3:0]),
        .S({hundreds0_carry__0_i_5_n_0,hundreds0_carry__0_i_6_n_0,hundreds0_carry__0_i_7_n_0,hundreds0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    hundreds0_carry__0_i_1
       (.I0(Q[8]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(hundreds0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hundreds0_carry__0_i_2
       (.I0(Q[7]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(hundreds0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hundreds0_carry__0_i_3
       (.I0(Q[6]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(hundreds0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hundreds0_carry__0_i_4
       (.I0(Q[5]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(hundreds0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    hundreds0_carry__0_i_5
       (.I0(Q[8]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(Q[6]),
        .O(hundreds0_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    hundreds0_carry__0_i_6
       (.I0(Q[7]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(Q[5]),
        .O(hundreds0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hD122)) 
    hundreds0_carry__0_i_7
       (.I0(Q[6]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(hundreds0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h36)) 
    hundreds0_carry__0_i_8
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(hundreds0_carry_i_5_n_0),
        .O(hundreds0_carry__0_i_8_n_0));
  CARRY4 hundreds0_carry__1
       (.CI(hundreds0_carry__0_n_0),
        .CO({hundreds0_carry__1_n_0,NLW_hundreds0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,hundreds0_carry__1_i_1_n_0}),
        .O({NLW_hundreds0_carry__1_O_UNCONNECTED[3],hundreds0_carry__1_n_5,O}),
        .S({1'b1,hundreds0_carry__1_i_2_n_0,hundreds0_carry__1_i_3_n_0,hundreds0_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'hABFF0000FFFF0000)) 
    hundreds0_carry__1_i_1
       (.I0(hundreds0_carry__1_i_5_n_0),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[9]),
        .I5(Q[6]),
        .O(hundreds0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hABFF0000FFFF0000)) 
    hundreds0_carry__1_i_2
       (.I0(hundreds0_carry__1_i_5_n_0),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[9]),
        .I5(Q[6]),
        .O(hundreds0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    hundreds0_carry__1_i_3
       (.I0(Q[8]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(hundreds0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    hundreds0_carry__1_i_4
       (.I0(Q[9]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(Q[7]),
        .O(hundreds0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    hundreds0_carry__1_i_5
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(hundreds0_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    hundreds0_carry_i_1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(hundreds0_carry_i_5_n_0),
        .O(hundreds0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hundreds0_carry_i_2
       (.I0(hundreds0_carry_i_6_n_0),
        .I1(Q[2]),
        .O(hundreds0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    hundreds0_carry_i_3
       (.I0(hundreds0_carry_i_5_n_0),
        .I1(Q[3]),
        .I2(Q[1]),
        .O(hundreds0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    hundreds0_carry_i_4
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(hundreds0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000080808000)) 
    hundreds0_carry_i_5
       (.I0(Q[6]),
        .I1(Q[9]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(hundreds0_carry__1_i_5_n_0),
        .O(hundreds0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    hundreds0_carry_i_6
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(hundreds0_carry_i_5_n_0),
        .O(hundreds0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hA3A6)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\shift_reg_seg_reg[1] ),
        .I1(\shift_reg_seg_reg[1]_0 ),
        .I2(\seg[0] ),
        .I3(\seg[0]_0 ),
        .O(seg_OBUF[0]));
  LUT4 #(
    .INIT(16'hA0EB)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\shift_reg_seg_reg[1] ),
        .I1(\seg[0]_0 ),
        .I2(\seg[0] ),
        .I3(\shift_reg_seg_reg[1]_0 ),
        .O(seg_OBUF[1]));
  LUT4 #(
    .INIT(16'h8BFF)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\shift_reg_seg_reg[1] ),
        .I1(\seg[0] ),
        .I2(\shift_reg_seg_reg[1]_0 ),
        .I3(\seg[0]_0 ),
        .O(seg_OBUF[2]));
  LUT6 #(
    .INIT(64'hC07C3713C03383C8)) 
    \seg_OBUF[6]_inst_i_10 
       (.I0(tens1__13_carry_n_6),
        .I1(tens1__13_carry_n_4),
        .I2(tens1__13_carry_n_5),
        .I3(tens1__13_carry__0_n_7),
        .I4(tens1__13_carry__0_n_6),
        .I5(tens1__13_carry__0_n_5),
        .O(\counter_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h1FF11111)) 
    \seg_OBUF[6]_inst_i_11 
       (.I0(\seg_OBUF[6]_inst_i_1 ),
        .I1(\seg_OBUF[6]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_23_n_0 ),
        .I3(hundreds0_carry__1_n_5),
        .I4(\seg_OBUF[6]_inst_i_1_0 ),
        .O(\seg_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000282320C0)) 
    \seg_OBUF[6]_inst_i_14 
       (.I0(\seg_OBUF[6]_inst_i_18_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_25_n_0 ),
        .I2(\counter_reg[2]_0 ),
        .I3(\counter_reg[2] ),
        .I4(\seg_OBUF[6]_inst_i_9_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_5_0 ),
        .O(\seg_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000888000000000)) 
    \seg_OBUF[6]_inst_i_15 
       (.I0(O[1]),
        .I1(hundreds0_carry__1_n_5),
        .I2(hundreds0_carry__1_n_0),
        .I3(hundreds0_carry__1_i_1_n_0),
        .I4(hundreds0__14_carry__0_n_0),
        .I5(O[0]),
        .O(\seg_OBUF[6]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h01FFC80001CC0000)) 
    \seg_OBUF[6]_inst_i_17 
       (.I0(tens1__13_carry_n_6),
        .I1(tens1__13_carry_n_4),
        .I2(tens1__13_carry_n_5),
        .I3(tens1__13_carry__0_n_7),
        .I4(tens1__13_carry__0_n_6),
        .I5(tens1__13_carry__0_n_5),
        .O(\seg_OBUF[6]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h593CA3635FADF04A)) 
    \seg_OBUF[6]_inst_i_18 
       (.I0(tens1__13_carry_n_5),
        .I1(tens1__13_carry__0_n_5),
        .I2(tens1__13_carry__0_n_6),
        .I3(tens1__13_carry__0_n_7),
        .I4(tens1__13_carry_n_4),
        .I5(tens1__13_carry_n_6),
        .O(\seg_OBUF[6]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hE5EDC9DBEDCDCB5B)) 
    \seg_OBUF[6]_inst_i_19 
       (.I0(tens1__13_carry__0_n_5),
        .I1(tens1__13_carry__0_n_6),
        .I2(tens1__13_carry__0_n_7),
        .I3(tens1__13_carry_n_5),
        .I4(tens1__13_carry_n_4),
        .I5(tens1__13_carry_n_6),
        .O(\seg_OBUF[6]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FFEA15EA55)) 
    \seg_OBUF[6]_inst_i_20 
       (.I0(tens1__13_carry__0_n_5),
        .I1(tens1__13_carry__0_n_6),
        .I2(tens1__13_carry__0_n_7),
        .I3(tens1__13_carry_n_5),
        .I4(tens1__13_carry_n_4),
        .I5(tens1__13_carry_n_6),
        .O(\seg_OBUF[6]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h5555445554445555)) 
    \seg_OBUF[6]_inst_i_21 
       (.I0(hundreds0__14_carry__0_n_0),
        .I1(hundreds0_carry__1_i_1_n_0),
        .I2(O[0]),
        .I3(O[1]),
        .I4(hundreds0_carry__1_n_0),
        .I5(hundreds0_carry__1_n_5),
        .O(\counter_reg[4] ));
  LUT6 #(
    .INIT(64'h2220222200000000)) 
    \seg_OBUF[6]_inst_i_23 
       (.I0(O[0]),
        .I1(hundreds0__14_carry__0_n_0),
        .I2(hundreds0_carry__1_i_1_n_0),
        .I3(hundreds0_carry__1_n_0),
        .I4(hundreds0_carry__1_n_5),
        .I5(O[1]),
        .O(\seg_OBUF[6]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDB00000000)) 
    \seg_OBUF[6]_inst_i_24 
       (.I0(hundreds0_carry__1_n_5),
        .I1(hundreds0_carry__1_n_0),
        .I2(O[1]),
        .I3(hundreds0_carry__1_i_1_n_0),
        .I4(hundreds0__14_carry__0_n_0),
        .I5(O[0]),
        .O(\counter_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h0FF823CE12CD345B)) 
    \seg_OBUF[6]_inst_i_25 
       (.I0(tens1__13_carry__0_n_5),
        .I1(tens1__13_carry__0_n_6),
        .I2(tens1__13_carry__0_n_7),
        .I3(tens1__13_carry_n_5),
        .I4(tens1__13_carry_n_4),
        .I5(tens1__13_carry_n_6),
        .O(\seg_OBUF[6]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BEBEBEEB)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(\seg_OBUF[6]_inst_i_5_0 ),
        .I1(\seg_OBUF[6]_inst_i_9_n_0 ),
        .I2(\counter_reg[2]_0 ),
        .I3(\counter_reg[2] ),
        .I4(\counter_reg[2]_1 ),
        .I5(\seg_OBUF[6]_inst_i_11_n_0 ),
        .O(\shift_reg_seg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hBEAABEAAFFFFBEAA)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(\seg_OBUF[6]_inst_i_14_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_15_n_0 ),
        .I2(hundreds0_carry__1_n_0),
        .I3(\seg_OBUF[6]_inst_i_1_0 ),
        .I4(\seg_OBUF[6]_inst_i_17_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_1 ),
        .O(\shift_reg_seg_reg[1] ));
  LUT6 #(
    .INIT(64'h1157771557111577)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(\seg_OBUF[6]_inst_i_18_n_0 ),
        .I1(\counter_reg[2]_0 ),
        .I2(\counter_reg[2] ),
        .I3(\seg_OBUF[6]_inst_i_19_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_9_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_20_n_0 ),
        .O(\counter_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hEAEAEAEA15151555)) 
    \seg_OBUF[6]_inst_i_9 
       (.I0(tens1__13_carry__0_n_5),
        .I1(tens1__13_carry__0_n_6),
        .I2(tens1__13_carry__0_n_7),
        .I3(tens1__13_carry_n_5),
        .I4(tens1__13_carry_n_4),
        .I5(tens1__13_carry_n_6),
        .O(\seg_OBUF[6]_inst_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 tens1__13_carry
       (.CI(1'b0),
        .CO({tens1__13_carry_n_0,NLW_tens1__13_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({tens1__13_carry_i_1_n_0,tens1__13_carry_i_2_n_0,Q[2],1'b1}),
        .O({tens1__13_carry_n_4,tens1__13_carry_n_5,tens1__13_carry_n_6,\counter_reg[2] }),
        .S({tens1__13_carry_i_3_n_0,tens1__13_carry_i_4_n_0,tens1__13_carry_i_5_n_0,tens1__13_carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tens1__13_carry__0
       (.CI(tens1__13_carry_n_0),
        .CO(NLW_tens1__13_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tens1__13_carry__0_i_1_n_0,tens1__13_carry__0_i_2_n_0}),
        .O({NLW_tens1__13_carry__0_O_UNCONNECTED[3],tens1__13_carry__0_n_5,tens1__13_carry__0_n_6,tens1__13_carry__0_n_7}),
        .S({1'b0,tens1__13_carry__0_i_3_n_0,tens1__13_carry__0_i_4_n_0,tens1__13_carry__0_i_5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    tens1__13_carry__0_i_1
       (.I0(Q[6]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(tens1__13_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tens1__13_carry__0_i_2
       (.I0(Q[5]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(tens1__13_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h9A666599)) 
    tens1__13_carry__0_i_3
       (.I0(hundreds0__14_carry__0_i_10_n_0),
        .I1(tens1_carry__1_n_6),
        .I2(tens1_carry__1_n_0),
        .I3(tens1_carry__1_n_7),
        .I4(tens1_carry__1_n_5),
        .O(tens1__13_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hA659)) 
    tens1__13_carry__0_i_4
       (.I0(tens1__13_carry__0_i_1_n_0),
        .I1(tens1_carry__1_n_7),
        .I2(tens1_carry__1_n_0),
        .I3(tens1_carry__1_n_6),
        .O(tens1__13_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    tens1__13_carry__0_i_5
       (.I0(Q[5]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(tens1_carry__1_n_7),
        .I3(tens1_carry__1_n_0),
        .O(tens1__13_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    tens1__13_carry_i_1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(hundreds0_carry_i_5_n_0),
        .O(tens1__13_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tens1__13_carry_i_2
       (.I0(hundreds0_carry_i_5_n_0),
        .I1(Q[3]),
        .O(tens1__13_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tens1__13_carry_i_3
       (.I0(hundreds0_carry_i_6_n_0),
        .I1(tens1_carry__1_n_5),
        .O(tens1__13_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tens1__13_carry_i_4
       (.I0(hundreds0_carry_i_5_n_0),
        .I1(Q[3]),
        .I2(tens1_carry__1_n_6),
        .O(tens1__13_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    tens1__13_carry_i_5
       (.I0(Q[2]),
        .I1(tens1_carry__1_n_7),
        .O(tens1__13_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tens1__13_carry_i_6
       (.I0(Q[1]),
        .O(tens1__13_carry_i_6_n_0));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 tens1_carry
       (.CI(1'b0),
        .CO({tens1_carry_n_0,NLW_tens1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({tens1_carry_i_1_n_0,Q[1],Q[2],1'b0}),
        .O(NLW_tens1_carry_O_UNCONNECTED[3:0]),
        .S({tens1_carry_i_2_n_0,tens1_carry_i_3_n_0,tens1_carry_i_4_n_0,Q[1]}));
  CARRY4 tens1_carry__0
       (.CI(tens1_carry_n_0),
        .CO({tens1_carry__0_n_0,NLW_tens1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({tens1_carry__0_i_1_n_0,tens1_carry__0_i_2_n_0,tens1_carry__0_i_3_n_0,tens1_carry__0_i_4_n_0}),
        .O(NLW_tens1_carry__0_O_UNCONNECTED[3:0]),
        .S({tens1_carry__0_i_5_n_0,tens1_carry__0_i_6_n_0,tens1_carry__0_i_7_n_0,tens1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    tens1_carry__0_i_1
       (.I0(Q[8]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(tens1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tens1_carry__0_i_2
       (.I0(Q[7]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(tens1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tens1_carry__0_i_3
       (.I0(Q[6]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(tens1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tens1_carry__0_i_4
       (.I0(Q[5]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(tens1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    tens1_carry__0_i_5
       (.I0(Q[8]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(Q[6]),
        .O(tens1_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    tens1_carry__0_i_6
       (.I0(Q[7]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(Q[5]),
        .O(tens1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hD122)) 
    tens1_carry__0_i_7
       (.I0(Q[6]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(tens1_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h36)) 
    tens1_carry__0_i_8
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(hundreds0_carry_i_5_n_0),
        .O(tens1_carry__0_i_8_n_0));
  CARRY4 tens1_carry__1
       (.CI(tens1_carry__0_n_0),
        .CO({tens1_carry__1_n_0,NLW_tens1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,hundreds0_carry__1_i_1_n_0}),
        .O({NLW_tens1_carry__1_O_UNCONNECTED[3],tens1_carry__1_n_5,tens1_carry__1_n_6,tens1_carry__1_n_7}),
        .S({1'b1,tens1_carry__1_i_1_n_0,tens1_carry__1_i_2_n_0,tens1_carry__1_i_3_n_0}));
  LUT6 #(
    .INIT(64'hABFF0000FFFF0000)) 
    tens1_carry__1_i_1
       (.I0(hundreds0_carry__1_i_5_n_0),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[9]),
        .I5(Q[6]),
        .O(tens1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    tens1_carry__1_i_2
       (.I0(Q[8]),
        .I1(hundreds0_carry_i_5_n_0),
        .O(tens1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    tens1_carry__1_i_3
       (.I0(Q[9]),
        .I1(hundreds0_carry_i_5_n_0),
        .I2(Q[7]),
        .O(tens1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    tens1_carry_i_1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(hundreds0_carry_i_5_n_0),
        .O(tens1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tens1_carry_i_2
       (.I0(hundreds0_carry_i_6_n_0),
        .I1(Q[2]),
        .O(tens1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tens1_carry_i_3
       (.I0(hundreds0_carry_i_5_n_0),
        .I1(Q[3]),
        .I2(Q[1]),
        .O(tens1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tens1_carry_i_4
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(tens1_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 thousands0_carry
       (.CI(1'b0),
        .CO({thousands0_carry_n_0,NLW_thousands0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({Q[6],1'b0,thousands0_carry_i_1_n_0,1'b0}),
        .O(NLW_thousands0_carry_O_UNCONNECTED[3:0]),
        .S({thousands0_carry_i_2_n_0,Q[5],thousands0_carry_i_3_n_0,Q[3]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 thousands0_carry__0
       (.CI(thousands0_carry_n_0),
        .CO({NLW_thousands0_carry__0_CO_UNCONNECTED[3],CO,NLW_thousands0_carry__0_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[9:7]}),
        .O(NLW_thousands0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,thousands0_carry__0_i_1_n_0,thousands0_carry__0_i_2_n_0,thousands0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    thousands0_carry__0_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(thousands0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    thousands0_carry__0_i_2
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(thousands0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    thousands0_carry__0_i_3
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(thousands0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    thousands0_carry_i_1
       (.I0(Q[3]),
        .O(thousands0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    thousands0_carry_i_2
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(thousands0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    thousands0_carry_i_3
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(thousands0_carry_i_3_n_0));
endmodule

module m_seq_gen
   (LED_OBUF,
    btn_clk_reg_n_0_BUFG,
    LED_RST_OBUF);
  output [0:0]LED_OBUF;
  input btn_clk_reg_n_0_BUFG;
  input LED_RST_OBUF;

  wire [0:0]LED_OBUF;
  wire LED_RST_OBUF;
  wire btn_clk_reg_n_0_BUFG;
  wire [8:0]m_counter_reg;
  wire out_i_1_n_0;
  wire [8:0]p_0_in;
  wire shift_reg0;
  wire [8:4]shift_reg1;
  wire \shift_reg[8]_i_1_n_0 ;
  wire \shift_reg[8]_i_2_n_0 ;
  wire \shift_reg[8]_i_3_n_0 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;

  LUT1 #(
    .INIT(2'h1)) 
    \m_counter[0]_i_1 
       (.I0(m_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_counter[1]_i_1 
       (.I0(m_counter_reg[1]),
        .I1(m_counter_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \m_counter[2]_i_1 
       (.I0(m_counter_reg[2]),
        .I1(m_counter_reg[0]),
        .I2(m_counter_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \m_counter[3]_i_1 
       (.I0(m_counter_reg[3]),
        .I1(m_counter_reg[1]),
        .I2(m_counter_reg[0]),
        .I3(m_counter_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \m_counter[4]_i_1 
       (.I0(m_counter_reg[4]),
        .I1(m_counter_reg[2]),
        .I2(m_counter_reg[0]),
        .I3(m_counter_reg[1]),
        .I4(m_counter_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \m_counter[5]_i_1 
       (.I0(m_counter_reg[5]),
        .I1(m_counter_reg[3]),
        .I2(m_counter_reg[1]),
        .I3(m_counter_reg[0]),
        .I4(m_counter_reg[2]),
        .I5(m_counter_reg[4]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_counter[6]_i_1 
       (.I0(m_counter_reg[6]),
        .I1(\shift_reg[8]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \m_counter[7]_i_1 
       (.I0(m_counter_reg[7]),
        .I1(\shift_reg[8]_i_3_n_0 ),
        .I2(m_counter_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \m_counter[8]_i_1 
       (.I0(m_counter_reg[8]),
        .I1(m_counter_reg[6]),
        .I2(\shift_reg[8]_i_3_n_0 ),
        .I3(m_counter_reg[7]),
        .O(p_0_in[8]));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[0] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(m_counter_reg[0]),
        .R(\shift_reg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[1] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(m_counter_reg[1]),
        .R(\shift_reg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[2] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(m_counter_reg[2]),
        .R(\shift_reg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[3] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(m_counter_reg[3]),
        .R(\shift_reg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[4] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(m_counter_reg[4]),
        .R(\shift_reg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[5] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(m_counter_reg[5]),
        .R(\shift_reg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[6] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(m_counter_reg[6]),
        .R(\shift_reg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[7] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(m_counter_reg[7]),
        .R(\shift_reg[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[8] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(m_counter_reg[8]),
        .R(\shift_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    out_i_1
       (.I0(LED_RST_OBUF),
        .I1(m_counter_reg[7]),
        .I2(\shift_reg[8]_i_3_n_0 ),
        .I3(m_counter_reg[6]),
        .I4(m_counter_reg[8]),
        .O(out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_reg
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(out_i_1_n_0),
        .D(\shift_reg_reg_n_0_[6] ),
        .Q(LED_OBUF),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \shift_reg[0]_i_1 
       (.I0(shift_reg1[8]),
        .I1(shift_reg1[4]),
        .O(shift_reg0));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \shift_reg[8]_i_1 
       (.I0(m_counter_reg[8]),
        .I1(m_counter_reg[6]),
        .I2(\shift_reg[8]_i_3_n_0 ),
        .I3(m_counter_reg[7]),
        .I4(LED_RST_OBUF),
        .O(\shift_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \shift_reg[8]_i_2 
       (.I0(m_counter_reg[7]),
        .I1(\shift_reg[8]_i_3_n_0 ),
        .I2(m_counter_reg[6]),
        .I3(m_counter_reg[8]),
        .O(\shift_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \shift_reg[8]_i_3 
       (.I0(m_counter_reg[5]),
        .I1(m_counter_reg[3]),
        .I2(m_counter_reg[1]),
        .I3(m_counter_reg[0]),
        .I4(m_counter_reg[2]),
        .I5(m_counter_reg[4]),
        .O(\shift_reg[8]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[0] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(shift_reg0),
        .Q(\shift_reg_reg_n_0_[0] ),
        .S(\shift_reg[8]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[1] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[0] ),
        .Q(\shift_reg_reg_n_0_[1] ),
        .S(\shift_reg[8]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[2] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[1] ),
        .Q(\shift_reg_reg_n_0_[2] ),
        .S(\shift_reg[8]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[3] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[2] ),
        .Q(\shift_reg_reg_n_0_[3] ),
        .S(\shift_reg[8]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[4] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[3] ),
        .Q(shift_reg1[4]),
        .S(\shift_reg[8]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[5] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(shift_reg1[4]),
        .Q(\shift_reg_reg_n_0_[5] ),
        .S(\shift_reg[8]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[6] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[5] ),
        .Q(\shift_reg_reg_n_0_[6] ),
        .S(\shift_reg[8]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[7] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[6] ),
        .Q(\shift_reg_reg_n_0_[7] ),
        .S(\shift_reg[8]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[8] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[8]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[7] ),
        .Q(shift_reg1[8]),
        .S(\shift_reg[8]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "m_seq_gen" *) 
module m_seq_gen__parameterized0
   (g1,
    btn_clk_reg_n_0_BUFG,
    LED_RST_OBUF);
  output g1;
  input btn_clk_reg_n_0_BUFG;
  input LED_RST_OBUF;

  wire LED_RST_OBUF;
  wire btn_clk_reg_n_0_BUFG;
  wire g1;
  wire [9:0]m_counter_reg;
  wire out_i_1__2_n_0;
  wire out_i_2__1_n_0;
  wire [9:0]p_0_in__2;
  wire sel;
  wire \shift_reg[0]_i_1__0_n_0 ;
  wire \shift_reg[9]_i_1__1_n_0 ;
  wire \shift_reg[9]_i_3__1_n_0 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;
  wire \shift_reg_reg_n_0_[8] ;
  wire \shift_reg_reg_n_0_[9] ;

  LUT1 #(
    .INIT(2'h1)) 
    \m_counter[0]_i_1__2 
       (.I0(m_counter_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_counter[1]_i_1__2 
       (.I0(m_counter_reg[1]),
        .I1(m_counter_reg[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \m_counter[2]_i_1__2 
       (.I0(m_counter_reg[2]),
        .I1(m_counter_reg[0]),
        .I2(m_counter_reg[1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \m_counter[3]_i_1__2 
       (.I0(m_counter_reg[3]),
        .I1(m_counter_reg[1]),
        .I2(m_counter_reg[0]),
        .I3(m_counter_reg[2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \m_counter[4]_i_1__2 
       (.I0(m_counter_reg[4]),
        .I1(m_counter_reg[2]),
        .I2(m_counter_reg[0]),
        .I3(m_counter_reg[1]),
        .I4(m_counter_reg[3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \m_counter[5]_i_1__2 
       (.I0(m_counter_reg[5]),
        .I1(m_counter_reg[3]),
        .I2(m_counter_reg[1]),
        .I3(m_counter_reg[0]),
        .I4(m_counter_reg[2]),
        .I5(m_counter_reg[4]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_counter[6]_i_1__2 
       (.I0(m_counter_reg[6]),
        .I1(\shift_reg[9]_i_3__1_n_0 ),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \m_counter[7]_i_1__2 
       (.I0(m_counter_reg[7]),
        .I1(\shift_reg[9]_i_3__1_n_0 ),
        .I2(m_counter_reg[6]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \m_counter[8]_i_1__2 
       (.I0(m_counter_reg[8]),
        .I1(m_counter_reg[6]),
        .I2(\shift_reg[9]_i_3__1_n_0 ),
        .I3(m_counter_reg[7]),
        .O(p_0_in__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \m_counter[9]_i_1__1 
       (.I0(m_counter_reg[9]),
        .I1(m_counter_reg[7]),
        .I2(\shift_reg[9]_i_3__1_n_0 ),
        .I3(m_counter_reg[6]),
        .I4(m_counter_reg[8]),
        .O(p_0_in__2[9]));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[0] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(p_0_in__2[0]),
        .Q(m_counter_reg[0]),
        .R(\shift_reg[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[1] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(p_0_in__2[1]),
        .Q(m_counter_reg[1]),
        .R(\shift_reg[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[2] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(p_0_in__2[2]),
        .Q(m_counter_reg[2]),
        .R(\shift_reg[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[3] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(p_0_in__2[3]),
        .Q(m_counter_reg[3]),
        .R(\shift_reg[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[4] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(p_0_in__2[4]),
        .Q(m_counter_reg[4]),
        .R(\shift_reg[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[5] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(p_0_in__2[5]),
        .Q(m_counter_reg[5]),
        .R(\shift_reg[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[6] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(p_0_in__2[6]),
        .Q(m_counter_reg[6]),
        .R(\shift_reg[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[7] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(p_0_in__2[7]),
        .Q(m_counter_reg[7]),
        .R(\shift_reg[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[8] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(p_0_in__2[8]),
        .Q(m_counter_reg[8]),
        .R(\shift_reg[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[9] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(p_0_in__2[9]),
        .Q(m_counter_reg[9]),
        .R(\shift_reg[9]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    out_i_1__2
       (.I0(\shift_reg_reg_n_0_[9] ),
        .I1(out_i_2__1_n_0),
        .I2(g1),
        .O(out_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    out_i_2__1
       (.I0(LED_RST_OBUF),
        .I1(m_counter_reg[8]),
        .I2(m_counter_reg[6]),
        .I3(\shift_reg[9]_i_3__1_n_0 ),
        .I4(m_counter_reg[7]),
        .I5(m_counter_reg[9]),
        .O(out_i_2__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_reg
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(out_i_1__2_n_0),
        .Q(g1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \shift_reg[0]_i_1__0 
       (.I0(\shift_reg_reg_n_0_[9] ),
        .I1(\shift_reg_reg_n_0_[2] ),
        .O(\shift_reg[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \shift_reg[9]_i_1__1 
       (.I0(m_counter_reg[9]),
        .I1(m_counter_reg[7]),
        .I2(\shift_reg[9]_i_3__1_n_0 ),
        .I3(m_counter_reg[6]),
        .I4(m_counter_reg[8]),
        .I5(LED_RST_OBUF),
        .O(\shift_reg[9]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \shift_reg[9]_i_2__1 
       (.I0(m_counter_reg[8]),
        .I1(m_counter_reg[6]),
        .I2(\shift_reg[9]_i_3__1_n_0 ),
        .I3(m_counter_reg[7]),
        .I4(m_counter_reg[9]),
        .O(sel));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \shift_reg[9]_i_3__1 
       (.I0(m_counter_reg[5]),
        .I1(m_counter_reg[3]),
        .I2(m_counter_reg[1]),
        .I3(m_counter_reg[0]),
        .I4(m_counter_reg[2]),
        .I5(m_counter_reg[4]),
        .O(\shift_reg[9]_i_3__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[0] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(\shift_reg[0]_i_1__0_n_0 ),
        .Q(\shift_reg_reg_n_0_[0] ),
        .S(\shift_reg[9]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[1] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(\shift_reg_reg_n_0_[0] ),
        .Q(\shift_reg_reg_n_0_[1] ),
        .S(\shift_reg[9]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[2] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(\shift_reg_reg_n_0_[1] ),
        .Q(\shift_reg_reg_n_0_[2] ),
        .S(\shift_reg[9]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[3] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(\shift_reg_reg_n_0_[2] ),
        .Q(\shift_reg_reg_n_0_[3] ),
        .S(\shift_reg[9]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[4] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(\shift_reg_reg_n_0_[3] ),
        .Q(\shift_reg_reg_n_0_[4] ),
        .S(\shift_reg[9]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[5] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(\shift_reg_reg_n_0_[4] ),
        .Q(\shift_reg_reg_n_0_[5] ),
        .S(\shift_reg[9]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[6] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(\shift_reg_reg_n_0_[5] ),
        .Q(\shift_reg_reg_n_0_[6] ),
        .S(\shift_reg[9]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[7] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(\shift_reg_reg_n_0_[6] ),
        .Q(\shift_reg_reg_n_0_[7] ),
        .S(\shift_reg[9]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[8] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(\shift_reg_reg_n_0_[7] ),
        .Q(\shift_reg_reg_n_0_[8] ),
        .S(\shift_reg[9]_i_1__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[9] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(sel),
        .D(\shift_reg_reg_n_0_[8] ),
        .Q(\shift_reg_reg_n_0_[9] ),
        .S(\shift_reg[9]_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "m_seq_gen" *) 
module m_seq_gen__parameterized1
   (LED_OBUF,
    btn_clk_reg_n_0_BUFG,
    g1,
    g2_2,
    LED_RST_OBUF);
  output [0:0]LED_OBUF;
  input btn_clk_reg_n_0_BUFG;
  input g1;
  input g2_2;
  input LED_RST_OBUF;

  wire [0:0]LED_OBUF;
  wire LED_RST_OBUF;
  wire btn_clk_reg_n_0_BUFG;
  wire g1;
  wire g2_1;
  wire g2_2;
  wire [9:0]m_counter_reg;
  wire out_i_1__0_n_0;
  wire out_i_2_n_0;
  wire [9:0]p_0_in__0;
  wire shift_reg0_n_0;
  wire \shift_reg[9]_i_1_n_0 ;
  wire \shift_reg[9]_i_2_n_0 ;
  wire \shift_reg[9]_i_3_n_0 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;
  wire \shift_reg_reg_n_0_[8] ;
  wire \shift_reg_reg_n_0_[9] ;

  LUT3 #(
    .INIT(8'h96)) 
    \LED_OBUF[1]_inst_i_1 
       (.I0(g2_1),
        .I1(g1),
        .I2(g2_2),
        .O(LED_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \m_counter[0]_i_1__0 
       (.I0(m_counter_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_counter[1]_i_1__0 
       (.I0(m_counter_reg[1]),
        .I1(m_counter_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \m_counter[2]_i_1__0 
       (.I0(m_counter_reg[2]),
        .I1(m_counter_reg[0]),
        .I2(m_counter_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \m_counter[3]_i_1__0 
       (.I0(m_counter_reg[3]),
        .I1(m_counter_reg[1]),
        .I2(m_counter_reg[0]),
        .I3(m_counter_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \m_counter[4]_i_1__0 
       (.I0(m_counter_reg[4]),
        .I1(m_counter_reg[2]),
        .I2(m_counter_reg[0]),
        .I3(m_counter_reg[1]),
        .I4(m_counter_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \m_counter[5]_i_1__0 
       (.I0(m_counter_reg[5]),
        .I1(m_counter_reg[3]),
        .I2(m_counter_reg[1]),
        .I3(m_counter_reg[0]),
        .I4(m_counter_reg[2]),
        .I5(m_counter_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_counter[6]_i_1__0 
       (.I0(m_counter_reg[6]),
        .I1(\shift_reg[9]_i_3_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \m_counter[7]_i_1__0 
       (.I0(m_counter_reg[7]),
        .I1(\shift_reg[9]_i_3_n_0 ),
        .I2(m_counter_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \m_counter[8]_i_1__0 
       (.I0(m_counter_reg[8]),
        .I1(m_counter_reg[6]),
        .I2(\shift_reg[9]_i_3_n_0 ),
        .I3(m_counter_reg[7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \m_counter[9]_i_1 
       (.I0(m_counter_reg[9]),
        .I1(m_counter_reg[7]),
        .I2(\shift_reg[9]_i_3_n_0 ),
        .I3(m_counter_reg[6]),
        .I4(m_counter_reg[8]),
        .O(p_0_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[0] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(m_counter_reg[0]),
        .R(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[1] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(m_counter_reg[1]),
        .R(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[2] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(m_counter_reg[2]),
        .R(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[3] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(m_counter_reg[3]),
        .R(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[4] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(m_counter_reg[4]),
        .R(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[5] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(m_counter_reg[5]),
        .R(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[6] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(m_counter_reg[6]),
        .R(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[7] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(m_counter_reg[7]),
        .R(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[8] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(m_counter_reg[8]),
        .R(\shift_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[9] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(m_counter_reg[9]),
        .R(\shift_reg[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    out_i_1__0
       (.I0(\shift_reg_reg_n_0_[1] ),
        .I1(out_i_2_n_0),
        .I2(g2_1),
        .O(out_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    out_i_2
       (.I0(LED_RST_OBUF),
        .I1(m_counter_reg[8]),
        .I2(m_counter_reg[6]),
        .I3(\shift_reg[9]_i_3_n_0 ),
        .I4(m_counter_reg[7]),
        .I5(m_counter_reg[9]),
        .O(out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_reg
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(out_i_1__0_n_0),
        .Q(g2_1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    shift_reg0
       (.I0(\shift_reg_reg_n_0_[8] ),
        .I1(\shift_reg_reg_n_0_[9] ),
        .I2(\shift_reg_reg_n_0_[2] ),
        .I3(\shift_reg_reg_n_0_[1] ),
        .I4(\shift_reg_reg_n_0_[7] ),
        .I5(\shift_reg_reg_n_0_[5] ),
        .O(shift_reg0_n_0));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \shift_reg[9]_i_1 
       (.I0(m_counter_reg[9]),
        .I1(m_counter_reg[7]),
        .I2(\shift_reg[9]_i_3_n_0 ),
        .I3(m_counter_reg[6]),
        .I4(m_counter_reg[8]),
        .I5(LED_RST_OBUF),
        .O(\shift_reg[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \shift_reg[9]_i_2 
       (.I0(m_counter_reg[8]),
        .I1(m_counter_reg[6]),
        .I2(\shift_reg[9]_i_3_n_0 ),
        .I3(m_counter_reg[7]),
        .I4(m_counter_reg[9]),
        .O(\shift_reg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \shift_reg[9]_i_3 
       (.I0(m_counter_reg[5]),
        .I1(m_counter_reg[3]),
        .I2(m_counter_reg[1]),
        .I3(m_counter_reg[0]),
        .I4(m_counter_reg[2]),
        .I5(m_counter_reg[4]),
        .O(\shift_reg[9]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[0] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(shift_reg0_n_0),
        .Q(\shift_reg_reg_n_0_[0] ),
        .S(\shift_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[1] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[0] ),
        .Q(\shift_reg_reg_n_0_[1] ),
        .S(\shift_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[2] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[1] ),
        .Q(\shift_reg_reg_n_0_[2] ),
        .S(\shift_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[3] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[2] ),
        .Q(\shift_reg_reg_n_0_[3] ),
        .S(\shift_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[4] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[3] ),
        .Q(\shift_reg_reg_n_0_[4] ),
        .S(\shift_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[5] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[4] ),
        .Q(\shift_reg_reg_n_0_[5] ),
        .S(\shift_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[6] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[5] ),
        .Q(\shift_reg_reg_n_0_[6] ),
        .S(\shift_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[7] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[6] ),
        .Q(\shift_reg_reg_n_0_[7] ),
        .S(\shift_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[8] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[7] ),
        .Q(\shift_reg_reg_n_0_[8] ),
        .S(\shift_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[9] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2_n_0 ),
        .D(\shift_reg_reg_n_0_[8] ),
        .Q(\shift_reg_reg_n_0_[9] ),
        .S(\shift_reg[9]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "m_seq_gen" *) 
module m_seq_gen__parameterized2
   (g2_2,
    btn_clk_reg_n_0_BUFG,
    LED_RST_OBUF);
  output g2_2;
  input btn_clk_reg_n_0_BUFG;
  input LED_RST_OBUF;

  wire LED_RST_OBUF;
  wire btn_clk_reg_n_0_BUFG;
  wire g2_2;
  wire [9:0]m_counter_reg;
  wire out_i_1__1_n_0;
  wire out_i_2__0_n_0;
  wire [9:0]p_0_in__1;
  wire shift_reg0_n_0;
  wire \shift_reg[9]_i_1__0_n_0 ;
  wire \shift_reg[9]_i_2__0_n_0 ;
  wire \shift_reg[9]_i_3__0_n_0 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;
  wire \shift_reg_reg_n_0_[8] ;
  wire \shift_reg_reg_n_0_[9] ;

  LUT1 #(
    .INIT(2'h1)) 
    \m_counter[0]_i_1__1 
       (.I0(m_counter_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_counter[1]_i_1__1 
       (.I0(m_counter_reg[1]),
        .I1(m_counter_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \m_counter[2]_i_1__1 
       (.I0(m_counter_reg[2]),
        .I1(m_counter_reg[0]),
        .I2(m_counter_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \m_counter[3]_i_1__1 
       (.I0(m_counter_reg[3]),
        .I1(m_counter_reg[1]),
        .I2(m_counter_reg[0]),
        .I3(m_counter_reg[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \m_counter[4]_i_1__1 
       (.I0(m_counter_reg[4]),
        .I1(m_counter_reg[2]),
        .I2(m_counter_reg[0]),
        .I3(m_counter_reg[1]),
        .I4(m_counter_reg[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \m_counter[5]_i_1__1 
       (.I0(m_counter_reg[5]),
        .I1(m_counter_reg[3]),
        .I2(m_counter_reg[1]),
        .I3(m_counter_reg[0]),
        .I4(m_counter_reg[2]),
        .I5(m_counter_reg[4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_counter[6]_i_1__1 
       (.I0(m_counter_reg[6]),
        .I1(\shift_reg[9]_i_3__0_n_0 ),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \m_counter[7]_i_1__1 
       (.I0(m_counter_reg[7]),
        .I1(\shift_reg[9]_i_3__0_n_0 ),
        .I2(m_counter_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \m_counter[8]_i_1__1 
       (.I0(m_counter_reg[8]),
        .I1(m_counter_reg[6]),
        .I2(\shift_reg[9]_i_3__0_n_0 ),
        .I3(m_counter_reg[7]),
        .O(p_0_in__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \m_counter[9]_i_1__0 
       (.I0(m_counter_reg[9]),
        .I1(m_counter_reg[7]),
        .I2(\shift_reg[9]_i_3__0_n_0 ),
        .I3(m_counter_reg[6]),
        .I4(m_counter_reg[8]),
        .O(p_0_in__1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[0] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(p_0_in__1[0]),
        .Q(m_counter_reg[0]),
        .R(\shift_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[1] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(p_0_in__1[1]),
        .Q(m_counter_reg[1]),
        .R(\shift_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[2] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(p_0_in__1[2]),
        .Q(m_counter_reg[2]),
        .R(\shift_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[3] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(p_0_in__1[3]),
        .Q(m_counter_reg[3]),
        .R(\shift_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[4] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(p_0_in__1[4]),
        .Q(m_counter_reg[4]),
        .R(\shift_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[5] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(p_0_in__1[5]),
        .Q(m_counter_reg[5]),
        .R(\shift_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[6] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(p_0_in__1[6]),
        .Q(m_counter_reg[6]),
        .R(\shift_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[7] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(p_0_in__1[7]),
        .Q(m_counter_reg[7]),
        .R(\shift_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[8] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(p_0_in__1[8]),
        .Q(m_counter_reg[8]),
        .R(\shift_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_counter_reg[9] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(p_0_in__1[9]),
        .Q(m_counter_reg[9]),
        .R(\shift_reg[9]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    out_i_1__1
       (.I0(\shift_reg_reg_n_0_[5] ),
        .I1(out_i_2__0_n_0),
        .I2(g2_2),
        .O(out_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    out_i_2__0
       (.I0(LED_RST_OBUF),
        .I1(m_counter_reg[8]),
        .I2(m_counter_reg[6]),
        .I3(\shift_reg[9]_i_3__0_n_0 ),
        .I4(m_counter_reg[7]),
        .I5(m_counter_reg[9]),
        .O(out_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_reg
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(out_i_1__1_n_0),
        .Q(g2_2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    shift_reg0
       (.I0(\shift_reg_reg_n_0_[8] ),
        .I1(\shift_reg_reg_n_0_[9] ),
        .I2(\shift_reg_reg_n_0_[2] ),
        .I3(\shift_reg_reg_n_0_[1] ),
        .I4(\shift_reg_reg_n_0_[7] ),
        .I5(\shift_reg_reg_n_0_[5] ),
        .O(shift_reg0_n_0));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \shift_reg[9]_i_1__0 
       (.I0(m_counter_reg[9]),
        .I1(m_counter_reg[7]),
        .I2(\shift_reg[9]_i_3__0_n_0 ),
        .I3(m_counter_reg[6]),
        .I4(m_counter_reg[8]),
        .I5(LED_RST_OBUF),
        .O(\shift_reg[9]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \shift_reg[9]_i_2__0 
       (.I0(m_counter_reg[8]),
        .I1(m_counter_reg[6]),
        .I2(\shift_reg[9]_i_3__0_n_0 ),
        .I3(m_counter_reg[7]),
        .I4(m_counter_reg[9]),
        .O(\shift_reg[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \shift_reg[9]_i_3__0 
       (.I0(m_counter_reg[5]),
        .I1(m_counter_reg[3]),
        .I2(m_counter_reg[1]),
        .I3(m_counter_reg[0]),
        .I4(m_counter_reg[2]),
        .I5(m_counter_reg[4]),
        .O(\shift_reg[9]_i_3__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[0] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(shift_reg0_n_0),
        .Q(\shift_reg_reg_n_0_[0] ),
        .S(\shift_reg[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[1] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(\shift_reg_reg_n_0_[0] ),
        .Q(\shift_reg_reg_n_0_[1] ),
        .S(\shift_reg[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[2] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(\shift_reg_reg_n_0_[1] ),
        .Q(\shift_reg_reg_n_0_[2] ),
        .S(\shift_reg[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[3] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(\shift_reg_reg_n_0_[2] ),
        .Q(\shift_reg_reg_n_0_[3] ),
        .S(\shift_reg[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[4] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(\shift_reg_reg_n_0_[3] ),
        .Q(\shift_reg_reg_n_0_[4] ),
        .S(\shift_reg[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[5] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(\shift_reg_reg_n_0_[4] ),
        .Q(\shift_reg_reg_n_0_[5] ),
        .S(\shift_reg[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[6] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(\shift_reg_reg_n_0_[5] ),
        .Q(\shift_reg_reg_n_0_[6] ),
        .S(\shift_reg[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[7] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(\shift_reg_reg_n_0_[6] ),
        .Q(\shift_reg_reg_n_0_[7] ),
        .S(\shift_reg[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[8] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(\shift_reg_reg_n_0_[7] ),
        .Q(\shift_reg_reg_n_0_[8] ),
        .S(\shift_reg[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \shift_reg_reg[9] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(\shift_reg[9]_i_2__0_n_0 ),
        .D(\shift_reg_reg_n_0_[8] ),
        .Q(\shift_reg_reg_n_0_[9] ),
        .S(\shift_reg[9]_i_1__0_n_0 ));
endmodule

module seven_segment
   (seg_OBUF,
    \shift_reg_seg_reg[2]_0 ,
    \shift_reg_seg_reg[1]_0 ,
    Q,
    \shift_reg_seg_reg[1]_1 ,
    \shift_reg_seg_reg[1]_2 ,
    \shift_reg_seg_reg[2]_1 ,
    \seg[3] ,
    \seg[3]_0 ,
    \seg_OBUF[4]_inst_i_1 ,
    \seg_OBUF[6]_inst_i_2_0 ,
    O,
    \seg_OBUF[6]_inst_i_7_0 ,
    \seg_OBUF[4]_inst_i_1_0 ,
    \seg_OBUF[4]_inst_i_1_1 ,
    \seg_OBUF[6]_inst_i_4_0 ,
    CO,
    CLK);
  output [3:0]seg_OBUF;
  output \shift_reg_seg_reg[2]_0 ;
  output \shift_reg_seg_reg[1]_0 ;
  output [3:0]Q;
  output \shift_reg_seg_reg[1]_1 ;
  output \shift_reg_seg_reg[1]_2 ;
  output \shift_reg_seg_reg[2]_1 ;
  input \seg[3] ;
  input \seg[3]_0 ;
  input \seg_OBUF[4]_inst_i_1 ;
  input \seg_OBUF[6]_inst_i_2_0 ;
  input [1:0]O;
  input [1:0]\seg_OBUF[6]_inst_i_7_0 ;
  input \seg_OBUF[4]_inst_i_1_0 ;
  input [0:0]\seg_OBUF[4]_inst_i_1_1 ;
  input \seg_OBUF[6]_inst_i_4_0 ;
  input [0:0]CO;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]O;
  wire [3:0]Q;
  wire \seg[3] ;
  wire \seg[3]_0 ;
  wire [3:0]seg_OBUF;
  wire \seg_OBUF[4]_inst_i_1 ;
  wire \seg_OBUF[4]_inst_i_1_0 ;
  wire [0:0]\seg_OBUF[4]_inst_i_1_1 ;
  wire \seg_OBUF[6]_inst_i_12_n_0 ;
  wire \seg_OBUF[6]_inst_i_22_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_0 ;
  wire \seg_OBUF[6]_inst_i_4_0 ;
  wire [1:0]\seg_OBUF[6]_inst_i_7_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire \shift_reg_seg_reg[1]_0 ;
  wire \shift_reg_seg_reg[1]_1 ;
  wire \shift_reg_seg_reg[1]_2 ;
  wire \shift_reg_seg_reg[2]_0 ;
  wire \shift_reg_seg_reg[2]_1 ;

  LUT4 #(
    .INIT(16'hEC0C)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\shift_reg_seg_reg[2]_0 ),
        .I1(\seg[3]_0 ),
        .I2(\seg[3] ),
        .I3(\shift_reg_seg_reg[1]_0 ),
        .O(seg_OBUF[0]));
  LUT4 #(
    .INIT(16'hF316)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\shift_reg_seg_reg[2]_0 ),
        .I1(\seg[3] ),
        .I2(\shift_reg_seg_reg[1]_0 ),
        .I3(\seg[3]_0 ),
        .O(seg_OBUF[1]));
  LUT4 #(
    .INIT(16'hFD1C)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\shift_reg_seg_reg[2]_0 ),
        .I1(\seg[3]_0 ),
        .I2(\seg[3] ),
        .I3(\shift_reg_seg_reg[1]_0 ),
        .O(seg_OBUF[2]));
  LUT4 #(
    .INIT(16'hF31C)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\shift_reg_seg_reg[2]_0 ),
        .I1(\seg[3] ),
        .I2(\shift_reg_seg_reg[1]_0 ),
        .I3(\seg[3]_0 ),
        .O(seg_OBUF[3]));
  LUT6 #(
    .INIT(64'h0000008000800000)) 
    \seg_OBUF[6]_inst_i_12 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(O[1]),
        .I5(\seg_OBUF[6]_inst_i_4_0 ),
        .O(\seg_OBUF[6]_inst_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \seg_OBUF[6]_inst_i_13 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\shift_reg_seg_reg[2]_1 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \seg_OBUF[6]_inst_i_16 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\shift_reg_seg_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF7FF)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\seg_OBUF[4]_inst_i_1 ),
        .I5(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(\shift_reg_seg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \seg_OBUF[6]_inst_i_22 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(CO),
        .I5(\seg_OBUF[6]_inst_i_7_0 [1]),
        .O(\seg_OBUF[6]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEAEAEAEAEFF)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(\seg_OBUF[6]_inst_i_12_n_0 ),
        .I1(\seg_OBUF[4]_inst_i_1_0 ),
        .I2(\shift_reg_seg_reg[2]_1 ),
        .I3(\shift_reg_seg_reg[1]_2 ),
        .I4(\seg_OBUF[4]_inst_i_1_1 ),
        .I5(\seg_OBUF[4]_inst_i_1 ),
        .O(\shift_reg_seg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFF60FF60FFFFFF60)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(\seg_OBUF[6]_inst_i_2_0 ),
        .I1(O[0]),
        .I2(\shift_reg_seg_reg[1]_1 ),
        .I3(\seg_OBUF[6]_inst_i_22_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_7_0 [0]),
        .I5(\shift_reg_seg_reg[1]_2 ),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \seg_OBUF[6]_inst_i_8 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\shift_reg_seg_reg[1]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_seg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg_seg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg_seg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg_seg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "bdc5d49b" *) (* TAP_G2 = "256'b0010011000110111010010000101100100011001001010100001100000101001001110100010001100110100010101100110011101111000100010011001101000010100001001010011011001000111010110000110100100010011010001100101011101101000011110011000101000010110001001110011100001001001" *) 
(* NotValidForBitStream *)
module top
   (clk,
    BTN,
    BTN_RST,
    act_seg,
    LED,
    LED_RST,
    seg,
    tx,
    tx_busy);
  input clk;
  input BTN;
  input BTN_RST;
  output [3:0]act_seg;
  output [2:0]LED;
  output LED_RST;
  output [7:0]seg;
  output tx;
  output tx_busy;

  wire BTN;
  wire BTN_IBUF;
  wire [2:0]LED;
  wire [1:0]LED_OBUF;
  wire LED_RST;
  wire LED_RST_OBUF;
  wire [3:0]act_seg;
  wire [3:0]act_seg_OBUF;
  wire btn_clk0;
  wire btn_clk_i_10_n_0;
  wire btn_clk_i_11_n_0;
  wire btn_clk_i_12_n_0;
  wire btn_clk_i_2_n_0;
  wire btn_clk_i_4_n_0;
  wire btn_clk_i_5_n_0;
  wire btn_clk_i_6_n_0;
  wire btn_clk_i_7_n_0;
  wire btn_clk_i_8_n_0;
  wire btn_clk_i_9_n_0;
  wire btn_clk_reg_n_0_BUFG;
  wire btn_clk_reg_n_0_BUFG_inst_n_0;
  wire clear;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_uart;
  wire clk_uart_BUFG;
  wire clk_uart_bite;
  wire \counter[9]_i_3_n_0 ;
  wire \counter_btn[0]_i_2_n_0 ;
  wire \counter_btn[0]_i_4_n_0 ;
  wire [23:0]counter_btn_reg;
  wire \counter_btn_reg[0]_i_3_n_0 ;
  wire \counter_btn_reg[0]_i_3_n_4 ;
  wire \counter_btn_reg[0]_i_3_n_5 ;
  wire \counter_btn_reg[0]_i_3_n_6 ;
  wire \counter_btn_reg[0]_i_3_n_7 ;
  wire \counter_btn_reg[12]_i_1_n_0 ;
  wire \counter_btn_reg[12]_i_1_n_4 ;
  wire \counter_btn_reg[12]_i_1_n_5 ;
  wire \counter_btn_reg[12]_i_1_n_6 ;
  wire \counter_btn_reg[12]_i_1_n_7 ;
  wire \counter_btn_reg[16]_i_1_n_0 ;
  wire \counter_btn_reg[16]_i_1_n_4 ;
  wire \counter_btn_reg[16]_i_1_n_5 ;
  wire \counter_btn_reg[16]_i_1_n_6 ;
  wire \counter_btn_reg[16]_i_1_n_7 ;
  wire \counter_btn_reg[20]_i_1_n_4 ;
  wire \counter_btn_reg[20]_i_1_n_5 ;
  wire \counter_btn_reg[20]_i_1_n_6 ;
  wire \counter_btn_reg[20]_i_1_n_7 ;
  wire \counter_btn_reg[4]_i_1_n_0 ;
  wire \counter_btn_reg[4]_i_1_n_4 ;
  wire \counter_btn_reg[4]_i_1_n_5 ;
  wire \counter_btn_reg[4]_i_1_n_6 ;
  wire \counter_btn_reg[4]_i_1_n_7 ;
  wire \counter_btn_reg[8]_i_1_n_0 ;
  wire \counter_btn_reg[8]_i_1_n_4 ;
  wire \counter_btn_reg[8]_i_1_n_5 ;
  wire \counter_btn_reg[8]_i_1_n_6 ;
  wire \counter_btn_reg[8]_i_1_n_7 ;
  wire \counter_clk[0]_i_2_n_0 ;
  wire [18:18]counter_clk_reg;
  wire \counter_clk_reg[0]_i_1_n_0 ;
  wire \counter_clk_reg[0]_i_1_n_4 ;
  wire \counter_clk_reg[0]_i_1_n_5 ;
  wire \counter_clk_reg[0]_i_1_n_6 ;
  wire \counter_clk_reg[0]_i_1_n_7 ;
  wire \counter_clk_reg[12]_i_1_n_0 ;
  wire \counter_clk_reg[12]_i_1_n_4 ;
  wire \counter_clk_reg[12]_i_1_n_5 ;
  wire \counter_clk_reg[12]_i_1_n_6 ;
  wire \counter_clk_reg[12]_i_1_n_7 ;
  wire \counter_clk_reg[16]_i_1_n_0 ;
  wire \counter_clk_reg[16]_i_1_n_4 ;
  wire \counter_clk_reg[16]_i_1_n_5 ;
  wire \counter_clk_reg[16]_i_1_n_6 ;
  wire \counter_clk_reg[16]_i_1_n_7 ;
  wire \counter_clk_reg[20]_i_1_n_0 ;
  wire \counter_clk_reg[20]_i_1_n_4 ;
  wire \counter_clk_reg[20]_i_1_n_5 ;
  wire \counter_clk_reg[20]_i_1_n_6 ;
  wire \counter_clk_reg[20]_i_1_n_7 ;
  wire \counter_clk_reg[24]_i_1_n_0 ;
  wire \counter_clk_reg[24]_i_1_n_4 ;
  wire \counter_clk_reg[24]_i_1_n_5 ;
  wire \counter_clk_reg[24]_i_1_n_6 ;
  wire \counter_clk_reg[24]_i_1_n_7 ;
  wire \counter_clk_reg[28]_i_1_n_5 ;
  wire \counter_clk_reg[28]_i_1_n_6 ;
  wire \counter_clk_reg[28]_i_1_n_7 ;
  wire \counter_clk_reg[4]_i_1_n_0 ;
  wire \counter_clk_reg[4]_i_1_n_4 ;
  wire \counter_clk_reg[4]_i_1_n_5 ;
  wire \counter_clk_reg[4]_i_1_n_6 ;
  wire \counter_clk_reg[4]_i_1_n_7 ;
  wire \counter_clk_reg[8]_i_1_n_0 ;
  wire \counter_clk_reg[8]_i_1_n_4 ;
  wire \counter_clk_reg[8]_i_1_n_5 ;
  wire \counter_clk_reg[8]_i_1_n_6 ;
  wire \counter_clk_reg[8]_i_1_n_7 ;
  wire [30:24]counter_clk_reg__0;
  wire \counter_clk_reg_n_0_[0] ;
  wire \counter_clk_reg_n_0_[10] ;
  wire \counter_clk_reg_n_0_[11] ;
  wire \counter_clk_reg_n_0_[12] ;
  wire \counter_clk_reg_n_0_[13] ;
  wire \counter_clk_reg_n_0_[14] ;
  wire \counter_clk_reg_n_0_[15] ;
  wire \counter_clk_reg_n_0_[16] ;
  wire \counter_clk_reg_n_0_[17] ;
  wire \counter_clk_reg_n_0_[19] ;
  wire \counter_clk_reg_n_0_[1] ;
  wire \counter_clk_reg_n_0_[20] ;
  wire \counter_clk_reg_n_0_[21] ;
  wire \counter_clk_reg_n_0_[22] ;
  wire \counter_clk_reg_n_0_[23] ;
  wire \counter_clk_reg_n_0_[2] ;
  wire \counter_clk_reg_n_0_[3] ;
  wire \counter_clk_reg_n_0_[4] ;
  wire \counter_clk_reg_n_0_[5] ;
  wire \counter_clk_reg_n_0_[6] ;
  wire \counter_clk_reg_n_0_[7] ;
  wire \counter_clk_reg_n_0_[8] ;
  wire \counter_clk_reg_n_0_[9] ;
  wire \counter_clk_uart[3]_i_1_n_0 ;
  wire \counter_clk_uart[7]_i_1_n_0 ;
  wire \counter_clk_uart[7]_i_3_n_0 ;
  wire \counter_clk_uart[7]_i_4_n_0 ;
  wire [7:0]counter_clk_uart_reg;
  wire [9:0]counter_reg;
  wire d_g1_n_0;
  wire d_g1_n_1;
  wire d_g1_n_10;
  wire d_g1_n_11;
  wire d_g1_n_12;
  wire d_g1_n_2;
  wire d_g1_n_3;
  wire d_g1_n_7;
  wire d_g1_n_8;
  wire d_g1_n_9;
  wire g1;
  wire g2_2;
  wire [9:0]p_0_in__3;
  wire [7:0]p_0_in__5;
  wire rst10_in;
  wire rst_i_1_n_0;
  wire rst_i_2_n_0;
  wire s_s1_n_10;
  wire s_s1_n_11;
  wire s_s1_n_12;
  wire s_s1_n_4;
  wire s_s1_n_5;
  wire [7:0]seg;
  wire [6:0]seg_OBUF;
  wire tx;
  wire tx_OBUF;
  wire tx_busy;
  wire tx_busy_OBUF;
  wire tx_enable;
  wire tx_enable_i_1_n_0;
  wire [7:0]uart_data;
  wire \uart_data[0]_i_1_n_0 ;
  wire \uart_data[1]_i_1_n_0 ;
  wire \uart_data[2]_i_1_n_0 ;
  wire \uart_data[3]_i_1_n_0 ;
  wire \uart_data[4]_i_1_n_0 ;
  wire \uart_data[5]_i_1_n_0 ;
  wire \uart_data[6]_i_1_n_0 ;
  wire \uart_data[7]_i_2_n_0 ;
  wire \uart_data[7]_i_3_n_0 ;
  wire [2:0]\NLW_counter_btn_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_btn_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_btn_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_btn_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_btn_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_btn_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_clk_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_clk_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_clk_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_clk_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_clk_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_clk_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_clk_reg[28]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_clk_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_clk_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("top_time_impl.sdf",,,,"tool_control");
end
  IBUF #(
    .CCIO_EN("TRUE")) 
    BTN_IBUF_inst
       (.I(BTN),
        .O(BTN_IBUF));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUFT \LED_OBUF[2]_inst 
       (.I(1'b0),
        .O(LED[2]),
        .T(1'b1));
  OBUF LED_RST_OBUF_inst
       (.I(LED_RST_OBUF),
        .O(LED_RST));
  OBUF \act_seg_OBUF[0]_inst 
       (.I(act_seg_OBUF[0]),
        .O(act_seg[0]));
  OBUF \act_seg_OBUF[1]_inst 
       (.I(act_seg_OBUF[1]),
        .O(act_seg[1]));
  OBUF \act_seg_OBUF[2]_inst 
       (.I(act_seg_OBUF[2]),
        .O(act_seg[2]));
  OBUF \act_seg_OBUF[3]_inst 
       (.I(act_seg_OBUF[3]),
        .O(act_seg[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    btn_clk_i_1
       (.I0(btn_clk_i_2_n_0),
        .I1(\counter_btn[0]_i_2_n_0 ),
        .O(btn_clk0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    btn_clk_i_10
       (.I0(counter_btn_reg[23]),
        .I1(counter_btn_reg[18]),
        .I2(counter_btn_reg[6]),
        .I3(counter_btn_reg[12]),
        .I4(btn_clk_i_12_n_0),
        .O(btn_clk_i_10_n_0));
  LUT5 #(
    .INIT(32'h5555557F)) 
    btn_clk_i_11
       (.I0(counter_btn_reg[5]),
        .I1(counter_btn_reg[0]),
        .I2(counter_btn_reg[1]),
        .I3(counter_btn_reg[3]),
        .I4(counter_btn_reg[2]),
        .O(btn_clk_i_11_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    btn_clk_i_12
       (.I0(counter_btn_reg[16]),
        .I1(counter_btn_reg[10]),
        .I2(counter_btn_reg[2]),
        .I3(counter_btn_reg[0]),
        .O(btn_clk_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD0000)) 
    btn_clk_i_2
       (.I0(btn_clk_i_4_n_0),
        .I1(counter_btn_reg[14]),
        .I2(counter_btn_reg[16]),
        .I3(counter_btn_reg[15]),
        .I4(counter_btn_reg[17]),
        .I5(btn_clk_i_5_n_0),
        .O(btn_clk_i_2_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    btn_clk_i_3
       (.I0(btn_clk_i_6_n_0),
        .I1(counter_btn_reg[20]),
        .I2(counter_btn_reg[8]),
        .I3(counter_btn_reg[21]),
        .I4(counter_btn_reg[11]),
        .I5(btn_clk_i_7_n_0),
        .O(\counter_btn[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h555555555555557F)) 
    btn_clk_i_4
       (.I0(counter_btn_reg[13]),
        .I1(counter_btn_reg[9]),
        .I2(btn_clk_i_8_n_0),
        .I3(counter_btn_reg[11]),
        .I4(counter_btn_reg[12]),
        .I5(counter_btn_reg[10]),
        .O(btn_clk_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    btn_clk_i_5
       (.I0(counter_btn_reg[18]),
        .I1(counter_btn_reg[21]),
        .I2(counter_btn_reg[22]),
        .I3(counter_btn_reg[19]),
        .I4(counter_btn_reg[20]),
        .I5(counter_btn_reg[23]),
        .O(btn_clk_i_5_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    btn_clk_i_6
       (.I0(counter_btn_reg[4]),
        .I1(counter_btn_reg[5]),
        .I2(counter_btn_reg[17]),
        .I3(counter_btn_reg[3]),
        .O(btn_clk_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    btn_clk_i_7
       (.I0(btn_clk_i_9_n_0),
        .I1(counter_btn_reg[14]),
        .I2(counter_btn_reg[13]),
        .I3(counter_btn_reg[19]),
        .I4(counter_btn_reg[7]),
        .I5(btn_clk_i_10_n_0),
        .O(btn_clk_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFFFFFF)) 
    btn_clk_i_8
       (.I0(counter_btn_reg[7]),
        .I1(counter_btn_reg[8]),
        .I2(counter_btn_reg[6]),
        .I3(counter_btn_reg[5]),
        .I4(counter_btn_reg[4]),
        .I5(btn_clk_i_11_n_0),
        .O(btn_clk_i_8_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    btn_clk_i_9
       (.I0(counter_btn_reg[22]),
        .I1(counter_btn_reg[9]),
        .I2(counter_btn_reg[15]),
        .I3(counter_btn_reg[1]),
        .O(btn_clk_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_clk0),
        .Q(btn_clk_reg_n_0_BUFG_inst_n_0),
        .R(1'b0));
  BUFG btn_clk_reg_n_0_BUFG_inst
       (.I(btn_clk_reg_n_0_BUFG_inst_n_0),
        .O(btn_clk_reg_n_0_BUFG));
  controller_uart c1
       (.CLK(clk_uart_BUFG),
        .Q(uart_data),
        .clk_uart(clk_uart),
        .clk_uart_reg_0(clk_IBUF_BUFG),
        .tx_OBUF(tx_OBUF),
        .tx_busy_OBUF(tx_busy_OBUF),
        .tx_enable(tx_enable));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  BUFG clk_uart_BUFG_inst
       (.I(clk_uart),
        .O(clk_uart_BUFG));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[2]),
        .I3(counter_reg[1]),
        .I4(counter_reg[0]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[2]),
        .I5(counter_reg[3]),
        .O(p_0_in__3[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[6]_i_1 
       (.I0(counter_reg[6]),
        .I1(\counter[9]_i_3_n_0 ),
        .O(p_0_in__3[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[7]_i_1 
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .I2(\counter[9]_i_3_n_0 ),
        .O(p_0_in__3[7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[8]_i_1 
       (.I0(counter_reg[8]),
        .I1(counter_reg[7]),
        .I2(\counter[9]_i_3_n_0 ),
        .I3(counter_reg[6]),
        .O(p_0_in__3[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[9]_i_1 
       (.I0(LED_RST_OBUF),
        .O(rst10_in));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[9]_i_2 
       (.I0(counter_reg[9]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(\counter[9]_i_3_n_0 ),
        .I4(counter_reg[6]),
        .O(p_0_in__3[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[9]_i_3 
       (.I0(counter_reg[4]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .I4(counter_reg[3]),
        .I5(counter_reg[5]),
        .O(\counter[9]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_btn[0]_i_1 
       (.I0(BTN_IBUF),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_btn[0]_i_4 
       (.I0(counter_btn_reg[0]),
        .O(\counter_btn[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[0]_i_3_n_7 ),
        .Q(counter_btn_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_btn_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\counter_btn_reg[0]_i_3_n_0 ,\NLW_counter_btn_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_btn_reg[0]_i_3_n_4 ,\counter_btn_reg[0]_i_3_n_5 ,\counter_btn_reg[0]_i_3_n_6 ,\counter_btn_reg[0]_i_3_n_7 }),
        .S({counter_btn_reg[3:1],\counter_btn[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[8]_i_1_n_5 ),
        .Q(counter_btn_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[8]_i_1_n_4 ),
        .Q(counter_btn_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[12]_i_1_n_7 ),
        .Q(counter_btn_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_btn_reg[12]_i_1 
       (.CI(\counter_btn_reg[8]_i_1_n_0 ),
        .CO({\counter_btn_reg[12]_i_1_n_0 ,\NLW_counter_btn_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_btn_reg[12]_i_1_n_4 ,\counter_btn_reg[12]_i_1_n_5 ,\counter_btn_reg[12]_i_1_n_6 ,\counter_btn_reg[12]_i_1_n_7 }),
        .S(counter_btn_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[12]_i_1_n_6 ),
        .Q(counter_btn_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[12]_i_1_n_5 ),
        .Q(counter_btn_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[12]_i_1_n_4 ),
        .Q(counter_btn_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[16]_i_1_n_7 ),
        .Q(counter_btn_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_btn_reg[16]_i_1 
       (.CI(\counter_btn_reg[12]_i_1_n_0 ),
        .CO({\counter_btn_reg[16]_i_1_n_0 ,\NLW_counter_btn_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_btn_reg[16]_i_1_n_4 ,\counter_btn_reg[16]_i_1_n_5 ,\counter_btn_reg[16]_i_1_n_6 ,\counter_btn_reg[16]_i_1_n_7 }),
        .S(counter_btn_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[16]_i_1_n_6 ),
        .Q(counter_btn_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[16]_i_1_n_5 ),
        .Q(counter_btn_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[16]_i_1_n_4 ),
        .Q(counter_btn_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[0]_i_3_n_6 ),
        .Q(counter_btn_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[20]_i_1_n_7 ),
        .Q(counter_btn_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_btn_reg[20]_i_1 
       (.CI(\counter_btn_reg[16]_i_1_n_0 ),
        .CO(\NLW_counter_btn_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_btn_reg[20]_i_1_n_4 ,\counter_btn_reg[20]_i_1_n_5 ,\counter_btn_reg[20]_i_1_n_6 ,\counter_btn_reg[20]_i_1_n_7 }),
        .S(counter_btn_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[20]_i_1_n_6 ),
        .Q(counter_btn_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[20]_i_1_n_5 ),
        .Q(counter_btn_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[20]_i_1_n_4 ),
        .Q(counter_btn_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[0]_i_3_n_5 ),
        .Q(counter_btn_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[0]_i_3_n_4 ),
        .Q(counter_btn_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[4]_i_1_n_7 ),
        .Q(counter_btn_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_btn_reg[4]_i_1 
       (.CI(\counter_btn_reg[0]_i_3_n_0 ),
        .CO({\counter_btn_reg[4]_i_1_n_0 ,\NLW_counter_btn_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_btn_reg[4]_i_1_n_4 ,\counter_btn_reg[4]_i_1_n_5 ,\counter_btn_reg[4]_i_1_n_6 ,\counter_btn_reg[4]_i_1_n_7 }),
        .S(counter_btn_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[4]_i_1_n_6 ),
        .Q(counter_btn_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[4]_i_1_n_5 ),
        .Q(counter_btn_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[4]_i_1_n_4 ),
        .Q(counter_btn_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[8]_i_1_n_7 ),
        .Q(counter_btn_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_btn_reg[8]_i_1 
       (.CI(\counter_btn_reg[4]_i_1_n_0 ),
        .CO({\counter_btn_reg[8]_i_1_n_0 ,\NLW_counter_btn_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_btn_reg[8]_i_1_n_4 ,\counter_btn_reg[8]_i_1_n_5 ,\counter_btn_reg[8]_i_1_n_6 ,\counter_btn_reg[8]_i_1_n_7 }),
        .S(counter_btn_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_btn_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_btn[0]_i_2_n_0 ),
        .D(\counter_btn_reg[8]_i_1_n_6 ),
        .Q(counter_btn_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_clk[0]_i_2 
       (.I0(\counter_clk_reg_n_0_[0] ),
        .O(\counter_clk[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[0]_i_1_n_7 ),
        .Q(\counter_clk_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_clk_reg[0]_i_1_n_0 ,\NLW_counter_clk_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_clk_reg[0]_i_1_n_4 ,\counter_clk_reg[0]_i_1_n_5 ,\counter_clk_reg[0]_i_1_n_6 ,\counter_clk_reg[0]_i_1_n_7 }),
        .S({\counter_clk_reg_n_0_[3] ,\counter_clk_reg_n_0_[2] ,\counter_clk_reg_n_0_[1] ,\counter_clk[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[8]_i_1_n_5 ),
        .Q(\counter_clk_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[8]_i_1_n_4 ),
        .Q(\counter_clk_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[12]_i_1_n_7 ),
        .Q(\counter_clk_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[12]_i_1 
       (.CI(\counter_clk_reg[8]_i_1_n_0 ),
        .CO({\counter_clk_reg[12]_i_1_n_0 ,\NLW_counter_clk_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[12]_i_1_n_4 ,\counter_clk_reg[12]_i_1_n_5 ,\counter_clk_reg[12]_i_1_n_6 ,\counter_clk_reg[12]_i_1_n_7 }),
        .S({\counter_clk_reg_n_0_[15] ,\counter_clk_reg_n_0_[14] ,\counter_clk_reg_n_0_[13] ,\counter_clk_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[12]_i_1_n_6 ),
        .Q(\counter_clk_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[12]_i_1_n_5 ),
        .Q(\counter_clk_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[12]_i_1_n_4 ),
        .Q(\counter_clk_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[16]_i_1_n_7 ),
        .Q(\counter_clk_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[16]_i_1 
       (.CI(\counter_clk_reg[12]_i_1_n_0 ),
        .CO({\counter_clk_reg[16]_i_1_n_0 ,\NLW_counter_clk_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[16]_i_1_n_4 ,\counter_clk_reg[16]_i_1_n_5 ,\counter_clk_reg[16]_i_1_n_6 ,\counter_clk_reg[16]_i_1_n_7 }),
        .S({\counter_clk_reg_n_0_[19] ,counter_clk_reg,\counter_clk_reg_n_0_[17] ,\counter_clk_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[16]_i_1_n_6 ),
        .Q(\counter_clk_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[16]_i_1_n_5 ),
        .Q(counter_clk_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[16]_i_1_n_4 ),
        .Q(\counter_clk_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[0]_i_1_n_6 ),
        .Q(\counter_clk_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[20]_i_1_n_7 ),
        .Q(\counter_clk_reg_n_0_[20] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[20]_i_1 
       (.CI(\counter_clk_reg[16]_i_1_n_0 ),
        .CO({\counter_clk_reg[20]_i_1_n_0 ,\NLW_counter_clk_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[20]_i_1_n_4 ,\counter_clk_reg[20]_i_1_n_5 ,\counter_clk_reg[20]_i_1_n_6 ,\counter_clk_reg[20]_i_1_n_7 }),
        .S({\counter_clk_reg_n_0_[23] ,\counter_clk_reg_n_0_[22] ,\counter_clk_reg_n_0_[21] ,\counter_clk_reg_n_0_[20] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[20]_i_1_n_6 ),
        .Q(\counter_clk_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[20]_i_1_n_5 ),
        .Q(\counter_clk_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[20]_i_1_n_4 ),
        .Q(\counter_clk_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[24]_i_1_n_7 ),
        .Q(counter_clk_reg__0[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[24]_i_1 
       (.CI(\counter_clk_reg[20]_i_1_n_0 ),
        .CO({\counter_clk_reg[24]_i_1_n_0 ,\NLW_counter_clk_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[24]_i_1_n_4 ,\counter_clk_reg[24]_i_1_n_5 ,\counter_clk_reg[24]_i_1_n_6 ,\counter_clk_reg[24]_i_1_n_7 }),
        .S(counter_clk_reg__0[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[24]_i_1_n_6 ),
        .Q(counter_clk_reg__0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[24]_i_1_n_5 ),
        .Q(counter_clk_reg__0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[24]_i_1_n_4 ),
        .Q(counter_clk_reg__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[28]_i_1_n_7 ),
        .Q(counter_clk_reg__0[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[28]_i_1 
       (.CI(\counter_clk_reg[24]_i_1_n_0 ),
        .CO(\NLW_counter_clk_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_clk_reg[28]_i_1_O_UNCONNECTED [3],\counter_clk_reg[28]_i_1_n_5 ,\counter_clk_reg[28]_i_1_n_6 ,\counter_clk_reg[28]_i_1_n_7 }),
        .S({1'b0,counter_clk_reg__0[30:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[28]_i_1_n_6 ),
        .Q(counter_clk_reg__0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[0]_i_1_n_5 ),
        .Q(\counter_clk_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[28]_i_1_n_5 ),
        .Q(counter_clk_reg__0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[0]_i_1_n_4 ),
        .Q(\counter_clk_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[4]_i_1_n_7 ),
        .Q(\counter_clk_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[4]_i_1 
       (.CI(\counter_clk_reg[0]_i_1_n_0 ),
        .CO({\counter_clk_reg[4]_i_1_n_0 ,\NLW_counter_clk_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[4]_i_1_n_4 ,\counter_clk_reg[4]_i_1_n_5 ,\counter_clk_reg[4]_i_1_n_6 ,\counter_clk_reg[4]_i_1_n_7 }),
        .S({\counter_clk_reg_n_0_[7] ,\counter_clk_reg_n_0_[6] ,\counter_clk_reg_n_0_[5] ,\counter_clk_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[4]_i_1_n_6 ),
        .Q(\counter_clk_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[4]_i_1_n_5 ),
        .Q(\counter_clk_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[4]_i_1_n_4 ),
        .Q(\counter_clk_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[8]_i_1_n_7 ),
        .Q(\counter_clk_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_clk_reg[8]_i_1 
       (.CI(\counter_clk_reg[4]_i_1_n_0 ),
        .CO({\counter_clk_reg[8]_i_1_n_0 ,\NLW_counter_clk_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[8]_i_1_n_4 ,\counter_clk_reg[8]_i_1_n_5 ,\counter_clk_reg[8]_i_1_n_6 ,\counter_clk_reg[8]_i_1_n_7 }),
        .S({\counter_clk_reg_n_0_[11] ,\counter_clk_reg_n_0_[10] ,\counter_clk_reg_n_0_[9] ,\counter_clk_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_clk_reg[8]_i_1_n_6 ),
        .Q(\counter_clk_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_clk_uart[0]_i_1 
       (.I0(counter_clk_uart_reg[0]),
        .O(p_0_in__5[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_clk_uart[1]_i_1 
       (.I0(counter_clk_uart_reg[0]),
        .I1(counter_clk_uart_reg[1]),
        .O(p_0_in__5[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \counter_clk_uart[2]_i_1 
       (.I0(counter_clk_uart_reg[2]),
        .I1(counter_clk_uart_reg[0]),
        .I2(counter_clk_uart_reg[1]),
        .O(p_0_in__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter_clk_uart[3]_i_1 
       (.I0(counter_clk_uart_reg[3]),
        .I1(counter_clk_uart_reg[1]),
        .I2(counter_clk_uart_reg[2]),
        .I3(counter_clk_uart_reg[0]),
        .O(\counter_clk_uart[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter_clk_uart[4]_i_1 
       (.I0(counter_clk_uart_reg[4]),
        .I1(counter_clk_uart_reg[0]),
        .I2(counter_clk_uart_reg[2]),
        .I3(counter_clk_uart_reg[1]),
        .I4(counter_clk_uart_reg[3]),
        .O(p_0_in__5[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter_clk_uart[5]_i_1 
       (.I0(counter_clk_uart_reg[5]),
        .I1(counter_clk_uart_reg[3]),
        .I2(counter_clk_uart_reg[1]),
        .I3(counter_clk_uart_reg[2]),
        .I4(counter_clk_uart_reg[0]),
        .I5(counter_clk_uart_reg[4]),
        .O(p_0_in__5[5]));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \counter_clk_uart[6]_i_1 
       (.I0(counter_clk_uart_reg[6]),
        .I1(counter_clk_uart_reg[4]),
        .I2(\counter_clk_uart[7]_i_4_n_0 ),
        .I3(counter_clk_uart_reg[3]),
        .I4(counter_clk_uart_reg[5]),
        .O(p_0_in__5[6]));
  LUT6 #(
    .INIT(64'hAAAAA88888888888)) 
    \counter_clk_uart[7]_i_1 
       (.I0(counter_clk_uart_reg[7]),
        .I1(\counter_clk_uart[7]_i_3_n_0 ),
        .I2(counter_clk_uart_reg[1]),
        .I3(counter_clk_uart_reg[2]),
        .I4(counter_clk_uart_reg[3]),
        .I5(counter_clk_uart_reg[4]),
        .O(\counter_clk_uart[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \counter_clk_uart[7]_i_2 
       (.I0(counter_clk_uart_reg[7]),
        .I1(counter_clk_uart_reg[5]),
        .I2(counter_clk_uart_reg[3]),
        .I3(\counter_clk_uart[7]_i_4_n_0 ),
        .I4(counter_clk_uart_reg[4]),
        .I5(counter_clk_uart_reg[6]),
        .O(p_0_in__5[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_clk_uart[7]_i_3 
       (.I0(counter_clk_uart_reg[5]),
        .I1(counter_clk_uart_reg[6]),
        .O(\counter_clk_uart[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter_clk_uart[7]_i_4 
       (.I0(counter_clk_uart_reg[0]),
        .I1(counter_clk_uart_reg[2]),
        .I2(counter_clk_uart_reg[1]),
        .O(\counter_clk_uart[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \counter_clk_uart_reg[0] 
       (.C(clk_uart_BUFG),
        .CE(1'b1),
        .D(p_0_in__5[0]),
        .Q(counter_clk_uart_reg[0]),
        .R(\counter_clk_uart[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_uart_reg[1] 
       (.C(clk_uart_BUFG),
        .CE(1'b1),
        .D(p_0_in__5[1]),
        .Q(counter_clk_uart_reg[1]),
        .R(\counter_clk_uart[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_uart_reg[2] 
       (.C(clk_uart_BUFG),
        .CE(1'b1),
        .D(p_0_in__5[2]),
        .Q(counter_clk_uart_reg[2]),
        .R(\counter_clk_uart[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_uart_reg[3] 
       (.C(clk_uart_BUFG),
        .CE(1'b1),
        .D(\counter_clk_uart[3]_i_1_n_0 ),
        .Q(counter_clk_uart_reg[3]),
        .R(\counter_clk_uart[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_uart_reg[4] 
       (.C(clk_uart_BUFG),
        .CE(1'b1),
        .D(p_0_in__5[4]),
        .Q(counter_clk_uart_reg[4]),
        .R(\counter_clk_uart[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_uart_reg[5] 
       (.C(clk_uart_BUFG),
        .CE(1'b1),
        .D(p_0_in__5[5]),
        .Q(counter_clk_uart_reg[5]),
        .R(\counter_clk_uart[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_uart_reg[6] 
       (.C(clk_uart_BUFG),
        .CE(1'b1),
        .D(p_0_in__5[6]),
        .Q(counter_clk_uart_reg[6]),
        .R(\counter_clk_uart[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_uart_reg[7] 
       (.C(clk_uart_BUFG),
        .CE(1'b1),
        .D(p_0_in__5[7]),
        .Q(counter_clk_uart_reg[7]),
        .R(\counter_clk_uart[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[0]),
        .Q(counter_reg[0]),
        .R(rst10_in));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[1]),
        .Q(counter_reg[1]),
        .R(rst10_in));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[2]),
        .Q(counter_reg[2]),
        .R(rst10_in));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[3]),
        .Q(counter_reg[3]),
        .R(rst10_in));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[4]),
        .Q(counter_reg[4]),
        .R(rst10_in));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[5]),
        .Q(counter_reg[5]),
        .R(rst10_in));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[6]),
        .Q(counter_reg[6]),
        .R(rst10_in));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[7]),
        .Q(counter_reg[7]),
        .R(rst10_in));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[8]),
        .Q(counter_reg[8]),
        .R(rst10_in));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(btn_clk_reg_n_0_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[9]),
        .Q(counter_reg[9]),
        .R(rst10_in));
  digit_place d_g1
       (.CO(d_g1_n_0),
        .O({d_g1_n_1,d_g1_n_2}),
        .Q(counter_reg),
        .\counter_reg[2] (d_g1_n_3),
        .\counter_reg[2]_0 (d_g1_n_9),
        .\counter_reg[2]_1 (d_g1_n_10),
        .\counter_reg[4] (d_g1_n_11),
        .\counter_reg[4]_0 (d_g1_n_12),
        .\seg[0] (s_s1_n_5),
        .\seg[0]_0 (s_s1_n_4),
        .seg_OBUF({seg_OBUF[4],seg_OBUF[1:0]}),
        .\seg_OBUF[6]_inst_i_1 (s_s1_n_12),
        .\seg_OBUF[6]_inst_i_1_0 (s_s1_n_10),
        .\seg_OBUF[6]_inst_i_5_0 (s_s1_n_11),
        .\shift_reg_seg_reg[1] (d_g1_n_7),
        .\shift_reg_seg_reg[1]_0 (d_g1_n_8));
  m_seq_gen gln_l1of
       (.LED_OBUF(LED_OBUF[0]),
        .LED_RST_OBUF(LED_RST_OBUF),
        .btn_clk_reg_n_0_BUFG(btn_clk_reg_n_0_BUFG));
  m_seq_gen__parameterized0 gps_l1ca_g1
       (.LED_RST_OBUF(LED_RST_OBUF),
        .btn_clk_reg_n_0_BUFG(btn_clk_reg_n_0_BUFG),
        .g1(g1));
  m_seq_gen__parameterized1 gps_l1ca_g2_1
       (.LED_OBUF(LED_OBUF[1]),
        .LED_RST_OBUF(LED_RST_OBUF),
        .btn_clk_reg_n_0_BUFG(btn_clk_reg_n_0_BUFG),
        .g1(g1),
        .g2_2(g2_2));
  m_seq_gen__parameterized2 gps_l1ca_g2_2
       (.LED_RST_OBUF(LED_RST_OBUF),
        .btn_clk_reg_n_0_BUFG(btn_clk_reg_n_0_BUFG),
        .g2_2(g2_2));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rst_i_1
       (.I0(counter_clk_reg__0[26]),
        .I1(counter_clk_reg__0[24]),
        .I2(counter_clk_reg__0[25]),
        .I3(counter_clk_reg__0[28]),
        .I4(rst_i_2_n_0),
        .O(rst_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rst_i_2
       (.I0(counter_clk_reg__0[30]),
        .I1(LED_RST_OBUF),
        .I2(counter_clk_reg__0[29]),
        .I3(counter_clk_reg__0[27]),
        .O(rst_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rst_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(LED_RST_OBUF),
        .R(1'b0));
  seven_segment s_s1
       (.CLK(counter_clk_reg),
        .CO(d_g1_n_0),
        .O({d_g1_n_1,d_g1_n_2}),
        .Q(act_seg_OBUF),
        .\seg[3] (d_g1_n_8),
        .\seg[3]_0 (d_g1_n_7),
        .seg_OBUF({seg_OBUF[6:5],seg_OBUF[3:2]}),
        .\seg_OBUF[4]_inst_i_1 (d_g1_n_10),
        .\seg_OBUF[4]_inst_i_1_0 (d_g1_n_9),
        .\seg_OBUF[4]_inst_i_1_1 (d_g1_n_3),
        .\seg_OBUF[6]_inst_i_2_0 (d_g1_n_11),
        .\seg_OBUF[6]_inst_i_4_0 (d_g1_n_12),
        .\seg_OBUF[6]_inst_i_7_0 ({counter_reg[9],counter_reg[0]}),
        .\shift_reg_seg_reg[1]_0 (s_s1_n_5),
        .\shift_reg_seg_reg[1]_1 (s_s1_n_10),
        .\shift_reg_seg_reg[1]_2 (s_s1_n_11),
        .\shift_reg_seg_reg[2]_0 (s_s1_n_4),
        .\shift_reg_seg_reg[2]_1 (s_s1_n_12));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  OBUF \seg_OBUF[7]_inst 
       (.I(1'b1),
        .O(seg[7]));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  OBUF tx_busy_OBUF_inst
       (.I(tx_busy_OBUF),
        .O(tx_busy));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    tx_enable_i_1
       (.I0(counter_clk_uart_reg[2]),
        .I1(counter_clk_uart_reg[4]),
        .I2(counter_clk_uart_reg[3]),
        .I3(counter_clk_uart_reg[7]),
        .I4(\uart_data[7]_i_3_n_0 ),
        .I5(tx_enable),
        .O(tx_enable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_enable_reg
       (.C(clk_uart_BUFG),
        .CE(1'b1),
        .D(tx_enable_i_1_n_0),
        .Q(tx_enable),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \uart_data[0]_i_1 
       (.I0(uart_data[0]),
        .O(\uart_data[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uart_data[1]_i_1 
       (.I0(uart_data[1]),
        .O(\uart_data[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uart_data[2]_i_1 
       (.I0(uart_data[2]),
        .O(\uart_data[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uart_data[3]_i_1 
       (.I0(uart_data[3]),
        .O(\uart_data[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uart_data[4]_i_1 
       (.I0(uart_data[4]),
        .O(\uart_data[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uart_data[5]_i_1 
       (.I0(uart_data[5]),
        .O(\uart_data[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \uart_data[6]_i_1 
       (.I0(uart_data[6]),
        .O(\uart_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \uart_data[7]_i_1 
       (.I0(counter_clk_uart_reg[2]),
        .I1(counter_clk_uart_reg[4]),
        .I2(counter_clk_uart_reg[3]),
        .I3(counter_clk_uart_reg[7]),
        .I4(\uart_data[7]_i_3_n_0 ),
        .O(clk_uart_bite));
  LUT1 #(
    .INIT(2'h1)) 
    \uart_data[7]_i_2 
       (.I0(uart_data[7]),
        .O(\uart_data[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \uart_data[7]_i_3 
       (.I0(counter_clk_uart_reg[1]),
        .I1(counter_clk_uart_reg[0]),
        .I2(counter_clk_uart_reg[6]),
        .I3(counter_clk_uart_reg[5]),
        .O(\uart_data[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \uart_data_reg[0] 
       (.C(clk_uart_BUFG),
        .CE(clk_uart_bite),
        .D(\uart_data[0]_i_1_n_0 ),
        .Q(uart_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \uart_data_reg[1] 
       (.C(clk_uart_BUFG),
        .CE(clk_uart_bite),
        .D(\uart_data[1]_i_1_n_0 ),
        .Q(uart_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \uart_data_reg[2] 
       (.C(clk_uart_BUFG),
        .CE(clk_uart_bite),
        .D(\uart_data[2]_i_1_n_0 ),
        .Q(uart_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \uart_data_reg[3] 
       (.C(clk_uart_BUFG),
        .CE(clk_uart_bite),
        .D(\uart_data[3]_i_1_n_0 ),
        .Q(uart_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \uart_data_reg[4] 
       (.C(clk_uart_BUFG),
        .CE(clk_uart_bite),
        .D(\uart_data[4]_i_1_n_0 ),
        .Q(uart_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \uart_data_reg[5] 
       (.C(clk_uart_BUFG),
        .CE(clk_uart_bite),
        .D(\uart_data[5]_i_1_n_0 ),
        .Q(uart_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \uart_data_reg[6] 
       (.C(clk_uart_BUFG),
        .CE(clk_uart_bite),
        .D(\uart_data[6]_i_1_n_0 ),
        .Q(uart_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \uart_data_reg[7] 
       (.C(clk_uart_BUFG),
        .CE(clk_uart_bite),
        .D(\uart_data[7]_i_2_n_0 ),
        .Q(uart_data[7]),
        .R(1'b0));
endmodule

module uart_tx
   (tx_OBUF,
    tx_busy_reg_0,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[1] ,
    tx_enable_reg,
    CLK,
    state,
    \FSM_sequential_state_reg[1]_0 ,
    tx_enable,
    Q);
  output tx_OBUF;
  output tx_busy_reg_0;
  output \FSM_sequential_state_reg[0] ;
  output \FSM_sequential_state_reg[1] ;
  output tx_enable_reg;
  input CLK;
  input [1:0]state;
  input \FSM_sequential_state_reg[1]_0 ;
  input tx_enable;
  input [7:0]Q;

  wire CLK;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [7:0]Q;
  wire \bit_index[0]_i_1_n_0 ;
  wire [4:0]bit_index_reg;
  wire data_framed_i_1_n_0;
  wire data_framed_reg_n_0;
  wire local_data;
  wire \local_data_reg_n_0_[1] ;
  wire \local_data_reg_n_0_[2] ;
  wire \local_data_reg_n_0_[3] ;
  wire \local_data_reg_n_0_[4] ;
  wire \local_data_reg_n_0_[5] ;
  wire \local_data_reg_n_0_[6] ;
  wire \local_data_reg_n_0_[7] ;
  wire \local_data_reg_n_0_[8] ;
  wire \local_data_reg_n_0_[9] ;
  wire [4:1]p_0_in__4;
  wire retention_counter;
  wire \retention_counter[0]_i_1_n_0 ;
  wire \retention_counter[1]_i_1_n_0 ;
  wire \retention_counter[2]_i_1_n_0 ;
  wire \retention_counter[3]_i_1_n_0 ;
  wire [8:5]sel0;
  wire [1:0]state;
  wire tx0;
  wire tx_OBUF;
  wire tx_busy_i_1_n_0;
  wire tx_busy_reg_0;
  wire tx_enable;
  wire tx_enable_reg;
  wire tx_i_1_n_0;
  wire tx_i_2_n_0;
  wire tx_i_3_n_0;
  wire tx_i_4_n_0;
  wire tx_i_5_n_0;

  LUT4 #(
    .INIT(16'h7350)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(tx_enable),
        .I2(retention_counter),
        .I3(tx0),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD5C0)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(data_framed_reg_n_0),
        .I1(tx_enable),
        .I2(tx0),
        .I3(local_data),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hECA0)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data_framed_reg_n_0),
        .I2(retention_counter),
        .I3(local_data),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(bit_index_reg[1]),
        .I1(bit_index_reg[0]),
        .I2(bit_index_reg[3]),
        .I3(bit_index_reg[2]),
        .I4(bit_index_reg[4]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "CAPTURE:010,TRANSMITTING:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(tx0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "CAPTURE:010,TRANSMITTING:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(local_data),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "CAPTURE:010,TRANSMITTING:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(retention_counter),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF2CEF2F2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(tx_enable),
        .I1(state[1]),
        .I2(state[0]),
        .I3(tx_busy_reg_0),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .O(tx_enable_reg));
  LUT4 #(
    .INIT(16'hACAA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(tx_busy_reg_0),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(\FSM_sequential_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF960)) 
    allow_next_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(tx_busy_reg_0),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(\FSM_sequential_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_index[0]_i_1 
       (.I0(bit_index_reg[0]),
        .O(\bit_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_index[1]_i_1 
       (.I0(bit_index_reg[1]),
        .I1(bit_index_reg[0]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_index[2]_i_1 
       (.I0(bit_index_reg[1]),
        .I1(bit_index_reg[0]),
        .I2(bit_index_reg[2]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_index[3]_i_1 
       (.I0(bit_index_reg[3]),
        .I1(bit_index_reg[1]),
        .I2(bit_index_reg[0]),
        .I3(bit_index_reg[2]),
        .O(p_0_in__4[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bit_index[4]_i_1 
       (.I0(bit_index_reg[4]),
        .I1(bit_index_reg[3]),
        .I2(bit_index_reg[2]),
        .I3(bit_index_reg[0]),
        .I4(bit_index_reg[1]),
        .O(p_0_in__4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[0] 
       (.C(CLK),
        .CE(tx_i_1_n_0),
        .D(\bit_index[0]_i_1_n_0 ),
        .Q(bit_index_reg[0]),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[1] 
       (.C(CLK),
        .CE(tx_i_1_n_0),
        .D(p_0_in__4[1]),
        .Q(bit_index_reg[1]),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[2] 
       (.C(CLK),
        .CE(tx_i_1_n_0),
        .D(p_0_in__4[2]),
        .Q(bit_index_reg[2]),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[3] 
       (.C(CLK),
        .CE(tx_i_1_n_0),
        .D(p_0_in__4[3]),
        .Q(bit_index_reg[3]),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[4] 
       (.C(CLK),
        .CE(tx_i_1_n_0),
        .D(p_0_in__4[4]),
        .Q(bit_index_reg[4]),
        .R(tx0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    data_framed_i_1
       (.I0(local_data),
        .I1(tx0),
        .I2(data_framed_reg_n_0),
        .O(data_framed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_framed_reg
       (.C(CLK),
        .CE(1'b1),
        .D(data_framed_i_1_n_0),
        .Q(data_framed_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \local_data_reg[1] 
       (.C(CLK),
        .CE(local_data),
        .D(Q[0]),
        .Q(\local_data_reg_n_0_[1] ),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \local_data_reg[2] 
       (.C(CLK),
        .CE(local_data),
        .D(Q[1]),
        .Q(\local_data_reg_n_0_[2] ),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \local_data_reg[3] 
       (.C(CLK),
        .CE(local_data),
        .D(Q[2]),
        .Q(\local_data_reg_n_0_[3] ),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \local_data_reg[4] 
       (.C(CLK),
        .CE(local_data),
        .D(Q[3]),
        .Q(\local_data_reg_n_0_[4] ),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \local_data_reg[5] 
       (.C(CLK),
        .CE(local_data),
        .D(Q[4]),
        .Q(\local_data_reg_n_0_[5] ),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \local_data_reg[6] 
       (.C(CLK),
        .CE(local_data),
        .D(Q[5]),
        .Q(\local_data_reg_n_0_[6] ),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \local_data_reg[7] 
       (.C(CLK),
        .CE(local_data),
        .D(Q[6]),
        .Q(\local_data_reg_n_0_[7] ),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \local_data_reg[8] 
       (.C(CLK),
        .CE(local_data),
        .D(Q[7]),
        .Q(\local_data_reg_n_0_[8] ),
        .R(tx0));
  FDRE #(
    .INIT(1'b0)) 
    \local_data_reg[9] 
       (.C(CLK),
        .CE(local_data),
        .D(1'b1),
        .Q(\local_data_reg_n_0_[9] ),
        .R(tx0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \retention_counter[0]_i_1 
       (.I0(sel0[5]),
        .O(\retention_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \retention_counter[1]_i_1 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .O(\retention_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \retention_counter[2]_i_1 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .O(\retention_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \retention_counter[3]_i_1 
       (.I0(sel0[8]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .O(\retention_counter[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \retention_counter_reg[0] 
       (.C(CLK),
        .CE(retention_counter),
        .D(\retention_counter[0]_i_1_n_0 ),
        .Q(sel0[5]),
        .S(tx0));
  FDSE #(
    .INIT(1'b1)) 
    \retention_counter_reg[1] 
       (.C(CLK),
        .CE(retention_counter),
        .D(\retention_counter[1]_i_1_n_0 ),
        .Q(sel0[6]),
        .S(tx0));
  FDSE #(
    .INIT(1'b1)) 
    \retention_counter_reg[2] 
       (.C(CLK),
        .CE(retention_counter),
        .D(\retention_counter[2]_i_1_n_0 ),
        .Q(sel0[7]),
        .S(tx0));
  FDSE #(
    .INIT(1'b1)) 
    \retention_counter_reg[3] 
       (.C(CLK),
        .CE(retention_counter),
        .D(\retention_counter[3]_i_1_n_0 ),
        .Q(sel0[8]),
        .S(tx0));
  LUT5 #(
    .INIT(32'hDCDDCCCC)) 
    tx_busy_i_1
       (.I0(tx0),
        .I1(local_data),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(tx_i_1_n_0),
        .I4(tx_busy_reg_0),
        .O(tx_busy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_busy_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_busy_i_1_n_0),
        .Q(tx_busy_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000100)) 
    tx_i_1
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(sel0[8]),
        .I3(retention_counter),
        .I4(sel0[7]),
        .O(tx_i_1_n_0));
  LUT6 #(
    .INIT(64'hFAFCFCAF0A0C0CA0)) 
    tx_i_2
       (.I0(tx_i_3_n_0),
        .I1(tx_i_4_n_0),
        .I2(bit_index_reg[3]),
        .I3(bit_index_reg[2]),
        .I4(bit_index_reg[1]),
        .I5(tx_i_5_n_0),
        .O(tx_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_3
       (.I0(\local_data_reg_n_0_[7] ),
        .I1(\local_data_reg_n_0_[6] ),
        .I2(bit_index_reg[1]),
        .I3(\local_data_reg_n_0_[9] ),
        .I4(bit_index_reg[0]),
        .I5(\local_data_reg_n_0_[8] ),
        .O(tx_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_4
       (.I0(\local_data_reg_n_0_[3] ),
        .I1(\local_data_reg_n_0_[2] ),
        .I2(bit_index_reg[1]),
        .I3(\local_data_reg_n_0_[5] ),
        .I4(bit_index_reg[0]),
        .I5(\local_data_reg_n_0_[4] ),
        .O(tx_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    tx_i_5
       (.I0(bit_index_reg[0]),
        .I1(\local_data_reg_n_0_[1] ),
        .O(tx_i_5_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_reg
       (.C(CLK),
        .CE(tx_i_1_n_0),
        .D(tx_i_2_n_0),
        .Q(tx_OBUF),
        .S(tx0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
