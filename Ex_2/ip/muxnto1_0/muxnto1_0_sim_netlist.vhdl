-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Mon Oct 24 22:10:10 2016
-- Host        : hp-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/sysclassfiles/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/muxnto1_0/muxnto1_0_sim_netlist.vhdl
-- Design      : muxnto1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity muxnto1_0 is
  port (
    a0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s : in STD_LOGIC_VECTOR ( 2 downto 0 );
    q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of muxnto1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of muxnto1_0 : entity is "muxnto1_0,muxnto1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of muxnto1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of muxnto1_0 : entity is "muxnto1,Vivado 2015.4";
end muxnto1_0;

architecture STRUCTURE of muxnto1_0 is
  signal \q[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_2_n_0\ : STD_LOGIC;
begin
\q[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_1_n_0\,
      I1 => \q[0]_INST_0_i_2_n_0\,
      O => q(0),
      S => s(2)
    );
\q[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a3(0),
      I1 => a2(0),
      I2 => s(1),
      I3 => a1(0),
      I4 => s(0),
      I5 => a0(0),
      O => \q[0]_INST_0_i_1_n_0\
    );
\q[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a7(0),
      I1 => a6(0),
      I2 => s(1),
      I3 => a5(0),
      I4 => s(0),
      I5 => a4(0),
      O => \q[0]_INST_0_i_2_n_0\
    );
\q[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[1]_INST_0_i_1_n_0\,
      I1 => \q[1]_INST_0_i_2_n_0\,
      O => q(1),
      S => s(2)
    );
\q[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a3(1),
      I1 => a2(1),
      I2 => s(1),
      I3 => a1(1),
      I4 => s(0),
      I5 => a0(1),
      O => \q[1]_INST_0_i_1_n_0\
    );
\q[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a7(1),
      I1 => a6(1),
      I2 => s(1),
      I3 => a5(1),
      I4 => s(0),
      I5 => a4(1),
      O => \q[1]_INST_0_i_2_n_0\
    );
\q[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[2]_INST_0_i_1_n_0\,
      I1 => \q[2]_INST_0_i_2_n_0\,
      O => q(2),
      S => s(2)
    );
\q[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a3(2),
      I1 => a2(2),
      I2 => s(1),
      I3 => a1(2),
      I4 => s(0),
      I5 => a0(2),
      O => \q[2]_INST_0_i_1_n_0\
    );
\q[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a7(2),
      I1 => a6(2),
      I2 => s(1),
      I3 => a5(2),
      I4 => s(0),
      I5 => a4(2),
      O => \q[2]_INST_0_i_2_n_0\
    );
\q[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[3]_INST_0_i_1_n_0\,
      I1 => \q[3]_INST_0_i_2_n_0\,
      O => q(3),
      S => s(2)
    );
\q[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a3(3),
      I1 => a2(3),
      I2 => s(1),
      I3 => a1(3),
      I4 => s(0),
      I5 => a0(3),
      O => \q[3]_INST_0_i_1_n_0\
    );
\q[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a7(3),
      I1 => a6(3),
      I2 => s(1),
      I3 => a5(3),
      I4 => s(0),
      I5 => a4(3),
      O => \q[3]_INST_0_i_2_n_0\
    );
\q[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[4]_INST_0_i_1_n_0\,
      I1 => \q[4]_INST_0_i_2_n_0\,
      O => q(4),
      S => s(2)
    );
\q[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a3(4),
      I1 => a2(4),
      I2 => s(1),
      I3 => a1(4),
      I4 => s(0),
      I5 => a0(4),
      O => \q[4]_INST_0_i_1_n_0\
    );
\q[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a7(4),
      I1 => a6(4),
      I2 => s(1),
      I3 => a5(4),
      I4 => s(0),
      I5 => a4(4),
      O => \q[4]_INST_0_i_2_n_0\
    );
\q[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[5]_INST_0_i_1_n_0\,
      I1 => \q[5]_INST_0_i_2_n_0\,
      O => q(5),
      S => s(2)
    );
\q[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a3(5),
      I1 => a2(5),
      I2 => s(1),
      I3 => a1(5),
      I4 => s(0),
      I5 => a0(5),
      O => \q[5]_INST_0_i_1_n_0\
    );
\q[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a7(5),
      I1 => a6(5),
      I2 => s(1),
      I3 => a5(5),
      I4 => s(0),
      I5 => a4(5),
      O => \q[5]_INST_0_i_2_n_0\
    );
\q[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[6]_INST_0_i_1_n_0\,
      I1 => \q[6]_INST_0_i_2_n_0\,
      O => q(6),
      S => s(2)
    );
\q[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a3(6),
      I1 => a2(6),
      I2 => s(1),
      I3 => a1(6),
      I4 => s(0),
      I5 => a0(6),
      O => \q[6]_INST_0_i_1_n_0\
    );
\q[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a7(6),
      I1 => a6(6),
      I2 => s(1),
      I3 => a5(6),
      I4 => s(0),
      I5 => a4(6),
      O => \q[6]_INST_0_i_2_n_0\
    );
\q[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[7]_INST_0_i_1_n_0\,
      I1 => \q[7]_INST_0_i_2_n_0\,
      O => q(7),
      S => s(2)
    );
\q[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a3(7),
      I1 => a2(7),
      I2 => s(1),
      I3 => a1(7),
      I4 => s(0),
      I5 => a0(7),
      O => \q[7]_INST_0_i_1_n_0\
    );
\q[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a7(7),
      I1 => a6(7),
      I2 => s(1),
      I3 => a5(7),
      I4 => s(0),
      I5 => a4(7),
      O => \q[7]_INST_0_i_2_n_0\
    );
end STRUCTURE;
