library ieee;
use ieee.std_logic_1164.all;

    
package Globals is


	-- BR control types  from CU 
	constant BR_SIZE : integer := 3;
    constant MULT_SIZE : integer := 32;   
    constant JUMP_R  :  std_logic_vector( BR_SIZE-1 downto 0)  := "100";               
	constant JUMP  :  std_logic_vector( BR_SIZE-1 downto 0)  := "011";
    constant BNEZ  :  std_logic_vector( BR_SIZE-1 downto 0)  := "001";
    constant BEQZ  :  std_logic_vector( BR_SIZE-1 downto 0)  := "010";
    constant NO_BR  :  std_logic_vector( BR_SIZE-1 downto 0)  := "000";

    type  Step_signals_mul_addr is array(MULT_SIZE/2-2 downto 0) of std_logic_vector(4 downto 0);
	
	-- ALU control yypes from CU
    constant ALU_SIZE : integer :=  6;   
       
    constant NOP_ALU: std_logic_vector(ALU_SIZE - 1 downto 0)    :="000000"; 
    constant ADD : std_logic_vector(ALU_SIZE - 1 downto 0)   :="000010";     
    constant SUB : std_logic_vector(ALU_SIZE - 1 downto 0)   :="000011";     
    constant BITAND : std_logic_vector(ALU_SIZE - 1 downto 0):="000100"; 
    constant BITOR : std_logic_vector(ALU_SIZE - 1 downto 0) :="000101";
	constant BITXOR : std_logic_vector(ALU_SIZE - 1 downto 0):="000110"; 
    constant FUNCLSL: std_logic_vector(ALU_SIZE - 1 downto 0):="000111";
    constant FUNCRL : std_logic_vector(ALU_SIZE - 1 downto 0):="001000"; 
    constant FUNCRR : std_logic_vector(ALU_SIZE - 1 downto 0):="001001";
    constant FUNCLSR: std_logic_vector(ALU_SIZE - 1 downto 0):="001010"; 

    -- Additional instructions 

    constant FUNCSRA: std_logic_vector(ALU_SIZE - 1 downto 0):="001011";
    constant FUNCLHI: std_logic_vector(ALU_SIZE - 1 downto 0):="001100";
 
    
    -- COMPARE control types from CU
    
    constant COMP_SIZE : integer := 4;      
	constant NO_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0) := "0000"; -- Used in case no comparison has to be performed.
	constant J_COMP   :  std_logic_vector( COMP_SIZE-1 downto 0) := "0001"; -- Used for jump. The comparator shows 1 at the output.
	constant EQ_COMP :  std_logic_vector( COMP_SIZE-1 downto 0) := "0010";  
	constant NE_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0) := "0011";
    constant GE_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0) := "0100";
    constant LE_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0) := "0101";
    constant L_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0)  := "0110";
    constant G_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0)  := "0111";
    constant BNEZ_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0)  := "1000";
    constant BEQZ_COMP  :  std_logic_vector( COMP_SIZE-1 downto 0)  := "1001";
    
   
    -- List of the instruction opcodes 
   
    constant OP_CODE_SIZE : integer :=  6;                                              -- OPCODE field size
    constant FUNC_SIZE    : integer :=  11;                                             -- FUNC field size

	-- R-Type instruction -> FUNC field
    constant RTYPE_ADD : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000100000";    -- ADD RS1,RS2,RD
    constant RTYPE_SUB : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000100010";    -- SUB RS1,RS2,RD
    constant RTYPE_AND : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000100100";    -- SUB RS1,RS2,RD
    constant RTYPE_OR : std_logic_vector(FUNC_SIZE - 1 downto 0) :=   "00000100101";    -- SUB RS1,RS2,RD
    constant RTYPE_XOR : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000100110";    -- SUB RS1,RS2,RD
    constant RTYPE_SGE : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000101101";    -- SGE R1,R2,R3
	constant RTYPE_SLE : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000101100";    -- SLE R1,R2,R3
	constant RTYPE_SLL : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000100";    -- SLL R1,R2,R3
	constant RTYPE_SNE : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000101001";    -- SNE R1,R2,R3
	constant RTYPE_SRL : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000110";    -- SRL R1,R2,R3

    -- Additional  instructions

    constant RTYPE_ADDU : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000100001";   
    constant RTYPE_SUBU : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000100011";

    constant RTYPE_SEQ : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000101000";
    constant RTYPE_SGT : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000101011";
    constant RTYPE_SLT : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000101010";

    constant RTYPE_SGEU : std_logic_vector(FUNC_SIZE - 1 downto 0) := "00000111101";
    constant RTYPE_SGTU : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000111011";
    constant RTYPE_SLTU : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000111010";
    
    constant RTYPE_SRA : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000111";
    
--R-Type instruction -> OPCODE field for MULTIPLICATION
    constant RTYPE_MULT_OP : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000001";
--R-Type instruction -> FUNC field for MULTIPLICATION
    constant RTYPE_MULT_FUNC : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000001110";

--J-Type instruction -> OPCODE field     
    constant JTYPE_JUMP : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000010";    
    constant JTYPE_JAL : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000011";
   

    -- Additional Instructions
    constant JTYPE_JALR : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "010011";    
    constant JTYPE_JR : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "010010";     

-- R-Type instruction -> OPCODE field
    constant RTYPE : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000000";          -- for ADD, SUB, AND, OR register-to-register operation

-- I-Type instruction -> OPCODE field

	
    constant ITYPE_MIN : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000100"; 
    
    constant ITYPE_ADDI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001000";  
    
    constant ITYPE_SUBI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001010";    
    
    constant ITYPE_ANDI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001100";    
    constant ITYPE_ORI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001101";
    constant ITYPE_XORI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001110";   
    
    
    constant ITYPE_BNEZ : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000101";    
    constant ITYPE_BEQZ : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000100";   
    
    constant ITYPE_SGEI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "011101";  
    constant ITYPE_SLEI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=   "011100";    
    

    
    constant ITYPE_SLLI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "010100";    
    constant ITYPE_SNEI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "011001";   
    
    constant ITYPE_SRLI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "010110";    
    constant ITYPE_SW : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "101011";   
    constant ITYPE_LW : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "100011";    
    
    constant NOP : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "010101";
    
    
    constant ITYPE_MAX : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "111101";

    
 
    -- Additional instructions

  
    constant ITYPE_ADDUI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001001";
    constant ITYPE_SUBUI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001011";    
 
   
    constant ITYPE_SEQI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "011000";
    constant ITYPE_SGTI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "011011";
    constant ITYPE_SLTI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "011010";  

    constant ITYPE_SGEUI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "111101";  
    constant ITYPE_SGTUI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "111011";
    constant ITYPE_SLTUI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "111010";

    constant ITYPE_SRAI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "010111";
    constant ITYPE_LHI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001111";


    constant ITYPE_LB : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "100000"; 
    constant ITYPE_LBU : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "100100";
    constant ITYPE_LHU : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "100101";
    constant ITYPE_SB : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "101000";

end Globals;