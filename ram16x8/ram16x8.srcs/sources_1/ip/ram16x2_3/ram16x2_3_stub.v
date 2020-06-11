// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Sat Jun 04 16:19:22 2016
// Host        : hp-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.srcs/sources_1/ip/ram16x2_3/ram16x2_3_stub.v
// Design      : ram16x2_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_2,Vivado 2015.2" *)
module ram16x2_3(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[3:0],dina[1:0],douta[1:0]" */;
  input clka;
  input [0:0]wea;
  input [3:0]addra;
  input [1:0]dina;
  output [1:0]douta;
endmodule
