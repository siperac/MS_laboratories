library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity carry_select is 
	generic (N : integer := 32);
	Port (	A:	In	std_logic_vector( N-1 downto 0);
		B:	In	std_logic_vector( N-1 downto 0);
		Ci:	In	std_logic_vector((N)/4 downto 0) ;
		S:	Out	std_logic_vector(N-1 downto 0);
		Co: out std_logic);
end carry_select; 

architecture STRUCTURAL of carry_select is

  component carry_select_block
  Port ( A:	In	std_logic_vector(3 downto 0);
		B:	In	std_logic_vector(3 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(3 downto 0));
  end component; 

begin

carry_sel: for i in 0 to (N)/(4)-1 generate 
begin 
csbi: carry_select_block port map( A((4*i)+3 downto 4*i), B((4*i)+3 downto 4*i), Ci(i), S((4*i)+3 downto 4*i));
end generate;
Co <= Ci((N)/4);
end STRUCTURAL;

