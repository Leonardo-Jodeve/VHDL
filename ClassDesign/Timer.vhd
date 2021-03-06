library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
Entity Timer is
Port
(
	clk : in std_logic;
	set_enabled : in std_logic;
	datain : in std_logic_vector(3 downto 0);
	down : out std_logic;
	dataout : buffer std_logic_vector(3 downto 0)
);
End Timer;

Architecture main of Timer is
	signal clk_sig : std_logic;
	signal set_enabled_sig : std_logic;
	signal datain_sig : std_logic_vector(3 downto 0);
begin
	clk_sig <= clk;
	set_enabled_sig <= set_enabled;
	datain_sig <= datain;
	process(clk_sig,set_enabled_sig,datain_sig)
	begin
		if(clk'event AND clk='1') then
			if(set_enabled_sig='1') then
				dataout <= datain_sig;
			end if;
			if(dataout="0000") then
				down <= '1';
			else
				dataout <= dataout - "0001";
			end if;
		end if;
	end process;
end main;