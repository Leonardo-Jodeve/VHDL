library ieee;
use ieee.std_logic_1164.all;

entity CT7400 IS
port(
A1,A2,A3,A4,B1,B2,B3,B4:IN STD_logic;
Y1,Y2,Y3,Y4:OUT STD_logic
);
end CT7400;

architecture ONE of CT7400 is
BEGIN
	Y1<=A1 NAND B1;
	Y2<=A2 NAND B2;
	Y3<=A3 NAND B3;
	Y4<=A4 NAND B4;
END ONE;