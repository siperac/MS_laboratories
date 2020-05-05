library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.math_real.all;

entity TBREGISTERFILE is
end TBREGISTERFILE;

architecture TESTA of TBREGISTERFILE is

	   constant N_BIT : integer := 8;
	   constant N_REG : integer := 8;
	
       signal CLK: std_logic := '0';
       signal RESET: std_logic;
       signal ENABLE: std_logic;
       signal RD1: std_logic;
       signal RD2: std_logic;
       signal WR: std_logic;
       signal ADD_WR: std_logic_vector(integer(log2(real(N_REG)))-1  downto 0);
       signal ADD_RD1: std_logic_vector(integer(log2(real(N_REG)))-1  downto 0);
       signal ADD_RD2: std_logic_vector(integer(log2(real(N_REG)))-1 downto 0);
       signal DATAIN: std_logic_vector(N_BIT-1 downto 0);
       signal OUT1: std_logic_vector(N_BIT-1 downto 0);
       signal OUT2: std_logic_vector(N_BIT-1 downto 0);



component register_file 
 generic (NBIT: integer := 64;
		  NREG: integer:= 32);
 port ( CLK: 		IN std_logic;
        RESET: 	IN std_logic;
		ENABLE: 	IN std_logic;
		RD1: 		IN std_logic;
		RD2: 		IN std_logic;
		WR: 		IN std_logic;
		ADD_WR: 	IN std_logic_vector(integer(log2(real(NREG)))-1  downto 0);
		ADD_RD1: 	IN std_logic_vector(integer(log2(real(NREG)))-1  downto 0);
		ADD_RD2: 	IN std_logic_vector(integer(log2(real(NREG)))-1  downto 0);
		DATAIN: 	IN std_logic_vector(NBIT-1 downto 0);
        OUT1: 		OUT std_logic_vector(NBIT-1 downto 0);
		OUT2: 		OUT std_logic_vector(NBIT-1 downto 0));
end component;

begin 

RG:register_file

GENERIC MAP (N_BIT,N_REG)
PORT MAP (CLK,RESET,ENABLE,RD1,RD2,WR,ADD_WR,ADD_RD1,ADD_RD2,DATAIN,OUT1,OUT2);
	RESET <= '1','0' after 5 ns;
	ENABLE <= '0','1' after 3 ns, '0' after 10 ns, '1' after 15 ns;
	WR <= '0','1' after 6 ns, '0' after 7 ns, '1' after 10 ns, '0' after 20 ns;
	RD1 <= '1','0' after 5 ns, '1' after 13 ns, '0' after 20 ns; 
	RD2 <= '0','1' after 17 ns;
	ADD_WR <= "101", "010" after 9 ns;
	ADD_RD1 <="101", "010" after 9 ns;
	ADD_RD2<= "111", "010" after 9 ns;
	
	DATAIN<=(others => '0'),(others => '1') after 8 ns;

	PCLOCK : process(CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;	
	end process;

end TESTA;


