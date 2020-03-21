library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity RCA_n is 
	generic (N : integer := 6;
			 DRCAS : 	Time := 0 ns;
	         DRCAC : 	Time := 0 ns);
	Port (	A:	In	std_logic_vector(N-1 downto 0);
		B:	In	std_logic_vector(N-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(N-1 downto 0);
		Co:	Out	std_logic);
end RCA_n; 

architecture STRUCTURAL of RCA_n is

  signal STMP : std_logic_vector(N-1 downto 0);
  signal CTMP : std_logic_vector(N downto 0);

  component FA 
  generic (DFAS : 	Time := 0 ns;
           DFAC : 	Time := 0 ns);
  Port ( A:	In	std_logic;
	 B:	In	std_logic;
	 Ci:	In	std_logic;
	 S:	Out	std_logic;
	 Co:	Out	std_logic);
  end component; 

begin

  CTMP(0) <= Ci;
  S <= STMP;
  Co <= CTMP(N);
  
  ADDER1: for I in 1 to N generate
    FAI : FA 
	  generic map (DFAS => DRCAS, DFAC => DRCAC) 
	  Port Map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I)); 
  end generate;

end STRUCTURAL;


--architecture BEHAVIORAL of RCA_n is

-- signal sum: std_logic_vector(N downto 0);

--begin

  --sum <= (("0"&A) + ("0"&B) + Ci);
 -- Co <= sum(N); -- after DRCAC; 
 -- S <= sum(N-1 downto 0); -- after DRCAS;
  
--end BEHAVIORAL;

configuration CFG_RCAN_STRUCTURAL of RCA_n is
  for STRUCTURAL 
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_RCAN_STRUCTURAL;

--configuration CFG_RCAN_BEHAVIORAL of RCA_n is
 -- for BEHAVIORAL 
  --end for;
--end CFG_RCAN_BEHAVIORAL;
