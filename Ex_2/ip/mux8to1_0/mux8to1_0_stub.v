// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Sun Oct 16 16:50:31 2016
// Host        : hp-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/sysclassfiles/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/mux8to1_0/mux8to1_0_stub.v
// Design      : mux8to1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux8to1,Vivado 2015.4" *)
module mux8to1_0(a0, a1, a2, a3, a4, a5, a6, a7, s, q)
/* synthesis syn_black_box black_box_pad_pin="a0[7:0],a1[7:0],a2[7:0],a3[7:0],a4[7:0],a5[7:0],a6[7:0],a7[7:0],s[2:0],q[7:0]" */;
  input [7:0]a0;
  input [7:0]a1;
  input [7:0]a2;
  input [7:0]a3;
  input [7:0]a4;
  input [7:0]a5;
  input [7:0]a6;
  input [7:0]a7;
  input [2:0]s;
  output [7:0]q;
endmodule
