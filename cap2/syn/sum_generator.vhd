library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity sum_generator is 
	generic (N :integer := 32;
			NPB: integer := 4);
	Port (	A:	In	std_logic_vector( N-1 downto 0);
		B:	In	std_logic_vector( N-1 downto 0);
		Ci:	In	std_logic_vector((N)/NPB downto 0) ;
		S:	Out	std_logic_vector(N-1 downto 0);
		Co: out std_logic);
end sum_generator; 

architecture STRUCTURAL of sum_generator is

  component carry_select_block
  	generic (NPB: integer := 4);
  Port ( A:	In	std_logic_vector(NPB-1 downto 0);
		B:	In	std_logic_vector(NPB-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NPB-1 downto 0));
  end component; 

begin

carry_sel: for i in 0 to (N)/(NPB)-1 generate 
begin 
csbi: carry_select_block port map( A((NPB*i)+NPB-1 downto NPB*i), B((NPB*i)+NPB-1 downto NPB*i), Ci(i), S((NPB*i)+NPB-1 downto NPB*i));
end generate;
Co <= Ci((N)/NPB);
end STRUCTURAL;

