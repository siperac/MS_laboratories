library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use WORK.all;

entity windowed_register_file is 
	generic (M: integer := 8;											-- Size window is = M +3N 
			 N: integer := 8;											
			 N_bit: integer := 64;										-- Size Physical RF = M + 2*N*(F + 1)  
			 W: integer := 3);
	port (	CALL:				in std_logic;
			RETURN_signal:		in std_logic;								-- N ADDRESS WINDIWED = log2(M + 3N )
																		-- N ADDRESS PHYSYCAL = log2(M + 2*N*(F+1s)
			CLK:				in std_logic;
			RESET:				in std_logic;							
			ENABLE:				in std_logic;
			RD_CPU: 			in std_logic;
		    WR_CPU: 	      	in std_logic;
		    
		    Wait_signal:  		out std_logic;
			ADDR_WRCPU: 		in std_logic_vector(integer(ceil(log2(real(M+3*N))))-1 downto 0);
			ADDR_RDCPU: 		in std_logic_vector(integer(ceil(log2(real(M+3*N))))-1 downto 0);
		    DATAIN_CPU: 	    in std_logic_vector(N_bit-1 downto 0);
			DATAOUT_CPU: 		out std_logic_vector(N_bit-1 downto 0);
	    	
	    	RD_WR_MEM:			out std_logic;
			DATAIN_MEM:			in std_logic_vector(N_bit-1 downto 0);
			DATAOUT_MEM:		out std_logic_vector(N_bit-1 downto 0));
end windowed_register_file;


architecture behavioral of windowed_register_file is
component register_file is
 generic (NBIT: integer := 64;
		  NREG: integer:= 32);
 port ( CLK: 		IN std_logic;
        RESET: 		IN std_logic;
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
end component;

component address_conversion is 
	generic (M: integer := 8;											-- Size window is = M +3N 
			 N: integer := 8;											
			 N_bit: integer := 64;										-- Size Physical RF = M + 2*N*(F+1)  
			 F: integer := 3);
	port (	
			spill_fill_count:		in std_logic;
			wait_count:				out std_logic;
			start_write:			out std_logic;
			clck:					in std_logic;
			address_input_1: 		in std_logic_vector(integer(ceil(log2(real(M+3*N))))-1 downto 0);
			address_input_3: 		in std_logic_vector(integer(ceil(log2(real(M+3*N))))-1 downto 0);
			address_output_1: 		out std_logic_vector(integer(ceil(log2(real(M + 2*N*F ))))-1 downto 0);
			address_output_2: 		out std_logic_vector(integer(ceil(log2(real(M + 2*N*F ))))-1 downto 0);
			address_output_3: 		out std_logic_vector(integer(ceil(log2(real(M + 2*N*F ))))-1 downto 0);
		    swp:			 		in std_logic_vector(integer(ceil(log2(real(M + 2*N*F ))))-1 downto 0);
		    cwp:			 		in std_logic_vector(integer(ceil(log2(real(M + 2*N*F ))))-1 downto 0));
end component;

component MUX21_generic is
	generic (N: integer:= 16);
	Port (	A,B: In  std_logic_vector(N-1 downto 0);
			sel:	In	std_logic;
			Y:	Out	std_logic_vector(N-1 downto 0));
end component;

constant F : integer := W+1;
constant N_REG_P : integer := M + 2*N*F; 
constant N_REG_v : integer := M +3*N;
constant N_bit_RF: integer := integer(ceil(log2(real(N_REG_P))));
constant N_bit_input: integer := integer(ceil(log2(real(N_REG_v))));

signal WRITE_s,start,busy,WR_mem,count_wait,full,RD_MEM: std_logic;                       -- control signals
signal FILL,SPILL: std_logic:='0';
signal ADDRESS_READ,ADDRESS_COUNT,ADDRESS_WRITE,ADDRESS_WRITE_cpu: std_logic_vector(N_bit_RF - 1 downto 0);    -- converted addresses
signal DATA_WRITE: std_logic_vector(N_bit - 1 downto 0); 													   -- 
signal cansave : integer :=  F; 
signal canrestore : integer :=  0; 
signal DATA_OUT_1,DATA_OUT_2: std_logic_vector(N_BIT-1 downto 0);
signal swp: std_logic_vector(N_bit_RF - 1 downto 0) := (others=>'0');
signal cwp: std_logic_vector(N_bit_RF - 1 downto 0) := (others=>'0');

begin 

WRITE_S<= WR_mem or WR_CPU;
full<= SPILL or FILL;
busy<= count_wait and full;
DATAOUT_CPU<= data_out_1;
DATAOUT_MEM<= data_out_2;
Wait_signal<=busy;

--register_file is used as memory
--the controls are connected to read signal of cpu and the signals rd_mem and WRITE_S.
--the addresses are connected to the outputs of the component address_conversion

WRF: register_file generic map(NBIT=> N_BIT, NREG=>N_REG_P)
							port map(CLK => CLK,
									 RESET => RESET,
									 ENABLE => ENABLE,
									 RD1 => RD_CPU,
									 RD2 => RD_MEM,
									 WR => WRITE_s,
									 ADD_WR => ADDRESS_WRITE,
									 ADD_RD1 => ADDRESS_READ,
									 ADD_RD2 => ADDRESS_COUNT,
									 DATAIN => DATA_WRITE,
									 OUT1 => DATA_OUT_1,
									 OUT2 => DATA_OUT_2);
								 
-- component address_conversion receives in input the virtual addresses from cpu and converts them into physical addresses
-- it also gives in output when the spill and fill signals are high a sequence of 2*N_reg registers starting from swp increasing of 1 every clock cycle
-- also gives as otput a wait signal that can be used to detect the operation of spilling or filling taking place
 
add_con: address_conversion generic map(M=> M, N=>N, N_bit=>N_bit, F=>F)
							port map(spill_fill_count=>full,
									 wait_count=> count_wait,
									 start_write=> start,
									 clck=>clk,
									 address_input_1=>ADDR_RDCPU,
									 address_input_3=>ADDR_WRCPU,
									 address_output_1=>ADDRESS_READ,
									 address_output_2=> ADDRESS_COUNT,
									 address_output_3=>ADDRESS_WRITE,
									 swp=> swp,
									 cwp=> cwp);
									 
-- the multiplexer is used to choose the data as input to rhe register file (cpu as default and memory when filling)

DATA_multiplexer_write: MUX21_generic generic map(N => N_bit)
							port map(B=>DATAIN_CPU,
									 A=>DATAIN_MEM,
									 sel=>busy,
									 y=>DATA_WRITE);

CLKProc: process(CLK)
begin
if CLK = '1' and CLK'EVENT then 
	if busy = '0' then
	--default
	SPILL<='0';
	FILL<='0';
		if CALL = '1' then
			--updates integer registers cansave and canrestore
			canrestore <= canrestore+1;
			cansave<= cansave-1;
			if cansave = 1 then
				--when there are no registers left cwp pointer starts again and spill 
				cwp<=(others=>'0');
				cansave<= F; 
				if swp = std_logic_vector(to_unsigned(2*N,N_bit_RF)) then
					SPILL<='1';
				end if;
			else
				cwp<=std_logic_vector(unsigned(cwp)+2*N);
				if (std_logic_vector(unsigned(cwp)+4*N) = swp)  or ((cansave = 2) and (swp = std_logic_vector(to_unsigned(0,N_bit_RF)))) then
					SPILL<='1';
				end if;
			end if;
		else if RETURN_SIGNAL = '1' then
			if canrestore > 0 then
				canrestore <= canrestore-1;
				cansave<= cansave+1;
				if cansave = F then
					cansave <= 1;
					cwp<=std_logic_vector(to_unsigned(2*N*(F-1),N_bit_RF));
					if std_logic_vector(to_unsigned(2*N*(F-1),N_bit_RF)) = swp then
						FILL<='1';
					end if;
				else
					if std_logic_vector(unsigned(cwp)-2*N) = swp then
						FILL<='1';
					end if;
					cwp<=std_logic_vector(unsigned(cwp)-2*N);
				end if;
			end if;
		end if;
		end if;
	end if;
end if;
end process CLKProc;


wr_read_proc: process (start)
begin
WR_mem<= '0';
RD_WR_MEM<='U';
RD_MEM<= '0';
	if start='1' then
		if spill='1' then
			RD_MEM<= '1';
			RD_WR_MEM<='1';
		end if;
		if fill='1' then
			WR_mem<= '1';
			RD_WR_MEM<='0';
		end if;
	end if;
end process wr_read_proc;

spill_proc:process (spill,fill)
begin
	if spill = '0' and spill'event then
		if cansave = 2 then
				swp<=(others=>'0');
			else
				swp<=std_logic_vector(unsigned(swp)+2*N);
		end if;
	end if;

	if fill = '1' then
		if cansave = F then
			swp<=std_logic_vector(to_unsigned(2*N*(F-1),N_bit_RF));
		else 
			swp<=std_logic_vector(unsigned(swp)-2*N);
		end if;
	end if;
	
end process spill_proc;
	
end behavioral;


