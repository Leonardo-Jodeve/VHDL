-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II"
-- VERSION		"Version 9.0 Build 132 02/25/2009 SJ Full Version"
-- CREATED ON		"Fri Sep 11 10:16:58 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY TrafficLight IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		Main_Red :  OUT  STD_LOGIC;
		Main_Yellow :  OUT  STD_LOGIC;
		Main_Green :  OUT  STD_LOGIC;
		Vice_Red :  OUT  STD_LOGIC;
		Vice_Yellow :  OUT  STD_LOGIC;
		Vice_Green :  OUT  STD_LOGIC;
		1 :  OUT  STD_LOGIC;
		2 :  OUT  STD_LOGIC;
		3 :  OUT  STD_LOGIC;
		4 :  OUT  STD_LOGIC;
		5 :  OUT  STD_LOGIC;
		6 :  OUT  STD_LOGIC;
		7 :  OUT  STD_LOGIC;
		8 :  OUT  STD_LOGIC;
		9 :  OUT  STD_LOGIC;
		10 :  OUT  STD_LOGIC;
		11 :  OUT  STD_LOGIC;
		12 :  OUT  STD_LOGIC;
		13 :  OUT  STD_LOGIC;
		14 :  OUT  STD_LOGIC;
		15 :  OUT  STD_LOGIC;
		16 :  OUT  STD_LOGIC
	);
END TrafficLight;

ARCHITECTURE bdf_type OF TrafficLight IS 

ATTRIBUTE black_box : BOOLEAN;
nATTRIBUTE noopt : BOOLEAN;

COMPONENT \74160_0\
	PORT(CLK : IN STD_LOGIC;
		 ENT : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 LDN : IN STD_LOGIC;
		 ENP : IN STD_LOGIC;
		 CLRN : IN STD_LOGIC;
		 QA : OUT STD_LOGIC;
		 QB : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74160_0\: COMPONENT IS true;
ATTRIBUTE noopt OF \74160_0\: COMPONENT IS true;

COMPONENT \74190_1\
	PORT(LDN : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 DNUP : IN STD_LOGIC;
		 QA : OUT STD_LOGIC;
		 QB : OUT STD_LOGIC;
		 QD : OUT STD_LOGIC;
		 QC : OUT STD_LOGIC;
		 RCON : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74190_1\: COMPONENT IS true;
ATTRIBUTE noopt OF \74190_1\: COMPONENT IS true;

COMPONENT \74190_2\
	PORT(LDN : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 DNUP : IN STD_LOGIC;
		 QA : OUT STD_LOGIC;
		 QB : OUT STD_LOGIC;
		 QD : OUT STD_LOGIC;
		 QC : OUT STD_LOGIC;
		 RCON : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74190_2\: COMPONENT IS true;
ATTRIBUTE noopt OF \74190_2\: COMPONENT IS true;

COMPONENT \74190_3\
	PORT(LDN : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 DNUP : IN STD_LOGIC;
		 QA : OUT STD_LOGIC;
		 QB : OUT STD_LOGIC;
		 QD : OUT STD_LOGIC;
		 QC : OUT STD_LOGIC;
		 RCON : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74190_3\: COMPONENT IS true;
ATTRIBUTE noopt OF \74190_3\: COMPONENT IS true;

COMPONENT \74190_4\
	PORT(LDN : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 DNUP : IN STD_LOGIC;
		 QA : OUT STD_LOGIC;
		 QB : OUT STD_LOGIC;
		 QD : OUT STD_LOGIC;
		 QC : OUT STD_LOGIC;
		 RCON : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74190_4\: COMPONENT IS true;
ATTRIBUTE noopt OF \74190_4\: COMPONENT IS true;

COMPONENT delay
	PORT(CLK : IN STD_LOGIC;
		 datain : IN STD_LOGIC;
		 dataout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT decoder
	PORT(data0 : IN STD_LOGIC;
		 data1 : IN STD_LOGIC;
		 out0 : OUT STD_LOGIC;
		 out1 : OUT STD_LOGIC;
		 out2 : OUT STD_LOGIC;
		 out3 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_53 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_54 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_55 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_56 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_57 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_58 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_59 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_60 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_61 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC;


BEGIN 
Main_Yellow <= SYNTHESIZED_WIRE_51;
Main_Green <= SYNTHESIZED_WIRE_50;
Vice_Yellow <= SYNTHESIZED_WIRE_49;
Vice_Green <= SYNTHESIZED_WIRE_54;
SYNTHESIZED_WIRE_52 <= '1';
SYNTHESIZED_WIRE_53 <= '0';
SYNTHESIZED_WIRE_57 <= '1';
SYNTHESIZED_WIRE_60 <= '1';



b2v_inst : delay
PORT MAP(CLK => CLK,
		 datain => SYNTHESIZED_WIRE_48,
		 dataout => SYNTHESIZED_WIRE_55);


b2v_inst1 : decoder
PORT MAP(data0 => SYNTHESIZED_WIRE_1,
		 data1 => SYNTHESIZED_WIRE_2,
		 out0 => SYNTHESIZED_WIRE_50,
		 out1 => SYNTHESIZED_WIRE_51,
		 out2 => SYNTHESIZED_WIRE_54,
		 out3 => SYNTHESIZED_WIRE_49);


SYNTHESIZED_WIRE_58 <= SYNTHESIZED_WIRE_49 OR SYNTHESIZED_WIRE_50 OR SYNTHESIZED_WIRE_51;




b2v_inst21 : 74160_0
PORT MAP(CLK => SYNTHESIZED_WIRE_48,
		 ENT => SYNTHESIZED_WIRE_52,
		 A => SYNTHESIZED_WIRE_53,
		 B => SYNTHESIZED_WIRE_53,
		 C => SYNTHESIZED_WIRE_53,
		 D => SYNTHESIZED_WIRE_53,
		 LDN => SYNTHESIZED_WIRE_52,
		 ENP => SYNTHESIZED_WIRE_52,
		 CLRN => SYNTHESIZED_WIRE_52,
		 QA => SYNTHESIZED_WIRE_1,
		 QB => SYNTHESIZED_WIRE_2);




Main_Red <= SYNTHESIZED_WIRE_49 OR SYNTHESIZED_WIRE_54;


Vice_Red <= SYNTHESIZED_WIRE_51 OR SYNTHESIZED_WIRE_50;


b2v_inst34 : 74190_1
PORT MAP(LDN => SYNTHESIZED_WIRE_55,
		 A => SYNTHESIZED_WIRE_54,
		 C => SYNTHESIZED_WIRE_50,
		 B => SYNTHESIZED_WIRE_54,
		 CLK => SYNTHESIZED_WIRE_56,
		 DNUP => SYNTHESIZED_WIRE_57,
		 QA => 1,
		 QB => 2,
		 QD => 4,
		 QC => 3,
		 RCON => SYNTHESIZED_WIRE_44);


b2v_inst35 : 74190_2
PORT MAP(LDN => SYNTHESIZED_WIRE_55,
		 A => SYNTHESIZED_WIRE_58,
		 C => SYNTHESIZED_WIRE_58,
		 CLK => CLK,
		 DNUP => SYNTHESIZED_WIRE_57,
		 QA => 5,
		 QB => 6,
		 QD => 8,
		 QC => 7,
		 RCON => SYNTHESIZED_WIRE_56);


b2v_inst36 : 74190_3
PORT MAP(LDN => SYNTHESIZED_WIRE_55,
		 A => SYNTHESIZED_WIRE_50,
		 C => SYNTHESIZED_WIRE_50,
		 B => SYNTHESIZED_WIRE_54,
		 CLK => SYNTHESIZED_WIRE_59,
		 DNUP => SYNTHESIZED_WIRE_60,
		 QA => 9,
		 QB => 10,
		 QD => 12,
		 QC => 11,
		 RCON => SYNTHESIZED_WIRE_46);


b2v_inst37 : 74190_4
PORT MAP(LDN => SYNTHESIZED_WIRE_55,
		 A => SYNTHESIZED_WIRE_61,
		 C => SYNTHESIZED_WIRE_61,
		 CLK => CLK,
		 DNUP => SYNTHESIZED_WIRE_60,
		 QA => 13,
		 QB => 14,
		 QD => 16,
		 QC => 15,
		 RCON => SYNTHESIZED_WIRE_59);


SYNTHESIZED_WIRE_48 <= SYNTHESIZED_WIRE_39 OR SYNTHESIZED_WIRE_40;


SYNTHESIZED_WIRE_61 <= SYNTHESIZED_WIRE_51 OR SYNTHESIZED_WIRE_49 OR SYNTHESIZED_WIRE_54;


SYNTHESIZED_WIRE_39 <= NOT(SYNTHESIZED_WIRE_44 OR SYNTHESIZED_WIRE_56);


SYNTHESIZED_WIRE_40 <= NOT(SYNTHESIZED_WIRE_46 OR SYNTHESIZED_WIRE_59);


END bdf_type;