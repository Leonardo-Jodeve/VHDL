library IEEE;
use IEEE.std_logic_1164.ALL;

entity Encoder is
port(
din:in STD_LOGIC_VECTOR(0 to 7);
output:out STD_LOGIC_VECTOR(0 to 2)
);
end Encoder;

architecture main of Encoder is
begin
	process(din)
	begin
		case din is
			when "00000000" => output(0 to 2)<="000";
			when "00000001" => output(0 to 2)<="100";
			when "00000011" => output(0 to 2)<="010";
			when "00000111" => output(0 to 2)<="110";
			when "00001111" => output(0 to 2)<="001";
			when "00011111" => output(0 to 2)<="101";
			when "00111111" => output(0 to 2)<="011";
			when "01111111" => output(0 to 2)<="111";
			when others => output(0 to 2)<="ZZZ";
		end case;
	end process;
end architecture;