library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is


	component CARRY_GENERATOR is
		generic (
			N :		integer := 32;
			NPB: integer := 4);
		port (
			A :		in	std_logic_vector(N-1 downto 0);
			B :		in	std_logic_vector(N-1 downto 0);
			Cin :	in	std_logic;
			Co :	out	std_logic_vector((N/NPB)-1 downto 0));			
	end component;
	


	signal A_s,B_s :std_logic_vector(31 downto 0);
	signal Ci_s : std_logic := '0';
	signal Co_s : std_logic_vector(7 downto 0);


begin
 
UUT: carry_generator generic map(N=> 32, NPB=>4)
					 port map(A=> A_s,B => B_s,Cin => Ci_s, Co => Co_s);
					 		 

A_s <= "00000000000000000000000000000000", 
	   "00000000000010001000100010001000" after 5 ns,
	   "11111111111111111111111111111111" after 10 ns;

B_s <= "00000000000000000000000000000000", 
	   "00000000000010001000100010001000" after 5 ns,
	   "00000000000000000000000000000001" after 10 ns,
	   "00000000000000000000000000000000" after 15 ns;
	   	   

Ci_s <= '0', '1' after 15 ns;



end TEST;
