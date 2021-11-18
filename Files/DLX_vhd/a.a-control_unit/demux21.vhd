library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
--use WORK.constants.all; -- libreria WORK user-defined
use IEEE.numeric_std.all;

entity demux21 is
	generic (N: integer:= 16);
	Port (	Y: In  std_logic_vector(N-1 downto 0);
			sel:	In	std_logic;
			A,B: out  std_logic_vector(N-1 downto 0));
end demux21;


architecture BEHAVIORAL of demux21 is
begin
 prc: process (Y,sel) 
    begin 
		if sel = '0' then 
            A <= Y;
            B <= (others => '0');
        else 
            A <= (others => '0');
            B <= Y;
        end if;
  end process;

end BEHAVIORAL;


