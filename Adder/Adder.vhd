library ieee;
use ieee.std_logic_1164.all;

entity Adder is
port(
ain, bin, cin:in std_logic;
sum, cout:out std_logic
);
end Adder;

architecture main of Adder is
begin
	process(ain, bin, cin)
	begin
		sum <= ain XOR bin XOR cin;
		cout <= ((ain XOR bin) AND cin) OR (ain AND bin);
	end process;
end main;