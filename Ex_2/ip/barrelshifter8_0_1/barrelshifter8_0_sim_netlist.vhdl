-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Mon Oct 17 10:56:53 2016
-- Host        : hp-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/sysclassfiles/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/barrelshifter8_0_1/barrelshifter8_0_sim_netlist.vhdl
-- Design      : barrelshifter8_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity barrelshifter8_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s : in STD_LOGIC_VECTOR ( 2 downto 0 );
    t : in STD_LOGIC_VECTOR ( 1 downto 0 );
    q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of barrelshifter8_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of barrelshifter8_0 : entity is "barrelshifter8_0,barrelshifter8,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of barrelshifter8_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of barrelshifter8_0 : entity is "barrelshifter8,Vivado 2015.4";
end barrelshifter8_0;

architecture STRUCTURE of barrelshifter8_0 is
  signal \q[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[5]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[6]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[6]_INST_0_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[7]_INST_0_i_4\ : label is "soft_lutpair0";
begin
\q[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \q[4]_INST_0_i_3_n_0\,
      I1 => s(2),
      I2 => \q[4]_INST_0_i_1_n_0\,
      I3 => t(1),
      I4 => \q[0]_INST_0_i_1_n_0\,
      O => q(0)
    );
\q[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(3),
      I1 => d(2),
      I2 => s(1),
      I3 => d(1),
      I4 => s(0),
      I5 => d(0),
      O => \q[0]_INST_0_i_1_n_0\
    );
\q[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \q[5]_INST_0_i_3_n_0\,
      I1 => s(2),
      I2 => \q[5]_INST_0_i_1_n_0\,
      I3 => t(1),
      I4 => \q[1]_INST_0_i_1_n_0\,
      O => q(1)
    );
\q[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(4),
      I1 => d(3),
      I2 => s(1),
      I3 => d(2),
      I4 => s(0),
      I5 => d(1),
      O => \q[1]_INST_0_i_1_n_0\
    );
\q[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \q[6]_INST_0_i_3_n_0\,
      I1 => s(2),
      I2 => \q[6]_INST_0_i_1_n_0\,
      I3 => t(1),
      I4 => \q[2]_INST_0_i_1_n_0\,
      O => q(2)
    );
\q[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(5),
      I1 => d(4),
      I2 => s(1),
      I3 => d(3),
      I4 => s(0),
      I5 => d(2),
      O => \q[2]_INST_0_i_1_n_0\
    );
\q[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \q[7]_INST_0_i_4_n_0\,
      I1 => s(2),
      I2 => \q[7]_INST_0_i_1_n_0\,
      I3 => t(1),
      I4 => \q[3]_INST_0_i_1_n_0\,
      O => q(3)
    );
\q[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(6),
      I1 => d(5),
      I2 => s(1),
      I3 => d(4),
      I4 => s(0),
      I5 => d(3),
      O => \q[3]_INST_0_i_1_n_0\
    );
\q[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[4]_INST_0_i_1_n_0\,
      I1 => \q[7]_INST_0_i_2_n_0\,
      I2 => s(2),
      I3 => \q[4]_INST_0_i_2_n_0\,
      I4 => t(1),
      I5 => \q[4]_INST_0_i_3_n_0\,
      O => q(4)
    );
\q[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s(0),
      I1 => d(0),
      I2 => s(1),
      O => \q[4]_INST_0_i_1_n_0\
    );
\q[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(1),
      I1 => d(2),
      I2 => s(1),
      I3 => d(3),
      I4 => s(0),
      I5 => d(4),
      O => \q[4]_INST_0_i_2_n_0\
    );
\q[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(7),
      I1 => d(6),
      I2 => s(1),
      I3 => d(5),
      I4 => s(0),
      I5 => d(4),
      O => \q[4]_INST_0_i_3_n_0\
    );
\q[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[5]_INST_0_i_1_n_0\,
      I1 => \q[7]_INST_0_i_2_n_0\,
      I2 => s(2),
      I3 => \q[5]_INST_0_i_2_n_0\,
      I4 => t(1),
      I5 => \q[5]_INST_0_i_3_n_0\,
      O => q(5)
    );
\q[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => d(1),
      I1 => s(0),
      I2 => d(0),
      I3 => s(1),
      O => \q[5]_INST_0_i_1_n_0\
    );
\q[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(2),
      I1 => d(3),
      I2 => s(1),
      I3 => d(4),
      I4 => s(0),
      I5 => d(5),
      O => \q[5]_INST_0_i_2_n_0\
    );
\q[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80CFCF8F80C0C0"
    )
        port map (
      I0 => t(0),
      I1 => d(7),
      I2 => s(1),
      I3 => d(6),
      I4 => s(0),
      I5 => d(5),
      O => \q[5]_INST_0_i_3_n_0\
    );
\q[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[6]_INST_0_i_1_n_0\,
      I1 => \q[7]_INST_0_i_2_n_0\,
      I2 => s(2),
      I3 => \q[6]_INST_0_i_2_n_0\,
      I4 => t(1),
      I5 => \q[6]_INST_0_i_3_n_0\,
      O => q(6)
    );
\q[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => d(0),
      I1 => s(1),
      I2 => d(1),
      I3 => s(0),
      I4 => d(2),
      O => \q[6]_INST_0_i_1_n_0\
    );
\q[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(3),
      I1 => d(4),
      I2 => s(1),
      I3 => d(5),
      I4 => s(0),
      I5 => d(6),
      O => \q[6]_INST_0_i_2_n_0\
    );
\q[6]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0B3B080"
    )
        port map (
      I0 => t(0),
      I1 => s(1),
      I2 => d(7),
      I3 => s(0),
      I4 => d(6),
      O => \q[6]_INST_0_i_3_n_0\
    );
\q[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[7]_INST_0_i_1_n_0\,
      I1 => \q[7]_INST_0_i_2_n_0\,
      I2 => s(2),
      I3 => \q[7]_INST_0_i_3_n_0\,
      I4 => t(1),
      I5 => \q[7]_INST_0_i_4_n_0\,
      O => q(7)
    );
\q[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(0),
      I1 => d(1),
      I2 => s(1),
      I3 => d(2),
      I4 => s(0),
      I5 => d(3),
      O => \q[7]_INST_0_i_1_n_0\
    );
\q[7]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => t(0),
      I1 => d(7),
      O => \q[7]_INST_0_i_2_n_0\
    );
\q[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(4),
      I1 => d(5),
      I2 => s(1),
      I3 => d(6),
      I4 => s(0),
      I5 => d(7),
      O => \q[7]_INST_0_i_3_n_0\
    );
\q[7]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CD00"
    )
        port map (
      I0 => s(1),
      I1 => t(0),
      I2 => s(0),
      I3 => d(7),
      O => \q[7]_INST_0_i_4_n_0\
    );
end STRUCTURE;
