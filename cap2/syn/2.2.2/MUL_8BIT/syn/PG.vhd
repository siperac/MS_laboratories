library ieee; 
use ieee.std_logic_1164.all; 

entity PG is 
	Port (	G_IK : in  std_logic;
			P_IK : in std_logic;
			G_K_1: in std_logic;
			P_K_1: in std_logic;
			Gx: out std_logic;
			Px: out std_logic);
end PG; 

architecture BEHAVIORAL of PG is

begin
	
	Gx <= G_IK or (P_IK and G_K_1);
	Px <= P_IK and P_K_1;

end BEHAVIORAL;
