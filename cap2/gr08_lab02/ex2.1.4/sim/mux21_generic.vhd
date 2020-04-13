library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
--use WORK.constants.all; -- libreria WORK user-defined
use IEEE.numeric_std.all;

entity MUX21_generic is
	generic (N: integer:= 16);
	Port (	A,B: In  std_logic_vector(N-1 downto 0);
			sel:	In	std_logic;
			Y:	Out	std_logic_vector(N-1 downto 0));
end MUX21_generic;


architecture BEHAVIORAL of MUX21_generic is
begin
		Y<= A when sel='1' else B;	
end BEHAVIORAL;


