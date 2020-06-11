-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Wed Nov 23 15:55:53 2016
-- Host        : fanf-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/fanf/Desktop/new_organization/orgnization/Ex_8/alu8_verilog/alu8_verilog.srcs/sources_1/ip/addsub_0/addsub_0_sim_netlist.vhdl
-- Design      : addsub_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity addsub_0_addsub is
  port (
    cf : out STD_LOGIC;
    ovf : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 7 downto 0 );
    zf : out STD_LOGIC;
    sub : in STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sub_0 : in STD_LOGIC;
    \b_2__s_port_\ : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of addsub_0_addsub : entity is "addsub";
end addsub_0_addsub;

architecture STRUCTURE of addsub_0_addsub is
  signal \b_2__s_net_1\ : STD_LOGIC;
  signal cf2 : STD_LOGIC;
  signal sf_INST_0_i_1_n_0 : STD_LOGIC;
  signal sf_INST_0_i_2_n_0 : STD_LOGIC;
  signal sf_INST_0_i_3_n_0 : STD_LOGIC;
  signal sf_INST_0_i_4_n_0 : STD_LOGIC;
  signal sf_INST_0_n_0 : STD_LOGIC;
  signal sf_INST_0_n_1 : STD_LOGIC;
  signal sf_INST_0_n_2 : STD_LOGIC;
  signal sf_INST_0_n_3 : STD_LOGIC;
  signal \^sum\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sum[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sum[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sum[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \sum[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \sum[0]_INST_0_n_0\ : STD_LOGIC;
  signal \sum[0]_INST_0_n_1\ : STD_LOGIC;
  signal \sum[0]_INST_0_n_2\ : STD_LOGIC;
  signal \sum[0]_INST_0_n_3\ : STD_LOGIC;
  signal zf_INST_0_i_1_n_0 : STD_LOGIC;
  signal NLW_cf_INST_0_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_cf_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \b_2__s_net_1\ <= \b_2__s_port_\;
  sum(7 downto 0) <= \^sum\(7 downto 0);
cf_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub,
      I1 => cf2,
      O => cf
    );
cf_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => sf_INST_0_n_0,
      CO(3 downto 1) => NLW_cf_INST_0_i_1_CO_UNCONNECTED(3 downto 1),
      CO(0) => cf2,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_cf_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
ovf_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000969969660000"
    )
        port map (
      I0 => b(7),
      I1 => sub,
      I2 => sub_0,
      I3 => \b_2__s_net_1\,
      I4 => a(7),
      I5 => \^sum\(7),
      O => ovf
    );
sf_INST_0: unisim.vcomponents.CARRY4
     port map (
      CI => \sum[0]_INST_0_n_0\,
      CO(3) => sf_INST_0_n_0,
      CO(2) => sf_INST_0_n_1,
      CO(1) => sf_INST_0_n_2,
      CO(0) => sf_INST_0_n_3,
      CYINIT => '0',
      DI(3 downto 0) => a(7 downto 4),
      O(3 downto 0) => \^sum\(7 downto 4),
      S(3) => sf_INST_0_i_1_n_0,
      S(2) => sf_INST_0_i_2_n_0,
      S(1) => sf_INST_0_i_3_n_0,
      S(0) => sf_INST_0_i_4_n_0
    );
sf_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(7),
      I1 => b(7),
      I2 => sub,
      O => sf_INST_0_i_1_n_0
    );
sf_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      I2 => sub,
      O => sf_INST_0_i_2_n_0
    );
sf_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      I2 => sub,
      O => sf_INST_0_i_3_n_0
    );
sf_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      I2 => sub,
      O => sf_INST_0_i_4_n_0
    );
\sum[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum[0]_INST_0_n_0\,
      CO(2) => \sum[0]_INST_0_n_1\,
      CO(1) => \sum[0]_INST_0_n_2\,
      CO(0) => \sum[0]_INST_0_n_3\,
      CYINIT => sub,
      DI(3 downto 0) => a(3 downto 0),
      O(3 downto 0) => \^sum\(3 downto 0),
      S(3) => \sum[0]_INST_0_i_1_n_0\,
      S(2) => \sum[0]_INST_0_i_2_n_0\,
      S(1) => \sum[0]_INST_0_i_3_n_0\,
      S(0) => \sum[0]_INST_0_i_4_n_0\
    );
\sum[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      I2 => sub,
      O => \sum[0]_INST_0_i_1_n_0\
    );
\sum[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      I2 => sub,
      O => \sum[0]_INST_0_i_2_n_0\
    );
\sum[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      I2 => sub,
      O => \sum[0]_INST_0_i_3_n_0\
    );
\sum[0]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => sub,
      O => \sum[0]_INST_0_i_4_n_0\
    );
zf_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^sum\(3),
      I1 => \^sum\(1),
      I2 => \^sum\(2),
      I3 => \^sum\(0),
      I4 => zf_INST_0_i_1_n_0,
      O => zf
    );
zf_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^sum\(4),
      I1 => \^sum\(7),
      I2 => \^sum\(6),
      I3 => \^sum\(5),
      O => zf_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity addsub_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sub : in STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cf : out STD_LOGIC;
    ovf : out STD_LOGIC;
    sf : out STD_LOGIC;
    zf : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of addsub_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of addsub_0 : entity is "addsub_0,addsub,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of addsub_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of addsub_0 : entity is "addsub,Vivado 2015.4";
end addsub_0;

architecture STRUCTURE of addsub_0 is
  signal ovf_INST_0_i_1_n_0 : STD_LOGIC;
  signal ovf_INST_0_i_2_n_0 : STD_LOGIC;
  signal \^sf\ : STD_LOGIC;
  signal \^sum\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  sf <= \^sf\;
  sum(7) <= \^sf\;
  sum(6 downto 0) <= \^sum\(6 downto 0);
inst: entity work.addsub_0_addsub
     port map (
      a(7 downto 0) => a(7 downto 0),
      b(7 downto 0) => b(7 downto 0),
      \b_2__s_port_\ => ovf_INST_0_i_2_n_0,
      cf => cf,
      ovf => ovf,
      sub => sub,
      sub_0 => ovf_INST_0_i_1_n_0,
      sum(7) => \^sf\,
      sum(6 downto 0) => \^sum\(6 downto 0),
      zf => zf
    );
ovf_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => b(5),
      I1 => b(3),
      I2 => sub,
      O => ovf_INST_0_i_1_n_0
    );
ovf_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => b(6),
      I1 => sub,
      I2 => b(1),
      I3 => b(4),
      I4 => b(0),
      I5 => b(2),
      O => ovf_INST_0_i_2_n_0
    );
end STRUCTURE;
