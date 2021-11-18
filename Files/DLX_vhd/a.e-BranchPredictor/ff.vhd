library IEEE;
use IEEE.std_logic_1164.all;
--use WORK.constants.all; -- libreria WORK user-defined

entity ff is
	generic(N: integer := 8);
	Port (  D:	In	std_logic;
                CK:     In	std_logic;
                RESET:  In	std_logic;
                ENABLE: In std_logic;
                Q:	Out     std_logic);
end ff;


architecture PIPPO of ff is -- generic register with syncronous reset
begin
     	PSYNCH: process(CK)
        begin
          if CK'event and CK='1' then -- positive edge triggered:
          
            if RESET='0' then -- active high reset
              Q <= '0';
            else
				if ENABLE = '1' then
					Q <= D; -- input is written on output
				end if;
            end if;
          end if;
        end process;

end PIPPO;

