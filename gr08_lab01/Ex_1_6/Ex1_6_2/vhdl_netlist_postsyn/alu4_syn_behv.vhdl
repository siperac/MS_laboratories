
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

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N56, N57, N114, 
      N115, N116, N117, N118, mult_28_SUMB_2_1_port, mult_28_CARRYB_2_0_port, 
      mult_28_ab_0_1_port, mult_28_ab_0_2_port, mult_28_ab_0_3_port, 
      mult_28_ab_1_0_port, mult_28_ab_1_1_port, mult_28_ab_2_0_port, 
      mult_28_ab_2_1_port, mult_28_ab_3_0_port, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114_port, n115_port, n116_port, n117_port, 
      n118_port, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, 
      n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, 
      n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, 
      n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, 
      n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, 
      n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, 
      n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, 
      n201, n202, n203, n_1000, n_1001 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   OUTALU_reg_3_inst : DLH_X1 port map( G => N114, D => N118, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N114, D => N117, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N114, D => N116, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N114, D => N115, Q => OUTALU(0));
   mult_28_S2_2_1 : FA_X1 port map( A => mult_28_ab_2_1_port, B => n105, CI => 
                           n107, CO => n_1000, S => mult_28_SUMB_2_1_port);
   mult_28_S1_2_0 : FA_X1 port map( A => mult_28_ab_2_0_port, B => n106, CI => 
                           n108, CO => mult_28_CARRYB_2_0_port, S => N56);
   mult_28_S4_0 : FA_X1 port map( A => mult_28_ab_3_0_port, B => 
                           mult_28_CARRYB_2_0_port, CI => mult_28_SUMB_2_1_port
                           , CO => n_1001, S => N57);
   U101 : AND2_X1 port map( A1 => mult_28_ab_0_2_port, A2 => 
                           mult_28_ab_1_1_port, ZN => n105);
   U102 : AND2_X1 port map( A1 => mult_28_ab_1_0_port, A2 => 
                           mult_28_ab_0_1_port, ZN => n106);
   U103 : XNOR2_X1 port map( A => n110, B => mult_28_ab_0_3_port, ZN => n107);
   U104 : XOR2_X1 port map( A => mult_28_ab_1_1_port, B => mult_28_ab_0_2_port,
                           Z => n108);
   U105 : XOR2_X1 port map( A => mult_28_ab_1_0_port, B => mult_28_ab_0_1_port,
                           Z => n109);
   U106 : NAND2_X1 port map( A1 => DATA1(1), A2 => DATA2(2), ZN => n110);
   U107 : NOR2_X1 port map( A1 => n111, A2 => n112, ZN => mult_28_ab_0_3_port);
   U108 : NOR2_X1 port map( A1 => n113, A2 => n111, ZN => mult_28_ab_0_2_port);
   U109 : NAND3_X1 port map( A1 => n114_port, A2 => n115_port, A3 => n116_port,
                           ZN => N118);
   U110 : AOI222_X1 port map( A1 => N57, A2 => n117_port, B1 => 
                           mult_28_ab_2_0_port, B2 => n118_port, C1 => DATA1(3)
                           , C2 => n119, ZN => n116_port);
   U111 : MUX2_X1 port map( A => n120, B => n121, S => n122, Z => n115_port);
   U112 : NAND2_X1 port map( A1 => mult_28_ab_1_1_port, A2 => n123, ZN => n121)
                           ;
   U113 : AOI21_X1 port map( B1 => mult_28_ab_0_1_port, B2 => n124, A => n125, 
                           ZN => n120);
   U114 : NOR3_X1 port map( A1 => n126, A2 => DATA2(1), A3 => n111, ZN => n125)
                           ;
   U115 : MUX2_X1 port map( A => n127, B => n128, S => n112, Z => n114_port);
   U116 : MUX2_X1 port map( A => n129, B => n130, S => DATA1(3), Z => n128);
   U117 : NAND2_X1 port map( A1 => n131, A2 => n132, ZN => n129);
   U118 : AND2_X1 port map( A1 => n133, A2 => n134, ZN => n127);
   U119 : MUX2_X1 port map( A => n130, B => n135, S => DATA1(3), Z => n134);
   U120 : AOI21_X1 port map( B1 => n132, B2 => n131, A => n136, ZN => n135);
   U121 : INV_X1 port map( A => n137, ZN => n131);
   U122 : AOI21_X1 port map( B1 => n132, B2 => n137, A => n138, ZN => n130);
   U123 : XOR2_X1 port map( A => n139, B => n140, Z => n137);
   U124 : OAI21_X1 port map( B1 => n141, B2 => n142, A => n143, ZN => n139);
   U125 : OAI21_X1 port map( B1 => n144, B2 => n145, A => DATA1(2), ZN => n143)
                           ;
   U126 : INV_X1 port map( A => n141, ZN => n145);
   U127 : NAND3_X1 port map( A1 => n146, A2 => n147, A3 => n148, ZN => N117);
   U128 : AOI221_X1 port map( B1 => mult_28_ab_3_0_port, B2 => n149, C1 => 
                           mult_28_ab_1_0_port, C2 => n118_port, A => n150, ZN 
                           => n148);
   U129 : AND3_X1 port map( A1 => mult_28_ab_0_1_port, A2 => n122, A3 => n123, 
                           ZN => n150);
   U130 : OR2_X1 port map( A1 => n124, A2 => n151, ZN => n123);
   U131 : NOR2_X1 port map( A1 => n111, A2 => n152, ZN => mult_28_ab_0_1_port);
   U132 : MUX2_X1 port map( A => n153, B => n154, S => DATA1(2), Z => n147);
   U133 : AOI211_X1 port map( C1 => n155, C2 => n132, A => n156, B => n119, ZN 
                           => n154);
   U134 : MUX2_X1 port map( A => n136, B => n138, S => n113, Z => n156);
   U135 : XNOR2_X1 port map( A => n141, B => n142, ZN => n155);
   U136 : INV_X1 port map( A => n144, ZN => n142);
   U137 : AOI22_X1 port map( A1 => n157, A2 => n132, B1 => n138, B2 => DATA2(2)
                           , ZN => n153);
   U138 : XNOR2_X1 port map( A => n141, B => n144, ZN => n157);
   U139 : XNOR2_X1 port map( A => n158, B => n113, ZN => n144);
   U140 : AOI21_X1 port map( B1 => n159, B2 => n160, A => n161, ZN => n141);
   U141 : INV_X1 port map( A => n162, ZN => n161);
   U142 : OAI21_X1 port map( B1 => n160, B2 => n159, A => DATA1(1), ZN => n162)
                           ;
   U143 : AOI22_X1 port map( A1 => n163, A2 => DATA2(2), B1 => N56, B2 => 
                           n117_port, ZN => n146);
   U144 : NAND3_X1 port map( A1 => n164, A2 => n165, A3 => n166, ZN => N116);
   U145 : AOI221_X1 port map( B1 => n149, B2 => mult_28_ab_2_0_port, C1 => 
                           DATA2(1), C2 => n167, A => n168, ZN => n166);
   U146 : AND3_X1 port map( A1 => n118_port, A2 => DATA2(0), A3 => DATA1(0), ZN
                           => n168);
   U147 : MUX2_X1 port map( A => n151, B => n124, S => n152, Z => n118_port);
   U148 : INV_X1 port map( A => n126, ZN => n151);
   U149 : OAI211_X1 port map( C1 => DATA1(1), C2 => n169, A => n170, B => n133,
                           ZN => n167);
   U150 : NAND3_X1 port map( A1 => n171, A2 => n122, A3 => DATA1(3), ZN => n170
                           );
   U151 : INV_X1 port map( A => n138, ZN => n169);
   U152 : AND2_X1 port map( A1 => DATA1(2), A2 => DATA2(0), ZN => 
                           mult_28_ab_2_0_port);
   U153 : MUX2_X1 port map( A => n172, B => n173, S => DATA1(1), Z => n165);
   U154 : AOI221_X1 port map( B1 => n174, B2 => n132, C1 => n138, C2 => n152, A
                           => n119, ZN => n173);
   U155 : NAND2_X1 port map( A1 => n175, A2 => n132, ZN => n172);
   U156 : INV_X1 port map( A => n174, ZN => n175);
   U157 : XNOR2_X1 port map( A => n160, B => n159, ZN => n174);
   U158 : XNOR2_X1 port map( A => n158, B => n152, ZN => n159);
   U159 : AOI22_X1 port map( A1 => n140, A2 => n176, B1 => n111, B2 => n177, ZN
                           => n160);
   U160 : OR2_X1 port map( A1 => n176, A2 => n140, ZN => n177);
   U161 : AOI22_X1 port map( A1 => n136, A2 => mult_28_ab_1_1_port, B1 => n109,
                           B2 => n117_port, ZN => n164);
   U162 : INV_X1 port map( A => n178, ZN => n117_port);
   U163 : AND2_X1 port map( A1 => DATA1(1), A2 => DATA2(1), ZN => 
                           mult_28_ab_1_1_port);
   U164 : INV_X1 port map( A => n179, ZN => n136);
   U165 : NAND3_X1 port map( A1 => n180, A2 => n181, A3 => n182, ZN => N115);
   U166 : AOI22_X1 port map( A1 => n183, A2 => mult_28_ab_3_0_port, B1 => n149,
                           B2 => mult_28_ab_1_0_port, ZN => n182);
   U167 : AND2_X1 port map( A1 => DATA1(1), A2 => DATA2(0), ZN => 
                           mult_28_ab_1_0_port);
   U168 : MUX2_X1 port map( A => n184, B => n185, S => n152, Z => n149);
   U169 : AND2_X1 port map( A1 => DATA2(0), A2 => DATA1(3), ZN => 
                           mult_28_ab_3_0_port);
   U170 : MUX2_X1 port map( A => n185, B => n184, S => n152, Z => n183);
   U171 : MUX2_X1 port map( A => n133, B => n186, S => n122, Z => n181);
   U172 : NAND2_X1 port map( A1 => mult_28_ab_2_1_port, A2 => n171, ZN => n186)
                           ;
   U173 : OR2_X1 port map( A1 => n185, A2 => n184, ZN => n171);
   U174 : AND2_X1 port map( A1 => DATA2(1), A2 => DATA1(2), ZN => 
                           mult_28_ab_2_1_port);
   U175 : MUX2_X1 port map( A => n187, B => n188, S => n111, Z => n180);
   U176 : INV_X1 port map( A => DATA1(0), ZN => n111);
   U177 : AOI22_X1 port map( A1 => n189, A2 => n132, B1 => n138, B2 => DATA2(0)
                           , ZN => n188);
   U178 : XNOR2_X1 port map( A => n158, B => n176, ZN => n189);
   U179 : INV_X1 port map( A => n140, ZN => n158);
   U180 : AOI211_X1 port map( C1 => n190, C2 => n132, A => n191, B => n119, ZN 
                           => n187);
   U181 : NAND2_X1 port map( A1 => n133, A2 => n192, ZN => n119);
   U182 : OAI211_X1 port map( C1 => n124, C2 => n185, A => n122, B => n152, ZN 
                           => n192);
   U183 : INV_X1 port map( A => DATA2(1), ZN => n152);
   U184 : OAI21_X1 port map( B1 => n193, B2 => n194, A => n126, ZN => n185);
   U185 : OAI21_X1 port map( B1 => n193, B2 => n195, A => n196, ZN => n124);
   U186 : NAND2_X1 port map( A1 => n197, A2 => n198, ZN => n195);
   U187 : NAND4_X1 port map( A1 => FUNC_2_port, A2 => FUNC_1_port, A3 => n113, 
                           A4 => n112, ZN => n193);
   U188 : INV_X1 port map( A => DATA2(3), ZN => n112);
   U189 : INV_X1 port map( A => DATA2(2), ZN => n113);
   U190 : INV_X1 port map( A => n163, ZN => n133);
   U191 : NOR4_X1 port map( A1 => n199, A2 => FUNC_0_port, A3 => FUNC_1_port, 
                           A4 => FUNC_3_port, ZN => n163);
   U192 : MUX2_X1 port map( A => n200, B => n138, S => n122, Z => n191);
   U193 : INV_X1 port map( A => DATA2(0), ZN => n122);
   U194 : NOR3_X1 port map( A1 => n199, A2 => FUNC_1_port, A3 => n194, ZN => 
                           n138);
   U195 : INV_X1 port map( A => n201, ZN => n194);
   U196 : NAND2_X1 port map( A1 => n178, A2 => n179, ZN => n200);
   U197 : NAND3_X1 port map( A1 => FUNC_1_port, A2 => n199, A3 => n201, ZN => 
                           n179);
   U198 : NAND4_X1 port map( A1 => FUNC_1_port, A2 => n197, A3 => n199, A4 => 
                           n198, ZN => n178);
   U199 : INV_X1 port map( A => FUNC_2_port, ZN => n199);
   U200 : OAI21_X1 port map( B1 => FUNC_3_port, B2 => n202, A => n140, ZN => 
                           n132);
   U201 : XNOR2_X1 port map( A => n176, B => n140, ZN => n190);
   U202 : XOR2_X1 port map( A => n140, B => DATA2(0), Z => n176);
   U203 : NAND2_X1 port map( A1 => n201, A2 => n203, ZN => n140);
   U204 : NOR2_X1 port map( A1 => n197, A2 => FUNC_3_port, ZN => n201);
   U205 : NAND3_X1 port map( A1 => n196, A2 => n126, A3 => FUNC_3_port, ZN => 
                           N114);
   U206 : NAND3_X1 port map( A1 => n203, A2 => FUNC_3_port, A3 => FUNC_0_port, 
                           ZN => n126);
   U207 : INV_X1 port map( A => n184, ZN => n196);
   U208 : NOR2_X1 port map( A1 => n202, A2 => n198, ZN => n184);
   U209 : INV_X1 port map( A => FUNC_3_port, ZN => n198);
   U210 : NAND2_X1 port map( A1 => n203, A2 => n197, ZN => n202);
   U211 : INV_X1 port map( A => FUNC_0_port, ZN => n197);
   U212 : NOR2_X1 port map( A1 => FUNC_1_port, A2 => FUNC_2_port, ZN => n203);

end SYN_BEHAVIOR;
