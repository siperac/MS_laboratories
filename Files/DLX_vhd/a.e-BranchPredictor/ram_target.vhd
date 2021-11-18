LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- Simple syncronous up-down counter 

ENTITY ram_target IS
  GENERIC (
    Nb : INTEGER := 2;
    ram_size : INTEGER := 32;
    target_size : integer:= 32;
    addr_size : INTEGER := 5);
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    -- Read Signals
    r_addr : IN STD_LOGIC_VECTOR(addr_size - 1 DOWNTO 0);
    r_en : IN STD_LOGIC; -- Read is 
    dout : OUT STD_LOGIC_VECTOR(target_size-1 DOWNTO 0);
    -- Write signals
    w_en : IN STD_LOGIC; -- Write enable
    w_addr : IN STD_LOGIC_VECTOR(addr_size - 1 DOWNTO 0);
    w_datain: IN STD_LOGIC_VECTOR(target_size - 1 DOWNTO 0));
END ram_target;


ARCHITECTURE behv OF ram_target IS -- generic register with syncronous reset
  TYPE RAM IS ARRAY (0 TO ram_size - 1) OF std_logic_vector(target_size - 1 DOWNTO 0);
  SIGNAL RAM_s:RAM;

BEGIN

  WrProc : PROCESS (clk)
  BEGIN
    IF (rising_edge(clk)) THEN
      IF (rst = '0') THEN
      RAM_s <= (OTHERS => (OTHERS => '0'));
      ELSIF (w_en = '1') THEN
        RAM_s(to_integer(unsigned(w_addr))) <= w_datain;
      END IF;
    END IF;
  END PROCESS;

  RdProc : PROCESS (r_en, r_addr, RAM_s)
  BEGIN
    IF (r_en = '1') THEN
      dout <= std_logic_vector(RAM_s(to_integer(unsigned(r_addr)))); 
    ELSE
      dout <= (OTHERS => '0') ;
    END IF;
  END PROCESS;

END behv;

