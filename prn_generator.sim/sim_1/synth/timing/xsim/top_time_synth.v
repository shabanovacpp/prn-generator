// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Oct  9 22:05:20 2025
// Host        : WIN-UFU5MFIKGKT running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/User/Desktop/Ira/vivadoProjects/prn_generator/prn_generator.sim/sim_1/synth/timing/xsim/top_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module top
   (clk,
    \act_seg[3] ,
    \act_seg[2] ,
    \act_seg[1] ,
    \act_seg[0] ,
    LED,
    \seg[7] ,
    \seg[6] ,
    \seg[5] ,
    \seg[4] ,
    \seg[3] ,
    \seg[2] ,
    \seg[1] ,
    \seg[0] );
  input clk;
  input \act_seg[3] ;
  input \act_seg[2] ;
  input \act_seg[1] ;
  input \act_seg[0] ;
  output LED;
  output \seg[7] ;
  output \seg[6] ;
  output \seg[5] ;
  output \seg[4] ;
  output \seg[3] ;
  output \seg[2] ;
  output \seg[1] ;
  output \seg[0] ;

  wire LED;
  wire \seg[0] ;
  wire \seg[1] ;
  wire \seg[2] ;
  wire \seg[3] ;
  wire \seg[4] ;
  wire \seg[5] ;
  wire \seg[6] ;
  wire \seg[7] ;

initial begin
 $sdf_annotate("top_time_synth.sdf",,,,"tool_control");
end
  OBUF LED_OBUF_inst
       (.I(1'b1),
        .O(LED));
  OBUFT \seg[0]_INST_0 
       (.I(1'b0),
        .O(\seg[0] ),
        .T(1'b1));
  OBUFT \seg[1]_INST_0 
       (.I(1'b0),
        .O(\seg[1] ),
        .T(1'b1));
  OBUFT \seg[2]_INST_0 
       (.I(1'b0),
        .O(\seg[2] ),
        .T(1'b1));
  OBUFT \seg[3]_INST_0 
       (.I(1'b0),
        .O(\seg[3] ),
        .T(1'b1));
  OBUFT \seg[4]_INST_0 
       (.I(1'b0),
        .O(\seg[4] ),
        .T(1'b1));
  OBUFT \seg[5]_INST_0 
       (.I(1'b0),
        .O(\seg[5] ),
        .T(1'b1));
  OBUFT \seg[6]_INST_0 
       (.I(1'b0),
        .O(\seg[6] ),
        .T(1'b1));
  OBUFT \seg[7]_INST_0 
       (.I(1'b0),
        .O(\seg[7] ),
        .T(1'b1));
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
