library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity booth_mul is 
	generic (N :integer := 32);
	Port (	A:	In	std_logic_vector( N-1 downto 0);
		B:	In	std_logic_vector( N-1 downto 0);
		S:	Out	std_logic_vector(2*N-1 downto 0));
end booth_mul; 

architecture STRUCTURAL of booth_mul is

	component P4_ADDER is
		generic (N : integer := 32);
		port (
			A :		in	std_logic_vector(N-1 downto 0);
			B :		in	std_logic_vector(N-1 downto 0);
			Cin :	in	std_logic;
			S :		out	std_logic_vector(N-1 downto 0);
			Cout :	out	std_logic);
	end component; 
  
	component MUX_Booth is
		generic (N: integer:= 32);
		Port (
			A,B,C,D,E: 	In  std_logic_vector(N-1 downto 0);
			sel: 		In  std_logic_vector(2 downto 0);
			Y:			Out	std_logic_vector(N-1 downto 0));
		end component;
  
	component Booth_Encoder is 
		Port (  
			i : in std_logic_vector(2 downto 0);
			o : out std_logic_vector(2 downto 0));
	end component;
	
	signal minus_A: std_logic_vector (2*N-1 downto 0);
	type  StepSignals is array(N/2-1 downto 0) of std_logic_vector(2 downto 0);
	type  StepSignals_shift is array(N/2-1 downto 0) of std_logic_vector(2*N -1 downto 0);
	  
	signal select_array:  StepSignals ;				--matrix of switches of mux
	--matrix of inputs of multiplexer
	signal array_A:  StepSignals_shift ;			--matrix of A, 4A, 16A...
	signal array_minus_A:  StepSignals_shift ;		--matrix of -A,-4A,...
	signal shift_array_A:  StepSignals_shift ;		--matrix of 2A, 8A, 32A...
	signal shift_array_minus_A:  StepSignals_shift; --matrix of -2A, -8A, -32A..
	signal array_mux_out:  StepSignals_shift;		--matrix of output mux
	--end matrix of mux inputs
	signal result_array:  StepSignals_shift;		--matrix of results of sum + first mux
	signal b_0: std_logic_vector(2 downto 0);
	signal A_real: std_logic_vector(2*N-1 downto 0);
begin

	A_real<= std_logic_vector(to_signed(to_integer((signed(A))),2*N));  -- A extended over 2N bits 
	minus_A<= std_logic_vector(0-signed(A_real));                       -- Vector for minus A
	b_0<=(B(1 downto 0)&'0');                                           
 
--cin <= switch(2) xor switch(1) and (not(switch(0)))

mul: for j in 0 to (N)/(2)-1 generate 
begin 

row0 : 	if j = 0 generate
																									-- For the first iteriation of the generate
		shift_array_a(j)<=std_logic_vector(shift_left(signed(a_real),1));			--  2A			-- Onlu we have decided to generate only:  		
		shift_array_minus_A(j)<=std_logic_vector(shift_left(signed(minus_A),1));	-- -2A			-- An encoder taking as input B[-1,0,1] 
																									-- A multiplexer taking as input 
		booth_o: Booth_Encoder port map(b_0,select_array(j));
		
		mux_0: MUX_booth generic map(2*N)
						 port map((others=>'0'),
								   A_real,
								   minus_A,
								   shift_array_a(j),
								   shift_array_minus_A(j),
								   select_array(j),
								   result_array(j));
		end generate row0;
		
row_j : if j > 0 generate	
		
		array_A(j)<=std_logic_vector(shift_left(signed(a_real),j*2));					--   A*(2^(2*j))  	 so that if (j = 1)
		array_minus_a(j)<=std_logic_vector(shift_left(signed(minus_a),j*2));			-- - A*(2^(2*j))		    array_A(j)	 			=  4A
		shift_array_a(j)<=std_logic_vector(shift_left(signed(a_real),2*j+1));			--   A*(2^(2*j+1))			array_minus_a(j)		= -4A
		shift_array_minus_A(j)<=std_logic_vector(shift_left(signed(minus_A),2*j+1));	-- - A*(2^(2*j+1))			shift_array_a(j)		=  8A
																						--							shift_array_minus_A(j)  = -8A
		
		booth_j: Booth_Encoder port map(B(2*j+1 downto 2*j-1),
										select_array(j));				-- if j>0 we decided to generate :
		mux_j: MUX_booth generic map(2*N)								
						 port map((others=>'0'),						-- An encoder that takes as input B[2*j-1,2*j,2*j+1]
								   array_A(j),								
								   array_minus_a(j),
								   shift_array_a(j),					-- A multiplexer for to select the input value of the addition 
								   shift_array_minus_A(j),				
								   select_array(j),
								   array_mux_out(j));
								   
								   
		adder: P4_ADDER generic map(2*N)								-- A P4 adder that takes two inputs:
						port map(array_mux_out(j),
								 result_array(j-1),						-- The output of the multiplexr and of the previous adder 
								 '0',										
								 result_array(j));						-- If j=1 the input of the first input corrisponds to the output of the 
																		-- multiplexer generated when J = 0.
		end generate row_j;
		
end generate;

S<=result_array((N)/(2)-1);

end STRUCTURAL;
