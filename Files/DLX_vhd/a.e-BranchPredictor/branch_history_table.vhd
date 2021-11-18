LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- Simple syncronous up-down counter 



ENTITY branch_history_table IS
  GENERIC (
    Nb : INTEGER := 2;
    bht_size : INTEGER := 32;
    addr_size : INTEGER := 5);
  PORT (
    clk : IN std_logic;
    rst : IN std_logic;

    -- The bht is seen as a Ram: during the instruction fetch the Ram is readed in order to know
    -- the prediction.
    r_addr1 : IN std_logic_vector(addr_size - 1 DOWNTO 0);
    r_en1 : IN std_logic; -- Read is 
    dout1_br : OUT std_logic_vector(Nb-1 DOWNTO 0);

    r_addr2 : IN std_logic_vector(addr_size - 1 DOWNTO 0);
    r_en2 : IN std_logic; -- Read is 
    dout2 : OUT std_logic_vector(Nb-1 DOWNTO 0);
    -- The bht is then written when the branch result is ready.
    w_addr : IN std_logic_vector(addr_size - 1 DOWNTO 0);
    w_en : IN std_logic; -- Write enabled only when executing a branch.
    t_nt : IN std_logic); -- T/NT is the only information provided for writing the ram.

END branch_history_table;



ARCHITECTURE behv OF branch_history_table IS -- generic register with syncronous reset
  TYPE BHT IS ARRAY (0 TO bht_size - 1) OF unsigned(Nb - 1 DOWNTO 0);
  SIGNAL BHT_s:BHT;

BEGIN

  WrProc : PROCESS (clk)
  BEGIN
    IF (rising_edge(clk)) THEN
      IF (rst = '0') THEN
        BHT_s <= (OTHERS => (OTHERS => '0'));
      ELSIF (w_en = '1') THEN

        case to_integer(unsigned(BHT_s(to_integer(unsigned(w_addr))))) is 
          when 0  =>
            if t_nt = '0' then 
              BHT_s(to_integer(unsigned(w_addr)))<= "00";
            else
              BHT_s(to_integer(unsigned(w_addr)))<= "01";
            end if;
          when 1  =>
            if t_nt = '0' then 
              BHT_s(to_integer(unsigned(w_addr)))<= "00";
            else
              BHT_s(to_integer(unsigned(w_addr)))<= "10";
            end if;
          when 2  =>
            if t_nt = '0' then 
              BHT_s(to_integer(unsigned(w_addr)))<= "01";
            else
              BHT_s(to_integer(unsigned(w_addr)))<= "11";
            end if;
          when 3  =>
            if t_nt = '0' then 
              BHT_s(to_integer(unsigned(w_addr)))<= "10";
            else
              BHT_s(to_integer(unsigned(w_addr)))<= "11";
            end if;
          when others => 
            BHT_s(to_integer(unsigned(w_addr)))<= "00";
        end case;
      END IF;
    END IF;

  END PROCESS;

  RdProc : PROCESS (r_en1, r_addr1,r_en2, r_addr2,  BHT_s)
  BEGIN
    IF (r_en1 = '1') THEN
      dout1_br <= std_logic_vector(BHT_s(to_integer(unsigned(r_addr1)))); 
    ELSE
      dout1_br <= (OTHERS => '0') ;
    END IF;
    IF (r_en2 = '1') THEN
    dout2 <= std_logic_vector(BHT_s(to_integer(unsigned(r_addr2)))); 
  ELSE
    dout2 <= (OTHERS => '0') ;
  END IF;
  END PROCESS;

END behv;

