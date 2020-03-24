
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU_N4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU_N4;

package body CONV_PACK_ALU_N4 is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU_N4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N4.all;

entity ALU_N4 is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (3 downto 0);  
         OUTALU : out std_logic_vector (3 downto 0));

end ALU_N4;

architecture SYN_BEHAVIOR of ALU_N4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N60, N61, 
      mult_28_SUMB_2_1_port, mult_28_CARRYB_2_0_port, mult_28_ab_0_1_port, 
      mult_28_ab_0_2_port, mult_28_ab_0_3_port, mult_28_ab_1_0_port, 
      mult_28_ab_1_1_port, mult_28_ab_1_2_port, mult_28_ab_2_0_port, 
      mult_28_ab_2_1_port, mult_28_ab_3_0_port, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, 
      n190, n191, n_1000, n_1001 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   mult_28_S2_2_1 : FA_X1 port map( A => mult_28_ab_2_1_port, B => n101, CI => 
                           n105, CO => n_1000, S => mult_28_SUMB_2_1_port);
   mult_28_S1_2_0 : FA_X1 port map( A => mult_28_ab_2_0_port, B => n103, CI => 
                           n102, CO => mult_28_CARRYB_2_0_port, S => N60);
   mult_28_S4_0 : FA_X1 port map( A => mult_28_ab_3_0_port, B => 
                           mult_28_CARRYB_2_0_port, CI => mult_28_SUMB_2_1_port
                           , CO => n_1001, S => N61);
   U96 : AND2_X1 port map( A1 => mult_28_ab_0_2_port, A2 => mult_28_ab_1_1_port
                           , ZN => n101);
   U97 : XOR2_X1 port map( A => mult_28_ab_1_1_port, B => mult_28_ab_0_2_port, 
                           Z => n102);
   U98 : AND2_X1 port map( A1 => mult_28_ab_1_0_port, A2 => mult_28_ab_0_1_port
                           , ZN => n103);
   U99 : XOR2_X1 port map( A => mult_28_ab_1_0_port, B => mult_28_ab_0_1_port, 
                           Z => n104);
   U100 : XOR2_X1 port map( A => mult_28_ab_1_2_port, B => mult_28_ab_0_3_port,
                           Z => n105);
   U101 : AND2_X1 port map( A1 => DATA1(1), A2 => DATA2(2), ZN => 
                           mult_28_ab_1_2_port);
   U102 : NOR2_X1 port map( A1 => n106, A2 => n107, ZN => mult_28_ab_0_3_port);
   U103 : NOR2_X1 port map( A1 => n108, A2 => n106, ZN => mult_28_ab_0_2_port);
   U104 : INV_X1 port map( A => DATA1(0), ZN => n106);
   U105 : INV_X1 port map( A => n109, ZN => mult_28_ab_0_1_port);
   U106 : NAND4_X1 port map( A1 => n110, A2 => n111, A3 => n112, A4 => n113, ZN
                           => OUTALU(3));
   U107 : AOI221_X1 port map( B1 => DATA1(3), B2 => n114, C1 => N61, C2 => n115
                           , A => n116, ZN => n113);
   U108 : MUX2_X1 port map( A => n117, B => n118, S => DATA2(0), Z => n116);
   U109 : OAI21_X1 port map( B1 => n119, B2 => n109, A => n120, ZN => n118);
   U110 : NAND3_X1 port map( A1 => DATA1(0), A2 => n121, A3 => n122, ZN => n120
                           );
   U111 : INV_X1 port map( A => n123, ZN => n119);
   U112 : NOR2_X1 port map( A1 => n124, A2 => n125, ZN => n117);
   U113 : AOI22_X1 port map( A1 => n126, A2 => n127, B1 => mult_28_ab_2_0_port,
                           B2 => n128, ZN => n112);
   U114 : NAND3_X1 port map( A1 => DATA2(3), A2 => DATA1(3), A3 => n129, ZN => 
                           n111);
   U115 : NAND2_X1 port map( A1 => n130, A2 => n131, ZN => n110);
   U116 : XOR2_X1 port map( A => n132, B => n127, Z => n130);
   U117 : XOR2_X1 port map( A => DATA1(3), B => DATA2(3), Z => n127);
   U118 : XOR2_X1 port map( A => n133, B => FUNC_0_port, Z => n132);
   U119 : OAI22_X1 port map( A1 => n134, A2 => n135, B1 => n136, B2 => n137, ZN
                           => n133);
   U120 : AND2_X1 port map( A1 => n135, A2 => n134, ZN => n136);
   U121 : OAI211_X1 port map( C1 => n138, C2 => n139, A => n140, B => n141, ZN 
                           => OUTALU(2));
   U122 : AOI221_X1 port map( B1 => N60, B2 => n115, C1 => mult_28_ab_1_0_port,
                           C2 => n128, A => n142, ZN => n141);
   U123 : NOR3_X1 port map( A1 => n109, A2 => DATA2(0), A3 => n124, ZN => n142)
                           ;
   U124 : NOR2_X1 port map( A1 => n123, A2 => n122, ZN => n124);
   U125 : NAND2_X1 port map( A1 => DATA1(0), A2 => DATA2(1), ZN => n109);
   U126 : MUX2_X1 port map( A => n143, B => n144, S => DATA1(2), Z => n140);
   U127 : AOI211_X1 port map( C1 => n145, C2 => n131, A => n146, B => n114, ZN 
                           => n144);
   U128 : MUX2_X1 port map( A => n126, B => n129, S => DATA2(2), Z => n146);
   U129 : XOR2_X1 port map( A => n134, B => n147, Z => n145);
   U130 : AOI22_X1 port map( A1 => n148, A2 => n131, B1 => n126, B2 => DATA2(2)
                           , ZN => n143);
   U131 : XOR2_X1 port map( A => n134, B => n135, Z => n148);
   U132 : INV_X1 port map( A => n147, ZN => n135);
   U133 : XNOR2_X1 port map( A => n108, B => FUNC_0_port, ZN => n147);
   U134 : AOI21_X1 port map( B1 => n149, B2 => n150, A => n151, ZN => n134);
   U135 : INV_X1 port map( A => n152, ZN => n151);
   U136 : OAI21_X1 port map( B1 => n150, B2 => n149, A => DATA1(1), ZN => n152)
                           ;
   U137 : INV_X1 port map( A => n153, ZN => n138);
   U138 : NAND3_X1 port map( A1 => n154, A2 => n155, A3 => n156, ZN => 
                           OUTALU(1));
   U139 : AOI221_X1 port map( B1 => n104, B2 => n115, C1 => DATA2(1), C2 => 
                           n157, A => n158, ZN => n156);
   U140 : AND3_X1 port map( A1 => n128, A2 => DATA2(0), A3 => DATA1(0), ZN => 
                           n158);
   U141 : MUX2_X1 port map( A => n123, B => n122, S => DATA2(1), Z => n128);
   U142 : INV_X1 port map( A => n159, ZN => n122);
   U143 : OAI21_X1 port map( B1 => DATA1(1), B2 => n160, A => n161, ZN => n157)
                           ;
   U144 : NAND3_X1 port map( A1 => n162, A2 => n163, A3 => DATA1(3), ZN => n161
                           );
   U145 : MUX2_X1 port map( A => n164, B => n165, S => DATA1(1), Z => n155);
   U146 : AOI221_X1 port map( B1 => n166, B2 => n131, C1 => n126, C2 => n121, A
                           => n114, ZN => n165);
   U147 : NAND2_X1 port map( A1 => n167, A2 => n131, ZN => n164);
   U148 : INV_X1 port map( A => n166, ZN => n167);
   U149 : XNOR2_X1 port map( A => n149, B => n150, ZN => n166);
   U150 : AOI21_X1 port map( B1 => n168, B2 => n169, A => n170, ZN => n150);
   U151 : AOI21_X1 port map( B1 => n171, B2 => FUNC_0_port, A => DATA1(0), ZN 
                           => n170);
   U152 : INV_X1 port map( A => n171, ZN => n169);
   U153 : XOR2_X1 port map( A => n121, B => n168, Z => n149);
   U154 : AOI22_X1 port map( A1 => n153, A2 => mult_28_ab_2_0_port, B1 => 
                           mult_28_ab_1_1_port, B2 => n129, ZN => n154);
   U155 : INV_X1 port map( A => n125, ZN => mult_28_ab_1_1_port);
   U156 : NAND2_X1 port map( A1 => DATA1(1), A2 => DATA2(1), ZN => n125);
   U157 : NOR2_X1 port map( A1 => n137, A2 => n163, ZN => mult_28_ab_2_0_port);
   U158 : NAND3_X1 port map( A1 => n172, A2 => n173, A3 => n174, ZN => 
                           OUTALU(0));
   U159 : AOI22_X1 port map( A1 => n175, A2 => mult_28_ab_3_0_port, B1 => n153,
                           B2 => mult_28_ab_1_0_port, ZN => n174);
   U160 : AND2_X1 port map( A1 => DATA1(1), A2 => DATA2(0), ZN => 
                           mult_28_ab_1_0_port);
   U161 : MUX2_X1 port map( A => n176, B => n177, S => DATA2(1), Z => n153);
   U162 : INV_X1 port map( A => n139, ZN => mult_28_ab_3_0_port);
   U163 : NAND2_X1 port map( A1 => DATA2(0), A2 => DATA1(3), ZN => n139);
   U164 : MUX2_X1 port map( A => n177, B => n176, S => DATA2(1), Z => n175);
   U165 : NAND3_X1 port map( A1 => n162, A2 => n163, A3 => mult_28_ab_2_1_port,
                           ZN => n173);
   U166 : NOR2_X1 port map( A1 => n121, A2 => n137, ZN => mult_28_ab_2_1_port);
   U167 : INV_X1 port map( A => DATA1(2), ZN => n137);
   U168 : OR2_X1 port map( A1 => n176, A2 => n177, ZN => n162);
   U169 : INV_X1 port map( A => n178, ZN => n177);
   U170 : MUX2_X1 port map( A => n179, B => n180, S => DATA1(0), Z => n172);
   U171 : AOI211_X1 port map( C1 => n181, C2 => n131, A => n182, B => n114, ZN 
                           => n180);
   U172 : OAI21_X1 port map( B1 => FUNC_0_port, B2 => n160, A => n183, ZN => 
                           n114);
   U173 : OAI211_X1 port map( C1 => n123, C2 => n176, A => n163, B => n121, ZN 
                           => n183);
   U174 : INV_X1 port map( A => DATA2(1), ZN => n121);
   U175 : OAI21_X1 port map( B1 => n184, B2 => n185, A => n159, ZN => n176);
   U176 : NAND3_X1 port map( A1 => n186, A2 => FUNC_0_port, A3 => FUNC_3_port, 
                           ZN => n159);
   U177 : NAND2_X1 port map( A1 => FUNC_2_port, A2 => FUNC_0_port, ZN => n185);
   U178 : OAI21_X1 port map( B1 => n184, B2 => n187, A => n178, ZN => n123);
   U179 : NAND3_X1 port map( A1 => n186, A2 => n168, A3 => FUNC_3_port, ZN => 
                           n178);
   U180 : NAND2_X1 port map( A1 => FUNC_2_port, A2 => n168, ZN => n187);
   U181 : NAND4_X1 port map( A1 => FUNC_1_port, A2 => n108, A3 => n107, A4 => 
                           n188, ZN => n184);
   U182 : INV_X1 port map( A => DATA2(3), ZN => n107);
   U183 : INV_X1 port map( A => DATA2(2), ZN => n108);
   U184 : MUX2_X1 port map( A => n126, B => n189, S => DATA2(0), Z => n182);
   U185 : OR2_X1 port map( A1 => n129, A2 => n115, ZN => n189);
   U186 : NOR4_X1 port map( A1 => n190, A2 => FUNC_0_port, A3 => FUNC_2_port, 
                           A4 => FUNC_3_port, ZN => n115);
   U187 : NOR4_X1 port map( A1 => n190, A2 => n168, A3 => FUNC_2_port, A4 => 
                           FUNC_3_port, ZN => n129);
   U188 : XOR2_X1 port map( A => n168, B => n171, Z => n181);
   U189 : INV_X1 port map( A => FUNC_0_port, ZN => n168);
   U190 : AOI22_X1 port map( A1 => n191, A2 => n131, B1 => n126, B2 => DATA2(0)
                           , ZN => n179);
   U191 : INV_X1 port map( A => n160, ZN => n126);
   U192 : NAND3_X1 port map( A1 => n190, A2 => n188, A3 => FUNC_2_port, ZN => 
                           n160);
   U193 : INV_X1 port map( A => FUNC_1_port, ZN => n190);
   U194 : AND2_X1 port map( A1 => n186, A2 => n188, ZN => n131);
   U195 : INV_X1 port map( A => FUNC_3_port, ZN => n188);
   U196 : NOR2_X1 port map( A1 => FUNC_1_port, A2 => FUNC_2_port, ZN => n186);
   U197 : XOR2_X1 port map( A => FUNC_0_port, B => n171, Z => n191);
   U198 : XNOR2_X1 port map( A => n163, B => FUNC_0_port, ZN => n171);
   U199 : INV_X1 port map( A => DATA2(0), ZN => n163);

end SYN_BEHAVIOR;
