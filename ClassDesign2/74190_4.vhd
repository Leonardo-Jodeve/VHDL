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
-- CREATED ON		"Mon Sep 07 22:29:29 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
LIBRARY work;

ENTITY 74190_4 IS 
PORT 
( 
	A	:	IN	 STD_LOGIC;
	C	:	IN	 STD_LOGIC;
	CLK	:	IN	 STD_LOGIC;
	DNUP	:	IN	 STD_LOGIC;
	MXMN	:	OUT	 STD_LOGIC;
	RCON	:	OUT	 STD_LOGIC
); 
END 74190_4;

ARCHITECTURE bdf_type OF 74190_4 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst37 : 74190
PORT MAP(A => A,
		 C => C,
		 CLK => CLK,
		 DNUP => DNUP,
		 MXMN => MXMN,
		 RCON => RCON);

END bdf_type; 