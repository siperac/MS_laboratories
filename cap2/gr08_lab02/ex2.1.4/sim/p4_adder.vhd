library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;


	entity P4_ADDER is
		generic (N : integer := 32);
		port (
			A :		in	std_logic_vector(N-1 downto 0);
			B :		in	std_logic_vector(N-1 downto 0);
			Cin :	in	std_logic;
			S :		out	std_logic_vector(N-1 downto 0);
			Cout :	out	std_logic);
	end P4_ADDER;

architecture STRUCTURAL of P4_ADDER is

	component carry_generator 										-- Carry generator
		generic (
			N :	integer := 32;
			NPB: integer := 4);
		port (
			A :		in	std_logic_vector(N-1 downto 0);
			B :		in	std_logic_vector(N-1 downto 0);
			Cin :	in	std_logic;
			Co :	out	std_logic_vector((N/NPB)-1 downto 0));
	end component carry_generator;


	component sum_generator 										-- Sum generator 
		generic (N :integer := 32;
				 NPB: integer := 4);				
		Port (	A:	In	std_logic_vector( N-1 downto 0);
			B:	In	std_logic_vector( N-1 downto 0);
			Ci:	In	std_logic_vector((N)/NPB downto 0) ;
			S:	Out	std_logic_vector(N-1 downto 0);
			Co: out std_logic);
    end component sum_generator; 
    
    
    signal CoutCgen: std_logic_vector((N)/4 downto 0);				-- Cout Carry generator - Sum Generator
    signal CoutP4adder : std_logic;									-- Cout P4 Added
    signal SP4adder: std_logic_vector(N-1 downto 0);				-- Out Sum P4 Adder

begin
	
	
	CGEN: carry_generator generic map(N=>N,NPB=>4)  port map(A=> A,		-- Carry Generator
								   B=>B,
								   Cin=> Cin,
								   Co => CoutCgen((N/4) downto 1));
								   
	CoutCgen(0)<= Cin;						   
								   
	SGEN :sum_generator generic map(N=>N,NPB=>4) port map(A=> A,		-- Sum Generator
					   B=> B,
					   Ci=> CoutCgen,									-- CoCgen
					   S=>SP4adder,
					   Co => CoutP4adder);
	S<= SP4adder;														
	Cout <= CoutP4adder;
					   
				

end STRUCTURAL;

































