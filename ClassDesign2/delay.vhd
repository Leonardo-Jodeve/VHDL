library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

Entity delay is
Port
(
	CLK : in std_logic;
	datain : in std_logic;
	dataout : out std_logic
);
end delay;

Architecture main of delay is
	signal clk_sig : std_logic;
	signal ram : std_logic :='Z';
begin
	clk_sig <= clk;
	process(clk)
	begin
		if(clk='0') then
			ram <= NOT datain;
		end if;
		if(clk'event AND clk='1') then
			dataout <= ram;
		end if;
	end process;
end main;
			