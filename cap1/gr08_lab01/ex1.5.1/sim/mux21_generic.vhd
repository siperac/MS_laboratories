library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined
use IEEE.numeric_std.all;

entity MUX21_generic is
	generic (N: integer:= 16;
	DELAY_MUX: Time:= tp_mux);
	Port (	A,B: In  std_logic_vector(N-1 downto 0);
			sel:	In	std_logic;
			Y:	Out	std_logic_vector(N-1 downto 0));
end MUX21_generic;


architecture BEHAVIORAL of MUX21_generic is
begin
		Y<= A when sel='1' else B;	
end BEHAVIORAL;

architecture STRUCTURAL of MUX21_generic is

	signal Y1: std_logic_vector(N-1 downto 0);
	signal Y2: std_logic_vector(N-1 downto 0);
	signal SB: std_logic;

	component ND2
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		Y:	Out	std_logic);
	end component;
	
	component IV
	Port (	A:	In	std_logic;
		Y:	Out	std_logic);
	end component;

begin
	
	gen_mux:for i in 0 to N-1 generate 		
		UIV : IV
		Port Map ( sel, SB);

		UND1 : ND2
		Port Map ( A(i), sel, Y1(i));

		UND2 : ND2
		Port Map ( B(i), SB, Y2(i));
	
		UND3 : ND2
		Port Map ( Y1(i), Y2(i), Y(i));
	end generate gen_mux;


end STRUCTURAL;


configuration CFG_MUX21_GEN_BEHAVIORAL of MUX21_generic is
	for BEHAVIORAL
	end for;
end CFG_MUX21_GEN_BEHAVIORAL;



configuration CFG_MUX21_GEN_STRUCTURAL of MUX21_generic is
	for STRUCTURAL
		for all : IV
			use configuration WORK.CFG_IV_BEHAVIORAL;
		end for;
		for all : ND2
			use configuration WORK.CFG_ND2_ARCH2;
		end for;
	end for;
end CFG_MUX21_GEN_STRUCTURAL;
