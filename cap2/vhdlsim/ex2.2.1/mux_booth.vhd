library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use IEEE.numeric_std.all;

entity MUX_booth is
	generic (N: integer:= 32);
	Port (	A,B,C,D,E: 	In  std_logic_vector(N-1 downto 0);
			sel: 		In  std_logic_vector(2 downto 0);
			Y:			Out	std_logic_vector(N-1 downto 0));
end MUX_booth;

architecture BEHAVIORAL of MUX_booth is
begin
	Y<= A when sel="000" else -- 0 
		B when sel="001" else -- +A
		C when sel="010" else ---A
		D when sel="011" else --2A
		E when sel="100" else -- 2A
		(others=>'-');
end BEHAVIORAL;


