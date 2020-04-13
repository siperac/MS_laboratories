library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;


	entity carry_generator is
		generic (
			N :		integer := 32;
			NPB: integer := 4);
		port (
			A :		in	std_logic_vector(N-1 downto 0);
			B :		in	std_logic_vector(N-1 downto 0);
			Cin :	in	std_logic;
			Co :	out	std_logic_vector((N/NPB)-1 downto 0));
	end carry_generator;

architecture STRUCTURAL of carry_generator is


	component PG 
		Port (	G_IK : in  std_logic;
			P_IK : in std_logic;																
			G_K_1: in std_logic;																													 	
			P_K_1: in std_logic;																															
			Gx: out std_logic;																															  
			Px: out std_logic);
	end component; 


	component G 
		Port (  G_IK:  in std_logic;   
				P_IK : in std_logic; 
		        G_K_1 : in std_logic;
				Gx : out std_logic
		 );
	end component;

	constant Prop : integer := 0;			-- Constant parameters used as index for Propagate
	constant Gen  : integer := 1;			-- and Generate lines in the Signal Matrix


	constant H: integer := integer(log2(real(N)));								-- H is the number of iteration in a generic situation
							
	constant lognpb: integer := integer(floor(log2(real(NPB))));				-- Lonpb is the logaritm of NPB, it indicates from which iteration the algorithm starts to follow a different behavior.
	type  StepSignals is array(1 downto 0) of std_logic_vector(N-1 downto 0);	-- Pair of signals for PG and G TYPE
	type  Network is array (H downto 0) of StepSignals;  						--  Matrix of pairs TYPE
	signal PG_Network:  Network;												-- Actual Matrix of pairs

	
	
begin



	carry_gen: for row in 0 to H-1 generate 					--H iterations
	begin 

		row0 : 	if row = 0 generate				
 					PG_Network(row)(Prop)(N-1 downto 0) <= A(N-1 downto  0)  xor B(N-1 downto 0); -- Propagates of the first line
					PG_Network(row)(Gen)(0)<= (A(0) and B(0)) or (PG_Network(row)(Prop)(0) and Cin); -- G bit 0
 					PG_Network(row)(Gen)(N-1 downto 1) <= A(N-1 downto 1)  and B(N-1 downto 1);		 -- G following bits
								
		end generate row0;
	
	

		PG_G_rowN: for j in  0 to (N/2**(row+1))-1 generate 	
					
						Grow0: if j = 0 generate 																			
						
						Grow0_n: for k in 0 to (integer(2**integer(realmax(real(row - lognpb), real(0))))-1) generate		-- When the iteration exedes LOG_NPB the G that have to be generated are 2^(ROW-lognpb)  
												
							GJ:    G port map( G_IK => PG_Network(row)(Gen)((2**(row+1))-1 - NPB * k),		-- G:i,k
											   P_IK => PG_Network(row)(Prop)((2**(row+1))-1 - NPB * k ),	-- PG:i,k
							                   G_K_1 => PG_Network(row)(Gen)((2**(row))-1),					-- G:k-1,j 
							                   Gx => PG_Network(row+1)(Gen)((2**(row+1))-1 - NPB * k ));	-- G:i:j
												
						Co0_N: if (2**(row+1) - NPB * k >= NPB) generate 									
		
							Co(((2**(row+1) - NPB * k)/NPB)-1) <= PG_Network(row+1)(Gen)((2**(row+1))-1 - NPB * k); -- Whenever j = 0 and (2**(row+1) - NPB * k >= NPB)  the output of the generate have to be linked to the output.			
		
						end generate Co0_N;
	
						end generate Grow0_n;
		
						end generate Grow0;
						
						PGrowN: if j > 0 generate
						 
						Pgrow_n: for k in 0 to (integer(2**integer(realmax(real(row - lognpb), real(0))))-1) generate	-- When the iteration exedes LOG_NPB the PG that have to be generated are 2^(ROW-lognpb)  
												
						    	
							PGJ: PG port map( G_IK => PG_Network(row)(Gen)( 2**(row+1)*j + (2**(row+1))-1 - NPB * k),			-- G:i,k
											  P_IK => PG_Network(row)(Prop)( 2**(row+1)*j + (2**(row+1))-1 - NPB * k),			-- PG:i,k
											  G_K_1 => PG_Network(row)(Gen)( 2**(row+1)*j + (2**row)-1 ),						-- G:k-1,j 
					                          P_K_1 => PG_Network(row)(Prop)( 2**(row+1)*j + (2**row)-1 ),						-- PG:k-1,j 
											  Gx => PG_Network(row+1)(Gen)( 2**(row+1)*j + 2**(row+1)-1 - NPB * k),				-- G:i,j 
											  Px => PG_Network(row+1)(Prop)( 2**(row+1)*j + (2**(row+1))-1- NPB * k));			-- PG:i,j 

						line_N: if (row >= lognpb) generate 																								-- Forwarding of the signal to the next line of the matrix
		
							PG_Network(row+1)(Prop)(2**(row+1)*j + (2**row)-1 - NPB * k) <= PG_Network(row)(Prop)(2**(row+1)*j + (2**row)-1 - NPB * k);
							PG_Network(row+1)(Gen)(2**(row+1)*j + (2**row)-1 - NPB * k) <= PG_Network(row)(Gen)(2**(row+1)*j + (2**row)-1 - NPB * k);						
		
						end generate line_N;
	
						end generate Pgrow_n;

						end generate PGrowN; 	

		end generate PG_G_rowN;   	
		
				
				
	end generate ;




end STRUCTURAL;

































