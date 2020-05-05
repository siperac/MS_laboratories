library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use WORK.all;

entity register_file is
 generic (NBIT: integer := 64;
		  NREG: integer:= 32);
 port ( CLK: 		IN std_logic;
        RESET: 	IN std_logic;
		ENABLE: 	IN std_logic;
		RD1: 		IN std_logic;
		RD2: 		IN std_logic;
		WR: 		IN std_logic;
		ADD_WR: 	IN std_logic_vector(integer(ceil(log2(real(NREG))))-1 downto 0);
		ADD_RD1: 	IN std_logic_vector(integer(ceil(log2(real(NREG))))-1 downto 0);
		ADD_RD2: 	IN std_logic_vector(integer(ceil(log2(real(NREG))))-1 downto 0);
		DATAIN: 	IN std_logic_vector(NBIT-1 downto 0);
        OUT1: 		OUT std_logic_vector(NBIT-1 downto 0);
		OUT2: 		OUT std_logic_vector(NBIT-1 downto 0));
end register_file;

architecture A of register_file is

        -- suggested structures
    subtype REG_ADDR is natural range 0 to NREG-1; -- using natural type
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(NBIT-1 downto 0); 
	signal REGISTERS : REG_ARRAY; 
		
begin 

RegProc: process(CLK)
begin 
	if CLK = '1' and CLK'EVENT then
		if RESET = '1' then 
			REGISTERS <= (others => (others => '0'));
		else 
			if ENABLE = '1' then 
				if RD1 = '1' then 
				   OUT1 <= Registers(to_integer(unsigned(ADD_RD1)));
				end if;
				if RD2 = '1' then 
					OUT2 <= Registers(to_integer(unsigned(ADD_RD2)));
				end if;
				if WR = '1' then 
					Registers(to_integer(unsigned(ADD_WR))) <= DATAIN; 
				end if;
			end if;
		end if; 
	end if;
end process RegProc;

end A;




configuration CFG_RF_BEH of register_file is
  for A
  end for;
end configuration;
