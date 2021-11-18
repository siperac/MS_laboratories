library ieee;
use ieee.std_logic_1164.all;

package branch_type is
    constant BR_SIZE : integer := 2;           
	constant JUMP  :  std_logic_vector( BR_SIZE-1 downto 0)  := "11";
    constant BNEZ  :  std_logic_vector( BR_SIZE-1 downto 0)  := "01";
    constant BEQZ  :  std_logic_vector( BR_SIZE-1 downto 0)  := "10";
     constant NO_BR  :  std_logic_vector( BR_SIZE-1 downto 0)  := "00";
end branch_type;
