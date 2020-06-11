// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Wed Nov 23 15:55:52 2016
// Host        : fanf-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/fanf/Desktop/new_organization/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/addsub_0/addsub_0_stub.v
// Design      : addsub_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "addsub,Vivado 2015.4" *)
module addsub_0(a, b, sub, sum, cf, ovf, sf, zf)
/* synthesis syn_black_box black_box_pad_pin="a[7:0],b[7:0],sub,sum[7:0],cf,ovf,sf,zf" */;
  input [7:0]a;
  input [7:0]b;
  input sub;
  output [7:0]sum;
  output cf;
  output ovf;
  output sf;
  output zf;
endmodule
