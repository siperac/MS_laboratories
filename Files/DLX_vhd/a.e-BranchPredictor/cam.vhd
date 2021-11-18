LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- Simple syncronous up-down counter 

ENTITY cam IS
GENERIC (
    key_size : INTEGER := 5;
    cam_addr : INTEGER := 5
    );
  PORT (
    clk :       in STD_LOGIC;
    rst :       in STD_LOGIC;
    enable_cam:       in std_logic;
    r_en:       in std_logic;
    wr_en:      in std_logic;
    delete:      in std_logic; -- used for unvalidate a specific cam word.
    key_in :    in std_logic_vector(key_size-1 downto 0);
    key_in_del :    in std_logic_vector(key_size-1 downto 0);
    hit:        out std_logic;
    r_addr_cam :    out std_logic_vector(cam_addr-1 downto 0);
    w_addr_cam :    out std_logic_vector(cam_addr-1 downto 0));
END cam;




ARCHITECTURE behv OF cam IS -- generic register with syncronous reset

    component priority_encoder IS
    GENERIC (
        word_size: INTEGER := 32;
        addr_size : INTEGER := 5);
    PORT (
        word : IN STD_LOGIC_VECTOR(word_size-1 DOWNTO 0);
        first_match : in std_logic;
        match_addr : OUT STD_LOGIC_VECTOR(addr_size-1 DOWNTO 0);
        match : OUT STD_LOGIC);
    END component;

    -- CAM registers
    TYPE Regs IS ARRAY (0 TO (2**cam_addr) - 1) OF std_logic_vector(key_size - 1 DOWNTO 0);  
    SIGNAL Reg_s: Regs;

    -- Valid bits 
    signal valid: std_logic_vector((2**cam_addr)-1 downto 0);

    -- Comparation signals
    SIGNAL re_comp_s: std_logic_vector((2**cam_addr)-1 downto 0);
    SIGNAL re_comp_del_s: std_logic_vector((2**cam_addr)-1 downto 0);

    -- TYPE TARGET_COMPARATOR IS ARRAY (0 TO (2**cam_addr) - 1) OF std_logic;  
    -- SIGNAL we_comp_s: TARGET_COMPARATOR;
  

    signal match_s: std_logic;
    signal match_addr_s: std_logic_vector((cam_addr)-1 downto 0);

    signal match_delete_s: std_logic;
    signal match_addr_delete_s: std_logic_vector((cam_addr)-1 downto 0);

    -- Address of 
    signal first_invalid: std_logic_vector((cam_addr)-1 downto 0);

BEGIN

    cmp_logic: for i in 0 to (2**cam_addr) - 1 generate
        cmpi: process(Reg_s,key_in) 
        begin 
            if (key_in = Reg_s(i) and valid(i) = '1' ) then 
                re_comp_s(i) <= '1'; 
            else 
                re_comp_s(i) <= '0';
            end if;
        end process;
    end generate;

    cmp_logic2: for i in 0 to (2**cam_addr) - 1 generate
    cmpi: process(Reg_s,key_in_del) 
    begin 
        if (key_in_del = Reg_s(i) and valid(i) = '1' ) then 
            re_comp_del_s(i) <= '1'; 
        else 
            re_comp_del_s(i) <= '0';
        end if;
    end process;
end generate;

    -- Priority encoder taking as output the result of the comparisons. Outputs hit and address 
    pr_enc_rentry: priority_encoder port map( word => re_comp_s,  first_match=> '1',match => match_s, match_addr => match_addr_s);
    pr_enc_del: priority_encoder port map( word => re_comp_del_s,  first_match=> '1',match => match_delete_s, match_addr => match_addr_delete_s);
    -- Takes as input the valid bits. Outputs the first valid bit at 0.
    pr_enc_wentry: priority_encoder port map( word => valid , first_match=> '0',match => open, match_addr => first_invalid);

    -- Read process simply outputs the match address given as output by the priority encoder.
    RdProc : PROCESS (r_en,match_s,match_addr_s, Reg_s)
    BEGIN
      IF (r_en = '1') THEN
         r_addr_cam <= match_addr_s ; 
         hit <= match_s;
      ELSE
        r_addr_cam <= (OTHERS => '0');
        hit <= '0';
      END IF;
    END PROCESS;

    w_addr_cam <= first_invalid;

  WrProc : PROCESS (clk)
  BEGIN 
    IF (rising_edge(clk)) THEN
    
      IF (rst = '0') THEN
        Reg_s <= (OTHERS => (OTHERS => '0'));
        valid <= (others => '0');
      ELSIF (wr_en = '1' and enable_cam = '1') THEN
        IF match_s = '0' THEN
          Reg_s(to_integer(unsigned(first_invalid))) <= key_in;
          valid(to_integer(unsigned(first_invalid))) <= '1';
        END IF;


      elsif  ( delete = '1' and match_delete_s = '1' and enable_cam = '1') then  
        valid(to_integer(unsigned(match_addr_delete_s))) <= '0';
      end if;
        
    END IF;

  END PROCESS;


END behv;

