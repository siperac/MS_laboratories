LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- Simple syncronous up-down counter 



ENTITY branch_target_buffer
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
    
END branch_target_buffer;



ARCHITECTURE behv OF branch_target_buffer IS 




component cam IS
GENERIC (
    key_size : integer := 5;
    cam_addr : integer := 5
    );
  PORT (
    clk :       in std_logic;
    rst :       in std_logic;
    enable_cam : in std_logic;
    r_en:       in std_logic;
    wr_en:      in std_logic;
    delete:      in std_logic; -- used for unvalidate a specific cam word.
    key_in :    in std_logic_vector(key_size-1 downto 0);
    key_in_del :    in std_logic_vector(key_size-1 downto 0);
    hit:        out std_logic;
    r_addr_cam :    out std_logic_vector(cam_addr-1 downto 0);
    w_addr_cam :    out std_logic_vector(cam_addr-1 downto 0));
END component;


component ram_target IS
  GENERIC (
    Nb : integer := 2;
    ram_size : integer := 32;
    target_size : integer:= 32;
    addr_size : integer := 5);
  PORT (
    clk : in std_logic;
    rst : in std_logic;
    -- Read Signals
    r_addr : in std_logic_vector(addr_size - 1 DOWNTO 0);
    r_en : in std_logic; -- Read is 
    dout : OUT std_logic_vector(target_size - 1 DOWNTO 0);
    -- Write signals
    w_en : in std_logic; -- Write enable
    w_addr : in std_logic_vector(addr_size - 1 DOWNTO 0);
    w_datain: in std_logic_vector(target_size - 1 DOWNTO 0));
end component;


signal w_addr_cam_s: std_logic_vector(key_size-1 downto 0);
signal r_addr_cam_s: std_logic_vector(key_size-1 downto 0);
signal hit_s : std_logic;

begin

cam_c: cam port map (
  clk => clk,
  rst => rst,
  enable_cam => enable_br_tb,
  r_en=> '1',
  wr_en=> w_en,
  key_in => pc_in,
  key_in_del => pc_del,
  delete => delete,
  hit => hit_s,
  r_addr_cam  => r_addr_cam_s,
  w_addr_cam  => w_addr_cam_s);


ram_target_c: ram_target port map (
  clk => clk,
  rst => rst,
  r_addr => r_addr_cam_s,
  r_en => hit_s,
  dout => target_out,
  w_en=> w_en,
  w_addr => w_addr_cam_s,
  w_datain => target_in
);

hit <= hit_s;

END behv;

