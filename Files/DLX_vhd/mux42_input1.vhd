library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
--use WORK.constants.all; -- libreria WORK user-defined
use IEEE.numeric_std.all;

entity mux42 is
	generic (N: integer:= 16);
	Port (	i0,i1,i2,i3: In  std_logic_vector(N-1 downto 0);
			sel:	in	std_logic_vector(1 downto 0);
			Y:	Out	std_logic_vector(N-1 downto 0));
end mux42;


architecture BEHAVIORAL of mux42 is
begin
		Y<= i0 when sel="00" else 
		    i1 when sel="01" else
		    i2 when sel="10" else  
		    i3;
end BEHAVIORAL;


