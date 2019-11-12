library ieee;
use ieee.std_logic_1164.all;

entity Checksum is
port
(
	B8, B4, B2, B1:in std_logic;
	NP, P:out std_logic
);
end Checksum;

architecture main of Checksum is
begin
	process(B8, B4, B2, B1)
	begin
		NP <= '1' XOR ((B8 XOR B4) XOR (B2 XOR B1));
		P <= (B8 XOR B4) XOR (B2 XOR B1);
	end process;
end architecture;