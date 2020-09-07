library IEEE;
use IEEE.std_logic_1164.ALL;

Entity TrafficLight is
Port
(
	Red1,Red2,Yel1,Yel2,Gre1,Gre2 : out std_logic;
	TimeLight1,TimeLight2 : out std_logic_vector(0 to 6);
	test : in std_logic_vector(3 downto 0)
);
End TrafficLight;

Architecture main of TrafficLight is
	component LEDDecoder is
	port(
		input : in std_logic_vector(3 downto 0);
		light : out std_logic_vector(0 to 6)
	);
	end component;
	signal testsig:std_logic_vector(3 downto 0);
begin
	testsig <= test;
	process(testsig)
	begin
		test1 : LEDDecoder port map(testsig,TimeLight1);
		test2 : LEDDecoder port map(testsig,TimeLight2);
	end process;
end main;