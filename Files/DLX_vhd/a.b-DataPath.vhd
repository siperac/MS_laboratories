library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use WORK.all;
use work.Globals.all;


entity DataPath is 
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
end DataPath;


architecture Structural of DataPath is 

component fetch_unit is
	Port (      ck:     In	std_logic;
                reset:  In	std_logic;
                sel_mux_branch: in std_logic;
                branch_result: in std_logic_vector(31 downto 0);	
				input_pc:	In	std_logic_vector(31 downto 0);	
                enable_fu: In  std_logic; -- for clock gating
				output_npc_comb: Out std_logic_vector(31 downto 0);
				output_pc_jal: Out std_logic_vector(31 downto 0);
				output_4_npc_comb: Out std_logic_vector(31 downto 0);
                output_npc:	Out std_logic_vector(31 downto 0));
end component;

component branch_predictor IS

    GENERIC (
        key_size    : integer := 5;
        target_size : integer:= 32;
        ram_target_size : integer:= 32);
    PORT (
        clk : in std_logic;
        rst : in std_logic;
        pc_in : in std_logic_vector(key_size-1 downto 0);
        enable_br : in std_logic;
		w_en : in std_logic;
        branch_res : in std_logic;
        target_in: in std_logic_vector(target_size-1 downto 0);
        target_out : out std_logic_vector(target_size-1 downto 0);
        t_nt: out std_logic
    );
END component;

component decode_unit is
		port ( 
			S_EXT: in std_logic;
			input_IR: 	IN std_logic_vector(31 downto 0);
			input_2NPC: 	IN std_logic_vector(31 downto 0); 
			input_NPC: 	IN std_logic_vector(31 downto 0); 
			input_type_branch: IN std_logic_vector(BR_SIZE-1 downto 0); 
			input_forwarding_mem : in std_logic_vector(31 downto 0);
			data_W : in std_logic_vector(31 downto 0);
			addr_W :in std_logic_vector(4 downto 0);
			addr_W_EX_MEM: in std_logic_vector(4 downto 0);
			reset: IN std_logic;
			ck: IN std_logic;
			rd_1_dec: IN std_logic;
			rd_2_dec:IN std_logic;
			wr_dec:IN std_logic;
			enable_fu: In  std_logic; -- for clock gating
			EN_MUL_REGS: in std_logic_vector(MULT_SIZE/2-2 downto 0);
			enable_ex: IN std_logic;
			output_A: OUT std_logic_vector(31 downto 0);
			output_B: OUT std_logic_vector(31 downto 0);
			output_IMM: OUT std_logic_vector(31 downto 0);
			output_RS1: out std_logic_vector(4 downto 0);
			output_RS2: out std_logic_vector(4 downto 0);
			output_opcode_s : out std_logic_vector(5 downto 0);
			branch_result: out std_logic_vector(31 downto 0);
			sel_mux_npc: out std_logic;
			load_intelock : out std_logic;
			output_2NPC: OUT std_logic_vector(31 downto 0); 
			output_addr_W: out std_logic_vector(4 downto 0);
			output_addr_w_MUL: out std_logic_vector(4 downto 0));
end component;


component execute_unit is
 port ( 
	SIGNED_COMPARE: IN std_logic;
	input_addrW : in std_logic_vector(4 downto 0);
	input_addr_w_MUL: in std_logic_vector(4 downto 0);
	condition: 	IN std_logic_vector(COMP_SIZE-1 downto 0);
	input_2NPC: IN std_logic_vector(31 downto 0);
	FUNC_alu:  std_logic_vector(ALU_SIZE-1 downto 0);
	reset: IN std_logic;
	ck: IN std_logic;
	select_mux_b_imm: IN std_logic;
	select_mux_cond_ALU: IN std_logic;
	enable_fu: In std_logic; -- for clock gating
	input_A: IN std_logic_vector(31 downto 0);
	input_B: IN std_logic_vector(31 downto 0);
	input_IMM: IN std_logic_vector(31 downto 0);
	EN_MULTIPLIER: IN std_logic_vector(MULT_SIZE/2-2 downto 0);
	--forwarding unit
	
	input_opcode_s : IN std_logic_vector(5 downto 0);
	input_WB: IN std_logic_vector(31 downto 0);
	
	input_RS1: IN  std_logic_vector(4 downto 0);
	input_RS2: IN std_logic_vector(4 downto 0);
	input_addrW_mem : IN std_logic_vector(4 downto 0);
	
	MEM_RF_wr : in std_logic;  
	WB_RF_wr : in std_logic;
	--output
	output_ALU_reg: OUT std_logic_vector(31 downto 0);
	output_IMM: OUT std_logic_vector(31 downto 0);
	output_2NPC: OUT std_logic_vector(31 downto 0); 
	output_REGB: OUT std_logic_vector(31 downto 0);
	output_addrW : OUT std_logic_vector(4 downto 0);
	output_struct_hazard: out std_logic);
end component;

	
component memory_unit is
 port ( input_addrW : in std_logic_vector(4 downto 0);
		alu_result: 	IN std_logic_vector(31 downto 0);
		input_2NPC: 	IN std_logic_vector(31 downto 0);
		reset: IN std_logic;
		ck: IN std_logic;
		input_data_mem: IN std_logic_vector (31 DOWNTO 0);
		sel_lb_lw: in std_logic_vector (1 DOWNTO 0);	
		sel_mem_lr: in std_logic;
		enable_fu: In  std_logic;
		output_LMD: out std_logic_vector(31 downto 0);
		output_ALUres: out std_logic_vector(31 downto 0);
	    output_addrW : out std_logic_vector(4 downto 0));
end component;

component mux42 is
	generic (N: integer:= 16);
	Port (	i0,i1,i2,i3: In  std_logic_vector(N-1 downto 0);
			sel:	in	std_logic_vector(1 downto 0);
			Y:	Out	std_logic_vector(N-1 downto 0));
end component;



component WB_unit is
 port ( input_LMD: 	IN std_logic_vector(31 downto 0);
		alu_result: 	IN std_logic_vector(31 downto 0);
		reset: IN std_logic;
		ck: IN std_logic;
		select_mux_ALU_LMD: IN std_logic;
		enable_fu: In  std_logic;
		output_mux_RF: out std_logic_vector(31 downto 0));
end component;


-- Stages out signals
-- IF
signal IF_outNPC,IF_outNPC_comb,IF_4_npc_comb_s: std_logic_vector(31 downto 0);
-- BP 
signal BP_target_out: std_logic_vector(31 downto 0);
signal BP_t_nt,we_bht_s, BP_t_nt_reg: std_logic; 
signal sel_npc: std_logic_vector(1 downto 0);

-- ID
signal ID_outA,ID_outB, ID_outImm,ID_outNPC, ID_out2NPC, ID_branch_result: std_logic_vector(31 downto 0);
signal ID_outAddrW,ID_outRS1, output_addr_w_MUL_s, ID_outRS2 : std_logic_vector(4 downto 0);
signal ID_outsSel_mux_branch, ID_outLoadinterlock, bp_branch_res : std_logic;
-- EX
signal EX_outALU, EX_outALUcomb, EX_outNPC, EX_outREGB, EX_out2NPC : std_logic_vector(31 downto 0);
signal EX_outBR: std_logic;
signal opcode_s: std_logic_vector(5 downto 0);
signal EX_outAddrW : std_logic_vector(4 downto 0);
signal struct_hazard_s: std_logic; 
--MEM
signal MEM_outLMD, PC_JAL, MEM_outALUres : std_logic_vector(31 downto 0);
signal MEM_outAddrW : std_logic_vector(4 downto 0);
--WB
signal WB_to_ID: std_logic_vector(31 downto 0);



begin 

-- Components
bp_branch_res <= ID_outsSel_mux_branch and not(ID_outLoadinterlock);
load_interlock<= ID_outLoadinterlock; --or struct_hazard_s;
struct_interlock <= struct_hazard_s;
IF_stage : fetch_unit port map ( 
				ck => clk,
                reset => rst,
                sel_mux_branch => ID_outsSel_mux_branch,
                branch_result => ID_branch_result,
				input_pc => PC_to_DP,	
                enable_fu => EN_IF,
                output_npc_comb => IF_outNPC_comb,
				output_pc_jal => PC_JAL,
				output_4_npc_comb => IF_4_npc_comb_s,
                output_npc => IF_outNPC);   
               
mux_pc_branch_predictor: mux42 
	generic map (N => 32)
	Port map (	i0 => IF_4_npc_comb_s,
				i1 => IF_outNPC_comb,
				i2 => IF_outNPC,
				i3 => BP_target_out,
				sel => sel_npc,
				Y=>NPC_to_PC
				);

BP_t_nt_decode: process(clk)
begin
	if clk='1' and clk'EVENT then
		if EN_IF= '1' and (ID_outsSel_mux_branch = '0') then
			BP_t_nt_reg <= BP_t_nt;
		else
			BP_t_nt_reg <= '0';
		end if;	
	end if;
end process;


--sel_npc(1)<= BP_t_nt;
--sel_npc(0)<= BP_t_nt_reg xor ID_outsSel_mux_branch;
sel_npc(1) <= ((BP_t_nt_reg) and (not ID_outsSel_mux_branch)) or ((BP_t_nt_reg) and (BP_t_nt)) or ((not ID_outsSel_mux_branch) and (BP_t_nt)); 
sel_npc(0) <= ((not BP_t_nt_reg) and (ID_outsSel_mux_branch)) or (( not BP_t_nt_reg) and (BP_t_nt)) or ((ID_outsSel_mux_branch) and (BP_t_nt));
SEL_BR <= BP_t_nt_reg xor ID_outsSel_mux_branch;
--NPC_to_PC <= IF_outNPC_comb; 
--SEL_BR <= ID_outsSel_mux_branch;                       


BR_PROC: process(br_cond,ID_outLoadinterlock)
begin 

		if ((br_cond = "010" or br_cond = "001" or br_cond = "011" ) and ID_outLoadinterlock = '0') then 
			we_bht_s <= '1';
		else 
			we_bht_s <= '0';
		end if;

end process;


BP: branch_predictor port map(
        clk => clk,
        rst => rst,
        pc_in => PC_to_DP(4 downto  0),
        enable_br => EN_IF,
		w_en => we_bht_s,
        branch_res => bp_branch_res, 
        target_in => ID_branch_result,
        target_out =>  BP_target_out,
        t_nt => BP_t_nt
    );


ID_stage : decode_unit port map ( 
			S_EXT => S_EXT,
			input_NPC => IF_outNPC,
			input_2NPC => PC_JAL, 
			input_IR => IR_to_DP,
			input_type_branch => br_cond, 
			input_forwarding_mem=> EX_outALU,
			addr_W => MEM_outAddrW, 
			addr_W_EX_MEM =>EX_outAddrW ,
			data_W => WB_to_ID,
			reset=> rst,
			ck => clk,
			rd_1_dec =>RF_rd1, 
			rd_2_dec => RF_rd2,
			wr_dec => RF_wr,
			enable_fu => EN_ID,
			EN_MUL_REGS=> EN_MULTIPLIER,
			enable_ex=> EN_EX,
			output_A => ID_outA,
			output_B => ID_outB,
			output_IMM => ID_outImm,
		    output_RS1 => ID_outRS1,
		    output_RS2 => ID_outRS2,
		    output_opcode_s => opcode_s,
		    branch_result => ID_branch_result,
		    sel_mux_npc => ID_outsSel_mux_branch,
		    load_intelock => ID_outLoadinterlock,
			output_2NPC => ID_out2NPC, 
			output_addr_W => ID_outAddrW,
			output_addr_w_MUL=> output_addr_w_MUL_s);		
				
	
EX_stage: execute_unit  port map ( 
	    SIGNED_COMPARE=>SIGNED_CMP,
		input_addrW => ID_outAddrW,
		input_addr_w_MUL=> output_addr_w_MUL_s,
        condition => COMP_cond,
		FUNC_alu => Alu_Op,
		reset => rst,
		ck => clk,
		select_mux_b_imm => selB_IMM,
		select_mux_cond_ALU => selALU_COND,
		enable_fu => EN_EX, -- for clock gating
		input_A => ID_outA,
		input_2NPC => ID_out2NPC,
		input_B => ID_outB,
		input_IMM => ID_outImm,
		EN_MULTIPLIER=>EN_MULTIPLIER,
		--forwarding_unit
		input_WB=>WB_to_ID,
		input_opcode_s => opcode_s,
		input_RS1=>ID_outRS1,
		input_RS2=>ID_outRS2,
		
		input_addrW_mem =>MEM_outAddrW,
		
		MEM_RF_wr => MEM_RF_wr, 
		WB_RF_wr =>RF_wr,
		output_ALU_reg => EX_outALU,
		output_2NPC => EX_out2NPC,
		output_REGB => REGB_to_DRAM,
		output_addrW  => EX_outAddrW,
		output_struct_hazard=> struct_hazard_s);
		
ALU_to_DRAM <= EX_outALU;	
	

MEM_stage : memory_unit port map  ( 
			input_addrW => EX_outAddrW,
			alu_result => EX_outALU,		
			input_2NPC => EX_out2NPC,
			reset => rst,
			ck => clk,
			input_data_mem => DRAM_to_LMD,
			sel_lb_lw=> CU_sel_lb_lw,
			sel_mem_lr => sel_MEM_LR,
			enable_fu => EN_MEM,
			output_LMD => MEM_outLMD,
			output_ALUres => MEM_outALUres,
			output_addrW => MEM_outAddrW
			);
			
WB_stage : WB_unit port map ( 
		input_LMD => MEM_outLMD,
		alu_result=> MEM_outALUres, 
		reset => rst,
		ck => clk, 
		select_mux_ALU_LMD => sel_WB,
		enable_fu => EN_WB,
		output_mux_RF => WB_to_ID);
		
		
		


end Structural;
