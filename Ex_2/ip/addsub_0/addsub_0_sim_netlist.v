// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Wed Nov 23 15:55:52 2016
// Host        : fanf-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/fanf/Desktop/new_organization/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/addsub_0/addsub_0_sim_netlist.v
// Design      : addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "addsub_0,addsub,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "addsub,Vivado 2015.4" *) 
(* NotValidForBitStream *)
module addsub_0
   (a,
    b,
    sub,
    sum,
    cf,
    ovf,
    sf,
    zf);
  input [7:0]a;
  input [7:0]b;
  input sub;
  output [7:0]sum;
  output cf;
  output ovf;
  output sf;
  output zf;

  wire [7:0]a;
  wire [7:0]b;
  wire cf;
  wire ovf;
  wire ovf_INST_0_i_1_n_0;
  wire ovf_INST_0_i_2_n_0;
  wire sf;
  wire sub;
  wire [6:0]\^sum ;
  wire zf;

  assign sum[7] = sf;
  assign sum[6:0] = \^sum [6:0];
  addsub_0_addsub inst
       (.a(a),
        .b(b),
        .b_2__s_port_(ovf_INST_0_i_2_n_0),
        .cf(cf),
        .ovf(ovf),
        .sub(sub),
        .sub_0(ovf_INST_0_i_1_n_0),
        .sum({sf,\^sum }),
        .zf(zf));
  LUT3 #(
    .INIT(8'hE7)) 
    ovf_INST_0_i_1
       (.I0(b[5]),
        .I1(b[3]),
        .I2(sub),
        .O(ovf_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    ovf_INST_0_i_2
       (.I0(b[6]),
        .I1(sub),
        .I2(b[1]),
        .I3(b[4]),
        .I4(b[0]),
        .I5(b[2]),
        .O(ovf_INST_0_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "addsub" *) 
module addsub_0_addsub
   (cf,
    ovf,
    sum,
    zf,
    sub,
    b,
    sub_0,
    b_2__s_port_,
    a);
  output cf;
  output ovf;
  output [7:0]sum;
  output zf;
  input sub;
  input [7:0]b;
  input sub_0;
  input b_2__s_port_;
  input [7:0]a;

  wire [7:0]a;
  wire [7:0]b;
  wire b_2__s_net_1;
  wire cf;
  wire cf2;
  wire ovf;
  wire sf_INST_0_i_1_n_0;
  wire sf_INST_0_i_2_n_0;
  wire sf_INST_0_i_3_n_0;
  wire sf_INST_0_i_4_n_0;
  wire sf_INST_0_n_0;
  wire sf_INST_0_n_1;
  wire sf_INST_0_n_2;
  wire sf_INST_0_n_3;
  wire sub;
  wire sub_0;
  wire [7:0]sum;
  wire \sum[0]_INST_0_i_1_n_0 ;
  wire \sum[0]_INST_0_i_2_n_0 ;
  wire \sum[0]_INST_0_i_3_n_0 ;
  wire \sum[0]_INST_0_i_4_n_0 ;
  wire \sum[0]_INST_0_n_0 ;
  wire \sum[0]_INST_0_n_1 ;
  wire \sum[0]_INST_0_n_2 ;
  wire \sum[0]_INST_0_n_3 ;
  wire zf;
  wire zf_INST_0_i_1_n_0;
  wire [3:1]NLW_cf_INST_0_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_cf_INST_0_i_1_O_UNCONNECTED;

  assign b_2__s_net_1 = b_2__s_port_;
  LUT2 #(
    .INIT(4'h6)) 
    cf_INST_0
       (.I0(sub),
        .I1(cf2),
        .O(cf));
  CARRY4 cf_INST_0_i_1
       (.CI(sf_INST_0_n_0),
        .CO({NLW_cf_INST_0_i_1_CO_UNCONNECTED[3:1],cf2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cf_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h0000969969660000)) 
    ovf_INST_0
       (.I0(b[7]),
        .I1(sub),
        .I2(sub_0),
        .I3(b_2__s_net_1),
        .I4(a[7]),
        .I5(sum[7]),
        .O(ovf));
  CARRY4 sf_INST_0
       (.CI(\sum[0]_INST_0_n_0 ),
        .CO({sf_INST_0_n_0,sf_INST_0_n_1,sf_INST_0_n_2,sf_INST_0_n_3}),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(sum[7:4]),
        .S({sf_INST_0_i_1_n_0,sf_INST_0_i_2_n_0,sf_INST_0_i_3_n_0,sf_INST_0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    sf_INST_0_i_1
       (.I0(a[7]),
        .I1(b[7]),
        .I2(sub),
        .O(sf_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sf_INST_0_i_2
       (.I0(a[6]),
        .I1(b[6]),
        .I2(sub),
        .O(sf_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sf_INST_0_i_3
       (.I0(a[5]),
        .I1(b[5]),
        .I2(sub),
        .O(sf_INST_0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sf_INST_0_i_4
       (.I0(a[4]),
        .I1(b[4]),
        .I2(sub),
        .O(sf_INST_0_i_4_n_0));
  CARRY4 \sum[0]_INST_0 
       (.CI(1'b0),
        .CO({\sum[0]_INST_0_n_0 ,\sum[0]_INST_0_n_1 ,\sum[0]_INST_0_n_2 ,\sum[0]_INST_0_n_3 }),
        .CYINIT(sub),
        .DI(a[3:0]),
        .O(sum[3:0]),
        .S({\sum[0]_INST_0_i_1_n_0 ,\sum[0]_INST_0_i_2_n_0 ,\sum[0]_INST_0_i_3_n_0 ,\sum[0]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[0]_INST_0_i_1 
       (.I0(a[3]),
        .I1(b[3]),
        .I2(sub),
        .O(\sum[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[0]_INST_0_i_2 
       (.I0(a[2]),
        .I1(b[2]),
        .I2(sub),
        .O(\sum[0]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[0]_INST_0_i_3 
       (.I0(a[1]),
        .I1(b[1]),
        .I2(sub),
        .O(\sum[0]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sum[0]_INST_0_i_4 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(sub),
        .O(\sum[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    zf_INST_0
       (.I0(sum[3]),
        .I1(sum[1]),
        .I2(sum[2]),
        .I3(sum[0]),
        .I4(zf_INST_0_i_1_n_0),
        .O(zf));
  LUT4 #(
    .INIT(16'hFFFE)) 
    zf_INST_0_i_1
       (.I0(sum[4]),
        .I1(sum[7]),
        .I2(sum[6]),
        .I3(sum[5]),
        .O(zf_INST_0_i_1_n_0));
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
