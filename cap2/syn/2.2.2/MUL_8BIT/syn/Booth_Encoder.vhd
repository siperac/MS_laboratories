library ieee; 
use ieee.std_logic_1164.all; 

entity Booth_Encoder is 
	Port (  i : in std_logic_vector(2 downto 0);
		    o : out std_logic_vector(2 downto 0));
end Booth_Encoder;

architecture BEHAVIORAL of Booth_Encoder is

begin
--Y<= A when sel='1' else B;	

		o<= "000" when i="000" else -- 0 
			"000" when i="111" else -- 0
			"001" when i="001" else	--+A
			"001" when i="010" else	--+A
			"010" when i="101" else	---A
			"010" when i="110" else	---A
			"011" when i="011" else	--+2A
			"100" when i="100" else ---2A
			(others=>'-');

end BEHAVIORAL;
