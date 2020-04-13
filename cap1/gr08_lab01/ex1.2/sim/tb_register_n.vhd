library IEEE;
use IEEE.std_logic_1164.all;


entity TB_register_n is
end TB_register_n;

architecture TEST of TB_register_n is

    component register_n 
		generic(N: integer := 8);
        Port (  CK:     In	std_logic;
                RESET:  In	std_logic;
                D:	In	std_logic_vector(N-1 downto 0);
                Q:	Out     std_logic_vector(N-1 downto 0));
    end component;

        signal  CK:             std_logic :='0';
        signal  RESET:          std_logic :='0';
        signal  D:              std_logic_vector(7 downto 0) :=(others => '0');
        signal  QSYNCH:         std_logic_vector(7 downto 0);
        signal  QASYNCH:        std_logic_vector(7 downto 0);

begin
		-- For the testbench the configuration has been commented because 
		-- it does not allow to simulate both the architectures at the same time.

		-- the format entity work.register_n(ARCH_name) has been used to select the architecture		

     	Uregister1 : entity work.register_n(PIPPO)
        generic map (8) Port Map ( CK=>CK, RESET=>RESET, D=>D, Q=>QSYNCH); -- sinc

        Uregister2 : entity work.register_n(PLUTO)
        generic map (8) Port Map ( CK=>CK, RESET=>RESET, D=>D, Q=>QASYNCH); -- asinc


--     	Uregister1 : entity work.register_n(PIPPO)
--      generic map (8) Port Map ( CK=>CK, RESET=>RESET, D=>D, Q=>QSYNCH); -- sinc

--      Uregister2 : entity work.register_n(PLUTO)
--      generic map (8) Port Map ( CK=>CK, RESET=>RESET, D=>D, Q=>QASYNCH); -- asinc


        PCLOCK : process(CK)
        begin
					CK <= not(CK) after 0.5 ns;
				
        end process;


		
		RESET <= '0', '1' after 0.6 ns, '0' after 1.1 ns, '1' after 2.2 ns, '0' after 3.2 ns;	
	
	
		D(0) <= '0', '1' after 0.4 ns, '0' after 1.1 ns, '1' after 1.4 ns, '0' after 1.7 ns, '1' after 1.9 ns;
		D(1) <= '0', '1' after 0.4 ns, '0' after 1.1 ns, '1' after 1.4 ns, '0' after 1.7 ns, '1' after 1.9 ns;
		D(2) <= '0', '1' after 0.4 ns, '1' after 1.1 ns, '0' after 1.4 ns, '1' after 1.7 ns, '1' after 1.9 ns;
		D(3) <= '0', '1' after 0.4 ns, '1' after 1.1 ns, '0' after 1.4 ns, '1' after 1.7 ns, '1' after 1.9 ns;
		D(4) <= '0', '1' after 0.4 ns, '1' after 1.1 ns, '0' after 1.4 ns, '1' after 1.7 ns, '1' after 1.9 ns;
		D(5) <= '0', '1' after 0.4 ns, '0' after 1.1 ns, '1' after 1.4 ns, '0' after 1.7 ns, '0' after 1.9 ns;
		D(6) <= '0', '1' after 0.4 ns, '0' after 1.1 ns, '1' after 1.4 ns, '0' after 1.7 ns, '0' after 1.9 ns;
		D(7) <= '0', '1' after 0.4 ns, '0' after 1.1 ns, '1' after 1.4 ns, '0' after 1.7 ns, '0' after 1.9 ns;

		

end TEST;

--configuration register_TEST of TB_register_n is
   --for TEST
      --for Uregister1 : register_n
       --  use configuration WORK.CFG_REGISTER_PIPPO; -- sincrono
      --end for;
     -- for Uregister2 : register_n
      --  use configuration WORK.CFG_REGISTER_PLUTO; -- asincrono
    --  end for;
  -- end for;
--end register_TEST;

