library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use WORK.all;

entity TBWINDOWEDREG is
end TBWINDOWEDREG;

architecture TESTA of TBWINDOWEDREG is

	   constant M_BIT : 	integer := 2;
	   constant N_REG : 	integer := 2;
	   constant N_bit : 	integer := 8;
	   constant F_window : 	integer :=2;
	   constant period:		time:= 1 ns;
	
       signal reset,en,rd_wr: std_logic;
       signal wr_cpu: std_logic := '0';
       signal call_s: std_logic := '0';
       signal return_s: std_logic := '0';
       signal rd_cpu: std_logic := '1';
       signal CLK: std_logic := '0';
       signal wait_signal: std_logic:= '0';
       signal addr_rd,addr_wr: std_logic_vector(integer(ceil(log2(real(M_bit+3*N_reg))))-1 downto 0) :=(others=>'0');
       
       signal num: integer := 0;
       signal times_call_return: integer := 16;

	   signal tst_ceil: integer := integer(ceil(log2(real(M_bit+3*N_reg))));
	   signal tst: integer := integer(log2(real(M_bit+3*N_reg)));
	   signal first: integer := 0;
	   signal num_call: integer := 0;
       signal IN_cpu: std_logic_vector(N_bit-1 downto 0):=(others=>'0');
       signal IN_mem: std_logic_vector(N_bit-1 downto 0):=(others=>'1');
       signal OUT_cpu: std_logic_vector(N_bit-1 downto 0);
       signal OUT_mem: std_logic_vector(N_bit-1 downto 0);



component windowed_register_file is 
	generic (M: integer := 8;											-- Size window is = M +3N 
			 N: integer := 8;											
			 N_bit: integer := 64;										-- Size Physical RF = M + 2*N*F + N  
			 W: integer := 3);
	port (	CALL:				in std_logic;
			RETURN_signal:		in std_logic;								-- N ADDRESS WINDIWED = log2(M + 3N )
																		-- N ADDRESS PHYSYCAL = log2(M + 2*N*F + N )
			CLK:				in std_logic;
			RESET:				in std_logic;								-- Are they power of 2?
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

end component;

begin 

RG:windowed_register_file
GENERIC MAP (M_BIT,N_REG,N_bit,F_window)
PORT MAP (call_s,return_s,clk,reset,en,rd_cpu,wr_cpu,wait_signal,addr_wr,addr_rd,IN_cpu,OUT_cpu,rd_wr,IN_mem,OUT_mem);

	reset<='1', '0' after 0.3 ns;
	en<='1';

	call_proc : process
	begin
	call_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	call_s<='1';
	wait for period;
	call_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	call_s<='1';
	wait for period;
	call_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	call_s<='1';
	wait for period;
	call_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	call_s<='1';
	wait for period;
	call_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	call_s<='1';
	wait for period;
	call_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	call_s<='1';
	wait for period;
	call_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	num_call<=num_call+1;
	wait;
	end process;
	
	ret_proc : process
	begin
	return_s<='0';
	wait until num_call=1;
	return_s<='1';
	wait for period;
	return_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	return_s<='1';
	wait for period;
	return_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	return_s<='1';
	wait for period;
	return_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	return_s<='1';
	wait for period;
	return_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	return_s<='1';
	wait for period;
	return_s<='0';
	wait until to_integer(unsigned(addr_wr)) = 3*N_reg-1;
	wait for period/2;
	return_s<='1';
	wait for period;
	return_s<='0';
	wait;
	end process;
	
	add_proc : process(clk)
	begin
	
		if clk = '1' and clk'event then		
		if wait_signal = '0' then
			addr_wr <= std_logic_vector(to_unsigned(num,integer(ceil(log2(real(M_bit+3*N_reg))))));
			addr_rd<=addr_wr;
			num<=num+1;
			if to_integer(unsigned(addr_wr)) = 3*N_reg-1 then 
				IN_cpu<=std_logic_vector(unsigned(IN_cpu)+1);
			end if;
			if num = 3*N_reg-1 then
				num <= 0;
				first <= 1;
			end if;
			--if num = 0 and first = 1 then
		else 
			num<=0;	
		end if;
		end if;	
	end process;
	
	write_proc : process(wait_signal)
	begin
		if wait_signal = '0' then
			wr_cpu <= '1';
		else 
			wr_cpu <= '0';
		end if;	
	end process;
	
	rd_proc : process(wait_signal,call_s,return_s)
	begin
		if wait_signal = '0' or call_s='0' or return_s = '0' then
			rd_cpu <= '1';
		else 
			rd_cpu <= '0';	
		end if;				
	end process;
	
	PCLOCK : process(CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;	
	end process;

end TESTA;


