-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Mon Oct 24 22:08:44 2016
-- Host        : hp-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/sysclassfiles/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/orgate_0/orgate_0_sim_netlist.vhdl
-- Design      : orgate_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity orgate_0_orgate is
  port (
    q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of orgate_0_orgate : entity is "orgate";
end orgate_0_orgate;

architecture STRUCTURE of orgate_0_orgate is
begin
\q[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      O => q(0)
    );
\q[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      O => q(1)
    );
\q[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      O => q(2)
    );
\q[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => b(3),
      I1 => a(3),
      O => q(3)
    );
\q[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      O => q(4)
    );
\q[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => b(5),
      I1 => a(5),
      O => q(5)
    );
\q[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      O => q(6)
    );
\q[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => b(7),
      I1 => a(7),
      O => q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity orgate_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of orgate_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of orgate_0 : entity is "orgate_0,orgate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of orgate_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of orgate_0 : entity is "orgate,Vivado 2015.4";
end orgate_0;

architecture STRUCTURE of orgate_0 is
begin
inst: entity work.orgate_0_orgate
     port map (
      a(7 downto 0) => a(7 downto 0),
      b(7 downto 0) => b(7 downto 0),
      q(7 downto 0) => q(7 downto 0)
    );
end STRUCTURE;
