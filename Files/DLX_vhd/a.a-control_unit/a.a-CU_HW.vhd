library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.all;
use work.Globals.all;



entity dlx_cu is
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
    
end dlx_cu;



architecture dlx_cu_hw of dlx_cu is

component MUX21_generic is
	generic (N: integer:= 16);
	Port (	A,B: In  std_logic_vector(N-1 downto 0);
			sel:	In	std_logic;
			Y:	Out	std_logic_vector(N-1 downto 0));
end component;

component lookup_table is
       port (
			  -- INPUTS
				OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
				FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);  
				br_taken		   : in  std_logic;
				
				
			  --fetch_signal_1
				EN_PC : out std_logic;
              --fetch signal_2
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
				EN_MULTIPLIER: out std_logic;
				pipeline_select_mux : out std_logic;
				SIGNED_CMP : out std_logic;
              -- mem signals
				EN_MEM             : out std_logic;  -- LMD Register Latch Enable, ALU out latch enable 
				DRAM_WE            : out std_logic;  -- Data RAM Write Enable
				DRAM_RE 		   : out std_logic;
				sel_mem_lr	      : out std_logic;
				MEM_RF_wr	      : out std_logic;
				LU_sel_lb_lw	  : out std_logic_vector(1 downto 0);
			  -- WB signals
				EN_WB	 : out std_logic;
				RF_wr    : out std_logic; 	  -- enables the write port of the register file
				sel_WB 	 : out std_logic);    -- 0=ALU_REG 1=MEM

end component;
	
	component register_n is
		generic(N: integer := 8);
		Port (  D:	In	std_logic_vector(N-1 downto 0);
					CK:     In	std_logic;
					RESET:  In	std_logic;
					ENABLE: In std_logic;
					Q:	Out     std_logic_vector(N-1 downto 0));
	end component;

component demux21 is
	generic (N: integer:= 16);
	Port (	Y: In  std_logic_vector(N-1 downto 0);
			sel:	In	std_logic;
			A,B: out  std_logic_vector(N-1 downto 0));
end component;
	
	
	
    constant CW1_SIZE	       :     integer := 0;
    constant CW2_SIZE	       :     integer := 7;
    constant CW3_SIZE	       :     integer := 14;
	constant CW3_SIZE_mul	   :     integer := 2;
    constant CW4_SIZE	       :     integer := 7;
    constant CW5_SIZE	       :     integer := 3;   
    constant CW_SIZE            :     integer := (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul + CW4_SIZE + CW5_SIZE);  -- Control Word Size
                              
                                
  signal IR_opcode : std_logic_vector(OP_CODE_SIZE -1 downto 0);  -- OpCode part of IR
  signal IR_func   : std_logic_vector(FUNC_SIZE - 1 downto 0);   -- Func part of IR when Rtype
  type  Step_signals_mul is array(MULT_SIZE/2-2 downto 0) of std_logic_vector(CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE) - 1 downto 0);

  -- control word is shifted to the correct stage
  signal cw1   : std_logic_vector(CW_SIZE - 1 downto 0);    -- first stage  		 
  signal cw1_out: std_logic_vector(CW_SIZE - 1 downto 0);    -- first stage  
  signal cw2_out: std_logic_vector(CW_SIZE - 1 - CW1_SIZE downto 0); -- second stage +
  signal cw2_A,cw2_B : std_logic_vector(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE) downto 0); 	 
  signal cw3_out : std_logic_vector(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE) downto 0); -- third stage
  signal cw3_out_mul : Step_signals_mul;	
  signal cw3_out_pipe : std_logic_vector(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul) downto 0);	
  signal cw4_out : std_logic_vector(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul)  downto 0); -- fourth stage 
  signal cw5_out : std_logic_vector(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW4_SIZE + CW3_SIZE_mul) downto 0); -- fifth stage	

  signal aluOpcode_i:  std_logic_vector(ALU_SIZE-1 downto 0);
  
	signal EN_PC_s : std_logic;
	-- IF
	signal EN_IF_s : std_logic;
	signal br_taken_s : std_logic;
	-- ID Control Signals
	signal EN_ID_s , RF_rd1_s, RF_rd2_s,enable_hazard,Rst_hazard,S_EXT_s: std_logic; 
	signal BR_cond_s: std_logic_vector(BR_SIZE-1 DOWNTO 0);
	-- EX Control Signals
	signal EN_EX_s, selA_NPC_s, selB_IMM_s,selALU_COND_s :  std_logic;               
	signal COMP_cond_s:   std_logic_vector(COMP_SIZE-1 downto 0);
	signal ALU_Op_s:  std_logic_vector(ALU_SIZE-1 downto 0);
	signal EN_MULT_s: std_logic;
	signal 	pipeline_select_mux_s : std_logic;
	signal SIGNED_CMP_s : std_logic;

	

	-- MEM Control Signals 
	signal EN_MEM_s, DRAM_WE_s, DRAM_RE_s, sel_mem_lr_s,MEM_RF_wr_s :  std_logic;  -- LMD Register Latch Enable, ALU out latch enable 
	signal LU_sel_lb_lw_s: std_logic_vector(1 DOWNTO 0);
	-- WB Control Signals 
	signal EN_WB_s,RF_wr_s,sel_WB_s	 :  std_logic;

 
begin  -- dlx_cu_rtl

  IR_opcode ( 5 downto 0)  <= IR_in(31 downto 26);
  IR_func   (10 downto 0)  <= IR_in(FUNC_SIZE - 1 downto 0);
  
  
 lut: lookup_table port map (
					-- INPUTS
					OPCODE => IR_opcode,
					FUNC   => IR_func,
					EN_PC => EN_PC_s,
					br_taken => br_taken,
				
					
					-- IF Control Signal
					EN_IF  => EN_IF_s,
					-- ID Control Signals	
					EN_ID  => EN_ID_s,
					RF_rd1 => RF_rd1_s,   
					RF_rd2 => RF_rd2_s,
					BR_cond => BR_cond_s, 
					S_EXT   => S_EXT_s,
					-- EX Control Signals
					EN_EX  => EN_EX_s,                    
					selB_IMM =>  selB_IMM_s,                  
					COMP_cond =>  COMP_cond_s,
					selALU_COND => selALU_COND_s,
					EN_MULTIPLIER => EN_MULT_s,
					pipeline_select_mux => 	pipeline_select_mux_s,
					ALU_Op => ALU_Op_s,
					SIGNED_CMP => SIGNED_CMP_s,
					-- MEM Control Signals 
					EN_MEM => EN_MEM_s,           
					DRAM_WE => DRAM_WE_s,          
					DRAM_RE => DRAM_RE_s,
					sel_mem_lr =>	 sel_mem_lr_s, 
					MEM_RF_wr => MEM_RF_wr_s,
					LU_sel_lb_lw => LU_sel_lb_lw_s,
					-- WB Control signals
					EN_WB => EN_WB_s,	 
					RF_wr => RF_wr_s,  
					sel_WB => sel_WB_s ); 	 
					
					
      
	
	
	hazard_proc: process(load_interlock,struct_interlock,EN_PC_s,EN_IF_s) 
	begin
		if ( load_interlock= '1') or ( struct_interlock= '1')  then 	
			EN_PC <= '0';
			EN_IF<=  '0';
			enable_hazard<= '0';
		else
			EN_PC <= EN_PC_s;
			EN_IF<=  EN_IF_s;
			enable_hazard<= enable;
		end if;			
	end process;
	
	Rst_hazard <= Rst and not(load_interlock);

	cw1<= (EN_ID_s)&(RF_rd1_s)&(RF_rd2_s)&(BR_cond_s)&(S_EXT_s)&(EN_EX_s)&(selB_IMM_s)&(COMP_cond_s)&(selALU_COND_s)&(ALU_Op_s)&(SIGNED_CMP_s)&(EN_MULT_s)&(pipeline_select_mux_s)&(EN_MEM_s)&(DRAM_WE_s)&(DRAM_RE_s)&(sel_mem_lr_s)&(MEM_RF_wr_s)&(LU_sel_lb_lw_s)&(EN_WB_s)&(RF_wr_s)&(sel_WB_s);
 
  --  reg_1: register_n
--	generic map(N=>CW_SIZE) 
--	port map (
 --              D    => cw1,
 --              CK    => Clk,
--			   RESET => Rst,
--			   ENABLE => enable,
 --              Q => cw1_out
  --             );
                                 
    reg_2: register_n
	generic map(N=>CW_SIZE- CW1_SIZE) 
	port map (
               D    => cw1(CW_SIZE - 1 - CW1_SIZE downto 0),
               CK    => Clk,
			   RESET => Rst,
			   ENABLE => enable_hazard,
               Q => cw2_out
               );
    EN_ID  <= cw2_out(CW_SIZE - CW1_SIZE - 1) and not(load_interlock);
	RF_rd1 <= cw2_out(CW_SIZE - CW1_SIZE - 2);  
	RF_rd2 <= cw2_out(CW_SIZE - CW1_SIZE - 3);   
	BR_cond <= cw2_out(CW_SIZE - CW1_SIZE - 4 downto CW_SIZE - (CW1_SIZE) - (3 + BR_SIZE));    
	S_EXT  <=  cw2_out( CW_SIZE - (CW1_SIZE) - (4 + BR_SIZE)); 

	-- Multiplexer to choose where to propagare control signals


	demux_EX: demux21 generic map(N=>CW_SIZE  - (CW1_SIZE + CW2_SIZE))  
				  port map (
					  Y => cw2_out(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE) downto 0),
					  sel => cw2_out(CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE) - 2),
					  A => cw2_A,
					  B => cw2_B
				  );
	

    
    reg_3: register_n
	generic map(N=>CW_SIZE  - (CW1_SIZE + CW2_SIZE)) 
	port map (
               D    => cw2_A(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE) downto 0),
               CK    => Clk,
			   RESET => Rst_hazard,
			   ENABLE => enable_hazard,
               Q => cw3_out
               );
               
     EN_EX  <= cw3_out(CW_SIZE - (CW1_SIZE + CW2_SIZE) - 1);                     
	 selB_IMM <=  cw3_out(CW_SIZE - (CW1_SIZE + CW2_SIZE) - 2);                 
	 COMP_cond <=  cw3_out(CW_SIZE - (CW1_SIZE + CW2_SIZE) - 3 downto CW_SIZE - (CW1_SIZE + CW2_SIZE) - (2 + COMP_SIZE));
	 selALU_COND <= cw3_out(CW_SIZE - (CW1_SIZE + CW2_SIZE) - (3 + COMP_SIZE)) ;
	 ALU_Op <= cw3_out(CW_SIZE - (CW1_SIZE + CW2_SIZE) - (4 + COMP_SIZE) downto CW_SIZE - (CW1_SIZE + CW2_SIZE) - (3 + COMP_SIZE + ALU_SIZE));
	 SIGNED_CMP <= cw3_out(CW_SIZE - (CW1_SIZE + CW2_SIZE) - (4 + COMP_SIZE + ALU_SIZE));
    
	
	mul: for j in 0 to (MULT_SIZE)/(2)-2 generate 
	begin 
		   
	    row0 : 	if j = 0 generate
	   		reg_3_mul_0 : register_n
			generic map(N=>CW_SIZE  - (CW1_SIZE + CW2_SIZE + CW3_SIZE)) 
			port map (
        		D    => cw2_B(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE + CW3_SIZE) downto 0),
            	CK    => Clk,
				RESET => Rst_hazard,
				ENABLE => enable_hazard,
            	Q => cw3_out_mul(j)
               	);	
				   
	    end generate row0;

		row_j : if j > 0 generate
			reg_3_mul_j : register_n
			generic map(N=>CW_SIZE  - (CW1_SIZE + CW2_SIZE + CW3_SIZE)) 
			port map (
				D    => cw3_out_mul(j-1),
				CK    => Clk,
				RESET => Rst,
				ENABLE => enable,
				Q => cw3_out_mul(j)
			    );
	    end generate row_j;

		EN_MULTIPLIER(j)<=cw3_out_mul(j)(CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE) - 1);
	end generate;
	mux_pipe: MUX21_generic
		generic map (N=> CW_SIZE  - (CW1_SIZE + CW2_SIZE + CW3_SIZE+ CW3_SIZE_mul))
				Port map (	
				A => cw3_out_mul((MULT_SIZE)/(2)-2)(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul)  downto 0),
				B=> cw3_out(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul)  downto 0),
				sel=>	cw3_out_mul((MULT_SIZE)/(2)-2)(CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE) - 2),
				Y=> cw3_out_pipe
				);				   
				
    reg_4: register_n
	generic map(N=>CW_SIZE  - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul)) 
	port map (
               D    => cw3_out_pipe,
               CK    => Clk,
			   RESET => Rst,
			   ENABLE => enable,
               Q => cw4_out
               );
               
    EN_MEM  <= cw4_out (CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul) - 1);         
	DRAM_WE <= cw4_out (CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul) - 2);        
	DRAM_RE <= cw4_out (CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul) - 3); 
    sel_mem_lr <= cw4_out(CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul) - 4);
    MEM_RF_wr <= cw4_out(CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul) - 5);
	CU_sel_lb_lw <= cw4_out((CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul) - 6) downto (CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul) - 7));
	
    reg_5: register_n
	generic map(N=>CW_SIZE  - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW4_SIZE + CW3_SIZE_mul)) 
	port map (
               D    => cw4_out(CW_SIZE - 1 - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul + CW4_SIZE) downto 0),
               CK    => Clk,
			   RESET => Rst,
			   ENABLE => enable, 
               Q => cw5_out
               );
          
     EN_WB <= cw5_out(CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul + CW4_SIZE) - 1);	 
	 RF_wr <= cw5_out(CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul + CW4_SIZE) - 2); 
	 sel_WB <= cw5_out(CW_SIZE - (CW1_SIZE + CW2_SIZE + CW3_SIZE + CW3_SIZE_mul + CW4_SIZE) - 3);        
               
end dlx_cu_hw;
