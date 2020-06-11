// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Sun Oct 16 19:00:06 2016
// Host        : hp-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/sysclassfiles/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/notgate_0/notgate_0_stub.v
// Design      : notgate_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "notgate,Vivado 2015.4" *)
module notgate_0(a, c)
/* synthesis syn_black_box black_box_pad_pin="a[7:0],c[7:0]" */;
  input [7:0]a;
  output [7:0]c;
endmodule
