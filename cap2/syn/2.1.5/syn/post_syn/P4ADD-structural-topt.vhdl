
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_ADDER is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_ADDER;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n4, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_generic_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_7;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_7 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => sel, ZN => n14);
   U2 : INV_X1 port map( A => n13, ZN => Y(3));
   U3 : AOI22_X1 port map( A1 => sel, A2 => A(3), B1 => B(3), B2 => n14, ZN => 
                           n13);
   U4 : INV_X1 port map( A => n11, ZN => Y(1));
   U5 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U6 : INV_X1 port map( A => n12, ZN => Y(2));
   U7 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U8 : INV_X1 port map( A => n10, ZN => Y(0));
   U9 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n14, ZN => 
                           n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_generic_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_6;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => sel, ZN => n14);
   U2 : INV_X1 port map( A => n13, ZN => Y(3));
   U3 : AOI22_X1 port map( A1 => sel, A2 => A(3), B1 => B(3), B2 => n14, ZN => 
                           n13);
   U4 : INV_X1 port map( A => n11, ZN => Y(1));
   U5 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U6 : INV_X1 port map( A => n12, ZN => Y(2));
   U7 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U8 : INV_X1 port map( A => n10, ZN => Y(0));
   U9 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n14, ZN => 
                           n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_generic_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_5;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14, n15 : std_logic;

begin
   
   U1 : INV_X1 port map( A => sel, ZN => n10);
   U2 : INV_X1 port map( A => sel, ZN => n15);
   U3 : INV_X1 port map( A => n12, ZN => Y(1));
   U4 : AOI22_X1 port map( A1 => sel, A2 => A(1), B1 => n15, B2 => B(1), ZN => 
                           n12);
   U5 : INV_X1 port map( A => n13, ZN => Y(2));
   U6 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n15, ZN => 
                           n13);
   U7 : INV_X1 port map( A => n14, ZN => Y(3));
   U8 : AOI22_X1 port map( A1 => sel, A2 => A(3), B1 => n10, B2 => B(3), ZN => 
                           n14);
   U9 : INV_X1 port map( A => n11, ZN => Y(0));
   U10 : AOI22_X1 port map( A1 => sel, A2 => A(0), B1 => B(0), B2 => n10, ZN =>
                           n11);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_generic_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_4;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U1 : MUX2_X1 port map( A => B(1), B => A(1), S => sel, Z => Y(1));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => sel, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(3), B => A(3), S => sel, Z => Y(3));
   U4 : INV_X1 port map( A => n6, ZN => Y(0));
   U5 : AOI22_X1 port map( A1 => sel, A2 => A(0), B1 => n5, B2 => B(0), ZN => 
                           n6);
   U6 : INV_X1 port map( A => sel, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_generic_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_3;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(1), B => A(1), S => sel, Z => Y(1));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => sel, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(0), B => A(0), S => sel, Z => Y(0));
   U4 : MUX2_X1 port map( A => B(3), B => A(3), S => sel, Z => Y(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_generic_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_2;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(0), B => A(0), S => sel, Z => Y(0));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => sel, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => sel, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(3), B => A(3), S => sel, Z => Y(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_generic_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_1;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(0), B => A(0), S => sel, Z => Y(0));
   U2 : MUX2_X1 port map( A => B(1), B => A(1), S => sel, Z => Y(1));
   U3 : MUX2_X1 port map( A => B(2), B => A(2), S => sel, Z => Y(2));
   U4 : MUX2_X1 port map( A => B(3), B => A(3), S => sel, Z => Y(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_15;

architecture SYN_STRUCTURAL of RCA_N4_15 is

   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_60 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_59 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_58 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_57 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_14;

architecture SYN_STRUCTURAL of RCA_N4_14 is

   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_56 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_55 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_54 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_53 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_13;

architecture SYN_STRUCTURAL of RCA_N4_13 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_52 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_51 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_50 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_49 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_12;

architecture SYN_STRUCTURAL of RCA_N4_12 is

   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_11;

architecture SYN_STRUCTURAL of RCA_N4_11 is

   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_44 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_43 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_42 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_41 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_10;

architecture SYN_STRUCTURAL of RCA_N4_10 is

   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_40 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_39 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_38 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_37 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_9;

architecture SYN_STRUCTURAL of RCA_N4_9 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_36 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_35 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_34 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_33 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_8;

architecture SYN_STRUCTURAL of RCA_N4_8 is

   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_7;

architecture SYN_STRUCTURAL of RCA_N4_7 is

   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_28 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_27 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_26 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_25 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_6;

architecture SYN_STRUCTURAL of RCA_N4_6 is

   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_24 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_23 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_22 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_21 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_5;

architecture SYN_STRUCTURAL of RCA_N4_5 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_20 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_19 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_18 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_17 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_4;

architecture SYN_STRUCTURAL of RCA_N4_4 is

   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_3;

architecture SYN_STRUCTURAL of RCA_N4_3 is

   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_12 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_11 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_10 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_9 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_2;

architecture SYN_STRUCTURAL of RCA_N4_2 is

   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_8 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_7 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_6 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_5 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_1;

architecture SYN_STRUCTURAL of RCA_N4_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_4 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_3 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_2 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_1 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity carry_select_block_NPB4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_6;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_6 is

   component MUX21_generic_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1000, n_1001 : 
      std_logic;

begin
   
   UADDER1 : RCA_N4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1000);
   UADDER2 : RCA_N4_11 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1001);
   mux : MUX21_generic_N4_6 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity carry_select_block_NPB4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_5;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_5 is

   component MUX21_generic_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1002, n_1003 : 
      std_logic;

begin
   
   UADDER1 : RCA_N4_10 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1002);
   UADDER2 : RCA_N4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1003);
   mux : MUX21_generic_N4_5 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity carry_select_block_NPB4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_4;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_4 is

   component MUX21_generic_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1004, n_1005 : 
      std_logic;

begin
   
   UADDER1 : RCA_N4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1004);
   UADDER2 : RCA_N4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1005);
   mux : MUX21_generic_N4_4 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity carry_select_block_NPB4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_3;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_3 is

   component MUX21_generic_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1006, n_1007 : 
      std_logic;

begin
   
   UADDER1 : RCA_N4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1006);
   UADDER2 : RCA_N4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1007);
   mux : MUX21_generic_N4_3 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity carry_select_block_NPB4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_2;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_2 is

   component MUX21_generic_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1008, n_1009 : 
      std_logic;

begin
   
   UADDER1 : RCA_N4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1008);
   UADDER2 : RCA_N4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1009);
   mux : MUX21_generic_N4_2 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity carry_select_block_NPB4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_1;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_1 is

   component MUX21_generic_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1010, n_1011 : 
      std_logic;

begin
   
   UADDER1 : RCA_N4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1010);
   UADDER2 : RCA_N4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1011);
   mux : MUX21_generic_N4_1 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_26 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_26;

architecture SYN_BEHAVIORAL of PG_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_25 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_25;

architecture SYN_BEHAVIORAL of PG_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_IK, A2 => P_K_1, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_24 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_24;

architecture SYN_BEHAVIORAL of PG_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_23 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_23;

architecture SYN_BEHAVIORAL of PG_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_22 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_22;

architecture SYN_BEHAVIORAL of PG_22 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U2 : INV_X1 port map( A => n3, ZN => Gx);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_21 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_21;

architecture SYN_BEHAVIORAL of PG_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => P_IK, Z => n3);
   U2 : INV_X1 port map( A => n4, ZN => Gx);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n4);
   U4 : AND2_X1 port map( A1 => n3, A2 => P_K_1, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_20 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_20;

architecture SYN_BEHAVIORAL of PG_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_19 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_19;

architecture SYN_BEHAVIORAL of PG_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_18 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_18;

architecture SYN_BEHAVIORAL of PG_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_17 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_17;

architecture SYN_BEHAVIORAL of PG_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_IK, A2 => P_K_1, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_16 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_16;

architecture SYN_BEHAVIORAL of PG_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_15 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_15;

architecture SYN_BEHAVIORAL of PG_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_14 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_14;

architecture SYN_BEHAVIORAL of PG_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_13 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_13;

architecture SYN_BEHAVIORAL of PG_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_12 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_12;

architecture SYN_BEHAVIORAL of PG_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U2 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U3 : INV_X1 port map( A => n3, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_11 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_11;

architecture SYN_BEHAVIORAL of PG_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_10 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_10;

architecture SYN_BEHAVIORAL of PG_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_9 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_9;

architecture SYN_BEHAVIORAL of PG_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_8 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_8;

architecture SYN_BEHAVIORAL of PG_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_7 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_7;

architecture SYN_BEHAVIORAL of PG_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_6 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_6;

architecture SYN_BEHAVIORAL of PG_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Gx);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_5 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_5;

architecture SYN_BEHAVIORAL of PG_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U2 : AOI21_X1 port map( B1 => G_K_1, B2 => P_IK, A => G_IK, ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_4 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_4;

architecture SYN_BEHAVIORAL of PG_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_3 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_3;

architecture SYN_BEHAVIORAL of PG_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U2 : INV_X1 port map( A => n3, ZN => Gx);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_2 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_2;

architecture SYN_BEHAVIORAL of PG_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U2 : INV_X1 port map( A => n3, ZN => Gx);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_1 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_1;

architecture SYN_BEHAVIORAL of PG_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U2 : INV_X1 port map( A => n3, ZN => Gx);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_8 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_8;

architecture SYN_BEHAVIORAL of G_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_7 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_7;

architecture SYN_BEHAVIORAL of G_7 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_6 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_6;

architecture SYN_BEHAVIORAL of G_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => G_K_1, B2 => P_IK, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_5 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_5;

architecture SYN_BEHAVIORAL of G_5 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => G_K_1, B2 => P_IK, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_4 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_4;

architecture SYN_BEHAVIORAL of G_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_3 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_3;

architecture SYN_BEHAVIORAL of G_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => G_IK, ZN => n3);
   U2 : NAND2_X1 port map( A1 => G_K_1, A2 => P_IK, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_2 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_2;

architecture SYN_BEHAVIORAL of G_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => G_IK, ZN => n3);
   U2 : NAND2_X1 port map( A1 => G_K_1, A2 => P_IK, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_1 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_1;

architecture SYN_BEHAVIORAL of G_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => G_IK, ZN => n3);
   U2 : NAND2_X1 port map( A1 => G_K_1, A2 => P_IK, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3, n4 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_generic_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_0;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => sel, ZN => n5);
   U2 : INV_X1 port map( A => n8, ZN => Y(1));
   U3 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n5, ZN => 
                           n8);
   U4 : INV_X1 port map( A => n7, ZN => Y(2));
   U5 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n5, ZN => 
                           n7);
   U6 : INV_X1 port map( A => n6, ZN => Y(3));
   U7 : AOI22_X1 port map( A1 => A(3), A2 => sel, B1 => B(3), B2 => n5, ZN => 
                           n6);
   U8 : INV_X1 port map( A => n9, ZN => Y(0));
   U9 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n5, ZN => 
                           n9);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_0;

architecture SYN_STRUCTURAL of RCA_N4_0 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity carry_select_block_NPB4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_7;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_7 is

   component MUX21_generic_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1012, n_1013 : 
      std_logic;

begin
   
   UADDER1 : RCA_N4_14 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1012);
   UADDER2 : RCA_N4_13 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1013);
   mux : MUX21_generic_N4_7 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity carry_select_block_NPB4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_0;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_0 is

   component MUX21_generic_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1014, n_1015 : 
      std_logic;

begin
   
   UADDER1 : RCA_N4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1014);
   UADDER2 : RCA_N4_15 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1015);
   mux : MUX21_generic_N4_0 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_0 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_0;

architecture SYN_BEHAVIORAL of PG_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n2);
   U3 : INV_X1 port map( A => n2, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_0 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_0;

architecture SYN_BEHAVIORAL of G_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => G_K_1, B2 => P_IK, A => G_IK, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity sum_generator_N32_NPB4 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (8
         downto 0);  S : out std_logic_vector (31 downto 0);  Co : out 
         std_logic);

end sum_generator_N32_NPB4;

architecture SYN_STRUCTURAL of sum_generator_N32_NPB4 is

   component carry_select_block_NPB4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NPB4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NPB4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NPB4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NPB4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NPB4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NPB4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NPB4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;

begin
   Co <= Ci(8);
   
   csbi_0 : carry_select_block_NPB4_0 port map( A(3) => A(3), A(2) => A(2), 
                           A(1) => A(1), A(0) => A(0), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Ci => Ci(0), S(3) 
                           => S(3), S(2) => S(2), S(1) => S(1), S(0) => S(0));
   csbi_1 : carry_select_block_NPB4_7 port map( A(3) => A(7), A(2) => A(6), 
                           A(1) => A(5), A(0) => A(4), B(3) => B(7), B(2) => 
                           B(6), B(1) => B(5), B(0) => B(4), Ci => Ci(1), S(3) 
                           => S(7), S(2) => S(6), S(1) => S(5), S(0) => S(4));
   csbi_2 : carry_select_block_NPB4_6 port map( A(3) => A(11), A(2) => A(10), 
                           A(1) => A(9), A(0) => A(8), B(3) => B(11), B(2) => 
                           B(10), B(1) => B(9), B(0) => B(8), Ci => Ci(2), S(3)
                           => S(11), S(2) => S(10), S(1) => S(9), S(0) => S(8))
                           ;
   csbi_3 : carry_select_block_NPB4_5 port map( A(3) => A(15), A(2) => A(14), 
                           A(1) => A(13), A(0) => A(12), B(3) => B(15), B(2) =>
                           B(14), B(1) => B(13), B(0) => B(12), Ci => Ci(3), 
                           S(3) => S(15), S(2) => S(14), S(1) => S(13), S(0) =>
                           S(12));
   csbi_4 : carry_select_block_NPB4_4 port map( A(3) => A(19), A(2) => A(18), 
                           A(1) => A(17), A(0) => A(16), B(3) => B(19), B(2) =>
                           B(18), B(1) => B(17), B(0) => B(16), Ci => Ci(4), 
                           S(3) => S(19), S(2) => S(18), S(1) => S(17), S(0) =>
                           S(16));
   csbi_5 : carry_select_block_NPB4_3 port map( A(3) => A(23), A(2) => A(22), 
                           A(1) => A(21), A(0) => A(20), B(3) => B(23), B(2) =>
                           B(22), B(1) => B(21), B(0) => B(20), Ci => Ci(5), 
                           S(3) => S(23), S(2) => S(22), S(1) => S(21), S(0) =>
                           S(20));
   csbi_6 : carry_select_block_NPB4_2 port map( A(3) => A(27), A(2) => A(26), 
                           A(1) => A(25), A(0) => A(24), B(3) => B(27), B(2) =>
                           B(26), B(1) => B(25), B(0) => B(24), Ci => Ci(6), 
                           S(3) => S(27), S(2) => S(26), S(1) => S(25), S(0) =>
                           S(24));
   csbi_7 : carry_select_block_NPB4_1 port map( A(3) => A(31), A(2) => A(30), 
                           A(1) => A(29), A(0) => A(28), B(3) => B(31), B(2) =>
                           B(30), B(1) => B(29), B(0) => B(28), Ci => Ci(7), 
                           S(3) => S(31), S(2) => S(30), S(1) => S(29), S(0) =>
                           S(28));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity carry_generator_N32_NPB4 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (7 downto 0));

end carry_generator_N32_NPB4;

architecture SYN_STRUCTURAL of carry_generator_N32_NPB4 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component G_1
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component G_2
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component G_3
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component G_4
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component PG_1
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_2
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component G_5
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component G_6
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component PG_3
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_4
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_5
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component G_7
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component PG_6
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_7
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_8
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_9
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_10
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_11
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_12
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component G_8
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component PG_13
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_14
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_15
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_16
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_17
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_18
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_19
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_20
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_21
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_22
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_23
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_24
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_25
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_26
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_0
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component G_0
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   signal Co_7_port, Co_6_port, Co_5_port, Co_4_port, n28, Co_2_port, n29, n30,
      PG_Network_4_1_31_port, PG_Network_4_1_27_port, PG_Network_4_0_31_port, 
      PG_Network_4_0_27_port, PG_Network_3_1_31_port, PG_Network_3_1_23_port, 
      PG_Network_3_1_15_port, PG_Network_3_0_31_port, PG_Network_3_0_23_port, 
      PG_Network_3_0_15_port, PG_Network_2_1_31_port, PG_Network_2_1_27_port, 
      PG_Network_2_1_23_port, PG_Network_2_1_19_port, PG_Network_2_1_15_port, 
      PG_Network_2_1_11_port, PG_Network_2_1_7_port, PG_Network_2_0_31_port, 
      PG_Network_2_0_27_port, PG_Network_2_0_23_port, PG_Network_2_0_19_port, 
      PG_Network_2_0_15_port, PG_Network_2_0_11_port, PG_Network_2_0_7_port, 
      PG_Network_1_1_31_port, PG_Network_1_1_29_port, PG_Network_1_1_27_port, 
      PG_Network_1_1_25_port, PG_Network_1_1_23_port, PG_Network_1_1_21_port, 
      PG_Network_1_1_19_port, PG_Network_1_1_17_port, PG_Network_1_1_15_port, 
      PG_Network_1_1_13_port, PG_Network_1_1_11_port, PG_Network_1_1_9_port, 
      PG_Network_1_1_7_port, PG_Network_1_1_5_port, PG_Network_1_1_3_port, 
      PG_Network_1_1_1_port, PG_Network_1_0_31_port, PG_Network_1_0_29_port, 
      PG_Network_1_0_27_port, PG_Network_1_0_25_port, PG_Network_1_0_23_port, 
      PG_Network_1_0_21_port, PG_Network_1_0_19_port, PG_Network_1_0_17_port, 
      PG_Network_1_0_15_port, PG_Network_1_0_13_port, PG_Network_1_0_11_port, 
      PG_Network_1_0_9_port, PG_Network_1_0_7_port, PG_Network_1_0_5_port, 
      PG_Network_1_0_3_port, PG_Network_0_1_31_port, PG_Network_0_1_30_port, 
      PG_Network_0_1_29_port, PG_Network_0_1_28_port, PG_Network_0_1_27_port, 
      PG_Network_0_1_26_port, PG_Network_0_1_25_port, PG_Network_0_1_24_port, 
      PG_Network_0_1_23_port, PG_Network_0_1_22_port, PG_Network_0_1_21_port, 
      PG_Network_0_1_20_port, PG_Network_0_1_19_port, PG_Network_0_1_18_port, 
      PG_Network_0_1_17_port, PG_Network_0_1_16_port, PG_Network_0_1_15_port, 
      PG_Network_0_1_14_port, PG_Network_0_1_13_port, PG_Network_0_1_12_port, 
      PG_Network_0_1_11_port, PG_Network_0_1_10_port, PG_Network_0_1_9_port, 
      PG_Network_0_1_8_port, PG_Network_0_1_7_port, PG_Network_0_1_6_port, 
      PG_Network_0_1_5_port, PG_Network_0_1_4_port, PG_Network_0_1_3_port, 
      PG_Network_0_1_2_port, PG_Network_0_1_1_port, PG_Network_0_0_31_port, 
      PG_Network_0_0_30_port, PG_Network_0_0_29_port, PG_Network_0_0_28_port, 
      PG_Network_0_0_27_port, PG_Network_0_0_26_port, PG_Network_0_0_25_port, 
      PG_Network_0_0_24_port, PG_Network_0_0_23_port, PG_Network_0_0_22_port, 
      PG_Network_0_0_21_port, PG_Network_0_0_20_port, PG_Network_0_0_19_port, 
      PG_Network_0_0_18_port, PG_Network_0_0_17_port, PG_Network_0_0_16_port, 
      PG_Network_0_0_15_port, PG_Network_0_0_14_port, PG_Network_0_0_13_port, 
      PG_Network_0_0_12_port, PG_Network_0_0_11_port, PG_Network_0_0_10_port, 
      PG_Network_0_0_9_port, PG_Network_0_0_8_port, PG_Network_0_0_7_port, 
      PG_Network_0_0_6_port, PG_Network_0_0_5_port, PG_Network_0_0_4_port, 
      PG_Network_0_0_3_port, PG_Network_0_0_2_port, PG_Network_0_0_1_port, n4, 
      n5, Co_3_port, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, 
      n19, n20, n21, n22, n23, n24, n25, Co_1_port, Co_0_port : std_logic;

begin
   Co <= ( Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, Co_2_port, 
      Co_1_port, Co_0_port );
   
   GJ_0_0_0 : G_0 port map( G_IK => PG_Network_0_1_1_port, P_IK => 
                           PG_Network_0_0_1_port, G_K_1 => n24, Gx => 
                           PG_Network_1_1_1_port);
   PGJ_0_1_0 : PG_0 port map( G_IK => PG_Network_0_1_3_port, P_IK => 
                           PG_Network_0_0_3_port, G_K_1 => 
                           PG_Network_0_1_2_port, P_K_1 => 
                           PG_Network_0_0_2_port, Gx => PG_Network_1_1_3_port, 
                           Px => PG_Network_1_0_3_port);
   PGJ_0_2_0 : PG_26 port map( G_IK => PG_Network_0_1_5_port, P_IK => 
                           PG_Network_0_0_5_port, G_K_1 => 
                           PG_Network_0_1_4_port, P_K_1 => 
                           PG_Network_0_0_4_port, Gx => PG_Network_1_1_5_port, 
                           Px => PG_Network_1_0_5_port);
   PGJ_0_3_0 : PG_25 port map( G_IK => PG_Network_0_1_7_port, P_IK => 
                           PG_Network_0_0_7_port, G_K_1 => 
                           PG_Network_0_1_6_port, P_K_1 => 
                           PG_Network_0_0_6_port, Gx => PG_Network_1_1_7_port, 
                           Px => PG_Network_1_0_7_port);
   PGJ_0_4_0 : PG_24 port map( G_IK => PG_Network_0_1_9_port, P_IK => 
                           PG_Network_0_0_9_port, G_K_1 => 
                           PG_Network_0_1_8_port, P_K_1 => 
                           PG_Network_0_0_8_port, Gx => PG_Network_1_1_9_port, 
                           Px => PG_Network_1_0_9_port);
   PGJ_0_5_0 : PG_23 port map( G_IK => PG_Network_0_1_11_port, P_IK => 
                           PG_Network_0_0_11_port, G_K_1 => 
                           PG_Network_0_1_10_port, P_K_1 => 
                           PG_Network_0_0_10_port, Gx => PG_Network_1_1_11_port
                           , Px => PG_Network_1_0_11_port);
   PGJ_0_6_0 : PG_22 port map( G_IK => PG_Network_0_1_13_port, P_IK => 
                           PG_Network_0_0_13_port, G_K_1 => 
                           PG_Network_0_1_12_port, P_K_1 => 
                           PG_Network_0_0_12_port, Gx => PG_Network_1_1_13_port
                           , Px => PG_Network_1_0_13_port);
   PGJ_0_7_0 : PG_21 port map( G_IK => PG_Network_0_1_15_port, P_IK => 
                           PG_Network_0_0_15_port, G_K_1 => 
                           PG_Network_0_1_14_port, P_K_1 => 
                           PG_Network_0_0_14_port, Gx => PG_Network_1_1_15_port
                           , Px => PG_Network_1_0_15_port);
   PGJ_0_8_0 : PG_20 port map( G_IK => PG_Network_0_1_17_port, P_IK => 
                           PG_Network_0_0_17_port, G_K_1 => 
                           PG_Network_0_1_16_port, P_K_1 => 
                           PG_Network_0_0_16_port, Gx => PG_Network_1_1_17_port
                           , Px => PG_Network_1_0_17_port);
   PGJ_0_9_0 : PG_19 port map( G_IK => PG_Network_0_1_19_port, P_IK => 
                           PG_Network_0_0_19_port, G_K_1 => 
                           PG_Network_0_1_18_port, P_K_1 => 
                           PG_Network_0_0_18_port, Gx => PG_Network_1_1_19_port
                           , Px => PG_Network_1_0_19_port);
   PGJ_0_10_0 : PG_18 port map( G_IK => PG_Network_0_1_21_port, P_IK => 
                           PG_Network_0_0_21_port, G_K_1 => 
                           PG_Network_0_1_20_port, P_K_1 => 
                           PG_Network_0_0_20_port, Gx => PG_Network_1_1_21_port
                           , Px => PG_Network_1_0_21_port);
   PGJ_0_11_0 : PG_17 port map( G_IK => PG_Network_0_1_23_port, P_IK => 
                           PG_Network_0_0_23_port, G_K_1 => 
                           PG_Network_0_1_22_port, P_K_1 => 
                           PG_Network_0_0_22_port, Gx => PG_Network_1_1_23_port
                           , Px => PG_Network_1_0_23_port);
   PGJ_0_12_0 : PG_16 port map( G_IK => PG_Network_0_1_25_port, P_IK => 
                           PG_Network_0_0_25_port, G_K_1 => 
                           PG_Network_0_1_24_port, P_K_1 => 
                           PG_Network_0_0_24_port, Gx => PG_Network_1_1_25_port
                           , Px => PG_Network_1_0_25_port);
   PGJ_0_13_0 : PG_15 port map( G_IK => PG_Network_0_1_27_port, P_IK => 
                           PG_Network_0_0_27_port, G_K_1 => 
                           PG_Network_0_1_26_port, P_K_1 => 
                           PG_Network_0_0_26_port, Gx => PG_Network_1_1_27_port
                           , Px => PG_Network_1_0_27_port);
   PGJ_0_14_0 : PG_14 port map( G_IK => PG_Network_0_1_29_port, P_IK => 
                           PG_Network_0_0_29_port, G_K_1 => 
                           PG_Network_0_1_28_port, P_K_1 => 
                           PG_Network_0_0_28_port, Gx => PG_Network_1_1_29_port
                           , Px => PG_Network_1_0_29_port);
   PGJ_0_15_0 : PG_13 port map( G_IK => PG_Network_0_1_31_port, P_IK => 
                           PG_Network_0_0_31_port, G_K_1 => 
                           PG_Network_0_1_30_port, P_K_1 => 
                           PG_Network_0_0_30_port, Gx => PG_Network_1_1_31_port
                           , Px => PG_Network_1_0_31_port);
   GJ_1_0_0 : G_8 port map( G_IK => PG_Network_1_1_3_port, P_IK => 
                           PG_Network_1_0_3_port, G_K_1 => 
                           PG_Network_1_1_1_port, Gx => n30);
   PGJ_1_1_0 : PG_12 port map( G_IK => PG_Network_1_1_7_port, P_IK => 
                           PG_Network_1_0_7_port, G_K_1 => 
                           PG_Network_1_1_5_port, P_K_1 => 
                           PG_Network_1_0_5_port, Gx => PG_Network_2_1_7_port, 
                           Px => PG_Network_2_0_7_port);
   PGJ_1_2_0 : PG_11 port map( G_IK => PG_Network_1_1_11_port, P_IK => 
                           PG_Network_1_0_11_port, G_K_1 => 
                           PG_Network_1_1_9_port, P_K_1 => 
                           PG_Network_1_0_9_port, Gx => PG_Network_2_1_11_port,
                           Px => PG_Network_2_0_11_port);
   PGJ_1_3_0 : PG_10 port map( G_IK => PG_Network_1_1_15_port, P_IK => 
                           PG_Network_1_0_15_port, G_K_1 => 
                           PG_Network_1_1_13_port, P_K_1 => 
                           PG_Network_1_0_13_port, Gx => PG_Network_2_1_15_port
                           , Px => PG_Network_2_0_15_port);
   PGJ_1_4_0 : PG_9 port map( G_IK => PG_Network_1_1_19_port, P_IK => 
                           PG_Network_1_0_19_port, G_K_1 => 
                           PG_Network_1_1_17_port, P_K_1 => 
                           PG_Network_1_0_17_port, Gx => PG_Network_2_1_19_port
                           , Px => PG_Network_2_0_19_port);
   PGJ_1_5_0 : PG_8 port map( G_IK => PG_Network_1_1_23_port, P_IK => 
                           PG_Network_1_0_23_port, G_K_1 => 
                           PG_Network_1_1_21_port, P_K_1 => 
                           PG_Network_1_0_21_port, Gx => PG_Network_2_1_23_port
                           , Px => PG_Network_2_0_23_port);
   PGJ_1_6_0 : PG_7 port map( G_IK => PG_Network_1_1_27_port, P_IK => 
                           PG_Network_1_0_27_port, G_K_1 => 
                           PG_Network_1_1_25_port, P_K_1 => 
                           PG_Network_1_0_25_port, Gx => PG_Network_2_1_27_port
                           , Px => PG_Network_2_0_27_port);
   PGJ_1_7_0 : PG_6 port map( G_IK => PG_Network_1_1_31_port, P_IK => 
                           PG_Network_1_0_31_port, G_K_1 => 
                           PG_Network_1_1_29_port, P_K_1 => 
                           PG_Network_1_0_29_port, Gx => PG_Network_2_1_31_port
                           , Px => PG_Network_2_0_31_port);
   GJ_2_0_0 : G_7 port map( G_IK => PG_Network_2_1_7_port, P_IK => 
                           PG_Network_2_0_7_port, G_K_1 => n30, Gx => n29);
   PGJ_2_1_0 : PG_5 port map( G_IK => PG_Network_2_1_15_port, P_IK => 
                           PG_Network_2_0_15_port, G_K_1 => 
                           PG_Network_2_1_11_port, P_K_1 => 
                           PG_Network_2_0_11_port, Gx => PG_Network_3_1_15_port
                           , Px => PG_Network_3_0_15_port);
   PGJ_2_2_0 : PG_4 port map( G_IK => PG_Network_2_1_23_port, P_IK => 
                           PG_Network_2_0_23_port, G_K_1 => 
                           PG_Network_2_1_19_port, P_K_1 => 
                           PG_Network_2_0_19_port, Gx => PG_Network_3_1_23_port
                           , Px => PG_Network_3_0_23_port);
   PGJ_2_3_0 : PG_3 port map( G_IK => PG_Network_2_1_31_port, P_IK => 
                           PG_Network_2_0_31_port, G_K_1 => 
                           PG_Network_2_1_27_port, P_K_1 => 
                           PG_Network_2_0_27_port, Gx => PG_Network_3_1_31_port
                           , Px => PG_Network_3_0_31_port);
   GJ_3_0_0 : G_6 port map( G_IK => PG_Network_3_1_15_port, P_IK => 
                           PG_Network_3_0_15_port, G_K_1 => n29, Gx => n28);
   GJ_3_0_1 : G_5 port map( G_IK => PG_Network_2_1_11_port, P_IK => 
                           PG_Network_2_0_11_port, G_K_1 => n5, Gx => Co_2_port
                           );
   PGJ_3_1_0 : PG_2 port map( G_IK => PG_Network_3_1_31_port, P_IK => 
                           PG_Network_3_0_31_port, G_K_1 => n7, P_K_1 => 
                           PG_Network_3_0_23_port, Gx => PG_Network_4_1_31_port
                           , Px => PG_Network_4_0_31_port);
   PGJ_3_1_1 : PG_1 port map( G_IK => PG_Network_2_1_27_port, P_IK => 
                           PG_Network_2_0_27_port, G_K_1 => 
                           PG_Network_3_1_23_port, P_K_1 => 
                           PG_Network_3_0_23_port, Gx => PG_Network_4_1_27_port
                           , Px => PG_Network_4_0_27_port);
   GJ_4_0_0 : G_4 port map( G_IK => PG_Network_4_1_31_port, P_IK => 
                           PG_Network_4_0_31_port, G_K_1 => Co_3_port, Gx => 
                           Co_7_port);
   GJ_4_0_1 : G_3 port map( G_IK => PG_Network_4_1_27_port, P_IK => 
                           PG_Network_4_0_27_port, G_K_1 => n28, Gx => 
                           Co_6_port);
   GJ_4_0_2 : G_2 port map( G_IK => n7, P_IK => PG_Network_3_0_23_port, G_K_1 
                           => n28, Gx => Co_5_port);
   GJ_4_0_3 : G_1 port map( G_IK => PG_Network_2_1_19_port, P_IK => 
                           PG_Network_2_0_19_port, G_K_1 => n28, Gx => 
                           Co_4_port);
   U36 : XOR2_X1 port map( A => B(9), B => A(9), Z => PG_Network_0_0_9_port);
   U37 : XOR2_X1 port map( A => B(8), B => A(8), Z => PG_Network_0_0_8_port);
   U39 : XOR2_X1 port map( A => B(6), B => A(6), Z => PG_Network_0_0_6_port);
   U40 : XOR2_X1 port map( A => B(5), B => A(5), Z => PG_Network_0_0_5_port);
   U41 : XOR2_X1 port map( A => B(4), B => A(4), Z => PG_Network_0_0_4_port);
   U42 : XOR2_X1 port map( A => B(3), B => A(3), Z => PG_Network_0_0_3_port);
   U43 : XOR2_X1 port map( A => B(31), B => A(31), Z => PG_Network_0_0_31_port)
                           ;
   U44 : XOR2_X1 port map( A => B(30), B => A(30), Z => PG_Network_0_0_30_port)
                           ;
   U45 : XOR2_X1 port map( A => B(2), B => A(2), Z => PG_Network_0_0_2_port);
   U46 : XOR2_X1 port map( A => B(29), B => A(29), Z => PG_Network_0_0_29_port)
                           ;
   U47 : XOR2_X1 port map( A => B(28), B => A(28), Z => PG_Network_0_0_28_port)
                           ;
   U48 : XOR2_X1 port map( A => B(27), B => A(27), Z => PG_Network_0_0_27_port)
                           ;
   U49 : XOR2_X1 port map( A => B(26), B => A(26), Z => PG_Network_0_0_26_port)
                           ;
   U50 : XOR2_X1 port map( A => B(25), B => A(25), Z => PG_Network_0_0_25_port)
                           ;
   U51 : XOR2_X1 port map( A => B(24), B => A(24), Z => PG_Network_0_0_24_port)
                           ;
   U53 : XOR2_X1 port map( A => B(22), B => A(22), Z => PG_Network_0_0_22_port)
                           ;
   U54 : XOR2_X1 port map( A => B(21), B => A(21), Z => PG_Network_0_0_21_port)
                           ;
   U55 : XOR2_X1 port map( A => B(20), B => A(20), Z => PG_Network_0_0_20_port)
                           ;
   U56 : XOR2_X1 port map( A => B(1), B => A(1), Z => PG_Network_0_0_1_port);
   U57 : XOR2_X1 port map( A => B(19), B => A(19), Z => PG_Network_0_0_19_port)
                           ;
   U58 : XOR2_X1 port map( A => B(18), B => A(18), Z => PG_Network_0_0_18_port)
                           ;
   U59 : XOR2_X1 port map( A => B(17), B => A(17), Z => PG_Network_0_0_17_port)
                           ;
   U60 : XOR2_X1 port map( A => B(16), B => A(16), Z => PG_Network_0_0_16_port)
                           ;
   U62 : XOR2_X1 port map( A => B(14), B => A(14), Z => PG_Network_0_0_14_port)
                           ;
   U63 : XOR2_X1 port map( A => B(13), B => A(13), Z => PG_Network_0_0_13_port)
                           ;
   U64 : XOR2_X1 port map( A => B(12), B => A(12), Z => PG_Network_0_0_12_port)
                           ;
   U66 : XOR2_X1 port map( A => B(10), B => A(10), Z => PG_Network_0_0_10_port)
                           ;
   U1 : BUF_X1 port map( A => n29, Z => n5);
   U2 : BUF_X2 port map( A => n28, Z => Co_3_port);
   U3 : CLKBUF_X1 port map( A => PG_Network_3_1_23_port, Z => n7);
   U4 : NAND2_X1 port map( A1 => B(23), A2 => n9, ZN => n10);
   U5 : NAND2_X1 port map( A1 => n8, A2 => A(23), ZN => n11);
   U6 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => PG_Network_0_0_23_port);
   U7 : INV_X1 port map( A => B(23), ZN => n8);
   U8 : INV_X1 port map( A => A(23), ZN => n9);
   U9 : NAND2_X1 port map( A1 => B(11), A2 => n13, ZN => n14);
   U10 : NAND2_X1 port map( A1 => n12, A2 => A(11), ZN => n15);
   U11 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => PG_Network_0_0_11_port)
                           ;
   U12 : INV_X1 port map( A => B(11), ZN => n12);
   U13 : INV_X1 port map( A => A(11), ZN => n13);
   U14 : NAND2_X1 port map( A1 => n17, A2 => B(15), ZN => n18);
   U15 : NAND2_X1 port map( A1 => n16, A2 => A(15), ZN => n19);
   U16 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => PG_Network_0_0_15_port)
                           ;
   U17 : INV_X1 port map( A => B(15), ZN => n16);
   U18 : INV_X1 port map( A => A(15), ZN => n17);
   U19 : NAND2_X1 port map( A1 => B(7), A2 => n21, ZN => n22);
   U20 : NAND2_X1 port map( A1 => n20, A2 => A(7), ZN => n23);
   U21 : NAND2_X1 port map( A1 => n23, A2 => n22, ZN => PG_Network_0_0_7_port);
   U22 : INV_X1 port map( A => B(7), ZN => n20);
   U23 : INV_X1 port map( A => A(7), ZN => n21);
   U24 : NAND2_X1 port map( A1 => n4, A2 => n25, ZN => n24);
   U25 : NAND2_X1 port map( A1 => A(0), A2 => B(0), ZN => n25);
   U26 : AND2_X1 port map( A1 => A(14), A2 => B(14), ZN => 
                           PG_Network_0_1_14_port);
   U27 : AND2_X1 port map( A1 => A(15), A2 => B(15), ZN => 
                           PG_Network_0_1_15_port);
   U28 : AND2_X1 port map( A1 => A(10), A2 => B(10), ZN => 
                           PG_Network_0_1_10_port);
   U29 : AND2_X1 port map( A1 => A(11), A2 => B(11), ZN => 
                           PG_Network_0_1_11_port);
   U30 : AND2_X1 port map( A1 => A(18), A2 => B(18), ZN => 
                           PG_Network_0_1_18_port);
   U31 : AND2_X1 port map( A1 => A(19), A2 => B(19), ZN => 
                           PG_Network_0_1_19_port);
   U32 : AND2_X1 port map( A1 => A(16), A2 => B(16), ZN => 
                           PG_Network_0_1_16_port);
   U33 : AND2_X1 port map( A1 => A(17), A2 => B(17), ZN => 
                           PG_Network_0_1_17_port);
   U34 : AND2_X1 port map( A1 => A(6), A2 => B(6), ZN => PG_Network_0_1_6_port)
                           ;
   U35 : AND2_X1 port map( A1 => A(7), A2 => B(7), ZN => PG_Network_0_1_7_port)
                           ;
   U38 : AND2_X1 port map( A1 => A(8), A2 => B(8), ZN => PG_Network_0_1_8_port)
                           ;
   U52 : AND2_X1 port map( A1 => A(9), A2 => B(9), ZN => PG_Network_0_1_9_port)
                           ;
   U61 : AND2_X1 port map( A1 => A(26), A2 => B(26), ZN => 
                           PG_Network_0_1_26_port);
   U65 : AND2_X1 port map( A1 => A(27), A2 => B(27), ZN => 
                           PG_Network_0_1_27_port);
   U67 : AND2_X1 port map( A1 => A(24), A2 => B(24), ZN => 
                           PG_Network_0_1_24_port);
   U68 : AND2_X1 port map( A1 => A(25), A2 => B(25), ZN => 
                           PG_Network_0_1_25_port);
   U69 : AND2_X1 port map( A1 => A(30), A2 => B(30), ZN => 
                           PG_Network_0_1_30_port);
   U70 : AND2_X1 port map( A1 => A(31), A2 => B(31), ZN => 
                           PG_Network_0_1_31_port);
   U71 : AND2_X1 port map( A1 => A(2), A2 => B(2), ZN => PG_Network_0_1_2_port)
                           ;
   U72 : AND2_X1 port map( A1 => A(3), A2 => B(3), ZN => PG_Network_0_1_3_port)
                           ;
   U73 : AND2_X1 port map( A1 => A(20), A2 => B(20), ZN => 
                           PG_Network_0_1_20_port);
   U74 : AND2_X1 port map( A1 => A(21), A2 => B(21), ZN => 
                           PG_Network_0_1_21_port);
   U75 : AND2_X1 port map( A1 => A(22), A2 => B(22), ZN => 
                           PG_Network_0_1_22_port);
   U76 : AND2_X1 port map( A1 => A(23), A2 => B(23), ZN => 
                           PG_Network_0_1_23_port);
   U77 : AND2_X1 port map( A1 => A(4), A2 => B(4), ZN => PG_Network_0_1_4_port)
                           ;
   U78 : AND2_X1 port map( A1 => A(28), A2 => B(28), ZN => 
                           PG_Network_0_1_28_port);
   U79 : AND2_X1 port map( A1 => A(12), A2 => B(12), ZN => 
                           PG_Network_0_1_12_port);
   U80 : AND2_X1 port map( A1 => A(13), A2 => B(13), ZN => 
                           PG_Network_0_1_13_port);
   U81 : AND2_X1 port map( A1 => A(5), A2 => B(5), ZN => PG_Network_0_1_5_port)
                           ;
   U82 : AND2_X1 port map( A1 => A(29), A2 => B(29), ZN => 
                           PG_Network_0_1_29_port);
   U83 : AND2_X1 port map( A1 => A(1), A2 => B(1), ZN => PG_Network_0_1_1_port)
                           ;
   U84 : CLKBUF_X1 port map( A => n5, Z => Co_1_port);
   U85 : CLKBUF_X1 port map( A => n30, Z => Co_0_port);
   U86 : OAI21_X1 port map( B1 => A(0), B2 => B(0), A => Cin, ZN => n4);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity P4_ADDER is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end P4_ADDER;

architecture SYN_STRUCTURAL of P4_ADDER is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component sum_generator_N32_NPB4
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector
            (8 downto 0);  S : out std_logic_vector (31 downto 0);  Co : out 
            std_logic);
   end component;
   
   component carry_generator_N32_NPB4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal CoutCgen_8_port, CoutCgen_7_port, CoutCgen_6_port, CoutCgen_5_port, 
      CoutCgen_4_port, CoutCgen_3_port, CoutCgen_2_port, CoutCgen_1_port, n1, 
      n2, n3 : std_logic;

begin
   
   CGEN : carry_generator_N32_NPB4 port map( A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Cin => Cin, Co(7) => 
                           CoutCgen_8_port, Co(6) => CoutCgen_7_port, Co(5) => 
                           CoutCgen_6_port, Co(4) => CoutCgen_5_port, Co(3) => 
                           CoutCgen_4_port, Co(2) => CoutCgen_3_port, Co(1) => 
                           CoutCgen_2_port, Co(0) => CoutCgen_1_port);
   SGEN : sum_generator_N32_NPB4 port map( A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => n2, A(14) 
                           => A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => n1, A(6) => A(6), A(5) => A(5), A(4) => A(4)
                           , A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(31) => B(31), B(30) => B(30), B(29) => B(29)
                           , B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => n3, B(14) => B(14), B(13) 
                           => B(13), B(12) => B(12), B(11) => B(11), B(10) => 
                           B(10), B(9) => B(9), B(8) => B(8), B(7) => B(7), 
                           B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3) => 
                           B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           Ci(8) => CoutCgen_8_port, Ci(7) => CoutCgen_7_port, 
                           Ci(6) => CoutCgen_6_port, Ci(5) => CoutCgen_5_port, 
                           Ci(4) => CoutCgen_4_port, Ci(3) => CoutCgen_3_port, 
                           Ci(2) => CoutCgen_2_port, Ci(1) => CoutCgen_1_port, 
                           Ci(0) => Cin, S(31) => S(31), S(30) => S(30), S(29) 
                           => S(29), S(28) => S(28), S(27) => S(27), S(26) => 
                           S(26), S(25) => S(25), S(24) => S(24), S(23) => 
                           S(23), S(22) => S(22), S(21) => S(21), S(20) => 
                           S(20), S(19) => S(19), S(18) => S(18), S(17) => 
                           S(17), S(16) => S(16), S(15) => S(15), S(14) => 
                           S(14), S(13) => S(13), S(12) => S(12), S(11) => 
                           S(11), S(10) => S(10), S(9) => S(9), S(8) => S(8), 
                           S(7) => S(7), S(6) => S(6), S(5) => S(5), S(4) => 
                           S(4), S(3) => S(3), S(2) => S(2), S(1) => S(1), S(0)
                           => S(0), Co => Cout);
   U1 : BUF_X1 port map( A => A(7), Z => n1);
   U2 : BUF_X1 port map( A => A(15), Z => n2);
   U3 : BUF_X1 port map( A => B(15), Z => n3);

end SYN_STRUCTURAL;
