library ieee;
use ieee.std_logic_1164.all;

package myTypes is

-- Control unit input sizes
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

    
    
--J-Type instruction -> OPCODE field     
    constant JTYPE_JUMP : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000010";    
    constant JTYPE_JAL : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000011";   

-- R-Type instruction -> OPCODE field
    constant RTYPE : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000000";          -- for ADD, SUB, AND, OR register-to-register operation

-- I-Type instruction -> OPCODE field

	
    constant ITYPE_MIN : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000100"; 
    
    constant ITYPE_ADDI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001000";  
    
    constant ITYPE_SUBI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001010";    
    
    constant ITYPE_ANDI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001100";    
    constant ITYPE_ORI : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001101";    
    
    
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
    
    
    constant ITYPE_MAX : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "101011"; 
 
    
    
    
    


-- Change the values of the instructions coding as you want, depending also on the type of control unit choosen

end myTypes;
