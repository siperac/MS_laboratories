library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.math_real.all;

entity TBADDRCONV is
end TBADDRCONV;

architecture TESTA of TBADDRCONV is

	   constant M_BIT : 	integer := 4;
	   constant N_REG : 	integer := 8;
	   constant N_bit : 	integer := 8;
	   constant F_window : 	integer :=3;
	
       signal CLK: std_logic := '0';
       signal SPLIT: std_logic;
       signal wait_s: std_logic;
       signal ADD_1: std_logic_vector(integer(ceil(log2(real(M_bit+3*N_reg))))-1 downto 0);
--     signal ADD_2: std_logic_vector(integer(floor(log2(real(M_bit+3*N_reg))))-1 downto 0);
       signal ADD_3: std_logic_vector(integer(ceil(log2(real(M_bit+3*N_reg))))-1 downto 0);
       signal cwp: std_logic_vector(integer(ceil(log2(real(M_bit + 2*N_reg*F_window + N_bit))))-1 downto 0);
       signal OUT1: std_logic_vector(integer(ceil(log2(real(M_bit + 2*N_reg*F_window + N_bit))))-1 downto 0);
       signal OUT2: std_logic_vector(integer(ceil(log2(real(M_bit + 2*N_reg*F_window + N_bit))))-1 downto 0);
       signal OUT3: std_logic_vector(integer(ceil(log2(real(M_bit + 2*N_reg*F_window + N_bit))))-1 downto 0);



component address_conversion is 
	generic (M: integer := 8;											-- Size window is = M +3N 
			 N: integer := 8;											
			 N_bit: integer := 64;										-- Size Physical RF = M + 2*N*F + N  
			 F: integer := 3);
	port (	
			spill_fill_count:		in std_logic;
			wait_count:				out std_logic;
			clck:					in std_logic;
			address_input_1: 		in std_logic_vector(integer(ceil(log2(real(M+3*N))))-1 downto 0);
--			address_input_2: 		in std_logic_vector(integer(floor(log2(real(M+3*N))))-1 downto 0);
			address_input_3: 		in std_logic_vector(integer(ceil(log2(real(M+3*N))))-1 downto 0);
			address_output_1: 		out std_logic_vector(integer(ceil(log2(real(M + 2*N*F + N))))-1 downto 0);
			address_output_2: 		out std_logic_vector(integer(ceil(log2(real(M + 2*N*F + N))))-1 downto 0);
			address_output_3: 		out std_logic_vector(integer(ceil(log2(real(M + 2*N*F + N))))-1 downto 0);
		    cwp:			 		in std_logic_vector(integer(ceil(log2(real(M + 2*N*F + N))))-1 downto 0));

end component;

begin 

RG:address_conversion

GENERIC MAP (M_BIT,N_REG,N_bit,F_window)
PORT MAP (SPLIT,wait_s,clk,ADD_1,ADD_3,OUT1,OUT2,OUT3,CWP);
	split <= '0','1' after 14 ns;
--	ADD_1 <= "0001", "0010" after 2 ns,"0011" after 5 ns,"0101" after 10 ns;
	--ADD_2 <= "0001", "0010" after 2 ns,"0011" after 5 ns,"0101" after 10 ns;
--	ADD_3 <= "0001", "0010" after 2 ns,"0011" after 5 ns,"0101" after 10 ns;
	cwp<="000001", "000000" after 14 ns,"000001" after 42 ns;
	
	PCLOCK : process(CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;	
	end process;

end TESTA;


