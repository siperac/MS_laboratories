library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
-- Simple syncronous up-down counter 

entity up_down_counter is
	generic(Nb: integer := 2 );
 
	Port (        
        clk:     in	std_logic;
        rst:     in std_logic;
        enable:  in std_logic; -- enable 
        d :      out std_logic_vector(Nb-1 downto 0); -- data out 
        up_down: in std_logic); -- 0 -> down 1 -> up 
end up_down_counter;

architecture behv of up_down_counter is -- generic register with syncronous reset
SIGNAL Q: unsigned(3 DOWNTO 0);
begin
     	psync: process(clk)
        begin
          if clk'event and clk='1' then -- positive edge triggered:
            if rst='1' then -- active high reset
              Q <= (others => '0');
            else
				      if enable = '1' then
                if up_down = '0' then 
                    Q <= Q - 1 ;
                else  
                    Q <= Q + 1 ;
                end if;
				      end if;
            end if;
          end if;
      end process;

      d<= std_logic_vector(Q);
end behv;

