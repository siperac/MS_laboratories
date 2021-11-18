library ieee;
use ieee.std_logic_1164.all;
use work.all;
use work.Globals.all;


entity DLX is
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
	iram_data_out : in std_logic_vector(IR_SIZE - 1 downto 0));
end DLX;


--
architecture dlx_rtl of DLX is

 --------------------------------------------------------------------
 -- Components Declaration
 --------------------------------------------------------------------
  


  -- Datapath
  component DataPath is 
	generic (N: integer:= 10);
	port (
		--INPUT 
		DRAM_to_LMD: in std_logic_vector(31 downto 0);
		PC_to_DP: in std_logic_vector(31 downto 0);
		IR_to_DP: in std_logic_vector(31 downto 0);
		
		-- Control Signals-------------		
		-- IF Control Signal
		EN_IF : in std_logic;		
		-- ID Control Signals
		EN_ID    : in std_logic;   
		RF_rd1   : in std_logic;     
		RF_rd2   : in std_logic;
		br_cond  : in std_logic_vector(BR_SIZE-1 downto 0); 
		S_EXT    : in std_logic;		
		-- EX Control Signals
		EN_EX    : in std_logic;                          
		selB_IMM     : in std_logic;               
		COMP_cond: in  std_logic_vector(COMP_SIZE-1 downto 0);
		selALU_COND : in std_logic;
		ALU_Op: in std_logic_vector(ALU_SIZE-1 downto 0);   
		EN_MULTIPLIER : in std_logic_vector(MULT_SIZE/2-2 downto 0); 
		SIGNED_CMP : in std_logic;  
		-- MEM Control Signals 
		EN_MEM             : in std_logic;   
		sel_mem_lr	   	   : in std_logic;  
		MEM_RF_wr : in std_logic; 
		CU_sel_lb_lw: in std_logic_vector (1 DOWNTO 0);	
		-- WB Control signals
		EN_WB	 		   : in std_logic;
		RF_wr    		   : in std_logic;   
		sel_WB 	 		   : in std_logic;
		----------------------------------			
		rst 			   : in std_logic; 
		clk 			   : in std_logic;
		-- Outputs
		SEL_BR : out std_logic;
		load_interlock: out std_logic;
		struct_interlock: out std_logic;
		REGB_to_DRAM: out std_logic_vector(31 downto 0);
		ALU_to_DRAM: out std_logic_vector(31 downto 0);
		NPC_to_PC: out std_logic_vector(31 downto 0)
    );
	end component;
  
  -- Control Unit
  component dlx_cu is
	generic (
	  FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
	  OP_CODE_SIZE       :     integer := 6;  -- Op Code Size
	  -- ALU_OPC_SIZE       :     integer := 6;  -- ALU Op Code Word Size
	  IR_SIZE            :     integer := 32);  -- Instruction Register Size   
	  port (  
		-- Input Signals 
		clk                : in  std_logic;  -- Clock
		rst                : in  std_logic;  -- Reset:Active-Low
		enable 			   : in  std_logic;
		IR_in              : in  std_logic_vector(IR_SIZE - 1 downto 0); -- Instruction Register
		br_taken		   : in  std_logic; 
		load_interlock	   : in  std_logic; 
		struct_interlock	: in  std_logic;
	  
		-- Output Signals
		EN_PC : out std_logic;
		-- IF Control Signal
		EN_IF : out std_logic;  -- Enables NPC register
		
			
		-- decode signals
		EN_ID    : out std_logic;   -- Enables RF, A, B, IMM 
		RF_rd1   : out std_logic;   -- enables the read port 1 of the register file
		RF_rd2   : out std_logic;   -- enables the read port 2 of the register file
		BR_cond : out std_logic_vector(BR_SIZE-1 downto 0);
		S_EXT    : out std_logic;
		 -- execute signals
		EN_EX    : out std_logic;   	            -- enables the pipe registers
		selB_IMM     : out std_logic;               -- 0=B 1=IMM
		COMP_cond: out  std_logic_vector(COMP_SIZE-1 downto 0);
		selALU_COND : out std_logic;				-- 0=ALU 1=CONDITION
		ALU_Op: out std_logic_vector(ALU_SIZE-1 downto 0);
		EN_MULTIPLIER: out std_logic_vector(MULT_SIZE/2-2 downto 0);				-- enable multiplier
		SIGNED_CMP : out std_logic;
		-- mem signals
		EN_MEM             : out std_logic;  -- LMD Register Latch Enable, ALU out latch enable 
		DRAM_WE            : out std_logic;  -- Data RAM Write Enable
		DRAM_RE 		   : out std_logic;
		sel_mem_lr	   : out std_logic;
		MEM_RF_wr	      : out std_logic;
		CU_sel_lb_lw: out std_logic_vector(1 downto 0);
		--JUMP_EN            : out std_logic;  -- JUMP Enable Signal for PC input MUX ?
		--PC_LATCH_EN        : out std_logic;  -- Program Counte Latch Enable ?
	
		-- WB Control signals
		EN_WB	 : out std_logic;
		RF_wr    : out std_logic;   -- enables the write port of the register file
		sel_WB 	 : out std_logic);
	  
  	end component;


  ----------------------------------------------------------------
  -- Signals Declaration
  ----------------------------------------------------------------
  
  -- Instruction Register (IR) and Program Counter (PC) declaration
  signal IR : std_logic_vector(IR_SIZE - 1 downto 0);
  signal reset_reg : std_logic;
  signal PC : std_logic_vector(PC_SIZE - 1 downto 0);

  -- Instruction Ram Bus signals
  signal IRam_DOut : std_logic_vector(IR_SIZE - 1 downto 0);

  -- Datapath Bus signals
  signal PC_BUS : std_logic_vector(PC_SIZE -1 downto 0);
--------------------------------------------------------------------
  -- Control Unit Bus signals
  
  	signal EN_PC_s : std_logic;
    -- IF Control Signal
	signal EN_IF_s : std_logic;
    -- ID Control Signals
    signal EN_ID_s : std_logic;    
    signal RF_rd1_s   :  std_logic;  
    signal RF_rd2_s   : std_logic;
    signal SEL_BR_s	  :std_logic;
    signal br_cond_s : std_logic_vector(BR_SIZE-1 downto 0);
	signal S_EXT_s    :  std_logic;
    -- EX Control Signals
    signal EN_EX_s    : std_logic;                      
    signal selB_IMM_s     : std_logic;     
    signal comp_cond_s:  std_logic_vector(COMP_SIZE-1 downto 0);
	signal selALU_COND_s : std_logic;
	signal ALU_Op_s: std_logic_vector(ALU_SIZE-1 downto 0);
	signal EN_MULTIPLIER_s: std_logic_vector(MULT_SIZE/2-2 downto 0);
	signal SIGNED_CMP_s :  std_logic;
    -- MEM Control Signals 
    signal EN_MEM_s: std_logic;  
    signal sel_mem_lr_s: std_logic;
    signal MEM_RF_wr_s: std_logic;
	signal CU_sel_lb_lw_s: std_logic_vector(1 downto 0); 
    -- WB Control Signals
    signal EN_WB_s: std_logic;
    signal RF_wr_s:  std_logic;
    signal sel_WB_s: std_logic;
    signal load_interlock_s, struct_interlock_s: std_logic;
  --signal control_word_s: std_logic_vector (9 downto 0);
-------------------------------------------------------------

  -- Data Ram Bus signals
  signal DRAM_WE_s : std_logic;
  signal DRAM_RE_s : std_logic;
  signal ALU_to_DRAM_s, REGB_to_DRAM_s, DRAM_to_LMD_s: std_logic_vector (31 downto 0);

  begin  -- DLX

    -- This is the input to program counter: currently zero 
    -- so no uptade of PC happens
    -- TO BE REMOVED AS SOON AS THE DATAPATH IS INSERTED!!!!!
    -- a proper connection must be made here if more than one
    -- instruction must be executed
	datapath_comp: DataPath generic map (N => 10)
	port map (-- Inputs 
				DRAM_to_LMD => dram_out_data,
				PC_to_DP => PC,
				IR_to_DP => IR,
			-- IF Control Signal
				EN_IF =>EN_IF_s,		
			-- ID Control Signals
				EN_ID =>  EN_ID_s,  
				RF_rd1=>RF_rd1_s,     
				RF_rd2=>RF_rd2_s,
				br_cond => br_cond_s,
				S_EXT => S_EXT_s,
			-- EX Control Signals
				EN_EX=>EN_EX_s,          
				selB_IMM =>   selB_IMM_s,            
				comp_cond=>comp_cond_s,
				selALU_COND=>selALU_COND_s,
				ALU_Op=>ALU_Op_s,
				EN_MULTIPLIER=> EN_MULTIPLIER_s,
				SIGNED_CMP => SIGNED_CMP_s,
			-- MEM Control Signals 
				EN_MEM=>EN_MEM_s,
				sel_mem_lr=>  sel_mem_lr_s,
				MEM_RF_wr=> MEM_RF_wr_s,
				CU_sel_lb_lw=>CU_sel_lb_lw_s,

			-- WB Control signals
				EN_WB=>EN_WB_s,
				RF_wr=>RF_wr_s,   
				sel_WB=>sel_WB_s,
				rst =>rst,
				clk => clk,
			-- Outputs
				SEL_BR => SEL_BR_s,
				load_interlock=> load_interlock_s,
				struct_interlock=> struct_interlock_s,
				REGB_to_DRAM=> REGB_to_DRAM_s,
				ALU_to_DRAM=>ALU_to_DRAM_s,
				NPC_to_PC=>PC_BUS);
				
				

    IR_P: process (Clk, Rst)
    begin  -- process IR_P
      if Clk = '1' and Rst = '0' then                 -- asynchronous reset (active low)
        IR <= (others => '0');
      elsif Clk'event and Clk = '1' then  -- rising clock edge
        if (EN_IF_s = '1') then
          IR <= iram_data_out;
        end if;
      end if;
    end process IR_P;
    
    
	dram_input_data <= REGB_to_DRAM_s;
	dram_addr <= ALU_to_DRAM_s;
	dram_r_en <= DRAM_RE_s;
	dram_w_en <= DRAM_WE_s;
	enable <= DRAM_RE_s or DRAM_WE_s;
	signal_byte <= CU_sel_lb_lw_s;




    PC_P: process (Clk, Rst)
    begin  -- process PC_P
      if Rst = '0' then                 -- asynchronous reset (active low)
        PC <= (others => '0');
      elsif Clk'event and Clk = '1' then  -- rising clock edge
        if (EN_PC_s = '1') then
          PC <= PC_BUS;
        end if;
      end if;
    end process PC_P;

    -- Control Unit Instantiation
control_unit_comp: dlx_cu generic map (
				FUNC_SIZE=> 11,
				OP_CODE_SIZE=> 6,
				IR_SIZE=> IR_SIZE)
			port map (
			-- Input Signals 
			clk => clk,
			rst=> rst,
			enable=>'1',
			IR_in=>iram_data_out,
			br_taken => SEL_BR_s,
			load_interlock	=>	load_interlock_s,
			struct_interlock => struct_interlock_s,
			
			EN_PC=> EN_PC_s,
			EN_IF=> EN_IF_s,
			EN_ID=> EN_ID_s,     
			RF_rd1=> RF_rd1_s,     
			RF_rd2=>RF_rd2_s,
			br_cond => br_cond_s,
			S_EXT => S_EXT_s,
			EN_EX=> EN_EX_s,                   
			selB_IMM=>selB_IMM_s,     
			comp_cond =>comp_cond_s,
			selALU_COND=>selALU_COND_s ,
			ALU_Op=>ALU_Op_s,
			EN_MULTIPLIER=>EN_MULTIPLIER_s,
			SIGNED_CMP => SIGNED_CMP_s,
			EN_MEM=> EN_MEM_s, 
			CU_sel_lb_lw=> CU_sel_lb_lw_s,
			DRAM_WE=>DRAM_WE_s,
			DRAM_RE=>DRAM_RE_s,
			MEM_RF_wr=>MEM_RF_wr_s,
			sel_mem_lr=>sel_mem_lr_s, 
			EN_WB=>EN_WB_s,
			RF_wr=> RF_wr_s,
			sel_WB=>sel_WB_s);


iram_addr <= PC;

    
end dlx_rtl;
