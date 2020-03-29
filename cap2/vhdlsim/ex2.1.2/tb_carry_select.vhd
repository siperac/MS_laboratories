library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; -- we need a conversion to unsigned 

entity tb_carry_select is 
end tb_carry_select; 

architecture TEST of tb_carry_select is

  component LFSR16 
    port (CLK, RESET, LD, EN : in std_logic; 
          DIN : in std_logic_vector(15 downto 0); 
          PRN : out std_logic_vector(15 downto 0); 
          ZERO_D : out std_logic);
  end component;

component carry_select is 
	generic (N : integer := 32);
	Port (	A:	In	std_logic_vector( N-1 downto 0);
		B:	In	std_logic_vector( N-1 downto 0);
		Ci:	In	std_logic_vector((N)/4 downto 0) ;
		S:	Out	std_logic_vector(N-1 downto 0);
		Co: out std_logic);
end component; 

  

  constant Period: time := 1 ns; -- Clock period (1 GHz)
  signal CLK : std_logic :='0';
  signal RESET,LD,EN,ZERO_D : std_logic;
  signal DIN, PRN : std_logic_vector(15 downto 0);

  signal A_s, B_s, S1_s : std_logic_vector(7 downto 0);
  signal Co1 : std_logic;
  signal Ci_s : std_logic_vector(2 downto 0);
   signal var, var_2 : std_logic_vector(4 downto 0);

Begin

-- Instanciate the ADDER without delay in the carry generation
UADDER1: carry_select 
	   generic map (N=>8) 
	   port map (A=>A_s, B=>B_s, Ci=>Ci_s, S=> S1_s , Co=>Co1);
  

  --A(0) <= PRN(0);
  --A(5) <= PRN(2);
  --A(3) <= PRN(4);
  --A(1) <= PRN(6);
  --A(4) <= PRN(8);
  --A(2) <= PRN(10);

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

--Ci_s <= "000", "001" after 4 ns, "010" after 8 ns, "011" after 12 ns, "100" after 16 ns, "101" after 20 ns, "110" after 24 ns, "111" after 28 ns,  "000" after 32 ns;
var<=std_logic_vector(to_unsigned(to_integer(unsigned(a_s(3 downto 0)))+to_integer(unsigned(b_s(3 downto 0))),5));
var_2<=std_logic_vector(to_unsigned(to_integer(unsigned(a_s(7 downto 4)))+to_integer(unsigned(b_s(7 downto 4))),5));
ci_s(1) <= var(4);
ci_s(2) <= var_2(4);
ci_s(0) <= '0', '1' after 15 ns;
Co1 <= Ci_s(2);
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

