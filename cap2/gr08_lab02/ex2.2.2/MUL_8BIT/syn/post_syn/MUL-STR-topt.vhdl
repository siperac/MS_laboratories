
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_booth_mul_N8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_booth_mul_N8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_95 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_95;

architecture SYN_BEHAVIORAL of FA_95 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_94 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_94;

architecture SYN_BEHAVIORAL of FA_94 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_93 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_93;

architecture SYN_BEHAVIORAL of FA_93 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_92 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_92;

architecture SYN_BEHAVIORAL of FA_92 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_91 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_91;

architecture SYN_BEHAVIORAL of FA_91 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_90 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_90;

architecture SYN_BEHAVIORAL of FA_90 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_89 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_89;

architecture SYN_BEHAVIORAL of FA_89 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_88 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_88;

architecture SYN_BEHAVIORAL of FA_88 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => n5, Z => n4);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_87 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_87;

architecture SYN_BEHAVIORAL of FA_87 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_86 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_86;

architecture SYN_BEHAVIORAL of FA_86 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_85 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_85;

architecture SYN_BEHAVIORAL of FA_85 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => n4, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_84 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_84;

architecture SYN_BEHAVIORAL of FA_84 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_83 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_83;

architecture SYN_BEHAVIORAL of FA_83 is

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
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_82 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_82;

architecture SYN_BEHAVIORAL of FA_82 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_81 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_81;

architecture SYN_BEHAVIORAL of FA_81 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_80 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_80;

architecture SYN_BEHAVIORAL of FA_80 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => n6, Z => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n5);
   U5 : AOI22_X1 port map( A1 => n5, A2 => A, B1 => n6, B2 => Ci, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_79 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_79;

architecture SYN_BEHAVIORAL of FA_79 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_78 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_78;

architecture SYN_BEHAVIORAL of FA_78 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n4, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_77 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_77;

architecture SYN_BEHAVIORAL of FA_77 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => n4, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_76 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_76;

architecture SYN_BEHAVIORAL of FA_76 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_75 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_75;

architecture SYN_BEHAVIORAL of FA_75 is

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
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_74 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_74;

architecture SYN_BEHAVIORAL of FA_74 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_73 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_73;

architecture SYN_BEHAVIORAL of FA_73 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_72 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_72;

architecture SYN_BEHAVIORAL of FA_72 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_71 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_71;

architecture SYN_BEHAVIORAL of FA_71 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_70 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_70;

architecture SYN_BEHAVIORAL of FA_70 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_69 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_69;

architecture SYN_BEHAVIORAL of FA_69 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_68 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_68;

architecture SYN_BEHAVIORAL of FA_68 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_67 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_67;

architecture SYN_BEHAVIORAL of FA_67 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_66 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_66;

architecture SYN_BEHAVIORAL of FA_66 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_65 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_65;

architecture SYN_BEHAVIORAL of FA_65 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_64 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_64;

architecture SYN_BEHAVIORAL of FA_64 is

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : INV_X1 port map( A => n7, ZN => Co);
   U6 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => n5, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => n5, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);
   U2 : INV_X1 port map( A => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6, n7 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => B, B => A, Z => n6);
   U1 : CLKBUF_X1 port map( A => B, Z => n4);
   U2 : CLKBUF_X1 port map( A => n6, Z => n5);
   U5 : AOI22_X1 port map( A1 => n4, A2 => A, B1 => n6, B2 => Ci, ZN => n7);
   U6 : INV_X1 port map( A => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => n4, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => Ci, B2 => n5, ZN => n6);
   U5 : INV_X1 port map( A => n6, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n6, ZN => Co);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => n4, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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
   U4 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX21_generic_N4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_11;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_11 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => Y(1));
   U2 : INV_X1 port map( A => n10, ZN => Y(0));
   U3 : INV_X1 port map( A => n12, ZN => Y(2));
   U4 : INV_X1 port map( A => sel, ZN => n14);
   U5 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U6 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n14, ZN => 
                           n10);
   U7 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U8 : INV_X1 port map( A => n13, ZN => Y(3));
   U9 : AOI22_X1 port map( A1 => A(3), A2 => sel, B1 => B(3), B2 => n14, ZN => 
                           n13);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX21_generic_N4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_10;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_10 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14, n15, n16, n17 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => sel, Z => n10);
   U2 : CLKBUF_X1 port map( A => sel, Z => n12);
   U3 : INV_X1 port map( A => n12, ZN => n11);
   U4 : INV_X1 port map( A => n15, ZN => Y(2));
   U5 : INV_X1 port map( A => n14, ZN => Y(1));
   U6 : INV_X1 port map( A => n13, ZN => Y(0));
   U7 : AOI22_X1 port map( A1 => A(2), A2 => n10, B1 => B(2), B2 => n17, ZN => 
                           n15);
   U8 : AOI22_X1 port map( A1 => n12, A2 => A(1), B1 => B(1), B2 => n17, ZN => 
                           n14);
   U9 : INV_X1 port map( A => sel, ZN => n17);
   U10 : AOI22_X1 port map( A1 => A(3), A2 => n10, B1 => B(3), B2 => n11, ZN =>
                           n16);
   U11 : INV_X1 port map( A => n16, ZN => Y(3));
   U12 : AOI22_X1 port map( A1 => sel, A2 => A(0), B1 => n17, B2 => B(0), ZN =>
                           n13);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX21_generic_N4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_9;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_9 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n10, ZN => Y(0));
   U2 : INV_X1 port map( A => sel, ZN => n14);
   U3 : INV_X1 port map( A => n13, ZN => Y(3));
   U4 : AOI22_X1 port map( A1 => sel, A2 => A(3), B1 => B(3), B2 => n14, ZN => 
                           n13);
   U5 : INV_X1 port map( A => n12, ZN => Y(2));
   U6 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U7 : INV_X1 port map( A => n11, ZN => Y(1));
   U8 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U9 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n14, ZN => 
                           n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX21_generic_N4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_8;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => Y(1));
   U2 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U3 : INV_X1 port map( A => n12, ZN => Y(2));
   U4 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U5 : INV_X1 port map( A => n13, ZN => Y(3));
   U6 : AOI22_X1 port map( A1 => sel, A2 => A(3), B1 => B(3), B2 => n14, ZN => 
                           n13);
   U7 : INV_X1 port map( A => n10, ZN => Y(0));
   U8 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n14, ZN => 
                           n10);
   U9 : INV_X1 port map( A => sel, ZN => n14);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX21_generic_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_7;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => sel, ZN => n14);
   U2 : AOI22_X1 port map( A1 => sel, A2 => A(3), B1 => B(3), B2 => n14, ZN => 
                           n13);
   U3 : INV_X1 port map( A => n12, ZN => Y(2));
   U4 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U5 : INV_X1 port map( A => n11, ZN => Y(1));
   U6 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U7 : INV_X1 port map( A => n10, ZN => Y(0));
   U8 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n14, ZN => 
                           n10);
   U9 : INV_X1 port map( A => n13, ZN => Y(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
   
   U1 : INV_X1 port map( A => n11, ZN => Y(1));
   U2 : INV_X1 port map( A => n10, ZN => Y(0));
   U3 : INV_X1 port map( A => n12, ZN => Y(2));
   U4 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U5 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U6 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n14, ZN => 
                           n10);
   U7 : INV_X1 port map( A => sel, ZN => n14);
   U8 : INV_X1 port map( A => n13, ZN => Y(3));
   U9 : AOI22_X1 port map( A1 => A(3), A2 => sel, B1 => B(3), B2 => n14, ZN => 
                           n13);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX21_generic_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_5;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14, n15, n16, n17 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => sel, Z => n10);
   U2 : INV_X1 port map( A => n12, ZN => n11);
   U3 : INV_X1 port map( A => n13, ZN => Y(0));
   U4 : INV_X1 port map( A => n15, ZN => Y(2));
   U5 : INV_X1 port map( A => n14, ZN => Y(1));
   U6 : INV_X1 port map( A => n16, ZN => Y(3));
   U7 : INV_X1 port map( A => sel, ZN => n17);
   U8 : CLKBUF_X1 port map( A => n10, Z => n12);
   U9 : AOI22_X1 port map( A1 => n12, A2 => A(3), B1 => B(3), B2 => n11, ZN => 
                           n16);
   U10 : AOI22_X1 port map( A1 => A(2), A2 => n12, B1 => B(2), B2 => n11, ZN =>
                           n15);
   U11 : AOI22_X1 port map( A1 => A(1), A2 => n10, B1 => B(1), B2 => n17, ZN =>
                           n14);
   U12 : AOI22_X1 port map( A1 => sel, A2 => A(0), B1 => B(0), B2 => n17, ZN =>
                           n13);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n10, ZN => Y(0));
   U2 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n14, ZN => 
                           n10);
   U3 : INV_X1 port map( A => n11, ZN => Y(1));
   U4 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U5 : INV_X1 port map( A => n12, ZN => Y(2));
   U6 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U7 : INV_X1 port map( A => n13, ZN => Y(3));
   U8 : AOI22_X1 port map( A1 => sel, A2 => A(3), B1 => B(3), B2 => n14, ZN => 
                           n13);
   U9 : INV_X1 port map( A => sel, ZN => n14);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX21_generic_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_3;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_3 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => sel, ZN => n14);
   U2 : INV_X1 port map( A => n12, ZN => Y(2));
   U3 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U4 : INV_X1 port map( A => n13, ZN => Y(3));
   U5 : AOI22_X1 port map( A1 => sel, A2 => A(3), B1 => B(3), B2 => n14, ZN => 
                           n13);
   U6 : INV_X1 port map( A => n11, ZN => Y(1));
   U7 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U8 : INV_X1 port map( A => n10, ZN => Y(0));
   U9 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n14, ZN => 
                           n10);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX21_generic_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_2;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_2 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n13, ZN => Y(3));
   U2 : INV_X1 port map( A => n12, ZN => Y(2));
   U3 : INV_X1 port map( A => n11, ZN => Y(1));
   U4 : INV_X1 port map( A => n10, ZN => Y(0));
   U5 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n14, ZN => 
                           n12);
   U6 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n14, ZN => 
                           n11);
   U7 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n14, ZN => 
                           n10);
   U8 : INV_X1 port map( A => sel, ZN => n14);
   U9 : AOI22_X1 port map( A1 => sel, A2 => A(3), B1 => B(3), B2 => n14, ZN => 
                           n13);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX21_generic_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_1;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14, n15 : std_logic;

begin
   
   U1 : INV_X1 port map( A => sel, ZN => n10);
   U2 : INV_X1 port map( A => n13, ZN => Y(2));
   U3 : AOI22_X1 port map( A1 => sel, A2 => A(1), B1 => n15, B2 => B(1), ZN => 
                           n12);
   U4 : INV_X1 port map( A => sel, ZN => n15);
   U5 : INV_X1 port map( A => n14, ZN => Y(3));
   U6 : INV_X1 port map( A => n11, ZN => Y(0));
   U7 : AOI22_X1 port map( A1 => sel, A2 => A(0), B1 => B(0), B2 => n10, ZN => 
                           n11);
   U8 : INV_X1 port map( A => n12, ZN => Y(1));
   U9 : AOI22_X1 port map( A1 => sel, A2 => A(2), B1 => n10, B2 => B(2), ZN => 
                           n13);
   U10 : AOI22_X1 port map( A1 => A(3), A2 => sel, B1 => B(3), B2 => n15, ZN =>
                           n14);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity RCA_N4_23 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_23;

architecture SYN_STRUCTURAL of RCA_N4_23 is

   component FA_89
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_90
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_91
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_92
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_92 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_91 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_90 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_89 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity RCA_N4_22 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_22;

architecture SYN_STRUCTURAL of RCA_N4_22 is

   component FA_85
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_86
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_87
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_88
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_88 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_87 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_86 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_85 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity RCA_N4_21 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_21;

architecture SYN_STRUCTURAL of RCA_N4_21 is

   component FA_81
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_82
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_83
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_84
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_84 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_83 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_82 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_81 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity RCA_N4_20 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_20;

architecture SYN_STRUCTURAL of RCA_N4_20 is

   component FA_77
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_78
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_79
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_80
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_80 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_79 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_78 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_77 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity RCA_N4_19 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_19;

architecture SYN_STRUCTURAL of RCA_N4_19 is

   component FA_73
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_74
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_75
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_76
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_76 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_75 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_74 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_73 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity RCA_N4_18 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_18;

architecture SYN_STRUCTURAL of RCA_N4_18 is

   component FA_69
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_70
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_71
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_72
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_72 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_71 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_70 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_69 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity RCA_N4_17 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_17;

architecture SYN_STRUCTURAL of RCA_N4_17 is

   component FA_65
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_66
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_67
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_68
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_68 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_67 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_66 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_65 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity RCA_N4_16 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_16;

architecture SYN_STRUCTURAL of RCA_N4_16 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_64
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_64 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity carry_select_block_NPB4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_10;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_10 is

   component MUX21_generic_N4_10
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_19
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_20
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1000, n_1001 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_20 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1000);
   UADDER2 : RCA_N4_19 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1001);
   mux : MUX21_generic_N4_10 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity carry_select_block_NPB4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_9;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_9 is

   component MUX21_generic_N4_9
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_17
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_18
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1002, n_1003 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_18 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1002);
   UADDER2 : RCA_N4_17 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1003);
   mux : MUX21_generic_N4_9 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity carry_select_block_NPB4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_8;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_8 is

   component MUX21_generic_N4_8
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_16
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1004, n_1005 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_16 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1004);
   UADDER2 : RCA_N4_15 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1005);
   mux : MUX21_generic_N4_8 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1006, n_1007 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_14 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1006);
   UADDER2 : RCA_N4_13 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1007);
   mux : MUX21_generic_N4_7 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1008, n_1009 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1008);
   UADDER2 : RCA_N4_11 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1009);
   mux : MUX21_generic_N4_6 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1010, n_1011 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_10 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1010);
   UADDER2 : RCA_N4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1011);
   mux : MUX21_generic_N4_5 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1012, n_1013 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1012);
   UADDER2 : RCA_N4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1013);
   mux : MUX21_generic_N4_4 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1014, n_1015 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1014);
   UADDER2 : RCA_N4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1015);
   mux : MUX21_generic_N4_3 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1016, n_1017 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1016);
   UADDER2 : RCA_N4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1017);
   mux : MUX21_generic_N4_2 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1018, n_1019 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1018);
   UADDER2 : RCA_N4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1019);
   mux : MUX21_generic_N4_1 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity PG_32 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_32;

architecture SYN_BEHAVIORAL of PG_32 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_31 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_31;

architecture SYN_BEHAVIORAL of PG_31 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_30 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_30;

architecture SYN_BEHAVIORAL of PG_30 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_29 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_29;

architecture SYN_BEHAVIORAL of PG_29 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_28 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_28;

architecture SYN_BEHAVIORAL of PG_28 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_27 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_27;

architecture SYN_BEHAVIORAL of PG_27 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_26 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_26;

architecture SYN_BEHAVIORAL of PG_26 is

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
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_23 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_23;

architecture SYN_BEHAVIORAL of PG_23 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity PG_22 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_22;

architecture SYN_BEHAVIORAL of PG_22 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_21 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_21;

architecture SYN_BEHAVIORAL of PG_21 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity PG_20 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_20;

architecture SYN_BEHAVIORAL of PG_20 is

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
   
   U1 : AND2_X1 port map( A1 => P_IK, A2 => P_K_1, ZN => Px);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity PG_19 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_19;

architecture SYN_BEHAVIORAL of PG_19 is

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
   
   U1 : AOI21_X1 port map( B1 => G_K_1, B2 => P_IK, A => G_IK, ZN => n3);
   U2 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U3 : INV_X1 port map( A => n3, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity PG_18 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_18;

architecture SYN_BEHAVIORAL of PG_18 is

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
   
   U1 : AND2_X1 port map( A1 => P_IK, A2 => P_K_1, ZN => Px);
   U2 : INV_X1 port map( A => n3, ZN => Gx);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_15 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_15;

architecture SYN_BEHAVIORAL of PG_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => n4, A2 => G_IK, ZN => Gx);
   U2 : AND2_X1 port map( A1 => P_IK, A2 => G_K_1, ZN => n4);
   U3 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity PG_14 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_14;

architecture SYN_BEHAVIORAL of PG_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => n4, A2 => G_IK, ZN => Gx);
   U2 : AND2_X1 port map( A1 => P_IK, A2 => G_K_1, ZN => n4);
   U3 : AND2_X1 port map( A1 => P_IK, A2 => P_K_1, ZN => Px);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_12 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_12;

architecture SYN_BEHAVIORAL of PG_12 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_9 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_9;

architecture SYN_BEHAVIORAL of PG_9 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_7 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_7;

architecture SYN_BEHAVIORAL of PG_7 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gx);
   U2 : AND2_X1 port map( A1 => P_IK, A2 => P_K_1, ZN => Px);
   U3 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity PG_6 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_6;

architecture SYN_BEHAVIORAL of PG_6 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_5 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_5;

architecture SYN_BEHAVIORAL of PG_5 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_4 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_4;

architecture SYN_BEHAVIORAL of PG_4 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity PG_3 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_3;

architecture SYN_BEHAVIORAL of PG_3 is

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
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Gx);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity PG_2 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_2;

architecture SYN_BEHAVIORAL of PG_2 is

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity G_14 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_14;

architecture SYN_BEHAVIORAL of G_14 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity G_13 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_13;

architecture SYN_BEHAVIORAL of G_13 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity G_12 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_12;

architecture SYN_BEHAVIORAL of G_12 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity G_11 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_11;

architecture SYN_BEHAVIORAL of G_11 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity G_10 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_10;

architecture SYN_BEHAVIORAL of G_10 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity G_9 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_9;

architecture SYN_BEHAVIORAL of G_9 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity G_8 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_8;

architecture SYN_BEHAVIORAL of G_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4 : std_logic;

begin
   
   U1 : OR2_X2 port map( A1 => n4, A2 => G_IK, ZN => Gx);
   U2 : AND2_X1 port map( A1 => P_IK, A2 => G_K_1, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

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
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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

use work.CONV_PACK_booth_mul_N8.all;

entity G_3 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_3;

architecture SYN_BEHAVIORAL of G_3 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity G_2 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_2;

architecture SYN_BEHAVIORAL of G_2 is

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

use work.CONV_PACK_booth_mul_N8.all;

entity G_1 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_1;

architecture SYN_BEHAVIORAL of G_1 is

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

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity sum_generator_N16_NPB4_1 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic_vector (4
         downto 0);  S : out std_logic_vector (15 downto 0);  Co : out 
         std_logic);

end sum_generator_N16_NPB4_1;

architecture SYN_STRUCTURAL of sum_generator_N16_NPB4_1 is

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

begin
   Co <= Ci(4);
   
   csbi_0 : carry_select_block_NPB4_4 port map( A(3) => A(3), A(2) => A(2), 
                           A(1) => A(1), A(0) => A(0), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Ci => Ci(0), S(3) 
                           => S(3), S(2) => S(2), S(1) => S(1), S(0) => S(0));
   csbi_1 : carry_select_block_NPB4_3 port map( A(3) => A(7), A(2) => A(6), 
                           A(1) => A(5), A(0) => A(4), B(3) => B(7), B(2) => 
                           B(6), B(1) => B(5), B(0) => B(4), Ci => Ci(1), S(3) 
                           => S(7), S(2) => S(6), S(1) => S(5), S(0) => S(4));
   csbi_2 : carry_select_block_NPB4_2 port map( A(3) => A(11), A(2) => A(10), 
                           A(1) => A(9), A(0) => A(8), B(3) => B(11), B(2) => 
                           B(10), B(1) => B(9), B(0) => B(8), Ci => Ci(2), S(3)
                           => S(11), S(2) => S(10), S(1) => S(9), S(0) => S(8))
                           ;
   csbi_3 : carry_select_block_NPB4_1 port map( A(3) => A(15), A(2) => A(14), 
                           A(1) => A(13), A(0) => A(12), B(3) => B(15), B(2) =>
                           B(14), B(1) => B(13), B(0) => B(12), Ci => Ci(3), 
                           S(3) => S(15), S(2) => S(14), S(1) => S(13), S(0) =>
                           S(12));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity carry_generator_N16_NPB4_2 is

   port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (3 downto 0));

end carry_generator_N16_NPB4_2;

architecture SYN_STRUCTURAL of carry_generator_N16_NPB4_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component G_6
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component G_7
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
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
   
   component G_9
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
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
   
   component G_10
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   signal Co_3_port, Co_2_port, Co_1_port, Co_0_port, PG_Network_3_1_15_port, 
      PG_Network_3_0_15_port, PG_Network_2_1_15_port, PG_Network_2_1_11_port, 
      PG_Network_2_1_7_port, PG_Network_2_0_15_port, PG_Network_2_0_11_port, 
      PG_Network_2_0_7_port, PG_Network_1_1_15_port, PG_Network_1_1_13_port, 
      PG_Network_1_1_11_port, PG_Network_1_1_9_port, PG_Network_1_1_7_port, 
      PG_Network_1_1_5_port, PG_Network_1_1_3_port, PG_Network_1_1_1_port, 
      PG_Network_1_0_15_port, PG_Network_1_0_13_port, PG_Network_1_0_11_port, 
      PG_Network_1_0_9_port, PG_Network_1_0_7_port, PG_Network_1_0_5_port, 
      PG_Network_1_0_3_port, PG_Network_0_1_15_port, PG_Network_0_1_14_port, 
      PG_Network_0_1_13_port, PG_Network_0_1_12_port, PG_Network_0_1_11_port, 
      PG_Network_0_1_10_port, PG_Network_0_1_9_port, PG_Network_0_1_8_port, 
      PG_Network_0_1_7_port, PG_Network_0_1_6_port, PG_Network_0_1_5_port, 
      PG_Network_0_1_4_port, PG_Network_0_1_3_port, PG_Network_0_1_2_port, 
      PG_Network_0_1_1_port, PG_Network_0_0_15_port, PG_Network_0_0_14_port, 
      PG_Network_0_0_13_port, PG_Network_0_0_12_port, PG_Network_0_0_11_port, 
      PG_Network_0_0_10_port, PG_Network_0_0_9_port, PG_Network_0_0_8_port, 
      PG_Network_0_0_7_port, PG_Network_0_0_6_port, PG_Network_0_0_5_port, 
      PG_Network_0_0_4_port, PG_Network_0_0_3_port, PG_Network_0_0_2_port, 
      PG_Network_0_0_1_port, n5, n6, n7, n8, n9 : std_logic;

begin
   Co <= ( Co_3_port, Co_2_port, Co_1_port, Co_0_port );
   
   GJ_0_0_0 : G_10 port map( G_IK => PG_Network_0_1_1_port, P_IK => 
                           PG_Network_0_0_1_port, G_K_1 => n9, Gx => 
                           PG_Network_1_1_1_port);
   PGJ_0_1_0 : PG_22 port map( G_IK => PG_Network_0_1_3_port, P_IK => 
                           PG_Network_0_0_3_port, G_K_1 => 
                           PG_Network_0_1_2_port, P_K_1 => 
                           PG_Network_0_0_2_port, Gx => PG_Network_1_1_3_port, 
                           Px => PG_Network_1_0_3_port);
   PGJ_0_2_0 : PG_21 port map( G_IK => PG_Network_0_1_5_port, P_IK => 
                           PG_Network_0_0_5_port, G_K_1 => 
                           PG_Network_0_1_4_port, P_K_1 => 
                           PG_Network_0_0_4_port, Gx => PG_Network_1_1_5_port, 
                           Px => PG_Network_1_0_5_port);
   PGJ_0_3_0 : PG_20 port map( G_IK => PG_Network_0_1_7_port, P_IK => 
                           PG_Network_0_0_7_port, G_K_1 => 
                           PG_Network_0_1_6_port, P_K_1 => 
                           PG_Network_0_0_6_port, Gx => PG_Network_1_1_7_port, 
                           Px => PG_Network_1_0_7_port);
   PGJ_0_4_0 : PG_19 port map( G_IK => PG_Network_0_1_9_port, P_IK => 
                           PG_Network_0_0_9_port, G_K_1 => 
                           PG_Network_0_1_8_port, P_K_1 => 
                           PG_Network_0_0_8_port, Gx => PG_Network_1_1_9_port, 
                           Px => PG_Network_1_0_9_port);
   PGJ_0_5_0 : PG_18 port map( G_IK => PG_Network_0_1_11_port, P_IK => 
                           PG_Network_0_0_11_port, G_K_1 => 
                           PG_Network_0_1_10_port, P_K_1 => 
                           PG_Network_0_0_10_port, Gx => PG_Network_1_1_11_port
                           , Px => PG_Network_1_0_11_port);
   PGJ_0_6_0 : PG_17 port map( G_IK => PG_Network_0_1_13_port, P_IK => 
                           PG_Network_0_0_13_port, G_K_1 => 
                           PG_Network_0_1_12_port, P_K_1 => 
                           PG_Network_0_0_12_port, Gx => PG_Network_1_1_13_port
                           , Px => PG_Network_1_0_13_port);
   PGJ_0_7_0 : PG_16 port map( G_IK => PG_Network_0_1_15_port, P_IK => 
                           PG_Network_0_0_15_port, G_K_1 => 
                           PG_Network_0_1_14_port, P_K_1 => 
                           PG_Network_0_0_14_port, Gx => PG_Network_1_1_15_port
                           , Px => PG_Network_1_0_15_port);
   GJ_1_0_0 : G_9 port map( G_IK => PG_Network_1_1_3_port, P_IK => 
                           PG_Network_1_0_3_port, G_K_1 => 
                           PG_Network_1_1_1_port, Gx => Co_0_port);
   PGJ_1_1_0 : PG_15 port map( G_IK => PG_Network_1_1_7_port, P_IK => 
                           PG_Network_1_0_7_port, G_K_1 => 
                           PG_Network_1_1_5_port, P_K_1 => 
                           PG_Network_1_0_5_port, Gx => PG_Network_2_1_7_port, 
                           Px => PG_Network_2_0_7_port);
   PGJ_1_2_0 : PG_14 port map( G_IK => PG_Network_1_1_11_port, P_IK => 
                           PG_Network_1_0_11_port, G_K_1 => 
                           PG_Network_1_1_9_port, P_K_1 => 
                           PG_Network_1_0_9_port, Gx => PG_Network_2_1_11_port,
                           Px => PG_Network_2_0_11_port);
   PGJ_1_3_0 : PG_13 port map( G_IK => PG_Network_1_1_15_port, P_IK => 
                           PG_Network_1_0_15_port, G_K_1 => 
                           PG_Network_1_1_13_port, P_K_1 => 
                           PG_Network_1_0_13_port, Gx => PG_Network_2_1_15_port
                           , Px => PG_Network_2_0_15_port);
   GJ_2_0_0 : G_8 port map( G_IK => PG_Network_2_1_7_port, P_IK => 
                           PG_Network_2_0_7_port, G_K_1 => Co_0_port, Gx => 
                           Co_1_port);
   PGJ_2_1_0 : PG_12 port map( G_IK => PG_Network_2_1_15_port, P_IK => 
                           PG_Network_2_0_15_port, G_K_1 => n5, P_K_1 => 
                           PG_Network_2_0_11_port, Gx => PG_Network_3_1_15_port
                           , Px => PG_Network_3_0_15_port);
   GJ_3_0_0 : G_7 port map( G_IK => PG_Network_3_1_15_port, P_IK => 
                           PG_Network_3_0_15_port, G_K_1 => Co_1_port, Gx => 
                           Co_3_port);
   GJ_3_0_1 : G_6 port map( G_IK => PG_Network_2_1_11_port, P_IK => 
                           PG_Network_2_0_11_port, G_K_1 => Co_1_port, Gx => 
                           Co_2_port);
   U20 : XOR2_X1 port map( A => B(9), B => A(9), Z => PG_Network_0_0_9_port);
   U21 : XOR2_X1 port map( A => B(8), B => A(8), Z => PG_Network_0_0_8_port);
   U22 : XOR2_X1 port map( A => B(7), B => A(7), Z => PG_Network_0_0_7_port);
   U23 : XOR2_X1 port map( A => B(6), B => A(6), Z => PG_Network_0_0_6_port);
   U24 : XOR2_X1 port map( A => B(5), B => A(5), Z => PG_Network_0_0_5_port);
   U25 : XOR2_X1 port map( A => B(4), B => A(4), Z => PG_Network_0_0_4_port);
   U26 : XOR2_X1 port map( A => B(3), B => A(3), Z => PG_Network_0_0_3_port);
   U27 : XOR2_X1 port map( A => B(2), B => A(2), Z => PG_Network_0_0_2_port);
   U28 : XOR2_X1 port map( A => B(1), B => A(1), Z => PG_Network_0_0_1_port);
   U29 : XOR2_X1 port map( A => B(15), B => A(15), Z => PG_Network_0_0_15_port)
                           ;
   U30 : XOR2_X1 port map( A => B(14), B => A(14), Z => PG_Network_0_0_14_port)
                           ;
   U31 : XOR2_X1 port map( A => B(13), B => A(13), Z => PG_Network_0_0_13_port)
                           ;
   U32 : XOR2_X1 port map( A => B(12), B => A(12), Z => PG_Network_0_0_12_port)
                           ;
   U33 : XOR2_X1 port map( A => B(11), B => A(11), Z => PG_Network_0_0_11_port)
                           ;
   U34 : XOR2_X1 port map( A => B(10), B => A(10), Z => PG_Network_0_0_10_port)
                           ;
   U1 : AND2_X1 port map( A1 => A(6), A2 => B(6), ZN => PG_Network_0_1_6_port);
   U2 : AND2_X1 port map( A1 => A(10), A2 => B(10), ZN => 
                           PG_Network_0_1_10_port);
   U3 : AND2_X1 port map( A1 => A(9), A2 => B(9), ZN => PG_Network_0_1_9_port);
   U4 : AND2_X1 port map( A1 => A(5), A2 => B(5), ZN => PG_Network_0_1_5_port);
   U5 : AND2_X1 port map( A1 => A(4), A2 => B(4), ZN => PG_Network_0_1_4_port);
   U6 : AND2_X1 port map( A1 => A(3), A2 => B(3), ZN => PG_Network_0_1_3_port);
   U7 : AND2_X1 port map( A1 => A(2), A2 => B(2), ZN => PG_Network_0_1_2_port);
   U8 : INV_X1 port map( A => n7, ZN => n9);
   U9 : AND2_X1 port map( A1 => A(1), A2 => B(1), ZN => PG_Network_0_1_1_port);
   U10 : AND2_X1 port map( A1 => A(13), A2 => B(13), ZN => 
                           PG_Network_0_1_13_port);
   U11 : AND2_X1 port map( A1 => A(12), A2 => B(12), ZN => 
                           PG_Network_0_1_12_port);
   U12 : AND2_X1 port map( A1 => A(15), A2 => B(15), ZN => 
                           PG_Network_0_1_15_port);
   U13 : AND2_X1 port map( A1 => A(14), A2 => B(14), ZN => 
                           PG_Network_0_1_14_port);
   U14 : AOI21_X1 port map( B1 => A(0), B2 => B(0), A => n8, ZN => n7);
   U15 : INV_X1 port map( A => n6, ZN => n8);
   U16 : OAI21_X1 port map( B1 => A(0), B2 => B(0), A => Cin, ZN => n6);
   U17 : AND2_X1 port map( A1 => A(8), A2 => B(8), ZN => PG_Network_0_1_8_port)
                           ;
   U18 : CLKBUF_X1 port map( A => PG_Network_2_1_11_port, Z => n5);
   U19 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => 
                           PG_Network_0_1_11_port);
   U35 : AND2_X1 port map( A1 => B(7), A2 => A(7), ZN => PG_Network_0_1_7_port)
                           ;

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity carry_generator_N16_NPB4_1 is

   port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (3 downto 0));

end carry_generator_N16_NPB4_1;

architecture SYN_STRUCTURAL of carry_generator_N16_NPB4_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
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
   
   component PG_1
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component G_3
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component PG_2
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_3
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_4
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component G_4
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component PG_5
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
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
   
   component G_5
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   signal Co_3_port, Co_2_port, Co_1_port, Co_0_port, PG_Network_3_1_15_port, 
      PG_Network_3_0_15_port, PG_Network_2_1_15_port, PG_Network_2_1_11_port, 
      PG_Network_2_1_7_port, PG_Network_2_0_15_port, PG_Network_2_0_11_port, 
      PG_Network_2_0_7_port, PG_Network_1_1_15_port, PG_Network_1_1_13_port, 
      PG_Network_1_1_11_port, PG_Network_1_1_9_port, PG_Network_1_1_7_port, 
      PG_Network_1_1_5_port, PG_Network_1_1_3_port, PG_Network_1_1_1_port, 
      PG_Network_1_0_15_port, PG_Network_1_0_13_port, PG_Network_1_0_11_port, 
      PG_Network_1_0_9_port, PG_Network_1_0_7_port, PG_Network_1_0_5_port, 
      PG_Network_1_0_3_port, PG_Network_0_1_15_port, PG_Network_0_1_14_port, 
      PG_Network_0_1_13_port, PG_Network_0_1_12_port, PG_Network_0_1_11_port, 
      PG_Network_0_1_10_port, PG_Network_0_1_9_port, PG_Network_0_1_8_port, 
      PG_Network_0_1_7_port, PG_Network_0_1_6_port, PG_Network_0_1_5_port, 
      PG_Network_0_1_4_port, PG_Network_0_1_3_port, PG_Network_0_1_2_port, 
      PG_Network_0_1_1_port, PG_Network_0_0_15_port, PG_Network_0_0_14_port, 
      PG_Network_0_0_13_port, PG_Network_0_0_12_port, PG_Network_0_0_11_port, 
      PG_Network_0_0_10_port, PG_Network_0_0_9_port, PG_Network_0_0_8_port, 
      PG_Network_0_0_7_port, PG_Network_0_0_6_port, PG_Network_0_0_5_port, 
      PG_Network_0_0_4_port, PG_Network_0_0_3_port, PG_Network_0_0_2_port, 
      PG_Network_0_0_1_port, n5, n6, n7, n8, n9, n10, n11, n12 : std_logic;

begin
   Co <= ( Co_3_port, Co_2_port, Co_1_port, Co_0_port );
   
   GJ_0_0_0 : G_5 port map( G_IK => PG_Network_0_1_1_port, P_IK => 
                           PG_Network_0_0_1_port, G_K_1 => n12, Gx => 
                           PG_Network_1_1_1_port);
   PGJ_0_1_0 : PG_11 port map( G_IK => PG_Network_0_1_3_port, P_IK => 
                           PG_Network_0_0_3_port, G_K_1 => 
                           PG_Network_0_1_2_port, P_K_1 => 
                           PG_Network_0_0_2_port, Gx => PG_Network_1_1_3_port, 
                           Px => PG_Network_1_0_3_port);
   PGJ_0_2_0 : PG_10 port map( G_IK => PG_Network_0_1_5_port, P_IK => 
                           PG_Network_0_0_5_port, G_K_1 => 
                           PG_Network_0_1_4_port, P_K_1 => 
                           PG_Network_0_0_4_port, Gx => PG_Network_1_1_5_port, 
                           Px => PG_Network_1_0_5_port);
   PGJ_0_3_0 : PG_9 port map( G_IK => PG_Network_0_1_7_port, P_IK => 
                           PG_Network_0_0_7_port, G_K_1 => 
                           PG_Network_0_1_6_port, P_K_1 => 
                           PG_Network_0_0_6_port, Gx => PG_Network_1_1_7_port, 
                           Px => PG_Network_1_0_7_port);
   PGJ_0_4_0 : PG_8 port map( G_IK => PG_Network_0_1_9_port, P_IK => 
                           PG_Network_0_0_9_port, G_K_1 => 
                           PG_Network_0_1_8_port, P_K_1 => 
                           PG_Network_0_0_8_port, Gx => PG_Network_1_1_9_port, 
                           Px => PG_Network_1_0_9_port);
   PGJ_0_5_0 : PG_7 port map( G_IK => PG_Network_0_1_11_port, P_IK => 
                           PG_Network_0_0_11_port, G_K_1 => 
                           PG_Network_0_1_10_port, P_K_1 => 
                           PG_Network_0_0_10_port, Gx => PG_Network_1_1_11_port
                           , Px => PG_Network_1_0_11_port);
   PGJ_0_6_0 : PG_6 port map( G_IK => PG_Network_0_1_13_port, P_IK => 
                           PG_Network_0_0_13_port, G_K_1 => 
                           PG_Network_0_1_12_port, P_K_1 => 
                           PG_Network_0_0_12_port, Gx => PG_Network_1_1_13_port
                           , Px => PG_Network_1_0_13_port);
   PGJ_0_7_0 : PG_5 port map( G_IK => PG_Network_0_1_15_port, P_IK => 
                           PG_Network_0_0_15_port, G_K_1 => 
                           PG_Network_0_1_14_port, P_K_1 => 
                           PG_Network_0_0_14_port, Gx => PG_Network_1_1_15_port
                           , Px => PG_Network_1_0_15_port);
   GJ_1_0_0 : G_4 port map( G_IK => PG_Network_1_1_3_port, P_IK => 
                           PG_Network_1_0_3_port, G_K_1 => 
                           PG_Network_1_1_1_port, Gx => Co_0_port);
   PGJ_1_1_0 : PG_4 port map( G_IK => PG_Network_1_1_7_port, P_IK => 
                           PG_Network_1_0_7_port, G_K_1 => 
                           PG_Network_1_1_5_port, P_K_1 => 
                           PG_Network_1_0_5_port, Gx => PG_Network_2_1_7_port, 
                           Px => PG_Network_2_0_7_port);
   PGJ_1_2_0 : PG_3 port map( G_IK => PG_Network_1_1_11_port, P_IK => 
                           PG_Network_1_0_11_port, G_K_1 => 
                           PG_Network_1_1_9_port, P_K_1 => 
                           PG_Network_1_0_9_port, Gx => PG_Network_2_1_11_port,
                           Px => PG_Network_2_0_11_port);
   PGJ_1_3_0 : PG_2 port map( G_IK => PG_Network_1_1_15_port, P_IK => 
                           PG_Network_1_0_15_port, G_K_1 => 
                           PG_Network_1_1_13_port, P_K_1 => 
                           PG_Network_1_0_13_port, Gx => PG_Network_2_1_15_port
                           , Px => PG_Network_2_0_15_port);
   GJ_2_0_0 : G_3 port map( G_IK => PG_Network_2_1_7_port, P_IK => 
                           PG_Network_2_0_7_port, G_K_1 => Co_0_port, Gx => 
                           Co_1_port);
   PGJ_2_1_0 : PG_1 port map( G_IK => PG_Network_2_1_15_port, P_IK => 
                           PG_Network_2_0_15_port, G_K_1 => 
                           PG_Network_2_1_11_port, P_K_1 => 
                           PG_Network_2_0_11_port, Gx => PG_Network_3_1_15_port
                           , Px => PG_Network_3_0_15_port);
   GJ_3_0_0 : G_2 port map( G_IK => PG_Network_3_1_15_port, P_IK => 
                           PG_Network_3_0_15_port, G_K_1 => Co_1_port, Gx => 
                           Co_3_port);
   GJ_3_0_1 : G_1 port map( G_IK => PG_Network_2_1_11_port, P_IK => 
                           PG_Network_2_0_11_port, G_K_1 => Co_1_port, Gx => 
                           Co_2_port);
   U20 : XOR2_X1 port map( A => B(9), B => A(9), Z => PG_Network_0_0_9_port);
   U21 : XOR2_X1 port map( A => B(8), B => A(8), Z => PG_Network_0_0_8_port);
   U22 : XOR2_X1 port map( A => B(7), B => A(7), Z => PG_Network_0_0_7_port);
   U23 : XOR2_X1 port map( A => B(6), B => A(6), Z => PG_Network_0_0_6_port);
   U24 : XOR2_X1 port map( A => B(5), B => A(5), Z => PG_Network_0_0_5_port);
   U25 : XOR2_X1 port map( A => B(4), B => A(4), Z => PG_Network_0_0_4_port);
   U26 : XOR2_X1 port map( A => B(3), B => A(3), Z => PG_Network_0_0_3_port);
   U27 : XOR2_X1 port map( A => B(2), B => A(2), Z => PG_Network_0_0_2_port);
   U28 : XOR2_X1 port map( A => B(1), B => A(1), Z => PG_Network_0_0_1_port);
   U29 : XOR2_X1 port map( A => B(15), B => A(15), Z => PG_Network_0_0_15_port)
                           ;
   U30 : XOR2_X1 port map( A => B(14), B => A(14), Z => PG_Network_0_0_14_port)
                           ;
   U31 : XOR2_X1 port map( A => B(13), B => A(13), Z => PG_Network_0_0_13_port)
                           ;
   U32 : XOR2_X1 port map( A => B(12), B => A(12), Z => PG_Network_0_0_12_port)
                           ;
   U34 : XOR2_X1 port map( A => B(10), B => A(10), Z => PG_Network_0_0_10_port)
                           ;
   U1 : NAND2_X1 port map( A1 => B(11), A2 => n6, ZN => n7);
   U2 : NAND2_X1 port map( A1 => n5, A2 => A(11), ZN => n8);
   U3 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => PG_Network_0_0_11_port);
   U4 : INV_X1 port map( A => B(11), ZN => n5);
   U5 : INV_X1 port map( A => A(11), ZN => n6);
   U6 : AND2_X1 port map( A1 => A(6), A2 => B(6), ZN => PG_Network_0_1_6_port);
   U7 : AND2_X1 port map( A1 => A(7), A2 => B(7), ZN => PG_Network_0_1_7_port);
   U8 : AND2_X1 port map( A1 => A(10), A2 => B(10), ZN => 
                           PG_Network_0_1_10_port);
   U9 : AND2_X1 port map( A1 => A(9), A2 => B(9), ZN => PG_Network_0_1_9_port);
   U10 : AND2_X1 port map( A1 => A(8), A2 => B(8), ZN => PG_Network_0_1_8_port)
                           ;
   U11 : AND2_X1 port map( A1 => A(13), A2 => B(13), ZN => 
                           PG_Network_0_1_13_port);
   U12 : AND2_X1 port map( A1 => A(15), A2 => B(15), ZN => 
                           PG_Network_0_1_15_port);
   U13 : AND2_X1 port map( A1 => A(14), A2 => B(14), ZN => 
                           PG_Network_0_1_14_port);
   U14 : AND2_X1 port map( A1 => A(3), A2 => B(3), ZN => PG_Network_0_1_3_port)
                           ;
   U15 : AND2_X1 port map( A1 => A(2), A2 => B(2), ZN => PG_Network_0_1_2_port)
                           ;
   U16 : INV_X1 port map( A => n10, ZN => n12);
   U17 : AND2_X1 port map( A1 => A(1), A2 => B(1), ZN => PG_Network_0_1_1_port)
                           ;
   U18 : AND2_X1 port map( A1 => A(4), A2 => B(4), ZN => PG_Network_0_1_4_port)
                           ;
   U19 : AND2_X1 port map( A1 => A(5), A2 => B(5), ZN => PG_Network_0_1_5_port)
                           ;
   U33 : AOI21_X1 port map( B1 => A(0), B2 => B(0), A => n11, ZN => n10);
   U35 : INV_X1 port map( A => n9, ZN => n11);
   U36 : OAI21_X1 port map( B1 => A(0), B2 => B(0), A => Cin, ZN => n9);
   U37 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => 
                           PG_Network_0_1_11_port);
   U38 : AND2_X1 port map( A1 => A(12), A2 => B(12), ZN => 
                           PG_Network_0_1_12_port);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity P4_ADDER_N16_1 is

   port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (15 downto 0);  Cout : out std_logic);

end P4_ADDER_N16_1;

architecture SYN_STRUCTURAL of P4_ADDER_N16_1 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component sum_generator_N16_NPB4_1
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic_vector
            (4 downto 0);  S : out std_logic_vector (15 downto 0);  Co : out 
            std_logic);
   end component;
   
   component carry_generator_N16_NPB4_1
      port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (3 downto 0));
   end component;
   
   signal CoutCgen_4_port, CoutCgen_3_port, CoutCgen_2_port, CoutCgen_1_port, 
      n1, n2, n3 : std_logic;

begin
   
   CGEN : carry_generator_N16_NPB4_1 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(15) => B(15), B(14) => B(14), B(13) => n1, B(12) 
                           => n3, B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Cin => Cin, Co(3) => 
                           CoutCgen_4_port, Co(2) => CoutCgen_3_port, Co(1) => 
                           CoutCgen_2_port, Co(0) => CoutCgen_1_port);
   SGEN : sum_generator_N16_NPB4_1 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => n2, B(10) => B(10), B(9) =>
                           B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5)
                           => B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), 
                           B(1) => B(1), B(0) => B(0), Ci(4) => CoutCgen_4_port
                           , Ci(3) => CoutCgen_3_port, Ci(2) => CoutCgen_2_port
                           , Ci(1) => CoutCgen_1_port, Ci(0) => Cin, S(15) => 
                           S(15), S(14) => S(14), S(13) => S(13), S(12) => 
                           S(12), S(11) => S(11), S(10) => S(10), S(9) => S(9),
                           S(8) => S(8), S(7) => S(7), S(6) => S(6), S(5) => 
                           S(5), S(4) => S(4), S(3) => S(3), S(2) => S(2), S(1)
                           => S(1), S(0) => S(0), Co => Cout);
   U1 : CLKBUF_X1 port map( A => B(13), Z => n1);
   U2 : CLKBUF_X1 port map( A => B(11), Z => n2);
   U3 : CLKBUF_X1 port map( A => B(12), Z => n3);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX_booth_N16_3 is

   port( A, B, C, D, E : in std_logic_vector (15 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX_booth_N16_3;

architecture SYN_BEHAVIORAL of MUX_booth_N16_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X3
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68
      , n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, 
      n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97
      , n98, n99, n100 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => n55, Z => n54);
   U2 : OR2_X1 port map( A1 => n58, A2 => n59, ZN => Y(4));
   U3 : BUF_X2 port map( A => n51, Z => n52);
   U4 : BUF_X1 port map( A => n40, Z => n48);
   U5 : NAND2_X1 port map( A1 => n85, A2 => n84, ZN => Y(5));
   U6 : BUF_X1 port map( A => n96, Z => n49);
   U7 : BUF_X1 port map( A => n94, Z => n40);
   U8 : BUF_X1 port map( A => n93, Z => n51);
   U9 : NAND2_X1 port map( A1 => n82, A2 => n81, ZN => Y(3));
   U10 : BUF_X2 port map( A => n57, Z => n41);
   U11 : NAND2_X1 port map( A1 => D(3), A2 => n50, ZN => n42);
   U12 : NAND2_X1 port map( A1 => n95, A2 => E(3), ZN => n43);
   U13 : NAND2_X1 port map( A1 => A(3), A2 => n48, ZN => n44);
   U14 : AND3_X1 port map( A1 => n42, A2 => n43, A3 => n44, ZN => n81);
   U15 : BUF_X1 port map( A => sel(0), Z => n45);
   U16 : NOR3_X1 port map( A1 => n99, A2 => sel(2), A3 => sel(1), ZN => n93);
   U17 : NOR3_X1 port map( A1 => n100, A2 => sel(2), A3 => n99, ZN => n46);
   U18 : CLKBUF_X1 port map( A => n57, Z => n47);
   U19 : NOR3_X1 port map( A1 => n100, A2 => sel(2), A3 => n99, ZN => n96);
   U20 : NAND2_X1 port map( A1 => n70, A2 => n69, ZN => Y(12));
   U21 : NAND2_X1 port map( A1 => n74, A2 => n73, ZN => Y(14));
   U22 : NAND2_X1 port map( A1 => n87, A2 => n86, ZN => Y(6));
   U23 : NAND2_X1 port map( A1 => n98, A2 => n97, ZN => Y(9));
   U24 : NAND2_X1 port map( A1 => n72, A2 => n71, ZN => Y(13));
   U25 : NAND2_X1 port map( A1 => n76, A2 => n75, ZN => Y(15));
   U26 : NAND2_X1 port map( A1 => n68, A2 => n67, ZN => Y(11));
   U27 : NAND2_X1 port map( A1 => n66, A2 => n65, ZN => Y(10));
   U28 : NAND2_X1 port map( A1 => n80, A2 => n79, ZN => Y(2));
   U29 : NAND2_X1 port map( A1 => n64, A2 => n63, ZN => Y(0));
   U30 : NAND2_X1 port map( A1 => n78, A2 => n77, ZN => Y(1));
   U31 : BUF_X1 port map( A => n92, Z => n55);
   U32 : CLKBUF_X3 port map( A => n46, Z => n50);
   U33 : NOR3_X1 port map( A1 => n100, A2 => sel(2), A3 => n45, ZN => n92);
   U34 : NOR4_X1 port map( A1 => n94, A2 => n96, A3 => n93, A4 => n92, ZN => 
                           n56);
   U35 : CLKBUF_X1 port map( A => n55, Z => n53);
   U36 : NOR3_X1 port map( A1 => n45, A2 => sel(2), A3 => sel(1), ZN => n94);
   U37 : NAND2_X1 port map( A1 => n89, A2 => n88, ZN => Y(7));
   U38 : AOI222_X1 port map( A1 => D(0), A2 => n50, B1 => E(0), B2 => n41, C1 
                           => A(0), C2 => n48, ZN => n63);
   U39 : AOI222_X1 port map( A1 => D(1), A2 => n50, B1 => E(1), B2 => n41, C1 
                           => A(1), C2 => n48, ZN => n77);
   U40 : AOI222_X1 port map( A1 => D(2), A2 => n50, B1 => E(2), B2 => n41, C1 
                           => A(2), C2 => n48, ZN => n79);
   U41 : AOI222_X1 port map( A1 => D(9), A2 => n50, B1 => E(9), B2 => n57, C1 
                           => A(9), C2 => n48, ZN => n97);
   U42 : AOI222_X1 port map( A1 => D(10), A2 => n50, B1 => E(10), B2 => n41, C1
                           => A(10), C2 => n48, ZN => n65);
   U43 : AOI222_X1 port map( A1 => D(13), A2 => n50, B1 => E(13), B2 => n41, C1
                           => A(13), C2 => n48, ZN => n71);
   U44 : AOI222_X1 port map( A1 => D(15), A2 => n50, B1 => E(15), B2 => n41, C1
                           => A(15), C2 => n48, ZN => n75);
   U45 : AOI222_X1 port map( A1 => D(6), A2 => n50, B1 => E(6), B2 => n56, C1 
                           => A(6), C2 => n48, ZN => n86);
   U46 : AOI222_X1 port map( A1 => D(7), A2 => n50, B1 => n95, B2 => E(7), C1 
                           => A(7), C2 => n48, ZN => n88);
   U47 : AOI22_X1 port map( A1 => B(1), A2 => n52, B1 => C(1), B2 => n53, ZN =>
                           n78);
   U48 : AOI22_X1 port map( A1 => B(0), A2 => n52, B1 => C(0), B2 => n53, ZN =>
                           n64);
   U49 : AOI22_X1 port map( A1 => B(15), A2 => n52, B1 => C(15), B2 => n53, ZN 
                           => n76);
   U50 : AOI22_X1 port map( A1 => B(14), A2 => n52, B1 => C(14), B2 => n53, ZN 
                           => n74);
   U51 : AOI22_X1 port map( A1 => B(13), A2 => n52, B1 => C(13), B2 => n53, ZN 
                           => n72);
   U52 : AOI22_X1 port map( A1 => B(12), A2 => n52, B1 => C(12), B2 => n53, ZN 
                           => n70);
   U53 : AOI22_X1 port map( A1 => B(10), A2 => n52, B1 => C(10), B2 => n53, ZN 
                           => n66);
   U54 : AOI22_X1 port map( A1 => B(11), A2 => n52, B1 => C(11), B2 => n53, ZN 
                           => n68);
   U55 : AOI22_X1 port map( A1 => B(9), A2 => n52, B1 => C(9), B2 => n53, ZN =>
                           n98);
   U56 : AOI22_X1 port map( A1 => B(6), A2 => n52, B1 => C(6), B2 => n54, ZN =>
                           n87);
   U57 : AOI22_X1 port map( A1 => B(2), A2 => n52, B1 => C(2), B2 => n54, ZN =>
                           n80);
   U58 : AOI22_X1 port map( A1 => B(8), A2 => n52, B1 => C(8), B2 => n54, ZN =>
                           n91);
   U59 : AOI22_X1 port map( A1 => B(7), A2 => n52, B1 => C(7), B2 => n54, ZN =>
                           n89);
   U60 : AOI22_X1 port map( A1 => B(5), A2 => n52, B1 => C(5), B2 => n54, ZN =>
                           n85);
   U61 : AOI22_X1 port map( A1 => B(3), A2 => n52, B1 => C(3), B2 => n54, ZN =>
                           n82);
   U62 : AOI22_X1 port map( A1 => B(4), A2 => n51, B1 => n55, B2 => C(4), ZN =>
                           n83);
   U63 : AOI222_X1 port map( A1 => D(11), A2 => n50, B1 => E(11), B2 => n47, C1
                           => A(11), C2 => n48, ZN => n67);
   U64 : AOI222_X1 port map( A1 => D(14), A2 => n50, B1 => E(14), B2 => n47, C1
                           => A(14), C2 => n48, ZN => n73);
   U65 : AOI222_X1 port map( A1 => D(12), A2 => n50, B1 => E(12), B2 => n47, C1
                           => A(12), C2 => n48, ZN => n69);
   U66 : NOR4_X1 port map( A1 => n40, A2 => n49, A3 => n51, A4 => n55, ZN => 
                           n57);
   U67 : NOR4_X1 port map( A1 => n94, A2 => n46, A3 => n93, A4 => n92, ZN => 
                           n95);
   U68 : INV_X1 port map( A => sel(0), ZN => n99);
   U69 : AND2_X1 port map( A1 => n95, A2 => E(4), ZN => n58);
   U70 : NAND2_X1 port map( A1 => n83, A2 => n60, ZN => n59);
   U71 : AOI222_X1 port map( A1 => D(5), A2 => n50, B1 => E(5), B2 => n56, C1 
                           => A(5), C2 => n48, ZN => n84);
   U72 : AND2_X1 port map( A1 => n61, A2 => n62, ZN => n60);
   U73 : NAND2_X1 port map( A1 => n91, A2 => n90, ZN => Y(8));
   U74 : AOI222_X1 port map( A1 => D(8), A2 => n50, B1 => E(8), B2 => n56, C1 
                           => A(8), C2 => n48, ZN => n90);
   U75 : NAND2_X1 port map( A1 => D(4), A2 => n49, ZN => n61);
   U76 : NAND2_X1 port map( A1 => A(4), A2 => n48, ZN => n62);
   U77 : INV_X1 port map( A => sel(1), ZN => n100);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX_booth_N16_2 is

   port( A, B, C, D, E : in std_logic_vector (15 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX_booth_N16_2;

architecture SYN_BEHAVIORAL of MUX_booth_N16_2 is

   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X4
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68
      , n69, n70, n71, n72, n73, n74, n75, n76, n77, n78 : std_logic;

begin
   
   U1 : NOR4_X4 port map( A1 => n72, A2 => n74, A3 => n71, A4 => n70, ZN => n73
                           );
   U2 : INV_X1 port map( A => sel(1), ZN => n78);
   U3 : INV_X1 port map( A => sel(0), ZN => n77);
   U4 : NAND2_X1 port map( A1 => n63, A2 => n62, ZN => Y(5));
   U5 : AOI22_X1 port map( A1 => B(5), A2 => n71, B1 => C(5), B2 => n70, ZN => 
                           n63);
   U6 : NAND2_X1 port map( A1 => n65, A2 => n64, ZN => Y(6));
   U7 : AOI22_X1 port map( A1 => B(6), A2 => n71, B1 => C(6), B2 => n70, ZN => 
                           n65);
   U8 : NAND2_X1 port map( A1 => n49, A2 => n48, ZN => Y(13));
   U9 : AOI22_X1 port map( A1 => B(13), A2 => n71, B1 => C(13), B2 => n70, ZN 
                           => n49);
   U10 : NAND2_X1 port map( A1 => n51, A2 => n50, ZN => Y(14));
   U11 : AOI22_X1 port map( A1 => B(14), A2 => n71, B1 => C(14), B2 => n70, ZN 
                           => n51);
   U12 : NAND2_X1 port map( A1 => n53, A2 => n52, ZN => Y(15));
   U13 : AOI22_X1 port map( A1 => B(15), A2 => n71, B1 => C(15), B2 => n70, ZN 
                           => n53);
   U14 : NAND2_X1 port map( A1 => n43, A2 => n42, ZN => Y(10));
   U15 : AOI22_X1 port map( A1 => B(10), A2 => n71, B1 => C(10), B2 => n70, ZN 
                           => n43);
   U16 : NAND2_X1 port map( A1 => n47, A2 => n46, ZN => Y(12));
   U17 : AOI22_X1 port map( A1 => B(12), A2 => n71, B1 => C(12), B2 => n70, ZN 
                           => n47);
   U18 : NAND2_X1 port map( A1 => n76, A2 => n75, ZN => Y(9));
   U19 : AOI22_X1 port map( A1 => B(9), A2 => n71, B1 => C(9), B2 => n70, ZN =>
                           n76);
   U20 : NAND2_X1 port map( A1 => n61, A2 => n60, ZN => Y(4));
   U21 : AOI22_X1 port map( A1 => B(4), A2 => n71, B1 => C(4), B2 => n70, ZN =>
                           n61);
   U22 : NAND2_X1 port map( A1 => n45, A2 => n44, ZN => Y(11));
   U23 : AOI22_X1 port map( A1 => B(11), A2 => n71, B1 => C(11), B2 => n70, ZN 
                           => n45);
   U24 : NAND2_X1 port map( A1 => n69, A2 => n68, ZN => Y(8));
   U25 : AOI22_X1 port map( A1 => B(8), A2 => n71, B1 => C(8), B2 => n70, ZN =>
                           n69);
   U26 : NAND2_X1 port map( A1 => n67, A2 => n66, ZN => Y(7));
   U27 : AOI22_X1 port map( A1 => B(7), A2 => n71, B1 => C(7), B2 => n70, ZN =>
                           n67);
   U28 : NAND2_X1 port map( A1 => n41, A2 => n40, ZN => Y(0));
   U29 : AOI22_X1 port map( A1 => B(0), A2 => n71, B1 => C(0), B2 => n70, ZN =>
                           n41);
   U30 : NAND2_X1 port map( A1 => n55, A2 => n54, ZN => Y(1));
   U31 : AOI22_X1 port map( A1 => B(1), A2 => n71, B1 => C(1), B2 => n70, ZN =>
                           n55);
   U32 : NAND2_X1 port map( A1 => n57, A2 => n56, ZN => Y(2));
   U33 : AOI22_X1 port map( A1 => B(2), A2 => n71, B1 => C(2), B2 => n70, ZN =>
                           n57);
   U34 : NAND2_X1 port map( A1 => n59, A2 => n58, ZN => Y(3));
   U35 : AOI22_X1 port map( A1 => B(3), A2 => n71, B1 => C(3), B2 => n70, ZN =>
                           n59);
   U36 : AOI222_X1 port map( A1 => D(4), A2 => n74, B1 => E(4), B2 => n73, C1 
                           => A(4), C2 => n72, ZN => n60);
   U37 : AOI222_X1 port map( A1 => D(3), A2 => n74, B1 => E(3), B2 => n73, C1 
                           => A(3), C2 => n72, ZN => n58);
   U38 : AOI222_X1 port map( A1 => D(2), A2 => n74, B1 => E(2), B2 => n73, C1 
                           => A(2), C2 => n72, ZN => n56);
   U39 : AOI222_X1 port map( A1 => D(1), A2 => n74, B1 => E(1), B2 => n73, C1 
                           => A(1), C2 => n72, ZN => n54);
   U40 : AOI222_X1 port map( A1 => D(0), A2 => n74, B1 => E(0), B2 => n73, C1 
                           => A(0), C2 => n72, ZN => n40);
   U41 : AOI222_X1 port map( A1 => D(15), A2 => n74, B1 => E(15), B2 => n73, C1
                           => A(15), C2 => n72, ZN => n52);
   U42 : AOI222_X1 port map( A1 => D(14), A2 => n74, B1 => E(14), B2 => n73, C1
                           => A(14), C2 => n72, ZN => n50);
   U43 : AOI222_X1 port map( A1 => D(13), A2 => n74, B1 => E(13), B2 => n73, C1
                           => A(13), C2 => n72, ZN => n48);
   U44 : AOI222_X1 port map( A1 => D(12), A2 => n74, B1 => E(12), B2 => n73, C1
                           => A(12), C2 => n72, ZN => n46);
   U45 : AOI222_X1 port map( A1 => D(10), A2 => n74, B1 => E(10), B2 => n73, C1
                           => A(10), C2 => n72, ZN => n42);
   U46 : AOI222_X1 port map( A1 => D(9), A2 => n74, B1 => E(9), B2 => n73, C1 
                           => A(9), C2 => n72, ZN => n75);
   U47 : AOI222_X1 port map( A1 => D(11), A2 => n74, B1 => E(11), B2 => n73, C1
                           => A(11), C2 => n72, ZN => n44);
   U48 : AOI222_X1 port map( A1 => D(8), A2 => n74, B1 => E(8), B2 => n73, C1 
                           => A(8), C2 => n72, ZN => n68);
   U49 : AOI222_X1 port map( A1 => D(6), A2 => n74, B1 => E(6), B2 => n73, C1 
                           => A(6), C2 => n72, ZN => n64);
   U50 : AOI222_X1 port map( A1 => D(7), A2 => n74, B1 => E(7), B2 => n73, C1 
                           => A(7), C2 => n72, ZN => n66);
   U51 : AOI222_X1 port map( A1 => D(5), A2 => n74, B1 => E(5), B2 => n73, C1 
                           => A(5), C2 => n72, ZN => n62);
   U52 : NOR3_X4 port map( A1 => sel(1), A2 => sel(2), A3 => n77, ZN => n71);
   U53 : NOR3_X4 port map( A1 => sel(0), A2 => sel(2), A3 => n78, ZN => n70);
   U54 : NOR3_X4 port map( A1 => n78, A2 => sel(2), A3 => n77, ZN => n74);
   U55 : NOR3_X4 port map( A1 => sel(1), A2 => sel(2), A3 => sel(0), ZN => n72)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX_booth_N16_1 is

   port( A, B, C, D, E : in std_logic_vector (15 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX_booth_N16_1;

architecture SYN_BEHAVIORAL of MUX_booth_N16_1 is

   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X4
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68
      , n69, n70, n71, n72, n73, n74, n75, n76, n77, n78 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n45, A2 => n44, ZN => Y(11));
   U2 : NOR4_X4 port map( A1 => n72, A2 => n74, A3 => n71, A4 => n70, ZN => n73
                           );
   U3 : INV_X1 port map( A => sel(1), ZN => n78);
   U4 : INV_X1 port map( A => sel(0), ZN => n77);
   U5 : NAND2_X1 port map( A1 => n76, A2 => n75, ZN => Y(9));
   U6 : AOI22_X1 port map( A1 => B(9), A2 => n71, B1 => C(9), B2 => n70, ZN => 
                           n76);
   U7 : AOI222_X1 port map( A1 => D(9), A2 => n74, B1 => E(9), B2 => n73, C1 =>
                           A(9), C2 => n72, ZN => n75);
   U8 : NAND2_X1 port map( A1 => n67, A2 => n66, ZN => Y(7));
   U9 : AOI22_X1 port map( A1 => B(7), A2 => n71, B1 => C(7), B2 => n70, ZN => 
                           n67);
   U10 : AOI222_X1 port map( A1 => D(7), A2 => n74, B1 => E(7), B2 => n73, C1 
                           => A(7), C2 => n72, ZN => n66);
   U11 : NAND2_X1 port map( A1 => n69, A2 => n68, ZN => Y(8));
   U12 : AOI22_X1 port map( A1 => B(8), A2 => n71, B1 => C(8), B2 => n70, ZN =>
                           n69);
   U13 : AOI222_X1 port map( A1 => D(8), A2 => n74, B1 => E(8), B2 => n73, C1 
                           => A(8), C2 => n72, ZN => n68);
   U14 : NAND2_X1 port map( A1 => n43, A2 => n42, ZN => Y(10));
   U15 : AOI22_X1 port map( A1 => B(10), A2 => n71, B1 => C(10), B2 => n70, ZN 
                           => n43);
   U16 : AOI222_X1 port map( A1 => D(10), A2 => n74, B1 => E(10), B2 => n73, C1
                           => A(10), C2 => n72, ZN => n42);
   U17 : NAND2_X1 port map( A1 => n49, A2 => n48, ZN => Y(13));
   U18 : AOI22_X1 port map( A1 => B(13), A2 => n71, B1 => C(13), B2 => n70, ZN 
                           => n49);
   U19 : AOI222_X1 port map( A1 => D(13), A2 => n74, B1 => E(13), B2 => n73, C1
                           => A(13), C2 => n72, ZN => n48);
   U20 : NAND2_X1 port map( A1 => n51, A2 => n50, ZN => Y(14));
   U21 : AOI22_X1 port map( A1 => B(14), A2 => n71, B1 => C(14), B2 => n70, ZN 
                           => n51);
   U22 : AOI222_X1 port map( A1 => D(14), A2 => n74, B1 => E(14), B2 => n73, C1
                           => A(14), C2 => n72, ZN => n50);
   U23 : NAND2_X1 port map( A1 => n53, A2 => n52, ZN => Y(15));
   U24 : AOI22_X1 port map( A1 => B(15), A2 => n71, B1 => C(15), B2 => n70, ZN 
                           => n53);
   U25 : AOI222_X1 port map( A1 => D(15), A2 => n74, B1 => E(15), B2 => n73, C1
                           => A(15), C2 => n72, ZN => n52);
   U26 : NAND2_X1 port map( A1 => n47, A2 => n46, ZN => Y(12));
   U27 : AOI22_X1 port map( A1 => B(12), A2 => n71, B1 => C(12), B2 => n70, ZN 
                           => n47);
   U28 : AOI222_X1 port map( A1 => D(12), A2 => n74, B1 => E(12), B2 => n73, C1
                           => A(12), C2 => n72, ZN => n46);
   U29 : AOI22_X1 port map( A1 => B(11), A2 => n71, B1 => C(11), B2 => n70, ZN 
                           => n45);
   U30 : AOI222_X1 port map( A1 => D(11), A2 => n74, B1 => E(11), B2 => n73, C1
                           => A(11), C2 => n72, ZN => n44);
   U31 : NAND2_X1 port map( A1 => n65, A2 => n64, ZN => Y(6));
   U32 : AOI222_X1 port map( A1 => D(6), A2 => n74, B1 => E(6), B2 => n73, C1 
                           => A(6), C2 => n72, ZN => n64);
   U33 : AOI22_X1 port map( A1 => B(6), A2 => n71, B1 => C(6), B2 => n70, ZN =>
                           n65);
   U34 : NAND2_X1 port map( A1 => n41, A2 => n40, ZN => Y(0));
   U35 : AOI22_X1 port map( A1 => B(0), A2 => n71, B1 => C(0), B2 => n70, ZN =>
                           n41);
   U36 : AOI222_X1 port map( A1 => D(0), A2 => n74, B1 => E(0), B2 => n73, C1 
                           => A(0), C2 => n72, ZN => n40);
   U37 : NAND2_X1 port map( A1 => n55, A2 => n54, ZN => Y(1));
   U38 : AOI22_X1 port map( A1 => B(1), A2 => n71, B1 => C(1), B2 => n70, ZN =>
                           n55);
   U39 : AOI222_X1 port map( A1 => D(1), A2 => n74, B1 => E(1), B2 => n73, C1 
                           => A(1), C2 => n72, ZN => n54);
   U40 : NAND2_X1 port map( A1 => n57, A2 => n56, ZN => Y(2));
   U41 : AOI22_X1 port map( A1 => B(2), A2 => n71, B1 => C(2), B2 => n70, ZN =>
                           n57);
   U42 : AOI222_X1 port map( A1 => D(2), A2 => n74, B1 => E(2), B2 => n73, C1 
                           => A(2), C2 => n72, ZN => n56);
   U43 : NAND2_X1 port map( A1 => n61, A2 => n60, ZN => Y(4));
   U44 : AOI22_X1 port map( A1 => B(4), A2 => n71, B1 => C(4), B2 => n70, ZN =>
                           n61);
   U45 : AOI222_X1 port map( A1 => D(4), A2 => n74, B1 => E(4), B2 => n73, C1 
                           => A(4), C2 => n72, ZN => n60);
   U46 : NAND2_X1 port map( A1 => n63, A2 => n62, ZN => Y(5));
   U47 : AOI22_X1 port map( A1 => B(5), A2 => n71, B1 => C(5), B2 => n70, ZN =>
                           n63);
   U48 : AOI222_X1 port map( A1 => D(5), A2 => n74, B1 => E(5), B2 => n73, C1 
                           => A(5), C2 => n72, ZN => n62);
   U49 : NAND2_X1 port map( A1 => n59, A2 => n58, ZN => Y(3));
   U50 : AOI22_X1 port map( A1 => B(3), A2 => n71, B1 => C(3), B2 => n70, ZN =>
                           n59);
   U51 : AOI222_X1 port map( A1 => D(3), A2 => n74, B1 => E(3), B2 => n73, C1 
                           => A(3), C2 => n72, ZN => n58);
   U52 : NOR3_X4 port map( A1 => sel(1), A2 => sel(2), A3 => n77, ZN => n71);
   U53 : NOR3_X4 port map( A1 => sel(0), A2 => sel(2), A3 => n78, ZN => n70);
   U54 : NOR3_X4 port map( A1 => n78, A2 => sel(2), A3 => n77, ZN => n74);
   U55 : NOR3_X4 port map( A1 => sel(1), A2 => sel(2), A3 => sel(0), ZN => n72)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity Booth_Encoder_3 is

   port( i : in std_logic_vector (2 downto 0);  o : out std_logic_vector (2 
         downto 0));

end Booth_Encoder_3;

architecture SYN_BEHAVIORAL of Booth_Encoder_3 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n8, n9, n10 : std_logic;

begin
   
   U3 : NAND2_X1 port map( A1 => i(0), A2 => i(1), ZN => n4);
   U4 : NAND2_X1 port map( A1 => i(0), A2 => i(1), ZN => n9);
   U5 : OAI22_X1 port map( A1 => n8, A2 => n10, B1 => i(2), B2 => n4, ZN => 
                           o(1));
   U6 : BUF_X1 port map( A => i(1), Z => n5);
   U7 : OAI21_X1 port map( B1 => n5, B2 => i(0), A => n9, ZN => n6);
   U8 : INV_X1 port map( A => i(2), ZN => n10);
   U9 : AOI21_X1 port map( B1 => n6, B2 => n4, A => i(2), ZN => o(0));
   U10 : AND3_X1 port map( A1 => n6, A2 => n4, A3 => i(2), ZN => o(2));
   U11 : OAI21_X1 port map( B1 => n5, B2 => i(0), A => n9, ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity Booth_Encoder_2 is

   port( i : in std_logic_vector (2 downto 0);  o : out std_logic_vector (2 
         downto 0));

end Booth_Encoder_2;

architecture SYN_BEHAVIORAL of Booth_Encoder_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U3 : AOI21_X1 port map( B1 => n5, B2 => n6, A => i(2), ZN => o(0));
   U4 : OAI22_X1 port map( A1 => n7, A2 => n5, B1 => i(2), B2 => n6, ZN => o(1)
                           );
   U5 : INV_X1 port map( A => i(2), ZN => n7);
   U6 : AND3_X1 port map( A1 => i(2), A2 => n6, A3 => n5, ZN => o(2));
   U7 : OAI21_X1 port map( B1 => i(1), B2 => i(0), A => n6, ZN => n5);
   U8 : NAND2_X1 port map( A1 => i(1), A2 => i(0), ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity Booth_Encoder_1 is

   port( i : in std_logic_vector (2 downto 0);  o : out std_logic_vector (2 
         downto 0));

end Booth_Encoder_1;

architecture SYN_BEHAVIORAL of Booth_Encoder_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U3 : OAI22_X1 port map( A1 => n7, A2 => n5, B1 => i(2), B2 => n6, ZN => o(1)
                           );
   U4 : INV_X1 port map( A => i(2), ZN => n7);
   U5 : AOI21_X1 port map( B1 => n5, B2 => n6, A => i(2), ZN => o(0));
   U6 : AND3_X1 port map( A1 => i(2), A2 => n6, A3 => n5, ZN => o(2));
   U7 : OAI21_X1 port map( B1 => i(1), B2 => i(0), A => n6, ZN => n5);
   U8 : NAND2_X1 port map( A1 => i(1), A2 => i(0), ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

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
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : INV_X1 port map( A => n2, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX21_generic_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_generic_N4_0;

architecture SYN_BEHAVIORAL of MUX21_generic_N4_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n9, ZN => Y(0));
   U2 : AOI22_X1 port map( A1 => A(0), A2 => sel, B1 => B(0), B2 => n5, ZN => 
                           n9);
   U3 : INV_X1 port map( A => n8, ZN => Y(1));
   U4 : AOI22_X1 port map( A1 => A(1), A2 => sel, B1 => B(1), B2 => n5, ZN => 
                           n8);
   U5 : INV_X1 port map( A => n7, ZN => Y(2));
   U6 : AOI22_X1 port map( A1 => A(2), A2 => sel, B1 => B(2), B2 => n5, ZN => 
                           n7);
   U7 : INV_X1 port map( A => n6, ZN => Y(3));
   U8 : AOI22_X1 port map( A1 => sel, A2 => A(3), B1 => B(3), B2 => n5, ZN => 
                           n6);
   U9 : INV_X1 port map( A => sel, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity RCA_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_0;

architecture SYN_STRUCTURAL of RCA_N4_0 is

   component FA_93
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_94
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_95
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_95 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_94 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_93 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity carry_select_block_NPB4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_11;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_11 is

   component MUX21_generic_N4_11
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_21
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_22
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1020, n_1021 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_22 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1020);
   UADDER2 : RCA_N4_21 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1021);
   mux : MUX21_generic_N4_11 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity carry_select_block_NPB4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end carry_select_block_NPB4_0;

architecture SYN_STRUCTURAL of carry_select_block_NPB4_0 is

   component MUX21_generic_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  sel : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_23
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S1_3_port, S1_2_port, S1_1_port, 
      S1_0_port, S2_3_port, S2_2_port, S2_1_port, S2_0_port, n_1022, n_1023 : 
      std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   UADDER1 : RCA_N4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1022);
   UADDER2 : RCA_N4_23 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S2_3_port
                           , S(2) => S2_2_port, S(1) => S2_1_port, S(0) => 
                           S2_0_port, Co => n_1023);
   mux : MUX21_generic_N4_0 port map( A(3) => S1_3_port, A(2) => S1_2_port, 
                           A(1) => S1_1_port, A(0) => S1_0_port, B(3) => 
                           S2_3_port, B(2) => S2_2_port, B(1) => S2_1_port, 
                           B(0) => S2_0_port, sel => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity PG_0 is

   port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);

end PG_0;

architecture SYN_BEHAVIORAL of PG_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Gx);
   U2 : AND2_X1 port map( A1 => P_K_1, A2 => P_IK, ZN => Px);
   U3 : AOI21_X1 port map( B1 => G_K_1, B2 => P_IK, A => G_IK, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity G_0 is

   port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);

end G_0;

architecture SYN_BEHAVIORAL of G_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Gx);
   U2 : AOI21_X1 port map( B1 => P_IK, B2 => G_K_1, A => G_IK, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity sum_generator_N16_NPB4_2 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic_vector (4
         downto 0);  S : out std_logic_vector (15 downto 0);  Co : out 
         std_logic);

end sum_generator_N16_NPB4_2;

architecture SYN_STRUCTURAL of sum_generator_N16_NPB4_2 is

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
   
   component carry_select_block_NPB4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;

begin
   Co <= Ci(4);
   
   csbi_0 : carry_select_block_NPB4_8 port map( A(3) => A(3), A(2) => A(2), 
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

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity sum_generator_N16_NPB4_0 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic_vector (4
         downto 0);  S : out std_logic_vector (15 downto 0);  Co : out 
         std_logic);

end sum_generator_N16_NPB4_0;

architecture SYN_STRUCTURAL of sum_generator_N16_NPB4_0 is

   component carry_select_block_NPB4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NPB4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NPB4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NPB4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;

begin
   Co <= Ci(4);
   
   csbi_0 : carry_select_block_NPB4_0 port map( A(3) => A(3), A(2) => A(2), 
                           A(1) => A(1), A(0) => A(0), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Ci => Ci(0), S(3) 
                           => S(3), S(2) => S(2), S(1) => S(1), S(0) => S(0));
   csbi_1 : carry_select_block_NPB4_11 port map( A(3) => A(7), A(2) => A(6), 
                           A(1) => A(5), A(0) => A(4), B(3) => B(7), B(2) => 
                           B(6), B(1) => B(5), B(0) => B(4), Ci => Ci(1), S(3) 
                           => S(7), S(2) => S(6), S(1) => S(5), S(0) => S(4));
   csbi_2 : carry_select_block_NPB4_10 port map( A(3) => A(11), A(2) => A(10), 
                           A(1) => A(9), A(0) => A(8), B(3) => B(11), B(2) => 
                           B(10), B(1) => B(9), B(0) => B(8), Ci => Ci(2), S(3)
                           => S(11), S(2) => S(10), S(1) => S(9), S(0) => S(8))
                           ;
   csbi_3 : carry_select_block_NPB4_9 port map( A(3) => A(15), A(2) => A(14), 
                           A(1) => A(13), A(0) => A(12), B(3) => B(15), B(2) =>
                           B(14), B(1) => B(13), B(0) => B(12), Ci => Ci(3), 
                           S(3) => S(15), S(2) => S(14), S(1) => S(13), S(0) =>
                           S(12));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity carry_generator_N16_NPB4_0 is

   port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (3 downto 0));

end carry_generator_N16_NPB4_0;

architecture SYN_STRUCTURAL of carry_generator_N16_NPB4_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component G_11
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component G_12
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component PG_23
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component G_13
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
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
   
   component G_14
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   component PG_27
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_28
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_29
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_30
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_31
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_32
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component PG_0
      port( G_IK, P_IK, G_K_1, P_K_1 : in std_logic;  Gx, Px : out std_logic);
   end component;
   
   component G_0
      port( G_IK, P_IK, G_K_1 : in std_logic;  Gx : out std_logic);
   end component;
   
   signal Co_3_port, Co_2_port, Co_1_port, Co_0_port, PG_Network_3_1_15_port, 
      PG_Network_3_0_15_port, PG_Network_2_1_15_port, PG_Network_2_1_11_port, 
      PG_Network_2_1_7_port, PG_Network_2_0_15_port, PG_Network_2_0_11_port, 
      PG_Network_2_0_7_port, PG_Network_1_1_15_port, PG_Network_1_1_13_port, 
      PG_Network_1_1_11_port, PG_Network_1_1_9_port, PG_Network_1_1_7_port, 
      PG_Network_1_1_5_port, PG_Network_1_1_3_port, PG_Network_1_1_1_port, 
      PG_Network_1_0_15_port, PG_Network_1_0_13_port, PG_Network_1_0_11_port, 
      PG_Network_1_0_9_port, PG_Network_1_0_7_port, PG_Network_1_0_5_port, 
      PG_Network_1_0_3_port, PG_Network_0_1_15_port, PG_Network_0_1_14_port, 
      PG_Network_0_1_13_port, PG_Network_0_1_12_port, PG_Network_0_1_11_port, 
      PG_Network_0_1_10_port, PG_Network_0_1_9_port, PG_Network_0_1_8_port, 
      PG_Network_0_1_7_port, PG_Network_0_1_6_port, PG_Network_0_1_5_port, 
      PG_Network_0_1_4_port, PG_Network_0_1_3_port, PG_Network_0_1_2_port, 
      PG_Network_0_1_1_port, PG_Network_0_0_15_port, PG_Network_0_0_14_port, 
      PG_Network_0_0_13_port, PG_Network_0_0_12_port, PG_Network_0_0_11_port, 
      PG_Network_0_0_10_port, PG_Network_0_0_9_port, PG_Network_0_0_8_port, 
      PG_Network_0_0_7_port, PG_Network_0_0_6_port, PG_Network_0_0_5_port, 
      PG_Network_0_0_4_port, PG_Network_0_0_3_port, PG_Network_0_0_2_port, 
      PG_Network_0_0_1_port, n1, n2, n3, n4, n5 : std_logic;

begin
   Co <= ( Co_3_port, Co_2_port, Co_1_port, Co_0_port );
   
   GJ_0_0_0 : G_0 port map( G_IK => PG_Network_0_1_1_port, P_IK => 
                           PG_Network_0_0_1_port, G_K_1 => n1, Gx => 
                           PG_Network_1_1_1_port);
   PGJ_0_1_0 : PG_0 port map( G_IK => PG_Network_0_1_3_port, P_IK => 
                           PG_Network_0_0_3_port, G_K_1 => 
                           PG_Network_0_1_2_port, P_K_1 => 
                           PG_Network_0_0_2_port, Gx => PG_Network_1_1_3_port, 
                           Px => PG_Network_1_0_3_port);
   PGJ_0_2_0 : PG_32 port map( G_IK => PG_Network_0_1_5_port, P_IK => 
                           PG_Network_0_0_5_port, G_K_1 => 
                           PG_Network_0_1_4_port, P_K_1 => 
                           PG_Network_0_0_4_port, Gx => PG_Network_1_1_5_port, 
                           Px => PG_Network_1_0_5_port);
   PGJ_0_3_0 : PG_31 port map( G_IK => PG_Network_0_1_7_port, P_IK => 
                           PG_Network_0_0_7_port, G_K_1 => 
                           PG_Network_0_1_6_port, P_K_1 => 
                           PG_Network_0_0_6_port, Gx => PG_Network_1_1_7_port, 
                           Px => PG_Network_1_0_7_port);
   PGJ_0_4_0 : PG_30 port map( G_IK => PG_Network_0_1_9_port, P_IK => 
                           PG_Network_0_0_9_port, G_K_1 => 
                           PG_Network_0_1_8_port, P_K_1 => 
                           PG_Network_0_0_8_port, Gx => PG_Network_1_1_9_port, 
                           Px => PG_Network_1_0_9_port);
   PGJ_0_5_0 : PG_29 port map( G_IK => PG_Network_0_1_11_port, P_IK => 
                           PG_Network_0_0_11_port, G_K_1 => 
                           PG_Network_0_1_10_port, P_K_1 => 
                           PG_Network_0_0_10_port, Gx => PG_Network_1_1_11_port
                           , Px => PG_Network_1_0_11_port);
   PGJ_0_6_0 : PG_28 port map( G_IK => PG_Network_0_1_13_port, P_IK => 
                           PG_Network_0_0_13_port, G_K_1 => 
                           PG_Network_0_1_12_port, P_K_1 => 
                           PG_Network_0_0_12_port, Gx => PG_Network_1_1_13_port
                           , Px => PG_Network_1_0_13_port);
   PGJ_0_7_0 : PG_27 port map( G_IK => PG_Network_0_1_15_port, P_IK => 
                           PG_Network_0_0_15_port, G_K_1 => 
                           PG_Network_0_1_14_port, P_K_1 => 
                           PG_Network_0_0_14_port, Gx => PG_Network_1_1_15_port
                           , Px => PG_Network_1_0_15_port);
   GJ_1_0_0 : G_14 port map( G_IK => PG_Network_1_1_3_port, P_IK => 
                           PG_Network_1_0_3_port, G_K_1 => 
                           PG_Network_1_1_1_port, Gx => Co_0_port);
   PGJ_1_1_0 : PG_26 port map( G_IK => PG_Network_1_1_7_port, P_IK => 
                           PG_Network_1_0_7_port, G_K_1 => 
                           PG_Network_1_1_5_port, P_K_1 => 
                           PG_Network_1_0_5_port, Gx => PG_Network_2_1_7_port, 
                           Px => PG_Network_2_0_7_port);
   PGJ_1_2_0 : PG_25 port map( G_IK => PG_Network_1_1_11_port, P_IK => 
                           PG_Network_1_0_11_port, G_K_1 => 
                           PG_Network_1_1_9_port, P_K_1 => 
                           PG_Network_1_0_9_port, Gx => PG_Network_2_1_11_port,
                           Px => PG_Network_2_0_11_port);
   PGJ_1_3_0 : PG_24 port map( G_IK => PG_Network_1_1_15_port, P_IK => 
                           PG_Network_1_0_15_port, G_K_1 => 
                           PG_Network_1_1_13_port, P_K_1 => 
                           PG_Network_1_0_13_port, Gx => PG_Network_2_1_15_port
                           , Px => PG_Network_2_0_15_port);
   GJ_2_0_0 : G_13 port map( G_IK => PG_Network_2_1_7_port, P_IK => 
                           PG_Network_2_0_7_port, G_K_1 => Co_0_port, Gx => 
                           Co_1_port);
   PGJ_2_1_0 : PG_23 port map( G_IK => PG_Network_2_1_15_port, P_IK => 
                           PG_Network_2_0_15_port, G_K_1 => 
                           PG_Network_2_1_11_port, P_K_1 => 
                           PG_Network_2_0_11_port, Gx => PG_Network_3_1_15_port
                           , Px => PG_Network_3_0_15_port);
   GJ_3_0_0 : G_12 port map( G_IK => PG_Network_3_1_15_port, P_IK => 
                           PG_Network_3_0_15_port, G_K_1 => n5, Gx => Co_3_port
                           );
   GJ_3_0_1 : G_11 port map( G_IK => PG_Network_2_1_11_port, P_IK => 
                           PG_Network_2_0_11_port, G_K_1 => n5, Gx => Co_2_port
                           );
   U20 : XOR2_X1 port map( A => B(9), B => A(9), Z => PG_Network_0_0_9_port);
   U21 : XOR2_X1 port map( A => B(8), B => A(8), Z => PG_Network_0_0_8_port);
   U22 : XOR2_X1 port map( A => B(7), B => A(7), Z => PG_Network_0_0_7_port);
   U23 : XOR2_X1 port map( A => B(6), B => A(6), Z => PG_Network_0_0_6_port);
   U24 : XOR2_X1 port map( A => B(5), B => A(5), Z => PG_Network_0_0_5_port);
   U25 : XOR2_X1 port map( A => B(4), B => A(4), Z => PG_Network_0_0_4_port);
   U26 : XOR2_X1 port map( A => B(3), B => A(3), Z => PG_Network_0_0_3_port);
   U27 : XOR2_X1 port map( A => B(2), B => A(2), Z => PG_Network_0_0_2_port);
   U28 : XOR2_X1 port map( A => B(1), B => A(1), Z => PG_Network_0_0_1_port);
   U29 : XOR2_X1 port map( A => B(15), B => A(15), Z => PG_Network_0_0_15_port)
                           ;
   U30 : XOR2_X1 port map( A => B(14), B => A(14), Z => PG_Network_0_0_14_port)
                           ;
   U31 : XOR2_X1 port map( A => B(13), B => A(13), Z => PG_Network_0_0_13_port)
                           ;
   U32 : XOR2_X1 port map( A => B(12), B => A(12), Z => PG_Network_0_0_12_port)
                           ;
   U33 : XOR2_X1 port map( A => B(11), B => A(11), Z => PG_Network_0_0_11_port)
                           ;
   U34 : XOR2_X1 port map( A => B(10), B => A(10), Z => PG_Network_0_0_10_port)
                           ;
   U1 : BUF_X1 port map( A => Co_1_port, Z => n5);
   U2 : AND2_X1 port map( A1 => A(7), A2 => B(7), ZN => PG_Network_0_1_7_port);
   U3 : AND2_X1 port map( A1 => A(11), A2 => B(11), ZN => 
                           PG_Network_0_1_11_port);
   U4 : AND2_X1 port map( A1 => A(10), A2 => B(10), ZN => 
                           PG_Network_0_1_10_port);
   U5 : AND2_X1 port map( A1 => A(9), A2 => B(9), ZN => PG_Network_0_1_9_port);
   U6 : AND2_X1 port map( A1 => A(2), A2 => B(2), ZN => PG_Network_0_1_2_port);
   U7 : INV_X1 port map( A => n3, ZN => n1);
   U8 : AND2_X1 port map( A1 => A(1), A2 => B(1), ZN => PG_Network_0_1_1_port);
   U9 : AND2_X1 port map( A1 => A(13), A2 => B(13), ZN => 
                           PG_Network_0_1_13_port);
   U10 : AND2_X1 port map( A1 => A(12), A2 => B(12), ZN => 
                           PG_Network_0_1_12_port);
   U11 : AND2_X1 port map( A1 => A(15), A2 => B(15), ZN => 
                           PG_Network_0_1_15_port);
   U12 : AND2_X1 port map( A1 => A(14), A2 => B(14), ZN => 
                           PG_Network_0_1_14_port);
   U13 : AOI21_X1 port map( B1 => A(0), B2 => B(0), A => n2, ZN => n3);
   U14 : INV_X1 port map( A => n4, ZN => n2);
   U15 : OAI21_X1 port map( B1 => A(0), B2 => B(0), A => Cin, ZN => n4);
   U16 : AND2_X1 port map( A1 => A(4), A2 => B(4), ZN => PG_Network_0_1_4_port)
                           ;
   U17 : AND2_X1 port map( A1 => A(6), A2 => B(6), ZN => PG_Network_0_1_6_port)
                           ;
   U18 : AND2_X1 port map( A1 => A(8), A2 => B(8), ZN => PG_Network_0_1_8_port)
                           ;
   U19 : AND2_X1 port map( A1 => A(5), A2 => B(5), ZN => PG_Network_0_1_5_port)
                           ;
   U35 : AND2_X1 port map( A1 => B(3), A2 => A(3), ZN => PG_Network_0_1_3_port)
                           ;

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity P4_ADDER_N16_2 is

   port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (15 downto 0);  Cout : out std_logic);

end P4_ADDER_N16_2;

architecture SYN_STRUCTURAL of P4_ADDER_N16_2 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component sum_generator_N16_NPB4_2
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic_vector
            (4 downto 0);  S : out std_logic_vector (15 downto 0);  Co : out 
            std_logic);
   end component;
   
   component carry_generator_N16_NPB4_2
      port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (3 downto 0));
   end component;
   
   signal CoutCgen_4_port, CoutCgen_3_port, CoutCgen_2_port, CoutCgen_1_port, 
      n1, n2, n3, n4, n5 : std_logic;

begin
   
   CGEN : carry_generator_N16_NPB4_2 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => n2, B(11) => B(11), B(10) => B(10), B(9) =>
                           B(9), B(8) => n1, B(7) => B(7), B(6) => B(6), B(5) 
                           => B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), 
                           B(1) => B(1), B(0) => B(0), Cin => Cin, Co(3) => 
                           CoutCgen_4_port, Co(2) => CoutCgen_3_port, Co(1) => 
                           CoutCgen_2_port, Co(0) => CoutCgen_1_port);
   SGEN : sum_generator_N16_NPB4_2 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => n3, B(10) => B(10), B(9) =>
                           n5, B(8) => B(8), B(7) => n4, B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci(4) => CoutCgen_4_port, 
                           Ci(3) => CoutCgen_3_port, Ci(2) => CoutCgen_2_port, 
                           Ci(1) => CoutCgen_1_port, Ci(0) => Cin, S(15) => 
                           S(15), S(14) => S(14), S(13) => S(13), S(12) => 
                           S(12), S(11) => S(11), S(10) => S(10), S(9) => S(9),
                           S(8) => S(8), S(7) => S(7), S(6) => S(6), S(5) => 
                           S(5), S(4) => S(4), S(3) => S(3), S(2) => S(2), S(1)
                           => S(1), S(0) => S(0), Co => Cout);
   U1 : BUF_X1 port map( A => B(9), Z => n5);
   U2 : CLKBUF_X1 port map( A => B(8), Z => n1);
   U3 : CLKBUF_X1 port map( A => B(12), Z => n2);
   U4 : CLKBUF_X1 port map( A => B(11), Z => n3);
   U5 : CLKBUF_X1 port map( A => B(7), Z => n4);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity P4_ADDER_N16_0 is

   port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (15 downto 0);  Cout : out std_logic);

end P4_ADDER_N16_0;

architecture SYN_STRUCTURAL of P4_ADDER_N16_0 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component sum_generator_N16_NPB4_0
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic_vector
            (4 downto 0);  S : out std_logic_vector (15 downto 0);  Co : out 
            std_logic);
   end component;
   
   component carry_generator_N16_NPB4_0
      port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (3 downto 0));
   end component;
   
   signal CoutCgen_4_port, CoutCgen_3_port, CoutCgen_2_port, CoutCgen_1_port, 
      n1, n2, n3, n4, n5, n6, n7, n8 : std_logic;

begin
   
   CGEN : carry_generator_N16_NPB4_0 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => n5, A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => n8, A(3) 
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => n3, B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => n4, B(3) => B(3), B(2) => B(2)
                           , B(1) => B(1), B(0) => B(0), Cin => Cin, Co(3) => 
                           CoutCgen_4_port, Co(2) => CoutCgen_3_port, Co(1) => 
                           CoutCgen_2_port, Co(0) => CoutCgen_1_port);
   SGEN : sum_generator_N16_NPB4_0 port map( A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => n1, A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => n7, B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => n2, B(2) => B(2)
                           , B(1) => B(1), B(0) => B(0), Ci(4) => 
                           CoutCgen_4_port, Ci(3) => CoutCgen_3_port, Ci(2) => 
                           CoutCgen_2_port, Ci(1) => CoutCgen_1_port, Ci(0) => 
                           Cin, S(15) => S(15), S(14) => S(14), S(13) => S(13),
                           S(12) => S(12), S(11) => S(11), S(10) => S(10), S(9)
                           => S(9), S(8) => S(8), S(7) => S(7), S(6) => S(6), 
                           S(5) => S(5), S(4) => S(4), S(3) => S(3), S(2) => 
                           S(2), S(1) => S(1), S(0) => S(0), Co => Cout);
   U1 : CLKBUF_X1 port map( A => A(3), Z => n1);
   U2 : CLKBUF_X1 port map( A => B(3), Z => n2);
   U3 : CLKBUF_X1 port map( A => B(8), Z => n3);
   U4 : CLKBUF_X1 port map( A => B(4), Z => n4);
   U5 : CLKBUF_X1 port map( A => A(8), Z => n5);
   U6 : INV_X1 port map( A => B(7), ZN => n6);
   U7 : INV_X1 port map( A => n6, ZN => n7);
   U8 : CLKBUF_X1 port map( A => A(4), Z => n8);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity MUX_booth_N16_0 is

   port( A, B, C, D, E : in std_logic_vector (15 downto 0);  sel : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX_booth_N16_0;

architecture SYN_BEHAVIORAL of MUX_booth_N16_0 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X2
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21, n22, 
      n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37
      , n38, n39, net32575, net32579, net32578, net32587, net32594, net32593, 
      net32675, net32705, net33098, net33175, n40, n41, n42, n43, n44, n45, n46
      , n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => net32575, B2 => E(4), A => n54, ZN => n41);
   U2 : INV_X1 port map( A => D(4), ZN => n50);
   U3 : INV_X1 port map( A => A(4), ZN => n43);
   U4 : INV_X1 port map( A => sel(2), ZN => n46);
   U5 : INV_X1 port map( A => n44, ZN => net32705);
   U6 : CLKBUF_X1 port map( A => net32587, Z => n40);
   U7 : INV_X1 port map( A => n47, ZN => net32587);
   U8 : CLKBUF_X1 port map( A => sel(0), Z => n55);
   U9 : NAND2_X1 port map( A1 => n45, A2 => n46, ZN => n44);
   U10 : NOR2_X1 port map( A1 => sel(2), A2 => n42, ZN => n51);
   U11 : NAND2_X1 port map( A1 => n41, A2 => n18, ZN => Y(4));
   U12 : NOR2_X1 port map( A1 => n55, A2 => sel(2), ZN => n53);
   U13 : INV_X2 port map( A => n49, ZN => net32675);
   U14 : INV_X1 port map( A => sel(0), ZN => n42);
   U15 : NAND2_X1 port map( A1 => n53, A2 => sel(1), ZN => n47);
   U16 : NOR2_X1 port map( A1 => sel(1), A2 => n42, ZN => n52);
   U17 : NOR2_X1 port map( A1 => n55, A2 => sel(1), ZN => n45);
   U18 : NAND2_X1 port map( A1 => n51, A2 => sel(1), ZN => n48);
   U19 : INV_X1 port map( A => n48, ZN => net33175);
   U20 : OAI22_X1 port map( A1 => n50, A2 => n48, B1 => n43, B2 => n44, ZN => 
                           n54);
   U21 : NAND2_X1 port map( A1 => n52, A2 => n46, ZN => n49);
   U22 : AND4_X2 port map( A1 => n44, A2 => n47, A3 => n48, A4 => n49, ZN => 
                           net32575);
   U23 : AND3_X1 port map( A1 => n56, A2 => n57, A3 => n58, ZN => n17);
   U24 : NAND2_X1 port map( A1 => D(5), A2 => net33175, ZN => n56);
   U25 : NAND2_X1 port map( A1 => E(5), A2 => net32578, ZN => n57);
   U26 : NAND2_X1 port map( A1 => A(5), A2 => net32705, ZN => n58);
   U27 : CLKBUF_X1 port map( A => net32575, Z => net32593);
   U28 : BUF_X2 port map( A => net32575, Z => net32594);
   U29 : CLKBUF_X1 port map( A => net32594, Z => net33098);
   U30 : BUF_X1 port map( A => net32575, Z => net32578);
   U31 : NAND2_X1 port map( A1 => n21, A2 => n20, ZN => Y(3));
   U32 : BUF_X1 port map( A => net32578, Z => net32579);
   U33 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => Y(7));
   U34 : NAND2_X1 port map( A1 => n17, A2 => n16, ZN => Y(5));
   U35 : NAND2_X1 port map( A1 => n24, A2 => n25, ZN => Y(1));
   U36 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => Y(11));
   U37 : NAND2_X1 port map( A1 => n38, A2 => n39, ZN => Y(0));
   U38 : NAND2_X1 port map( A1 => n22, A2 => n23, ZN => Y(2));
   U39 : NAND2_X1 port map( A1 => n32, A2 => n33, ZN => Y(12));
   U40 : NAND2_X1 port map( A1 => n30, A2 => n31, ZN => Y(13));
   U41 : NAND2_X1 port map( A1 => n26, A2 => n27, ZN => Y(15));
   U42 : NAND2_X1 port map( A1 => n28, A2 => n29, ZN => Y(14));
   U43 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Y(9));
   U44 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => Y(6));
   U45 : NAND2_X1 port map( A1 => n36, A2 => n37, ZN => Y(10));
   U46 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => Y(8));
   U47 : AOI22_X1 port map( A1 => B(15), A2 => net32675, B1 => C(15), B2 => n40
                           , ZN => n26);
   U48 : AOI22_X1 port map( A1 => B(1), A2 => net32675, B1 => C(1), B2 => n40, 
                           ZN => n24);
   U49 : AOI22_X1 port map( A1 => B(0), A2 => net32675, B1 => C(0), B2 => n40, 
                           ZN => n38);
   U50 : AOI22_X1 port map( A1 => B(14), A2 => net32675, B1 => C(14), B2 => n40
                           , ZN => n28);
   U51 : AOI22_X1 port map( A1 => B(13), A2 => net32675, B1 => C(13), B2 => n40
                           , ZN => n30);
   U52 : AOI22_X1 port map( A1 => B(12), A2 => net32675, B1 => C(12), B2 => n40
                           , ZN => n32);
   U53 : AOI22_X1 port map( A1 => B(10), A2 => net32675, B1 => C(10), B2 => 
                           net32587, ZN => n36);
   U54 : AOI22_X1 port map( A1 => B(11), A2 => net32675, B1 => C(11), B2 => 
                           net32587, ZN => n34);
   U55 : AOI22_X1 port map( A1 => B(9), A2 => net32675, B1 => C(9), B2 => 
                           net32587, ZN => n3);
   U56 : AOI22_X1 port map( A1 => B(6), A2 => net32675, B1 => C(6), B2 => 
                           net32587, ZN => n14);
   U57 : AOI22_X1 port map( A1 => B(2), A2 => net32675, B1 => C(2), B2 => 
                           net32587, ZN => n22);
   U58 : AOI22_X1 port map( A1 => B(8), A2 => net32675, B1 => C(8), B2 => 
                           net32587, ZN => n10);
   U59 : AOI22_X1 port map( A1 => B(7), A2 => net32675, B1 => C(7), B2 => 
                           net32587, ZN => n12);
   U60 : AOI22_X1 port map( A1 => B(3), A2 => net32675, B1 => C(3), B2 => 
                           net32587, ZN => n20);
   U61 : AOI22_X1 port map( A1 => B(5), A2 => net32675, B1 => C(5), B2 => 
                           net32587, ZN => n16);
   U62 : AOI22_X1 port map( A1 => B(4), A2 => net32675, B1 => C(4), B2 => 
                           net32587, ZN => n18);
   U63 : AOI222_X1 port map( A1 => D(0), A2 => net33175, B1 => E(0), B2 => 
                           net32579, C1 => A(0), C2 => net32705, ZN => n39);
   U64 : AOI222_X1 port map( A1 => D(15), A2 => net33175, B1 => E(15), B2 => 
                           net33098, C1 => A(15), C2 => net32705, ZN => n27);
   U65 : AOI222_X1 port map( A1 => D(1), A2 => net33175, B1 => E(1), B2 => 
                           net32594, C1 => A(1), C2 => net32705, ZN => n25);
   U66 : AOI222_X1 port map( A1 => D(14), A2 => net33175, B1 => E(14), B2 => 
                           net33098, C1 => A(14), C2 => net32705, ZN => n29);
   U67 : AOI222_X1 port map( A1 => D(13), A2 => net33175, B1 => E(13), B2 => 
                           net32579, C1 => A(13), C2 => net32705, ZN => n31);
   U68 : AOI222_X1 port map( A1 => D(12), A2 => net33175, B1 => E(12), B2 => 
                           net33098, C1 => A(12), C2 => net32705, ZN => n33);
   U69 : AOI222_X1 port map( A1 => D(10), A2 => net33175, B1 => E(10), B2 => 
                           net32594, C1 => A(10), C2 => net32705, ZN => n37);
   U70 : AOI222_X1 port map( A1 => D(11), A2 => net33175, B1 => E(11), B2 => 
                           net33098, C1 => A(11), C2 => net32705, ZN => n35);
   U71 : AOI222_X1 port map( A1 => D(9), A2 => net33175, B1 => E(9), B2 => 
                           net32579, C1 => A(9), C2 => net32705, ZN => n4);
   U72 : AOI222_X1 port map( A1 => D(6), A2 => net33175, B1 => E(6), B2 => 
                           net32593, C1 => A(6), C2 => net32705, ZN => n15);
   U73 : AOI222_X1 port map( A1 => D(2), A2 => net33175, B1 => E(2), B2 => 
                           net32594, C1 => A(2), C2 => net32705, ZN => n23);
   U74 : AOI222_X1 port map( A1 => D(8), A2 => net33175, B1 => net32593, B2 => 
                           E(8), C1 => A(8), C2 => net32705, ZN => n11);
   U75 : AOI222_X1 port map( A1 => D(7), A2 => net33175, B1 => E(7), B2 => 
                           net32594, C1 => A(7), C2 => net32705, ZN => n13);
   U76 : AOI222_X1 port map( A1 => D(3), A2 => net33175, B1 => net32594, B2 => 
                           E(3), C1 => A(3), C2 => net32705, ZN => n21);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity Booth_Encoder_0 is

   port( i : in std_logic_vector (2 downto 0);  o : out std_logic_vector (2 
         downto 0));

end Booth_Encoder_0;

architecture SYN_BEHAVIORAL of Booth_Encoder_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10 : std_logic;

begin
   
   U3 : NAND2_X1 port map( A1 => i(1), A2 => i(0), ZN => n2);
   U4 : AND2_X1 port map( A1 => n2, A2 => i(2), ZN => n4);
   U5 : AND2_X1 port map( A1 => n7, A2 => n4, ZN => o(2));
   U6 : INV_X1 port map( A => i(1), ZN => n5);
   U7 : NAND2_X1 port map( A1 => n5, A2 => n9, ZN => n6);
   U8 : NAND2_X1 port map( A1 => n10, A2 => n2, ZN => n7);
   U9 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => n10);
   U10 : NAND2_X1 port map( A1 => n6, A2 => n2, ZN => n3);
   U11 : INV_X1 port map( A => i(1), ZN => n8);
   U12 : INV_X1 port map( A => i(0), ZN => n9);
   U13 : OAI22_X1 port map( A1 => n7, A2 => n1, B1 => i(2), B2 => n2, ZN => 
                           o(1));
   U14 : AOI21_X1 port map( B1 => n3, B2 => n2, A => i(2), ZN => o(0));
   U15 : INV_X1 port map( A => i(2), ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_booth_mul_N8.all;

entity booth_mul_N8 is

   port( A, B : in std_logic_vector (7 downto 0);  S : out std_logic_vector (15
         downto 0));

end booth_mul_N8;

architecture SYN_STRUCTURAL of booth_mul_N8 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component P4_ADDER_N16_1
      port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  S :
            out std_logic_vector (15 downto 0);  Cout : out std_logic);
   end component;
   
   component MUX_booth_N16_1
      port( A, B, C, D, E : in std_logic_vector (15 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto
            0));
   end component;
   
   component Booth_Encoder_1
      port( i : in std_logic_vector (2 downto 0);  o : out std_logic_vector (2 
            downto 0));
   end component;
   
   component P4_ADDER_N16_2
      port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  S :
            out std_logic_vector (15 downto 0);  Cout : out std_logic);
   end component;
   
   component MUX_booth_N16_2
      port( A, B, C, D, E : in std_logic_vector (15 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto
            0));
   end component;
   
   component Booth_Encoder_2
      port( i : in std_logic_vector (2 downto 0);  o : out std_logic_vector (2 
            downto 0));
   end component;
   
   component P4_ADDER_N16_0
      port( A, B : in std_logic_vector (15 downto 0);  Cin : in std_logic;  S :
            out std_logic_vector (15 downto 0);  Cout : out std_logic);
   end component;
   
   component MUX_booth_N16_3
      port( A, B, C, D, E : in std_logic_vector (15 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto
            0));
   end component;
   
   component Booth_Encoder_3
      port( i : in std_logic_vector (2 downto 0);  o : out std_logic_vector (2 
            downto 0));
   end component;
   
   component MUX_booth_N16_0
      port( A, B, C, D, E : in std_logic_vector (15 downto 0);  sel : in 
            std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto
            0));
   end component;
   
   component Booth_Encoder_0
      port( i : in std_logic_vector (2 downto 0);  o : out std_logic_vector (2 
            downto 0));
   end component;
   
   signal X_Logic0_port, select_array_3_2_port, select_array_3_1_port, 
      select_array_3_0_port, select_array_2_2_port, select_array_2_1_port, 
      select_array_2_0_port, select_array_1_2_port, select_array_1_1_port, 
      select_array_1_0_port, select_array_0_2_port, select_array_0_1_port, 
      select_array_0_0_port, result_array_2_15_port, result_array_2_14_port, 
      result_array_2_13_port, result_array_2_12_port, result_array_2_11_port, 
      result_array_2_10_port, result_array_2_9_port, result_array_2_8_port, 
      result_array_2_7_port, result_array_2_6_port, result_array_2_5_port, 
      result_array_2_4_port, result_array_2_3_port, result_array_2_2_port, 
      result_array_2_1_port, result_array_2_0_port, result_array_1_15_port, 
      result_array_1_14_port, result_array_1_13_port, result_array_1_12_port, 
      result_array_1_11_port, result_array_1_10_port, result_array_1_9_port, 
      result_array_1_8_port, result_array_1_7_port, result_array_1_6_port, 
      result_array_1_5_port, result_array_1_4_port, result_array_1_3_port, 
      result_array_1_2_port, result_array_1_1_port, result_array_1_0_port, 
      result_array_0_15_port, result_array_0_14_port, result_array_0_13_port, 
      result_array_0_12_port, result_array_0_11_port, result_array_0_10_port, 
      result_array_0_9_port, result_array_0_8_port, result_array_0_7_port, 
      result_array_0_6_port, result_array_0_5_port, result_array_0_4_port, 
      result_array_0_3_port, result_array_0_2_port, result_array_0_1_port, 
      result_array_0_0_port, array_mux_out_3_15_port, array_mux_out_3_14_port, 
      array_mux_out_3_13_port, array_mux_out_3_12_port, array_mux_out_3_11_port
      , array_mux_out_3_10_port, array_mux_out_3_9_port, array_mux_out_3_8_port
      , array_mux_out_3_7_port, array_mux_out_3_6_port, array_mux_out_3_5_port,
      array_mux_out_3_4_port, array_mux_out_3_3_port, array_mux_out_3_2_port, 
      array_mux_out_3_1_port, array_mux_out_3_0_port, array_mux_out_2_15_port, 
      array_mux_out_2_14_port, array_mux_out_2_13_port, array_mux_out_2_12_port
      , array_mux_out_2_11_port, array_mux_out_2_10_port, 
      array_mux_out_2_9_port, array_mux_out_2_8_port, array_mux_out_2_7_port, 
      array_mux_out_2_6_port, array_mux_out_2_5_port, array_mux_out_2_4_port, 
      array_mux_out_2_3_port, array_mux_out_2_2_port, array_mux_out_2_1_port, 
      array_mux_out_2_0_port, array_mux_out_1_15_port, array_mux_out_1_14_port,
      array_mux_out_1_13_port, array_mux_out_1_12_port, array_mux_out_1_11_port
      , array_mux_out_1_10_port, array_mux_out_1_9_port, array_mux_out_1_8_port
      , array_mux_out_1_7_port, array_mux_out_1_6_port, array_mux_out_1_5_port,
      array_mux_out_1_4_port, array_mux_out_1_3_port, array_mux_out_1_2_port, 
      array_mux_out_1_1_port, array_mux_out_1_0_port, n5, n6, n7, n8, n9, n10, 
      n11, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45
      , n46, n47, n48, n49, n_1024, n_1025, n_1026 : std_logic;

begin
   
   X_Logic0_port <= '0';
   booth_o_0 : Booth_Encoder_0 port map( i(2) => n46, i(1) => B(0), i(0) => 
                           X_Logic0_port, o(2) => select_array_0_2_port, o(1) 
                           => select_array_0_1_port, o(0) => 
                           select_array_0_0_port);
   mux_0_0 : MUX_booth_N16_0 port map( A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => A(7), B(14) => A(7), B(13) 
                           => A(7), B(12) => A(7), B(11) => A(7), B(10) => A(7)
                           , B(9) => A(7), B(8) => A(7), B(7) => A(7), B(6) => 
                           A(6), B(5) => A(5), B(4) => A(4), B(3) => A(3), B(2)
                           => A(2), B(1) => A(1), B(0) => A(0), C(15) => n48, 
                           C(14) => n42, C(13) => n43, C(12) => n43, C(11) => 
                           n47, C(10) => n47, C(9) => n36, C(8) => n36, C(7) =>
                           n45, C(6) => n9, C(5) => n6, C(4) => n5, C(3) => n10
                           , C(2) => n8, C(1) => n7, C(0) => A(0), D(15) => 
                           A(7), D(14) => A(7), D(13) => A(7), D(12) => A(7), 
                           D(11) => A(7), D(10) => A(7), D(9) => A(7), D(8) => 
                           A(7), D(7) => A(6), D(6) => A(5), D(5) => A(4), D(4)
                           => A(3), D(3) => A(2), D(2) => A(1), D(1) => A(0), 
                           D(0) => X_Logic0_port, E(15) => n43, E(14) => n47, 
                           E(13) => n42, E(12) => n43, E(11) => n36, E(10) => 
                           n43, E(9) => n36, E(8) => n11, E(7) => n9, E(6) => 
                           n6, E(5) => n5, E(4) => n10, E(3) => n8, E(2) => n7,
                           E(1) => A(0), E(0) => X_Logic0_port, sel(2) => 
                           select_array_0_2_port, sel(1) => 
                           select_array_0_1_port, sel(0) => 
                           select_array_0_0_port, Y(15) => 
                           result_array_0_15_port, Y(14) => 
                           result_array_0_14_port, Y(13) => 
                           result_array_0_13_port, Y(12) => 
                           result_array_0_12_port, Y(11) => 
                           result_array_0_11_port, Y(10) => 
                           result_array_0_10_port, Y(9) => 
                           result_array_0_9_port, Y(8) => result_array_0_8_port
                           , Y(7) => result_array_0_7_port, Y(6) => 
                           result_array_0_6_port, Y(5) => result_array_0_5_port
                           , Y(4) => result_array_0_4_port, Y(3) => 
                           result_array_0_3_port, Y(2) => result_array_0_2_port
                           , Y(1) => result_array_0_1_port, Y(0) => 
                           result_array_0_0_port);
   booth_j_1 : Booth_Encoder_3 port map( i(2) => B(3), i(1) => B(2), i(0) => 
                           B(1), o(2) => select_array_1_2_port, o(1) => 
                           select_array_1_1_port, o(0) => select_array_1_0_port
                           );
   mux_j_1 : MUX_booth_N16_3 port map( A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => A(7), B(14) => A(7), B(13) 
                           => A(7), B(12) => A(7), B(11) => A(7), B(10) => A(7)
                           , B(9) => A(7), B(8) => A(6), B(7) => A(5), B(6) => 
                           A(4), B(5) => A(3), B(4) => A(2), B(3) => A(1), B(2)
                           => A(0), B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(15) => n48, C(14) => n47, C(13) => 
                           n42, C(12) => n47, C(11) => n42, C(10) => n47, C(9) 
                           => n45, C(8) => n9, C(7) => n6, C(6) => n5, C(5) => 
                           n10, C(4) => n8, C(3) => n7, C(2) => A(0), C(1) => 
                           X_Logic0_port, C(0) => X_Logic0_port, D(15) => A(7),
                           D(14) => A(7), D(13) => A(7), D(12) => A(7), D(11) 
                           => A(7), D(10) => A(7), D(9) => A(6), D(8) => A(5), 
                           D(7) => A(4), D(6) => A(3), D(5) => A(2), D(4) => 
                           A(1), D(3) => A(0), D(2) => X_Logic0_port, D(1) => 
                           X_Logic0_port, D(0) => X_Logic0_port, E(15) => n42, 
                           E(14) => n43, E(13) => n47, E(12) => n42, E(11) => 
                           n36, E(10) => n45, E(9) => n9, E(8) => n6, E(7) => 
                           n5, E(6) => n10, E(5) => n8, E(4) => n7, E(3) => 
                           A(0), E(2) => X_Logic0_port, E(1) => X_Logic0_port, 
                           E(0) => X_Logic0_port, sel(2) => 
                           select_array_1_2_port, sel(1) => 
                           select_array_1_1_port, sel(0) => 
                           select_array_1_0_port, Y(15) => 
                           array_mux_out_1_15_port, Y(14) => 
                           array_mux_out_1_14_port, Y(13) => 
                           array_mux_out_1_13_port, Y(12) => 
                           array_mux_out_1_12_port, Y(11) => 
                           array_mux_out_1_11_port, Y(10) => 
                           array_mux_out_1_10_port, Y(9) => 
                           array_mux_out_1_9_port, Y(8) => 
                           array_mux_out_1_8_port, Y(7) => 
                           array_mux_out_1_7_port, Y(6) => 
                           array_mux_out_1_6_port, Y(5) => 
                           array_mux_out_1_5_port, Y(4) => 
                           array_mux_out_1_4_port, Y(3) => 
                           array_mux_out_1_3_port, Y(2) => 
                           array_mux_out_1_2_port, Y(1) => 
                           array_mux_out_1_1_port, Y(0) => 
                           array_mux_out_1_0_port);
   adder_1 : P4_ADDER_N16_0 port map( A(15) => array_mux_out_1_15_port, A(14) 
                           => array_mux_out_1_14_port, A(13) => 
                           array_mux_out_1_13_port, A(12) => 
                           array_mux_out_1_12_port, A(11) => 
                           array_mux_out_1_11_port, A(10) => 
                           array_mux_out_1_10_port, A(9) => 
                           array_mux_out_1_9_port, A(8) => 
                           array_mux_out_1_8_port, A(7) => 
                           array_mux_out_1_7_port, A(6) => 
                           array_mux_out_1_6_port, A(5) => 
                           array_mux_out_1_5_port, A(4) => 
                           array_mux_out_1_4_port, A(3) => 
                           array_mux_out_1_3_port, A(2) => 
                           array_mux_out_1_2_port, A(1) => 
                           array_mux_out_1_1_port, A(0) => 
                           array_mux_out_1_0_port, B(15) => 
                           result_array_0_15_port, B(14) => 
                           result_array_0_14_port, B(13) => 
                           result_array_0_13_port, B(12) => 
                           result_array_0_12_port, B(11) => 
                           result_array_0_11_port, B(10) => 
                           result_array_0_10_port, B(9) => 
                           result_array_0_9_port, B(8) => result_array_0_8_port
                           , B(7) => result_array_0_7_port, B(6) => 
                           result_array_0_6_port, B(5) => result_array_0_5_port
                           , B(4) => result_array_0_4_port, B(3) => 
                           result_array_0_3_port, B(2) => result_array_0_2_port
                           , B(1) => result_array_0_1_port, B(0) => 
                           result_array_0_0_port, Cin => X_Logic0_port, S(15) 
                           => result_array_1_15_port, S(14) => 
                           result_array_1_14_port, S(13) => 
                           result_array_1_13_port, S(12) => 
                           result_array_1_12_port, S(11) => 
                           result_array_1_11_port, S(10) => 
                           result_array_1_10_port, S(9) => 
                           result_array_1_9_port, S(8) => result_array_1_8_port
                           , S(7) => result_array_1_7_port, S(6) => 
                           result_array_1_6_port, S(5) => result_array_1_5_port
                           , S(4) => result_array_1_4_port, S(3) => 
                           result_array_1_3_port, S(2) => result_array_1_2_port
                           , S(1) => result_array_1_1_port, S(0) => 
                           result_array_1_0_port, Cout => n_1024);
   booth_j_2 : Booth_Encoder_2 port map( i(2) => B(5), i(1) => B(4), i(0) => 
                           B(3), o(2) => select_array_2_2_port, o(1) => 
                           select_array_2_1_port, o(0) => select_array_2_0_port
                           );
   mux_j_2 : MUX_booth_N16_2 port map( A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => A(7), B(14) => A(7), B(13) 
                           => A(7), B(12) => A(7), B(11) => A(7), B(10) => A(6)
                           , B(9) => A(5), B(8) => A(4), B(7) => A(3), B(6) => 
                           A(2), B(5) => A(1), B(4) => A(0), B(3) => 
                           X_Logic0_port, B(2) => X_Logic0_port, B(1) => 
                           X_Logic0_port, B(0) => X_Logic0_port, C(15) => n48, 
                           C(14) => n48, C(13) => n48, C(12) => n47, C(11) => 
                           n45, C(10) => n9, C(9) => n6, C(8) => n5, C(7) => 
                           n10, C(6) => n8, C(5) => n7, C(4) => A(0), C(3) => 
                           X_Logic0_port, C(2) => X_Logic0_port, C(1) => 
                           X_Logic0_port, C(0) => X_Logic0_port, D(15) => A(7),
                           D(14) => A(7), D(13) => A(7), D(12) => A(7), D(11) 
                           => A(6), D(10) => A(5), D(9) => A(4), D(8) => A(3), 
                           D(7) => A(2), D(6) => A(1), D(5) => A(0), D(4) => 
                           X_Logic0_port, D(3) => X_Logic0_port, D(2) => 
                           X_Logic0_port, D(1) => X_Logic0_port, D(0) => 
                           X_Logic0_port, E(15) => n48, E(14) => n48, E(13) => 
                           n48, E(12) => n37, E(11) => n9, E(10) => n6, E(9) =>
                           n5, E(8) => n10, E(7) => n8, E(6) => n7, E(5) => 
                           A(0), E(4) => X_Logic0_port, E(3) => X_Logic0_port, 
                           E(2) => X_Logic0_port, E(1) => X_Logic0_port, E(0) 
                           => X_Logic0_port, sel(2) => select_array_2_2_port, 
                           sel(1) => select_array_2_1_port, sel(0) => 
                           select_array_2_0_port, Y(15) => 
                           array_mux_out_2_15_port, Y(14) => 
                           array_mux_out_2_14_port, Y(13) => 
                           array_mux_out_2_13_port, Y(12) => 
                           array_mux_out_2_12_port, Y(11) => 
                           array_mux_out_2_11_port, Y(10) => 
                           array_mux_out_2_10_port, Y(9) => 
                           array_mux_out_2_9_port, Y(8) => 
                           array_mux_out_2_8_port, Y(7) => 
                           array_mux_out_2_7_port, Y(6) => 
                           array_mux_out_2_6_port, Y(5) => 
                           array_mux_out_2_5_port, Y(4) => 
                           array_mux_out_2_4_port, Y(3) => 
                           array_mux_out_2_3_port, Y(2) => 
                           array_mux_out_2_2_port, Y(1) => 
                           array_mux_out_2_1_port, Y(0) => 
                           array_mux_out_2_0_port);
   adder_2 : P4_ADDER_N16_2 port map( A(15) => array_mux_out_2_15_port, A(14) 
                           => array_mux_out_2_14_port, A(13) => 
                           array_mux_out_2_13_port, A(12) => 
                           array_mux_out_2_12_port, A(11) => 
                           array_mux_out_2_11_port, A(10) => 
                           array_mux_out_2_10_port, A(9) => 
                           array_mux_out_2_9_port, A(8) => 
                           array_mux_out_2_8_port, A(7) => 
                           array_mux_out_2_7_port, A(6) => 
                           array_mux_out_2_6_port, A(5) => 
                           array_mux_out_2_5_port, A(4) => 
                           array_mux_out_2_4_port, A(3) => 
                           array_mux_out_2_3_port, A(2) => 
                           array_mux_out_2_2_port, A(1) => 
                           array_mux_out_2_1_port, A(0) => 
                           array_mux_out_2_0_port, B(15) => 
                           result_array_1_15_port, B(14) => 
                           result_array_1_14_port, B(13) => 
                           result_array_1_13_port, B(12) => 
                           result_array_1_12_port, B(11) => 
                           result_array_1_11_port, B(10) => 
                           result_array_1_10_port, B(9) => 
                           result_array_1_9_port, B(8) => result_array_1_8_port
                           , B(7) => result_array_1_7_port, B(6) => 
                           result_array_1_6_port, B(5) => result_array_1_5_port
                           , B(4) => result_array_1_4_port, B(3) => 
                           result_array_1_3_port, B(2) => result_array_1_2_port
                           , B(1) => result_array_1_1_port, B(0) => 
                           result_array_1_0_port, Cin => X_Logic0_port, S(15) 
                           => result_array_2_15_port, S(14) => 
                           result_array_2_14_port, S(13) => 
                           result_array_2_13_port, S(12) => 
                           result_array_2_12_port, S(11) => 
                           result_array_2_11_port, S(10) => 
                           result_array_2_10_port, S(9) => 
                           result_array_2_9_port, S(8) => result_array_2_8_port
                           , S(7) => result_array_2_7_port, S(6) => 
                           result_array_2_6_port, S(5) => result_array_2_5_port
                           , S(4) => result_array_2_4_port, S(3) => 
                           result_array_2_3_port, S(2) => result_array_2_2_port
                           , S(1) => result_array_2_1_port, S(0) => 
                           result_array_2_0_port, Cout => n_1025);
   booth_j_3 : Booth_Encoder_1 port map( i(2) => B(7), i(1) => B(6), i(0) => 
                           B(5), o(2) => select_array_3_2_port, o(1) => 
                           select_array_3_1_port, o(0) => select_array_3_0_port
                           );
   mux_j_3 : MUX_booth_N16_1 port map( A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => A(7), B(14) => A(7), B(13) 
                           => A(7), B(12) => A(6), B(11) => A(5), B(10) => A(4)
                           , B(9) => A(3), B(8) => A(2), B(7) => A(1), B(6) => 
                           A(0), B(5) => X_Logic0_port, B(4) => X_Logic0_port, 
                           B(3) => X_Logic0_port, B(2) => X_Logic0_port, B(1) 
                           => X_Logic0_port, B(0) => X_Logic0_port, C(15) => 
                           n48, C(14) => n48, C(13) => n37, C(12) => n9, C(11) 
                           => n6, C(10) => n5, C(9) => n10, C(8) => n8, C(7) =>
                           n7, C(6) => A(0), C(5) => X_Logic0_port, C(4) => 
                           X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, D(15) => A(7), D(14) => A(7), D(13) 
                           => A(6), D(12) => A(5), D(11) => A(4), D(10) => A(3)
                           , D(9) => A(2), D(8) => A(1), D(7) => A(0), D(6) => 
                           X_Logic0_port, D(5) => X_Logic0_port, D(4) => 
                           X_Logic0_port, D(3) => X_Logic0_port, D(2) => 
                           X_Logic0_port, D(1) => X_Logic0_port, D(0) => 
                           X_Logic0_port, E(15) => n48, E(14) => n37, E(13) => 
                           n9, E(12) => n6, E(11) => n5, E(10) => n10, E(9) => 
                           n8, E(8) => n7, E(7) => A(0), E(6) => X_Logic0_port,
                           E(5) => X_Logic0_port, E(4) => X_Logic0_port, E(3) 
                           => X_Logic0_port, E(2) => X_Logic0_port, E(1) => 
                           X_Logic0_port, E(0) => X_Logic0_port, sel(2) => 
                           select_array_3_2_port, sel(1) => 
                           select_array_3_1_port, sel(0) => 
                           select_array_3_0_port, Y(15) => 
                           array_mux_out_3_15_port, Y(14) => 
                           array_mux_out_3_14_port, Y(13) => 
                           array_mux_out_3_13_port, Y(12) => 
                           array_mux_out_3_12_port, Y(11) => 
                           array_mux_out_3_11_port, Y(10) => 
                           array_mux_out_3_10_port, Y(9) => 
                           array_mux_out_3_9_port, Y(8) => 
                           array_mux_out_3_8_port, Y(7) => 
                           array_mux_out_3_7_port, Y(6) => 
                           array_mux_out_3_6_port, Y(5) => 
                           array_mux_out_3_5_port, Y(4) => 
                           array_mux_out_3_4_port, Y(3) => 
                           array_mux_out_3_3_port, Y(2) => 
                           array_mux_out_3_2_port, Y(1) => 
                           array_mux_out_3_1_port, Y(0) => 
                           array_mux_out_3_0_port);
   adder_3 : P4_ADDER_N16_1 port map( A(15) => array_mux_out_3_15_port, A(14) 
                           => array_mux_out_3_14_port, A(13) => 
                           array_mux_out_3_13_port, A(12) => 
                           array_mux_out_3_12_port, A(11) => 
                           array_mux_out_3_11_port, A(10) => 
                           array_mux_out_3_10_port, A(9) => 
                           array_mux_out_3_9_port, A(8) => 
                           array_mux_out_3_8_port, A(7) => 
                           array_mux_out_3_7_port, A(6) => 
                           array_mux_out_3_6_port, A(5) => 
                           array_mux_out_3_5_port, A(4) => 
                           array_mux_out_3_4_port, A(3) => 
                           array_mux_out_3_3_port, A(2) => 
                           array_mux_out_3_2_port, A(1) => 
                           array_mux_out_3_1_port, A(0) => 
                           array_mux_out_3_0_port, B(15) => 
                           result_array_2_15_port, B(14) => 
                           result_array_2_14_port, B(13) => 
                           result_array_2_13_port, B(12) => 
                           result_array_2_12_port, B(11) => 
                           result_array_2_11_port, B(10) => 
                           result_array_2_10_port, B(9) => 
                           result_array_2_9_port, B(8) => result_array_2_8_port
                           , B(7) => result_array_2_7_port, B(6) => 
                           result_array_2_6_port, B(5) => result_array_2_5_port
                           , B(4) => result_array_2_4_port, B(3) => 
                           result_array_2_3_port, B(2) => result_array_2_2_port
                           , B(1) => result_array_2_1_port, B(0) => 
                           result_array_2_0_port, Cin => X_Logic0_port, S(15) 
                           => S(15), S(14) => S(14), S(13) => S(13), S(12) => 
                           S(12), S(11) => S(11), S(10) => S(10), S(9) => S(9),
                           S(8) => S(8), S(7) => S(7), S(6) => S(6), S(5) => 
                           S(5), S(4) => S(4), S(3) => S(3), S(2) => S(2), S(1)
                           => S(1), S(0) => S(0), Cout => n_1026);
   U19 : XOR2_X1 port map( A => n39, B => A(5), Z => n6);
   U20 : XOR2_X1 port map( A => n34, B => A(3), Z => n10);
   U21 : BUF_X1 port map( A => B(1), Z => n46);
   U22 : AND2_X1 port map( A1 => n35, A2 => n49, ZN => n36);
   U23 : CLKBUF_X1 port map( A => n45, Z => n37);
   U24 : XNOR2_X1 port map( A => n38, B => A(6), ZN => n9);
   U25 : NOR2_X1 port map( A1 => n39, A2 => A(5), ZN => n38);
   U26 : BUF_X1 port map( A => n11, Z => n45);
   U27 : OR3_X2 port map( A1 => A(3), A2 => A(4), A3 => n34, ZN => n39);
   U28 : OR3_X1 port map( A1 => n34, A2 => A(4), A3 => A(3), ZN => n31);
   U29 : OR2_X1 port map( A1 => A(5), A2 => A(6), ZN => n40);
   U30 : OR2_X2 port map( A1 => n40, A2 => n31, ZN => n35);
   U31 : INV_X1 port map( A => A(7), ZN => n49);
   U32 : BUF_X1 port map( A => n36, Z => n47);
   U33 : XOR2_X1 port map( A => A(0), B => A(1), Z => n7);
   U34 : XNOR2_X1 port map( A => A(2), B => n32, ZN => n8);
   U35 : NOR2_X1 port map( A1 => A(1), A2 => A(0), ZN => n32);
   U36 : XOR2_X1 port map( A => A(4), B => n41, Z => n5);
   U37 : OR2_X1 port map( A1 => A(3), A2 => n34, ZN => n41);
   U38 : OR3_X2 port map( A1 => A(2), A2 => A(0), A3 => A(1), ZN => n34);
   U39 : CLKBUF_X1 port map( A => n36, Z => n42);
   U40 : CLKBUF_X1 port map( A => n36, Z => n43);
   U41 : NAND2_X1 port map( A1 => n35, A2 => n49, ZN => n44);
   U42 : CLKBUF_X1 port map( A => n36, Z => n48);
   U43 : OAI21_X1 port map( B1 => n35, B2 => n49, A => n44, ZN => n11);

end SYN_STRUCTURAL;
