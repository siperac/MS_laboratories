library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is
	
	-- P4 component declaration
	component P4_ADDER is
		generic (
			N :integer := 32);
		port (
			A :		in	std_logic_vector(N-1 downto 0);
			B :		in	std_logic_vector(N-1 downto 0);
			Cin :	in	std_logic;
			S :		out	std_logic_vector(N-1 downto 0);
			Cout :	out	std_logic);
	end component;
	
	component LFSR16 
		port (CLK, RESET, LD, EN : in std_logic; 
			DIN : in std_logic_vector(15 downto 0); 
			PRN : out std_logic_vector(15 downto 0); 
			ZERO_D : out std_logic);
	end component;
  

  constant Period: time := 1 ns; -- Clock period (1 GHz)
  signal CLK : std_logic :='0';
  signal RESET,LD,EN,ZERO_D : std_logic;
  signal DIN, PRN : std_logic_vector(15 downto 0);

  signal A_s, B_s, S1_s : std_logic_vector(7 downto 0);
  signal Ci_s,Cos : std_logic;


Begin

-- Instanciate the ADDER without delay in the carry generation
UADDER1: P4_ADDER generic map (N=>8) port map (A=>A_s, B=>B_s, Cin=>Ci_s, S=> S1_s , Cout=>Cos);
  



B_s(0) <= PRN(1);
B_s(1) <= PRN(3);
B_s(2) <= PRN(5);
B_s(3) <= PRN(7);
B_s(4) <= PRN(9);
B_s(5) <= PRN(11);
B_s(6) <= PRN(13);
B_s(7) <= PRN(15);

A_s(0) <= PRN(0);
A_s(1) <= PRN(2);
A_s(2) <= PRN(4);
A_s(3) <= PRN(6);
A_s(4) <= PRN(8);
A_s(5) <= PRN(10);
A_s(6) <= PRN(12);
A_s(7) <= PRN(14);

ci_s <= '0', '1' after 15 ns;

-- Instanciate the Unit Under Test (UUT)
  UUT: LFSR16 port map (CLK=>CLK, RESET=>RESET, LD=>LD, EN=>EN, 
                        DIN=>DIN,PRN=>PRN, ZERO_D=>ZERO_D);
                        
-- Create the permanent Clock and the Reset pulse
  CLK <= not CLK after Period/2;
  RESET <= '1', '0' after Period;
  
-- Open file, make a load, and wait for a timeout in case of design error.
  STIMULUS1: process
  begin
    DIN <= "0000000000000001";
    EN <='1';
    LD <='1';
    wait for 2 * PERIOD;
    LD <='0';
    wait for (65600 * PERIOD);
  end process STIMULUS1;

end TEST;

