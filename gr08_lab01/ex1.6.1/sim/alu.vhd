library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_arith.all;      This library has been commented because of conflicts with numeric_std
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

  begin

    case FUNC is
	when ADD 	=> OUTALU <= DATA1 + DATA2; 		--output is the sum of inputs
	when SUB 	=> OUTALU <=  DATA1 - DATA2;		--output is the subtraction of inputs
	when MULT 	=> OUTALU <= std_logic_vector(to_unsigned(to_integer((unsigned(DATA1)*unsigned(DATA2))),N));	--these conversions had to be done to select the correct number of output bits
	when BITAND 	=> OUTALU <= DATA1 AND DATA2; -- bitwise operations
	when BITOR 	=> OUTALU <= DATA1 OR DATA2;
	when BITXOR 	=> OUTALU <= DATA1 XOR DATA2;
	when FUNCLSL 	=> OUTALU <= std_logic_vector(shift_left(unsigned(DATA1),to_integer(unsigned(DATA2))));		--exploited shift_left and right functions present in numeric_std_library
	when FUNCLSR 	=> OUTALU <= std_logic_vector(shift_right(unsigned(DATA1),to_integer(unsigned(DATA2))));					   
	when FUNCRL 	=> OUTALU <= to_stdlogicvector(to_bitvector(DATA1) rol to_integer(unsigned(DATA2))); -- rotate left
	when FUNCRR 	=> OUTALU <= to_stdlogicvector(to_bitvector(DATA1) ror to_integer(unsigned(DATA2))); -- toate right
	when others => OUTALU <= (others => '0');
    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;




