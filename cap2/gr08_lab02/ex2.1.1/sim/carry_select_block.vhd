library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity carry_select_block is 
	generic ( N : integer  := 4);
	Port (	A:	In	std_logic_vector( N-1 downto 0);
		B:	In	std_logic_vector( N-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(N-1 downto 0));
end carry_select_block; 

architecture STRUCTURAL of carry_select_block is			

	signal S1 : std_logic_vector(N-1 downto 0);	-- Sum RCA1
	signal S2 : std_logic_vector(N-1 downto 0); -- Sum RCA2
	signal Co1: std_logic;						-- Sum Co1
	signal Co2: std_logic;						-- Sum Co2
  

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
	   generic map (N=>4) 				-- RCA has Ci set to 1
	   port map (A, B, '1', S1, Co1);
UADDER2: RCA 
	   generic map (N=>4) 
	   port map (A, B, '0', S2, Co2);	-- RCA has Ci set to 0
mux: MUX21_generic 
	   generic map (N=>4) 				-- The inputs of the MUX are S1 and S2, and the selection is done by Ci.
	   port map (S1, S2, Ci, S);


end STRUCTURAL;

