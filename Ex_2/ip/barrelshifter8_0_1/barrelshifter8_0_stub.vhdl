-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Mon Oct 17 10:56:53 2016
-- Host        : hp-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/sysclassfiles/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/barrelshifter8_0_1/barrelshifter8_0_stub.vhdl
-- Design      : barrelshifter8_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity barrelshifter8_0 is
  Port ( 
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s : in STD_LOGIC_VECTOR ( 2 downto 0 );
    t : in STD_LOGIC_VECTOR ( 1 downto 0 );
    q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end barrelshifter8_0;

architecture stub of barrelshifter8_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "d[7:0],s[2:0],t[1:0],q[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "barrelshifter8,Vivado 2015.4";
begin
end;
