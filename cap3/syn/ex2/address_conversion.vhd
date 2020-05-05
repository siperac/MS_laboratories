library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use WORK.all;

entity address_conversion is 
	generic (M: integer := 8;											-- Size window is = M +3N 
			 N: integer := 8;											
			 N_bit: integer := 64;										-- Size Physical RF = M + 2*N*F + N  
			 F: integer := 3);
	port (	
			spill_fill_count:			in std_logic;
			wait_count:				out std_logic;
			start_write:			out std_logic;
			clck:					in std_logic;
			address_input_1: 		in std_logic_vector(integer(ceil(log2(real(M+3*N))))-1 downto 0);
--			address_input_2: 		in std_logic_vector(integer(floor(log2(real(M+3*N))))-1 downto 0);
			address_input_3: 		in std_logic_vector(integer(ceil(log2(real(M+3*N))))-1 downto 0);
			address_output_1: 		out std_logic_vector(integer(ceil(log2(real(M + 2*N*F ))))-1 downto 0);
			address_output_2: 		out std_logic_vector(integer(ceil(log2(real(M + 2*N*F ))))-1 downto 0);
			address_output_3: 		out std_logic_vector(integer(ceil(log2(real(M + 2*N*F ))))-1 downto 0);
		    swp:			 		in std_logic_vector(integer(ceil(log2(real(M + 2*N*F ))))-1 downto 0);
		    cwp:			 		in std_logic_vector(integer(ceil(log2(real(M + 2*N*F ))))-1 downto 0));
end address_conversion;

architecture behavioral of address_conversion is

constant N_REG_P : integer := M + 2*N*F; 
constant N_REG_v : integer := M +3*N;

signal spill_fill: std_logic;
signal event_make: std_logic := '0';
signal wait_s,start: std_logic := '0';
signal i: unsigned(integer(ceil(log2(real(M + 2*N*F))))-1 downto 0);
begin 
-- process which converts the virtual adresses 1 and 3 to physical ones
convert: process(address_input_1,address_input_3,cwp)
begin
	if unsigned(address_input_1) < 3*N then 
		if (unsigned(address_input_1)+unsigned(cwp)) > 2*N*F - 1 then
			address_output_1<=std_logic_vector(unsigned(address_input_1)-to_unsigned(2*N,integer(ceil(log2(real(M + 2*N*F ))))));
		else
			address_output_1<=std_logic_vector(unsigned(address_input_1)+unsigned(cwp));
		end if;
	else
		address_output_1<=std_logic_vector(to_unsigned(to_integer(unsigned(address_input_1)+2*N*F ),integer(ceil(log2(real(M + 2*N*F))))));
	end if;
	if unsigned(address_input_3) < 3*N then 
		if (unsigned(address_input_3)+unsigned(cwp))> 2*N*F -1 then
			address_output_3<=std_logic_vector(unsigned(address_input_3)-to_unsigned(2*N,integer(ceil(log2(real(M + 2*N*F ))))));
		else
			address_output_3<=std_logic_vector(unsigned(address_input_3)+unsigned(cwp));
		end if;
	else
		address_output_3<=std_logic_vector(to_unsigned(to_integer(unsigned(address_input_3)+2*N*F ),integer(ceil(log2(real(M + 2*N*F ))))));
	end if;
end process convert;


--the second address is used to put out the addresses counting from cwp to cwp+3*n used to fill and spill the register file
--there is a signal wait needed to detect a spill and fill procedure

--this process detects a change in the cwp

--this process counts from 0 to 3*n and puts out the wait signal
spill_fill<=spill_fill_count;
count: process(clck,spill_fill)
begin
	if spill_fill='1' and spill_fill'event then
		wait_s<='1';
		i<=(others=>'0');
	end if;
	
	if clck = '1' and wait_s = '1' then
		start <= '1';
		if to_integer(i) < 2*N then 
			if (unsigned(swp)+i) > 2*N*F - 1 then
				address_output_2<=std_logic_vector(i-to_unsigned(2*N,integer(ceil(log2(real(M + 2*N*F ))))));
			else
				address_output_2<=std_logic_vector(unsigned(swp)+i);
			end if;
			i<=i+1;
		else 
			wait_s<='0';
			start<='0';
		end if;
	end if;


end process count;
wait_count<=wait_s;
start_write<=start;
end behavioral;

