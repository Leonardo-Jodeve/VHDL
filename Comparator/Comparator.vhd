library ieee;
use ieee.std_logic_1164.all;

entity Comparator is
port(
a, b: in bit_vector(3 downto 0);
equal, more, less: out std_logic
);
end Comparator;

architecture main of Comparator is
begin
	process(a,b) 
	begin
		for i in 3 downto 0 loop
			if a(i) > b(i) then 
				more<='1'; equal<='0'; less<='0'; exit;
			end if;
			if a(i) < b(i) then 
				less<='1'; equal<='0'; more<='0'; exit;
			end if;
			if i=0 and a(i)=b(i) then
				equal<='1'; more<='0'; less<='0'; exit;
			end if;
		end loop;
	end process;
end architecture;