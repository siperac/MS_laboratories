library IEEE;

use IEEE.std_logic_1164.all;
use WORK.all;

entity tb_dlx is
end tb_dlx;

architecture TEST of tb_dlx is


    constant SIZE_IR      : integer := 32;       -- Instruction Register Size
    constant SIZE_PC      : integer := 32;       -- Program Counter Size
    constant SIZE_ALU_OPC : integer := 6;        -- ALU Op Code Word Size in case explicit coding is used
    signal Clock: std_logic := '0';
    signal Reset: std_logic := '1';
    signal dram_input_data_s: std_logic_vector(31 downto 0);
    signal input_address_S: std_logic_vector(31 downto 0);
    signal read_enable_s: std_logic;
    signal write_enable_s:  std_logic;
    signal signal_byte_s: std_logic_vector(1 downto 0);
    signal enable_S:  std_logic;
    signal output_data_s: std_logic_vector(31 downto 0);

    signal iram_addr_s : std_logic_vector(SIZE_IR - 1 downto 0);
    signal iram_data_out_s: std_logic_vector(SIZE_IR - 1 downto 0);

    component DLX
    generic (
        IR_SIZE      : integer := 32;       -- Instruction Register Size
        PC_SIZE      : integer := 32       -- Program Counter Size
        );       
      port (
        Clk : in std_logic;
        Rst : in std_logic;                
    
            --- Data Memory
        dram_input_data: 	OUT std_logic_vector(31 downto 0);
        dram_addr: 	OUT std_logic_vector(31 downto 0);
        dram_r_en: OUT std_logic;
        dram_w_en: OUT std_logic;
        enable: OUT  std_logic;
        signal_byte: OUT std_logic_vector(1 downto 0);
        dram_out_data: IN std_logic_vector(31 downto 0);
    
            -- Instruction Memory
        iram_addr : out  std_logic_vector(PC_SIZE - 1 downto 0);
        iram_data_out : in std_logic_vector(IR_SIZE - 1 downto 0));                -- Active Low
    end component;
    component data_memory  is
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
        end component;
        component IRAM is
                generic (
                  RAM_DEPTH : integer := 48;
                  I_SIZE : integer := 32);
                port (
                  Rst  : in  std_logic;
                  Addr : in  std_logic_vector(I_SIZE - 1 downto 0);
                  Dout : out std_logic_vector(I_SIZE - 1 downto 0)
                  );
              
        end component;
begin


        -- instance of DLX
	U1: DLX
        Generic Map (SIZE_IR, SIZE_PC) -- SIZE_ALU_OPC)   
	Port Map (
        Clk=>Clock, 
        rst =>Reset,
        dram_input_data => dram_input_data_s,
        dram_addr=> input_address_S,
        dram_r_en=> read_enable_s,
        dram_w_en=> write_enable_s,
        enable=> enable_S,
        signal_byte=> signal_byte_s,
        dram_out_data=> output_data_s,
    
            -- Instruction Memory
        iram_addr => iram_addr_s,
        iram_data_out =>iram_data_out_s        
        );
	
        Dram_c: data_memory  
                generic map(N_bits=> 8,
                           N_lines=> 512)
                 port Map( input_data=>dram_input_data_s,
                                input_address=> input_address_S,
                                reset=>reset,
                                ck=> clock,
                                read_enable=>read_enable_s,
                                write_enable=> write_enable_s,
                                signal_byte=> signal_byte_s,
                                enable=> enable_S,
                                output_data=> output_data_s);
                iram_c: IRAM 
                generic map (
                        RAM_DEPTH => 512,
                        I_SIZE => 32)
                port map(
                        Rst  =>reset,
                        Addr =>iram_addr_s,
                        Dout =>iram_data_out_s
                        );

        PCLOCK : process(Clock)
	begin
		Clock <= not(Clock) after 0.5 ns;	
	end process;
	
	Reset <= '0', '1' after 6 ns, '0' after 30 ns, '1' after 36 ns;
       

end TEST;

-------------------------------

configuration CFG_TB of tb_dlx  is
	for TEST
	end for;
end CFG_TB;

