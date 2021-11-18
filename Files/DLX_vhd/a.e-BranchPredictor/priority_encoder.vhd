LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY priority_encoder IS
    GENERIC (
        word_size: INTEGER := 32;
        addr_size : INTEGER := 5);
    PORT (
        word : IN STD_LOGIC_VECTOR(word_size-1 DOWNTO 0);
        first_match : in std_logic;
        match_addr : OUT STD_LOGIC_VECTOR(addr_size-1 DOWNTO 0);
        match : OUT STD_LOGIC);
END priority_encoder;


-- This primary encoder given an imput words on N bits 
-- Outputs match = 1 if there is at least one mach and 
-- as match_addr the attress of the matching line having the lowest bit.

 

ARCHITECTURE Behavior OF priority_encoder IS
BEGIN

shifting : PROCESS(word,first_match)
   VARIABLE lower_match : integer := 32;
   begin
        lower_match:=32;
        for i in 0 to word_size-1 loop
            if word(i) = first_match then 
                lower_match := i;
                exit;
            end if;
        end loop;

        if lower_match = 32 then 
            match <= '0';
            match_addr <= (others => '0');
        else 
            match <= '1';
            match_addr <= std_logic_vector(to_unsigned(lower_match,addr_size));
        end if; 
end process;
END Behavior;