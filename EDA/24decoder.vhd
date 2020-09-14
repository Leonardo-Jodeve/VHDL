library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

Entity decoder is
Port
(
	data0,data1 : in std_logic;
	out0,out1,out2,out3 : out std_logic
);
End decoder;

Architecture main of decoder is
	signal input : std_logic_vector(0 to 1);
	signal output : std_logic_vector(0 to 3);
begin
	input <= data0&data1;
	process(input)
	begin
		case input is
			when "00" => output <= "1000";
			when "10" => output <= "0100";
			when "01" => output <= "0010";
			when "11" => output <= "0001";
		end case;
		out0 <= output(0);
		out1 <= output(1);
		out2 <= output(2);
		out3 <= output(3);
	end process;
end main;