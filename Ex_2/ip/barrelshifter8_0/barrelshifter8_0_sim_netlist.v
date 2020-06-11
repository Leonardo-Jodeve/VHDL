// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Sun Oct 16 16:50:16 2016
// Host        : hp-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/sysclassfiles/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/barrelshifter8_0/barrelshifter8_0_sim_netlist.v
// Design      : barrelshifter8_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "barrelshifter8_0,barrelshifter8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "barrelshifter8,Vivado 2015.4" *) 
(* NotValidForBitStream *)
module barrelshifter8_0
   (d,
    s,
    t,
    q);
  input [7:0]d;
  input [2:0]s;
  input [1:0]t;
  output [7:0]q;

  wire [7:0]d;
  wire [7:0]q;
  wire [2:0]s;
  wire [1:0]t;

  barrelshifter8_0_barrelshifter8 inst
       (.d(d),
        .q(q),
        .s(s),
        .t(t));
endmodule

(* ORIG_REF_NAME = "barrelshifter8" *) 
module barrelshifter8_0_barrelshifter8
   (d,
    s,
    t,
    q);
  input [7:0]d;
  input [2:0]s;
  input [1:0]t;
  output [7:0]q;

  wire [7:0]d;
  wire [7:0]q;
  wire \q[0]_INST_0_i_1_n_0 ;
  wire \q[1]_INST_0_i_1_n_0 ;
  wire \q[2]_INST_0_i_1_n_0 ;
  wire \q[3]_INST_0_i_1_n_0 ;
  wire \q[4]_INST_0_i_2_n_0 ;
  wire \q[4]_INST_0_i_3_n_0 ;
  wire \q[5]_INST_0_i_2_n_0 ;
  wire \q[5]_INST_0_i_3_n_0 ;
  wire \q[6]_INST_0_i_2_n_0 ;
  wire \q[6]_INST_0_i_3_n_0 ;
  wire \q[7]_INST_0_i_2_n_0 ;
  wire \q[7]_INST_0_i_3_n_0 ;
  wire \q[7]_INST_0_i_4_n_0 ;
  wire [2:0]s;
  wire [1:0]t;
  wire \u2/tq41 ;
  wire \u2/tq51 ;
  wire \u2/tq61 ;
  wire \u2/tq71 ;

  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[0]_INST_0 
       (.I0(\u2/tq71 ),
        .I1(t[1]),
        .I2(\q[4]_INST_0_i_3_n_0 ),
        .I3(s[2]),
        .I4(\q[0]_INST_0_i_1_n_0 ),
        .O(q[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[0]_INST_0_i_1 
       (.I0(d[3]),
        .I1(d[2]),
        .I2(s[1]),
        .I3(d[1]),
        .I4(s[0]),
        .I5(d[0]),
        .O(\q[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[1]_INST_0 
       (.I0(\u2/tq61 ),
        .I1(t[1]),
        .I2(\q[5]_INST_0_i_3_n_0 ),
        .I3(s[2]),
        .I4(\q[1]_INST_0_i_1_n_0 ),
        .O(q[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[1]_INST_0_i_1 
       (.I0(d[4]),
        .I1(d[3]),
        .I2(s[1]),
        .I3(d[2]),
        .I4(s[0]),
        .I5(d[1]),
        .O(\q[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[2]_INST_0 
       (.I0(\u2/tq51 ),
        .I1(t[1]),
        .I2(\q[6]_INST_0_i_3_n_0 ),
        .I3(s[2]),
        .I4(\q[2]_INST_0_i_1_n_0 ),
        .O(q[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[2]_INST_0_i_1 
       (.I0(d[5]),
        .I1(d[4]),
        .I2(s[1]),
        .I3(d[3]),
        .I4(s[0]),
        .I5(d[2]),
        .O(\q[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[3]_INST_0 
       (.I0(\u2/tq41 ),
        .I1(t[1]),
        .I2(\q[7]_INST_0_i_4_n_0 ),
        .I3(s[2]),
        .I4(\q[3]_INST_0_i_1_n_0 ),
        .O(q[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[3]_INST_0_i_1 
       (.I0(d[6]),
        .I1(d[5]),
        .I2(s[1]),
        .I3(d[4]),
        .I4(s[0]),
        .I5(d[3]),
        .O(\q[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0 
       (.I0(\u2/tq71 ),
        .I1(\q[4]_INST_0_i_2_n_0 ),
        .I2(t[1]),
        .I3(\q[7]_INST_0_i_3_n_0 ),
        .I4(s[2]),
        .I5(\q[4]_INST_0_i_3_n_0 ),
        .O(q[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \q[4]_INST_0_i_1 
       (.I0(s[0]),
        .I1(d[0]),
        .I2(s[1]),
        .O(\u2/tq71 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_2 
       (.I0(d[1]),
        .I1(d[2]),
        .I2(s[1]),
        .I3(d[3]),
        .I4(s[0]),
        .I5(d[4]),
        .O(\q[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[4]_INST_0_i_3 
       (.I0(d[7]),
        .I1(d[6]),
        .I2(s[1]),
        .I3(d[5]),
        .I4(s[0]),
        .I5(d[4]),
        .O(\q[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0 
       (.I0(\u2/tq61 ),
        .I1(\q[5]_INST_0_i_2_n_0 ),
        .I2(t[1]),
        .I3(\q[7]_INST_0_i_3_n_0 ),
        .I4(s[2]),
        .I5(\q[5]_INST_0_i_3_n_0 ),
        .O(q[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \q[5]_INST_0_i_1 
       (.I0(d[1]),
        .I1(s[0]),
        .I2(d[0]),
        .I3(s[1]),
        .O(\u2/tq61 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[5]_INST_0_i_2 
       (.I0(d[2]),
        .I1(d[3]),
        .I2(s[1]),
        .I3(d[4]),
        .I4(s[0]),
        .I5(d[5]),
        .O(\q[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F80CFCF8F80C0C0)) 
    \q[5]_INST_0_i_3 
       (.I0(t[0]),
        .I1(d[7]),
        .I2(s[1]),
        .I3(d[6]),
        .I4(s[0]),
        .I5(d[5]),
        .O(\q[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0 
       (.I0(\u2/tq51 ),
        .I1(\q[6]_INST_0_i_2_n_0 ),
        .I2(t[1]),
        .I3(\q[7]_INST_0_i_3_n_0 ),
        .I4(s[2]),
        .I5(\q[6]_INST_0_i_3_n_0 ),
        .O(q[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[6]_INST_0_i_1 
       (.I0(d[0]),
        .I1(s[1]),
        .I2(d[1]),
        .I3(s[0]),
        .I4(d[2]),
        .O(\u2/tq51 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[6]_INST_0_i_2 
       (.I0(d[3]),
        .I1(d[4]),
        .I2(s[1]),
        .I3(d[5]),
        .I4(s[0]),
        .I5(d[6]),
        .O(\q[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB0B3B080)) 
    \q[6]_INST_0_i_3 
       (.I0(t[0]),
        .I1(s[1]),
        .I2(d[7]),
        .I3(s[0]),
        .I4(d[6]),
        .O(\q[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0 
       (.I0(\u2/tq41 ),
        .I1(\q[7]_INST_0_i_2_n_0 ),
        .I2(t[1]),
        .I3(\q[7]_INST_0_i_3_n_0 ),
        .I4(s[2]),
        .I5(\q[7]_INST_0_i_4_n_0 ),
        .O(q[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_1 
       (.I0(d[0]),
        .I1(d[1]),
        .I2(s[1]),
        .I3(d[2]),
        .I4(s[0]),
        .I5(d[3]),
        .O(\u2/tq41 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[7]_INST_0_i_2 
       (.I0(d[4]),
        .I1(d[5]),
        .I2(s[1]),
        .I3(d[6]),
        .I4(s[0]),
        .I5(d[7]),
        .O(\q[7]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_INST_0_i_3 
       (.I0(d[7]),
        .I1(t[0]),
        .O(\q[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC0C4)) 
    \q[7]_INST_0_i_4 
       (.I0(s[0]),
        .I1(d[7]),
        .I2(t[0]),
        .I3(s[1]),
        .O(\q[7]_INST_0_i_4_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
