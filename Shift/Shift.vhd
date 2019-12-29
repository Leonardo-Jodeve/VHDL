library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity shift is
port
(
	D: in std_logic_vector(7 downto 0);
	LOD, CLK, CLR, S, DIR, DIL: in std_logic;
	Q: out std_logic_vector(7 downto 0)
);
end shift;

architecture main of shift is
	signal Q_SIGNAL: std_logic_vector(7 downto 0);
begin
	process(D, LOD, CLK, CLR, S, DIR, DIL)
	begin
		if(CLR='0') then Q_SIGNAL <= "00000000";
		elsif(CLK'event and CLK='1') then
			if(LOD='1') then Q_SIGNAL <= D;
			elsif(S='1') then
				Q_SIGNAL(6 downto 0) <= Q_SIGNAL(7 downto 1);
				Q_SIGNAL(7) <= DIR;
				else
				Q_SIGNAL(7 downto 1) <= Q_SIGNAL(6 downto 0);
				Q_SIGNAL(0) <= DIL;
			end if;
		end if;
		Q <= Q_SIGNAL;
	end process;
end main;