-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Wed Nov 23 15:55:52 2016
-- Host        : fanf-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/fanf/Desktop/new_organization/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/addsub_0/addsub_0_stub.vhdl
-- Design      : addsub_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity addsub_0 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sub : in STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cf : out STD_LOGIC;
    ovf : out STD_LOGIC;
    sf : out STD_LOGIC;
    zf : out STD_LOGIC
  );

end addsub_0;

architecture stub of addsub_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[7:0],b[7:0],sub,sum[7:0],cf,ovf,sf,zf";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "addsub,Vivado 2015.4";
begin
end;
