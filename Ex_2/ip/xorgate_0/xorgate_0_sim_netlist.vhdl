-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Mon Oct 24 22:09:10 2016
-- Host        : hp-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/sysclassfiles/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/xorgate_0/xorgate_0_sim_netlist.vhdl
-- Design      : xorgate_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xorgate_0_xorgate is
  port (
    q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xorgate_0_xorgate : entity is "xorgate";
end xorgate_0_xorgate;

architecture STRUCTURE of xorgate_0_xorgate is
begin
\q[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => q(0)
    );
\q[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      O => q(1)
    );
\q[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      O => q(2)
    );
\q[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      O => q(3)
    );
\q[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      O => q(4)
    );
\q[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      O => q(5)
    );
\q[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      O => q(6)
    );
\q[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(7),
      I1 => b(7),
      O => q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xorgate_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xorgate_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xorgate_0 : entity is "xorgate_0,xorgate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xorgate_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xorgate_0 : entity is "xorgate,Vivado 2015.4";
end xorgate_0;

architecture STRUCTURE of xorgate_0 is
begin
inst: entity work.xorgate_0_xorgate
     port map (
      a(7 downto 0) => a(7 downto 0),
      b(7 downto 0) => b(7 downto 0),
      q(7 downto 0) => q(7 downto 0)
    );
end STRUCTURE;
