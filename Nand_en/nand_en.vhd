library ieee;
use ieee.std_logic_1164.all;

entity nand_en is
port (A,B,en:in std_logic;
Y:out std_logic);
end nand_en;

architecture one of nand_en is
begin 
	process(A,B,en)
		begin
			if(en='0')then y<=A nand B;
			else y<='Z';
		end if;
	end process;
end one;
			