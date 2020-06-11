// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Mon Oct 17 10:56:53 2016
// Host        : hp-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/sysclassfiles/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/barrelshifter8_0_1/barrelshifter8_0_stub.v
// Design      : barrelshifter8_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "barrelshifter8,Vivado 2015.4" *)
module barrelshifter8_0(d, s, t, q)
/* synthesis syn_black_box black_box_pad_pin="d[7:0],s[2:0],t[1:0],q[7:0]" */;
  input [7:0]d;
  input [2:0]s;
  input [1:0]t;
  output [7:0]q;
endmodule
