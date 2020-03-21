library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all; -- libreria WORK user-defined

entity register_nR0 is
	generic(N: integer := 8);
	Port (  D:	In	std_logic_vector(N-1 downto 0);
                CK:     In	std_logic;
                RESET:  In	std_logic;
                Q:	Out     std_logic_vector(N-1 downto 0));
end register_nR0;


architecture PIPPO of register_nR0 is -- generic register with syncronous reset
begin
     	PSYNCH: process(CK,RESET)
        begin
          if CK'event and CK='1' then -- positive edge triggered:
            if RESET='0' then -- active high reset
              Q <= (others => '0');
            else
              Q <= D; -- input is written on output
            end if;
          end if;
        end process;

end PIPPO;

architecture PLUTO of register_nR0 is -- generic register with asyncronous reset
begin

     	PASYNCH: process(CK,RESET)
        begin
          if RESET='0' then
            Q <= (others => '0');
          elsif CK'event and CK='1' then -- positive edge triggered:
            Q <= D;
          end if;
        end process;

end PLUTO;


--configuration CFG_REGISTER_PIPPO of register_n is
        --for PIPPO
        --end for;
--end CFG_REGISTER_PIPPO;

--configuration CFG_REGISTER_PLUTO of register_n is
       --for PLUTO
       -- end for;
 --end CFG_REGISTER_PLUTO;


