library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;


entity acc is
	generic(N: integer:= 8);
	port (
      A          : in  std_logic_vector(N - 1 downto 0);
      B          : in  std_logic_vector(N - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      --ACC_EN_n   : in  std_logic;  -- optional use of the enable
      Y          : out std_logic_vector(N - 1 downto 0));
end acc;


architecture STRUCTURAL of acc is 

component MUX21_generic 
	generic (N: integer:= 16;
			 DELAY_MUX: Time:= tp_mux);
	Port (	A,B: In  std_logic_vector(N-1 downto 0);
			sel:	In	std_logic;
			Y:	Out	std_logic_vector(N-1 downto 0));
end component;

component register_nR0 
	generic(N: integer := 8);
	Port (  D:	In	std_logic_vector(N-1 downto 0);
                CK:     In	std_logic;
                RESET:  In	std_logic;
                Q:	Out     std_logic_vector(N-1 downto 0));
end component;

component RCA_n  
	generic (N : integer := 6;
			 DRCAS : 	Time := 0 ns;
	         DRCAC : 	Time := 0 ns);
	Port (	A:	In	std_logic_vector(N-1 downto 0);
		B:	In	std_logic_vector(N-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(N-1 downto 0);
		Co:	Out	std_logic);
end component; 

signal mux_rca : std_logic_vector(N-1 downto 0);
signal out_rca : std_logic_vector(N-1 downto 0);
signal feed_back : std_logic_vector(N-1 downto 0);
signal SCi: std_logic:= '0';
signal SCo: std_logic;


begin  
--component multiplexere connected to inputs B and output (feedback), the switch to accumulate and output mux_rca signal
MUX8: MUX21_generic generic map(N=>N,DELAY_MUX=>tp_mux) 
	                port map(A=>B, B=>feed_back, sel=>ACCUMULATE, Y=> mux_rca);
--component ripple carry adder connected to inputs A and mux_rca signal, carry in to a Ci signal fixed to zero, result to out_rca signal and carry out to Sco signal
RCA8: RCA_n generic map(N=> N,DRCAS=> DRCAS,DRCAC=>DRCAC)
				port map (A=>A,B=>mux_rca,Ci=>SCi,S=>out_rca, Co=> SCo);
--component register connected to input out_rca signal, output to feedback signal, synchronous reset to rst signal and clock to clk signal
REGISTER8: register_nR0 generic map(N=>N)
			port map(D=>out_rca, CK=>CLK, RESET=>RST_n,Q=>feed_back);
--output signal connected to feed_back
Y<= feed_back;

end STRUCTURAL;

architecture BEHAVIORAL of acc is 

signal mux_rca : std_logic_vector(N-1 downto 0);
signal out_rca : std_logic_vector(N-1 downto 0);
signal feed_back : std_logic_vector(N-1 downto 0);
signal SCi: std_logic:= '0';
signal SCo: std_logic;


begin  
--we simulated with more processes the behaviour of the components multiplexer, ripple carry adder and register
--process of multiplexer sensitive to switch and inputs
MUX_PROC: process (ACCUMULATE, b, feed_back)
begin
	if ACCUMULATE = '1' then mux_rca <= b;
	else mux_rca <= feed_back;	
	end if;
end process;
--process of ripple carry adder sensitive to inputs
ADDER_PROC: process (A, mux_rca)
variable sum: std_logic_vector(N downto 0);
begin
	--appended one more bit as a cout
	sum := (("0"&A) + ("0"&mux_rca) + SCi);
	SCo <= sum(N);-- after DRCAC; 
	out_rca <= sum(N-1 downto 0);-- after DRCAS;
end process;
--process of register sensitive to clock
REGISTER_PROC: process (clk)
begin
	if clk = '1' and clk'event then 
		if RST_n = '0' then feed_back <= (others => '0');
		else feed_back <= out_rca;
		end if; 
	end if;
end process;
--output signal connected to feed_back
Y<= feed_back;

end BEHAVIORAL;





