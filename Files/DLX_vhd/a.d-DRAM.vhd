library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use WORK.all;

entity data_memory  is
generic(N_bits: integer := 8;
		N_lines: integer := 2**6);
 port ( input_data: 	IN std_logic_vector(31 downto 0);
		input_address: 	IN std_logic_vector(31 downto 0);
		reset: IN std_logic;
		ck: IN std_logic;
		read_enable: In std_logic;
		write_enable: in std_logic;
		signal_byte: in std_logic_vector(1 downto 0);
		enable: In  std_logic;
		output_data: out std_logic_vector(31 downto 0));
end data_memory;

architecture str of data_memory is
	type size_mem is array (0 to N_lines-1) of std_logic_vector ( N_bits-1 downto 0);
	signal mem_s : size_mem;
begin 

mem_proc: process (ck,read_enable,input_address) is
begin

if reset = '0' then
	mem_s <= (others =>(others =>'0'));
else
  if  ck'event and ck = '1' then
	if enable = '1' then
        if write_enable = '1' then
            if (signal_byte= "00") then 
					mem_s (to_integer(unsigned(input_address))) <= input_data(31 downto 24);
					mem_s (to_integer(unsigned(input_address+1))) <= input_data(23 downto 16);
					mem_s (to_integer(unsigned(input_address+2))) <= input_data(15 downto 8);
					mem_s (to_integer(unsigned(input_address+3))) <= input_data(7 downto 0);
            elsif (signal_byte= "01") then 
			        mem_s (to_integer(unsigned(input_address))) <= input_data(7 downto 0);
            elsif (signal_byte= "10") then
					mem_s (to_integer(unsigned(input_address))) <= input_data(15 downto 8);
					mem_s (to_integer(unsigned(input_address+1))) <= input_data(7 downto 0);
            end if;     
		end if;
	end if;
  end if;
   
  if read_enable = '1'  then
	output_data(31 downto 24) <= mem_s(to_integer(unsigned(input_address)));
	output_data(23 downto 16) <= mem_s(to_integer(unsigned(input_address+1)));
	output_data(15 downto 8) <= mem_s(to_integer(unsigned(input_address+2)));
	output_data(7 downto 0) <= mem_s(to_integer(unsigned(input_address+3)));
  end if; 
  
end if;

end process;
	
end str;
