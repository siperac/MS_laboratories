library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.all;
use work.Globals.all;
--use work.myTypes.all;
--use work.alu_type.all;
--use work.compare_type.all;
--use work.branch_type.all;
--use ieee.numeric_std.all;
use ieee.numeric_std.all;




entity lookup_table is
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
				EN_MULTIPLIER: out std_logic;				-- enable multiplier
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

end lookup_table;

architecture behv of lookup_table is 
begin

	process(OPCODE, FUNC,br_taken)
	begin
		EN_PC<='0';																											-- first
		EN_IF<= '0' ;																										-- second
		EN_ID<='0';RF_rd1<= '0' ;RF_rd2 <= '0' ; BR_cond<=NO_BR; S_EXT <= '1';												-- third
		EN_EX <= '0';selB_IMM  <= '0'; ALU_Op <=NOP_ALU; COMP_cond<=NO_COMP; selALU_COND<='0'; SIGNED_CMP<= '1';			-- fourth
		EN_MULTIPLIER<='0'; pipeline_select_mux<= '0';																					-- execute in parallel
		EN_MEM <= '0';DRAM_WE <= '0'; DRAM_RE<='0'; sel_mem_lr <= '0';	MEM_RF_wr <= '0'; LU_sel_lb_lw <= "00";					-- fifth
		EN_WB<= '0'; RF_wr<='0'; sel_WB<='0';
														-- sixth
			CASE OPCODE is 
				WHEN RTYPE =>			-- R-types 
					CASE FUNC is
						WHEN  RTYPE_ADD =>	EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=ADD;																											
											EN_MEM <= '1';MEM_RF_wr <= '1';		 
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0'; 						
												    
						WHEN  RTYPE_SUB => 	EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=work.Globals.SUB;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';		
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

						WHEN  RTYPE_AND =>  EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=BITAND;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_OR  =>  EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=BITOR;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_XOR  =>  EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=BITXOR;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_SGE  =>  EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; COMP_cond<=GE_COMP; selALU_COND<='1'; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_SLE  =>  EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; COMP_cond<=LE_COMP; selALU_COND<='1'; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_SLL  =>  EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=FUNCLSL;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_SNE  =>  EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; COMP_cond<=NE_COMP; selALU_COND<='1'; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_SRL  =>  EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=FUNCLSR;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_ADDU  =>  EN_PC <= '1';													
											  EN_IF<= '1' ;
											  EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											  EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=ADD;																											
											  EN_MEM <= '1';MEM_RF_wr <= '1';		 
											  EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_SUBU  =>  EN_PC <= '1';													
											  EN_IF<= '1' ;
											  EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											  EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=work.Globals.SUB;																											
											  EN_MEM <= '1';MEM_RF_wr <= '1';		 
											  EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_SEQ  =>   EN_PC <= '1';													
											  EN_IF<= '1' ;
											  EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											  EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=NOP_ALU; COMP_cond<=EQ_COMP; selALU_COND<='1';																											
											  EN_MEM <= '1';MEM_RF_wr <= '1';		 
											  EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_SGT  =>   EN_PC <= '1';													
											  EN_IF<= '1' ;
											  EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											  EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=NOP_ALU; COMP_cond<=G_COMP; selALU_COND<='1';																											
											  EN_MEM <= '1';MEM_RF_wr <= '1';		 
											  EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
						WHEN  RTYPE_SLT  =>   EN_PC <= '1';													
											  EN_IF<= '1' ;
											  EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											  EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=NOP_ALU; COMP_cond<=L_COMP; selALU_COND<='1';																											
											  EN_MEM <= '1';MEM_RF_wr <= '1';		 
											  EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

						WHEN  RTYPE_SGEU  =>   EN_PC <= '1';													
											  EN_IF<= '1' ;
											  EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											  EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=NOP_ALU; COMP_cond<=GE_COMP; selALU_COND<='1';SIGNED_CMP<= '0';																											
											  EN_MEM <= '1';MEM_RF_wr <= '1';		 
											  EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

						WHEN  RTYPE_SGTU  =>   EN_PC <= '1';													
											  EN_IF<= '1' ;
											  EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											  EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=NOP_ALU; COMP_cond<=G_COMP; selALU_COND<='1';SIGNED_CMP<= '0';																									
											  EN_MEM <= '1';MEM_RF_wr <= '1';		 
											  EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

						WHEN  RTYPE_SLTU  =>   EN_PC <= '1';													
											  EN_IF<= '1' ;
											  EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											  EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=NOP_ALU; COMP_cond<=L_COMP; selALU_COND<='1';	SIGNED_CMP<= '0';																										
											  EN_MEM <= '1';MEM_RF_wr <= '1';		 
											  EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

						WHEN  RTYPE_SRA  =>   EN_PC <= '1';													
											  EN_IF<= '1' ;
											  EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											  EN_EX <= '1';selB_IMM  <= '0'; ALU_Op <=FUNCSRA;																											
											  EN_MEM <= '1'; MEM_RF_wr <= '1';	
											  EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

											  
			
											
						WHEN others => 		EN_PC<='1';		EN_IF<= '1';							
																						-- 					
					END CASE;	

				WHEN RTYPE_MULT_OP =>			EN_PC <= '1';	--func not necessary  no operation has same opcode as mult
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1'; RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '0'; EN_MULTIPLIER <='1';	pipeline_select_mux<='1';																										
											EN_MEM <= '1';MEM_RF_wr <= '1';		 
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0'; 

				WHEN ITYPE_ADDI =>		    EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;				
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=ADD;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

			    WHEN  ITYPE_ADDUI  => 		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;  S_EXT <= '0';					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=ADD;																											
											EN_MEM <= '1';MEM_RF_wr <= '1';		 
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0'; 	
																		
				WHEN ITYPE_SUBI => 			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=work.Globals.SUB;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';	

				WHEN  ITYPE_SUBUI  => 		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;  S_EXT <= '0';					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=work.Globals.SUB;																											
											EN_MEM <= '1';MEM_RF_wr <= '1';		 
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0'; 
				
				WHEN ITYPE_ANDI =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=BITAND;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';	
				
				WHEN ITYPE_ORI =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=BITOR;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
											
				WHEN ITYPE_XORI =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=BITXOR;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';							
											
				WHEN ITYPE_BNEZ =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;  BR_cond<=BNEZ;					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=ADD; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

				WHEN ITYPE_BEQZ =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;	BR_cond<=BEQZ;				
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=ADD; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';			

				WHEN  ITYPE_SGEI  =>  		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; COMP_cond<=GE_COMP; selALU_COND<='1'; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

			    WHEN  ITYPE_SGEUI  =>  		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ; S_EXT <= '0';					
											EN_EX <= '1';selB_IMM  <= '1'; COMP_cond<=GE_COMP; selALU_COND<='1'; SIGNED_CMP<= '0';																										
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

				WHEN  ITYPE_SGTUI  =>  		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ; S_EXT <= '0';				
											EN_EX <= '1';selB_IMM  <= '1'; COMP_cond<=G_COMP; selALU_COND<='1'; SIGNED_CMP<= '0';																										
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

				WHEN  ITYPE_SLTUI  =>  		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ; S_EXT <= '0';				
											EN_EX <= '1';selB_IMM  <= '1'; COMP_cond<= L_COMP; selALU_COND<='1'; SIGNED_CMP<= '0';																										
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

				WHEN  ITYPE_SLEI  =>  		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; COMP_cond<=LE_COMP; selALU_COND<='1'; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

				WHEN  ITYPE_SLLI  =>  		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=FUNCLSL;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

			    WHEN  ITYPE_SRAI  =>        EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1';					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=FUNCSRA;																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
											
				WHEN  ITYPE_SNEI  => 		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; COMP_cond<=NE_COMP; selALU_COND<='1'; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

				WHEN  ITYPE_SEQI  => 		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; COMP_cond<=EQ_COMP; selALU_COND<='1'; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';
				
				WHEN  ITYPE_SGTI  => 		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; COMP_cond<=G_COMP; selALU_COND<='1'; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';

				WHEN  ITYPE_SLTI  => 		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; COMP_cond<=L_COMP; selALU_COND<='1'; 																											
											EN_MEM <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1'; sel_WB <= '0';	
				
				WHEN  ITYPE_SRLI  =>  		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=FUNCLSR;																											
											EN_MEM <= '1'; sel_mem_lr <= '0';MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1';sel_WB <= '0';

			    WHEN  ITYPE_LHI  =>  		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=FUNCLHI;																											
											EN_MEM <= '1'; sel_mem_lr <= '0';MEM_RF_wr <= '1';	
											EN_WB<= '1'; RF_wr<='1';sel_WB <= '0';

											
				WHEN ITYPE_SW =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ; RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=ADD;																											
											EN_MEM <= '1'; DRAM_WE <= '1';
											EN_WB<= '1';sel_WB <= '0';
													
				WHEN ITYPE_LW =>	   		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ; RF_rd2 <= '1' ;				
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=ADD;																											
											EN_MEM <= '1'; DRAM_RE <= '1';MEM_RF_wr <= '1';	
											EN_WB<= '1';RF_wr<='1'; sel_WB <= '1';
				
				WHEN JTYPE_JAL =>	 		EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';	BR_cond<=JUMP;
											EN_EX <= '1';selB_IMM <= '1'; ALU_Op <=ADD; selALU_COND<='0';																											
											EN_MEM <= '1'; sel_mem_lr <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1';RF_wr<='1';sel_WB <= '1';
											
				WHEN JTYPE_JUMP =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';	BR_cond<=JUMP;				
											EN_EX <= '1';selB_IMM <= '1'; ALU_Op <=ADD;  selALU_COND<='0';																											
											EN_MEM <= '1';MEM_RF_wr <= '1';	
											EN_WB<= '1';RF_wr<='1';sel_WB <= '0';

				WHEN JTYPE_JALR =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';	BR_cond<=JUMP_R; RF_rd1 <= '1' ;
											EN_EX <= '1';selB_IMM <= '1'; ALU_Op <=ADD; selALU_COND<='0';																											
											EN_MEM <= '1'; sel_mem_lr <= '1'; MEM_RF_wr <= '1';	
											EN_WB<= '1';RF_wr<='1';sel_WB <= '1';
	
				WHEN JTYPE_JR =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1'; BR_cond<=JUMP_R; RF_rd1 <= '1' ;			
											EN_EX <= '1';selB_IMM <= '1'; ALU_Op <=ADD;  selALU_COND<='0';																											
											EN_MEM <= '1';MEM_RF_wr <= '1';	
											EN_WB<= '1';RF_wr<='1';sel_WB <= '0';

				when ITYPE_LB => 			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ; RF_rd2 <= '1' ;				
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=ADD;																											
											EN_MEM <= '1'; DRAM_RE <= '1';MEM_RF_wr <= '1';	LU_sel_lb_lw<="01";
											EN_WB<= '1';RF_wr<='1'; sel_WB <= '1';

				when ITYPE_LBU =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ; RF_rd2 <= '1' ;				
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=ADD;																											
											EN_MEM <= '1'; DRAM_RE <= '1';MEM_RF_wr <= '1';	LU_sel_lb_lw<="10";
											EN_WB<= '1';RF_wr<='1'; sel_WB <= '1';

				when ITYPE_LHU =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ; RF_rd2 <= '1' ;				
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=ADD;																											
											EN_MEM <= '1'; DRAM_RE <= '1';MEM_RF_wr <= '1';	LU_sel_lb_lw<="11";
											EN_WB<= '1';RF_wr<='1'; sel_WB <= '1';

				WHEN ITYPE_SB =>			EN_PC <= '1';													
											EN_IF<= '1' ;
											EN_ID<='1';RF_rd1<= '1' ; RF_rd2 <= '1' ;					
											EN_EX <= '1';selB_IMM  <= '1'; ALU_Op <=ADD; 																											
											EN_MEM <= '1'; DRAM_WE <= '1';LU_sel_lb_lw<="01";
											EN_WB<= '1';sel_WB <= '0';


																						
				WHEN others => 				EN_PC<='1';	EN_IF<= '1';							
		END CASE;
		
		
		if br_taken	= '1' then		
					EN_PC<='1';	EN_IF<= '1';																					-- second
					EN_ID<='0';RF_rd1<= '0' ;RF_rd2 <= '0' ; BR_cond<=NO_BR; S_EXT <= '1';														-- third
					EN_EX <= '0';selB_IMM  <= '0'; ALU_Op <=NOP_ALU; COMP_cond<=NO_COMP; selALU_COND<='0';	-- fourth
					EN_MEM <= '0';DRAM_WE <= '0'; DRAM_RE<='0'; sel_mem_lr <= '0';	MEM_RF_wr <= '0';									-- fifth
					EN_WB<= '0'; RF_wr<='0'; sel_WB<='0';

		end if;	

	end process;
end behv;
