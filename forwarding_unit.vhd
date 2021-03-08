library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use WORK.all;
use work.Globals.all;


entity forwarding_unit is 
	port ( 
	-- From EX/MEM 
	EX_MEM_RF_wr : in std_logic;
	EX_MEM_RD : in std_logic_vector(4 downto 0);
    ID_EX_RS1 : in std_logic_vector(4 downto 0);
    ID_EX_RS2 : in std_logic_vector(4 downto 0);
    ID_EX_RD  : in std_logic_vector(4 downto 0);
	
	-- From MEM/WB 
	MEM_WB_RF_wr : in std_logic;
	MEM_WB_RD : in std_logic_vector(4 downto 0);

	
	sel_mux_1: out std_logic_vector(1 downto 0);
	sel_mux_2: out std_logic_vector(1 downto 0);
		
   );
end forwarding_unit;


architecture behavioural of forwarding_unit is 
begin 

mux1_proc: process(EX_MEM_RF_wr,EX_MEM_RD,ID_EX_RS1,ID_EX_RS2,ID_EX_RD,MEM_WB_RF_wr,MEM_WB_RD)
begin

if (EX_MEM_RF_wr = '1' and EX_MEM_RD = ID_EX_RS1) then
	sel_mux_1 <=
elsif ( ) then 
	sel_mux_1 <=
else
	sel_mux_1 <=
end if;
end process;


mux2_proc: process(EX_MEM_RF_wr,EX_MEM_RD,ID_EX_RS1,ID_EX_RS2,ID_EX_RD,MEM_WB_RF_wr,MEM_WB_RD)
begin

if (EX_MEM_RF_wr = '1' and EX_MEM_RD = ID_EX_RS2) then
	sel_mux_2 <=
elsif ( ) then 
	sel_mux_2 <=
else
	sel_mux_2 <=
end if;

end process;

end behavioural;
