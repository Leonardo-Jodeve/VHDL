library IEEE;
use IEEE.std_logic_1164.ALL;

Entity LEDDecoder is
Port
(
	input : in std_logic_vector(3 downto 0);
	light : out std_logic_vector(0 to 6)
);
End LEDDecoder;

Architecture main of LEDDecoder is
	signal inputsignal:std_logic_vector(3 downto 0);
begin
	process(inputsignal)
	begin
		case inputsignal is
			when "0000" =>light<= "1111110";
			when "0001" =>light<= "0110000";
			when "0010" =>light<= "1101101";
			when "0011" =>light<= "1111001";
			when "0100" =>light<= "0110011";
			when "0101" =>light<= "1011011";
			when "0110" =>light<= "0011111";
			when "0111" =>light<= "1110000";
			when "1000" =>light<= "1111111";
			when "1001" =>light<= "1110011";
			when others =>light<= "0000000";
		end case;
	end process;
end main;