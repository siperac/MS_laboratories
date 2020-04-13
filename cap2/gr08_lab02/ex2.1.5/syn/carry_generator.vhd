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

	constant Prop : integer := 0;
	constant Gen  : integer := 1;	
	constant H: integer := integer(log2(real(N)));
	constant lognpb: integer := integer(floor(log2(real(NPB))));
	type  StepSignals is array(1 downto 0) of std_logic_vector(N-1 downto 0);
	type  Network is array (H downto 0) of StepSignals;  
	signal PG_Network:  Network;

	
	
begin



	carry_gen: for row in 0 to H-1 generate --
	begin 


		row0 : 	if row = 0 generate				
 					PG_Network(row)(Prop)(N-1 downto 0) <= A(N-1 downto  0)  xor B(N-1 downto 0); -- Propagates of the first line
					PG_Network(row)(Gen)(0)<= (A(0) and B(0)) or (PG_Network(row)(Prop)(0) and Cin); -- Generate of the first bit of the first line 
 					PG_Network(row)(Gen)(N-1 downto 1) <= A(N-1 downto 1)  and B(N-1 downto 1);		
								
		end generate row0;
	
	

		PG_G_rowN: for j in  0 to (N/2**(row+1))-1 generate 
					
						Grow0: if j = 0 generate 
						
						Grow0_n: for k in 0 to (integer(2**integer(realmax(real(row - lognpb), real(0))))-1) generate
												
							GJ:    G port map( G_IK => PG_Network(row)(Gen)((2**(row+1))-1 - NPB * k),
											   P_IK => PG_Network(row)(Prop)((2**(row+1))-1 - NPB * k ),
							                   G_K_1 => PG_Network(row)(Gen)((2**(row))-1),
							                   Gx => PG_Network(row+1)(Gen)((2**(row+1))-1 - NPB * k ));
												
						Co0_N: if (2**(row+1) - NPB * k >= NPB) generate 									
		
							Co(((2**(row+1) - NPB * k)/NPB)-1) <= PG_Network(row+1)(Gen)((2**(row+1))-1 - NPB * k);							
		
						end generate Co0_N;
	
						end generate Grow0_n;
		
						end generate Grow0;
						
						PGrowN: if j > 0 generate
						 
						Pgrow_n: for k in 0 to (integer(2**integer(realmax(real(row - lognpb), real(0))))-1) generate
						    	
							PGJ: PG port map( G_IK => PG_Network(row)(Gen)( 2**(row+1)*j + (2**(row+1))-1 - NPB * k),
											  P_IK => PG_Network(row)(Prop)( 2**(row+1)*j + (2**(row+1))-1 - NPB * k),
											  G_K_1 => PG_Network(row)(Gen)( 2**(row+1)*j + (2**row)-1 ),
					                          P_K_1 => PG_Network(row)(Prop)( 2**(row+1)*j + (2**row)-1 ),
											  Gx => PG_Network(row+1)(Gen)( 2**(row+1)*j + 2**(row+1)-1 - NPB * k),
											  Px => PG_Network(row+1)(Prop)( 2**(row+1)*j + (2**(row+1))-1- NPB * k));

						line_N: if (row >= lognpb) generate 									
		
							PG_Network(row+1)(Prop)(2**(row+1)*j + (2**row)-1 - NPB * k) <= PG_Network(row)(Prop)(2**(row+1)*j + (2**row)-1 - NPB * k);
							PG_Network(row+1)(Gen)(2**(row+1)*j + (2**row)-1 - NPB * k) <= PG_Network(row)(Gen)(2**(row+1)*j + (2**row)-1 - NPB * k);						
		
						end generate line_N;
	
						end generate Pgrow_n;

						end generate PGrowN; 	

		end generate PG_G_rowN;   	
		
				
				
	end generate ;




end STRUCTURAL;

































