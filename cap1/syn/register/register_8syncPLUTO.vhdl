
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_register_n is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_register_n;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_register_n.all;

entity register_n is

   port( D : in std_logic_vector (7 downto 0);  CK, RESET : in std_logic;  Q : 
         out std_logic_vector (7 downto 0));

end register_n;

architecture SYN_PLUTO of register_n is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, n_1006, n_1007 : 
      std_logic;

begin
   
   Q_reg_7_inst : DFFR_X1 port map( D => D(7), CK => CK, RN => n1, Q => Q(7), 
                           QN => n_1000);
   Q_reg_6_inst : DFFR_X1 port map( D => D(6), CK => CK, RN => n1, Q => Q(6), 
                           QN => n_1001);
   Q_reg_5_inst : DFFR_X1 port map( D => D(5), CK => CK, RN => n1, Q => Q(5), 
                           QN => n_1002);
   Q_reg_4_inst : DFFR_X1 port map( D => D(4), CK => CK, RN => n1, Q => Q(4), 
                           QN => n_1003);
   Q_reg_3_inst : DFFR_X1 port map( D => D(3), CK => CK, RN => n1, Q => Q(3), 
                           QN => n_1004);
   Q_reg_2_inst : DFFR_X1 port map( D => D(2), CK => CK, RN => n1, Q => Q(2), 
                           QN => n_1005);
   Q_reg_1_inst : DFFR_X1 port map( D => D(1), CK => CK, RN => n1, Q => Q(1), 
                           QN => n_1006);
   Q_reg_0_inst : DFFR_X1 port map( D => D(0), CK => CK, RN => n1, Q => Q(0), 
                           QN => n_1007);
   U4 : INV_X1 port map( A => RESET, ZN => n1);

end SYN_PLUTO;
