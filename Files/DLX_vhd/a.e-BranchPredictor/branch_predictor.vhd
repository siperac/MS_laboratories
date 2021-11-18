LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- Simple syncronous up-down counter 

ENTITY branch_predictor IS

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
END branch_predictor;

ARCHITECTURE behv OF branch_predictor IS -- generic register with syncronous reset


component branch_target_buffer
IS
  GENERIC (
    key_size    : integer := 5;
    target_size : integer:= 32;
    ram_target_size : integer:= 32);
  PORT (
    clk : in std_logic;
    rst : in std_logic;
    enable_br_tb : in std_logic;
    w_en : in std_logic;
    pc_in: in std_logic_vector(key_size-1 downto 0);
    pc_del: in std_logic_vector(key_size-1 downto 0);
    delete: in std_logic; -- used for unvalidate a specific cam word.
    target_in : in std_logic_vector(target_size-1 downto 0);
    hit:   out std_logic;
    target_out : out std_logic_vector(target_size-1 downto 0)
    );
    
END component;

component branch_history_table IS
  GENERIC (
    Nb : INTEGER := 2;
    bht_size : INTEGER := 32;
    addr_size : INTEGER := 5);
  PORT (
    clk : IN std_logic;
    rst : IN std_logic;
    r_addr1 : IN std_logic_vector(addr_size - 1 DOWNTO 0);
    r_en1 : IN std_logic; -- Read is 
    dout1_br : OUT std_logic_vector(Nb-1 DOWNTO 0);

    r_addr2 : IN std_logic_vector(addr_size - 1 DOWNTO 0);
    r_en2 : IN std_logic; -- Read is 
    dout2 : OUT std_logic_vector(Nb-1 DOWNTO 0);
    w_addr : IN std_logic_vector(addr_size - 1 DOWNTO 0);
    w_en : IN std_logic; 
    t_nt : IN std_logic); 
END component;




component register_n is
	generic(N: integer := 8);
	Port (  D:	In	std_logic_vector(N-1 downto 0);
                CK:     In	std_logic;
                RESET:  In	std_logic;
                ENABLE: In std_logic;
                Q:	Out     std_logic_vector(N-1 downto 0));
end component;

component MUX21_generic is
	generic (N: integer:= 16);
	Port (	A,B: In  std_logic_vector(N-1 downto 0);
			sel:	In	std_logic;
			Y:	Out	std_logic_vector(N-1 downto 0));
end component;


component ff is
	generic(N: integer := 8);
	Port (  D:	In	std_logic;
          CK:     In	std_logic;
          RESET:  In	std_logic;
          ENABLE: In std_logic;
          Q:	Out     std_logic);
end component ;

signal bht_out_s,dout2_s: std_logic_vector(1 downto 0);
signal out_reg1_s,actual_pc : std_logic_vector(key_size-1 downto 0);
signal delete_s,btb_hit,reg_hit,w_en_btb_s: std_logic;


begin 



bht_c: branch_history_table generic map 
(Nb => 2,
bht_size => 32,
addr_size=> 5)
port map (
    clk => clk,
    rst => rst,
    r_addr1 => pc_in(key_size-1 downto 0),
    r_en1 => enable_br,
    dout1_br => bht_out_s,


    r_addr2 => out_reg1_s,
    r_en2 => '1',
    dout2 => dout2_s,

    w_addr => out_reg1_s,
    w_en =>  w_en,
    t_nt => branch_res
);

delete_s <= not(branch_res) and reg_hit and dout2_s(1) and not(dout2_s(0));
w_en_btb_s <= not(reg_hit) and branch_res;

btb_c: branch_target_buffer 
  port map (
  clk => clk,
  rst => rst,
  enable_br_tb => enable_br,
  w_en =>  w_en_btb_s,
  pc_in => actual_pc(key_size-1 downto 0),
  pc_del => out_reg1_s,
  delete  => delete_s,
  target_in => target_in,
  hit => btb_hit,
  target_out => target_out
);

mux_c: MUX21_generic 
  generic map (N => 5)
  port map ( A => out_reg1_s,
            B => pc_in, 
            sel => w_en_btb_s,
            Y => actual_pc );

reg_pc1:  register_n 
  generic map (N=>5)
  port map (
                  D => actual_pc,
                  CK => clk,
                  RESET => rst,
                  ENABLE => enable_br,
                  Q => out_reg1_s
  );


t_nt<= bht_out_s(1);


ff_hit: ff 
  generic map (N=>1)
  port map (
                  D => btb_hit,
                  CK => clk,
                  RESET => rst,
                  ENABLE => enable_br,
                  Q => reg_hit
  );

END behv;

