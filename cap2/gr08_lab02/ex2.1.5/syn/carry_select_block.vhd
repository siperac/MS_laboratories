library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity carry_select_block is 
	generic ( NPB : integer  := 4);
	Port (	A:	In	std_logic_vector( NPB-1 downto 0);
		B:	In	std_logic_vector( NPB-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NPB-1 downto 0));
end carry_select_block; 

architecture STRUCTURAL of carry_select_block is

	signal S1 : std_logic_vector(NPB-1 downto 0);
	signal S2 : std_logic_vector(NPB-1 downto 0);
	signal Co1: std_logic;
	signal Co2: std_logic;
  

  component RCA 
  generic (N : integer := 6);
  Port ( A:	In	std_logic_vector(N-1 downto 0);
		B:	In	std_logic_vector(N-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(N-1 downto 0);
		Co:	Out	std_logic);
  end component; 
	
	component MUX21_generic is
	generic (N: integer:= 16);
	Port (	A,B: In  std_logic_vector(N-1 downto 0);
			sel:	In	std_logic;
			Y:	Out	std_logic_vector(N-1 downto 0));
	end component;

begin

UADDER1: RCA 
	   generic map (N=>NPB) 
	   port map (A, B, '1', S1, Co1);
UADDER2: RCA 
	   generic map (N=>NPB) 
	   port map (A, B, '0', S2, Co2);
mux: MUX21_generic 
	   generic map (N=>NPB) 
	   port map (S1, S2, Ci, S);


end STRUCTURAL;

