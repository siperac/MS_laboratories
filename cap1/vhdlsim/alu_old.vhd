library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use WORK.constants.all;
use WORK.alu_type.all;

entity ALU is
  generic (N : integer := numBit);
  port 	 ( FUNC: IN TYPE_OP;
           DATA1, DATA2: IN std_logic_vector(N-1 downto 0);
           OUTALU: OUT std_logic_vector(N-1 downto 0)
  );
end ALU;

architecture BEHAVIOR of ALU is
	
begin

P_ALU: process (FUNC, DATA1, DATA2)

  variable Nshift : integer;

  begin

	if to_integer(unsigned(DATA2)) > N  then 
		Nshift:= N;
	else 
		Nshift:= to_integer(unsigned(DATA2));	
	 end if;


    case FUNC is
	when ADD 	=> OUTALU <= DATA1 + DATA2; 
	when SUB 	=> OUTALU <=  DATA1 - DATA2;
	when MULT 	=> OUTALU <= std_logic_vector(to_unsigned(to_integer((unsigned(DATA1)*unsigned(DATA2))),N));	
	when BITAND 	=> OUTALU <= DATA1 AND DATA2; -- bitwise operations
	when BITOR 	=> OUTALU <= DATA1 OR DATA2;
	when BITXOR 	=> OUTALU <= DATA1 XOR DATA2;

	when FUNCLSL 	=> if Nshift = 0 then OUTALU <= DATA1;									-- Optional version 
					   elsif Nshift = N  then OUTALU <= (others => '0');
					   else 
					   		OUTALU(N-1 downto Nshift) <= DATA1(N-Nshift-1 DOWNTO 0);
					   		OUTALU(Nshift-1 downto 0) <= (others => '0');
						end if;

	when FUNCLSR 	=>  if Nshift = 0 then OUTALU <= DATA1;
					    elsif Nshift = N  then OUTALU <= (others => '0');
					    else 
							OUTALU(N-1 downto N - Nshift) <= (others => '0');
							OUTALU(N - Nshift-1 downto 0) <= DATA1(N-1 DOWNTO  Nshift);
						end if;
					   
	when FUNCRL 	=> OUTALU <= to_stdlogicvector(to_bitvector(DATA1) rol to_integer(unsigned(DATA2))); -- rotate left
	when FUNCRR 	=> OUTALU <= to_stdlogicvector(to_bitvector(DATA1) ror to_integer(unsigned(DATA2))); -- toate right
	when others => null;
    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;



-- |N-1 ... N - Nshift | N -1 - Nshift .. 0 |
