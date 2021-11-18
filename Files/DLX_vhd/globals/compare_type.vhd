library ieee;
use ieee.std_logic_1164.all;

package compare_type is
    constant COMP_SIZE : integer := 4;      
	constant NO_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0) := "0000"; -- Used in case no comparison has to be performed.
	constant J_COMP   :  std_logic_vector( COMP_SIZE-1 downto 0) := "0001"; -- Used for jump. The comparator shows 1 at the output.
	constant EQ_COMP :  std_logic_vector( COMP_SIZE-1 downto 0) := "0010";  
	constant NE_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0) := "0011";
    constant GE_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0) := "0100";
    constant LE_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0) := "0101";
    constant L_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0)  := "0110";
    constant G_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0)  := "0111";
    constant BNEZ_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0)  := "1000";
    constant BEQZ_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0)  := "1001";
end compare_type;

