library IEEE;
use IEEE.std_logic_1164.ALL;

entity Decoder is
port(
A,B,C,G1,G2AN,G2BN:in std_logic;
Y:out bit_vector(0 to 7)
);
end Decoder;

Architecture main of Decoder is
	signal insig:std_logic_vector(2 downto 0);
begin
	insig<=C&B&A;
	process(insig,G1,G2AN,G2BN)
		begin
		if(G1='1' AND G2AN='0' AND G2BN='0') then
			case insig is
				when "000"=>Y<="01111111";
				when "001"=>Y<="10111111";
				when "010"=>Y<="11011111";
				when "011"=>Y<="11101111";
				when "100"=>Y<="11110111";
				when "101"=>Y<="11111011";
				when "110"=>Y<="11111101";
				when "111"=>Y<="11111110";
			end case;
		else
			Y<="11111111";
		end if;
	end process;
end main;