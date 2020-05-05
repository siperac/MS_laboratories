
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_SIPISOALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_SIPISOALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity sipisoAluControl is

   port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
         shiftC, startC : out std_logic);

end sipisoAluControl;

architecture SYN_FSM_OPC of sipisoAluControl is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal NEXT_STATE_4_port, NEXT_STATE_3_port, NEXT_STATE_2_port, 
      NEXT_STATE_1_port, net3523, net3527, net3549, net3560, net3581, n1, n49, 
      net5846, net5848, net5850, net5853, net5854, net5857, net5860, net5861, 
      net5864, net5866, net5869, net5870, net5874, net5875, net5876, net5931, 
      net5930, net5946, net5950, net5954, net6039, net6037, net5892, net5887, 
      net5979, net5929, net5895, net5881, net5871, net5862, net5851, net5960, 
      net5882, n223, n224, loadC_port, n227, n228, n229, n230, n233, n236, n237
      , n238, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
      n253, n256, n257, net7154, net7157, net7161, net7163, net7172, net7175, 
      net7177, net7187, net7191, net7195, net7197, net7208, net7215, net7223, 
      net5947, net5898, net5888, n255, n239, n222, n232, n258, n259, n260, n261
      , n262, n264, n265, n266, n267 : std_logic;

begin
   loadC <= loadC_port;
   startC <= loadC_port;
   
   U50 : NOR2_X1 port map( A1 => net6039, A2 => net6037, ZN => n49);
   U7 : AOI21_X1 port map( B1 => net7208, B2 => net7197, A => net5888, ZN => 
                           n224);
   U10 : AOI22_X1 port map( A1 => net5881, A2 => net7195, B1 => net5882, B2 => 
                           net7172, ZN => n227);
   U12 : INV_X1 port map( A => net5848, ZN => n228);
   U13 : NAND2_X1 port map( A1 => n229, A2 => n228, ZN => n230);
   U14 : NOR2_X1 port map( A1 => net5846, A2 => n250, ZN => n229);
   U17 : NOR2_X1 port map( A1 => n261, A2 => net5875, ZN => n233);
   U19 : OR2_X1 port map( A1 => net5851, A2 => net5850, ZN => n236);
   U20 : NOR2_X1 port map( A1 => n233, A2 => n260, ZN => n237);
   U21 : NAND2_X1 port map( A1 => n236, A2 => n237, ZN => n238);
   U24 : NOR4_X1 port map( A1 => net7177, A2 => n223, A3 => net3581, A4 => 
                           net5950, ZN => net5960);
   U31 : AOI22_X1 port map( A1 => net5881, A2 => net7195, B1 => net5882, B2 => 
                           net7191, ZN => n243);
   U33 : AOI22_X1 port map( A1 => net7161, A2 => net5960, B1 => net5887, B2 => 
                           net7177, ZN => net5851);
   U37 : INV_X1 port map( A => n243, ZN => n244);
   U38 : INV_X1 port map( A => n247, ZN => n246);
   U39 : OAI21_X1 port map( B1 => n248, B2 => net5853, A => n249, ZN => n247);
   U40 : NAND2_X1 port map( A1 => net5871, A2 => net5850, ZN => n249);
   U41 : INV_X1 port map( A => net7187, ZN => net5871);
   U42 : AOI22_X1 port map( A1 => net5870, A2 => net5850, B1 => net5866, B2 => 
                           net5871, ZN => net5869);
   U43 : INV_X1 port map( A => n242, ZN => n248);
   U45 : NOR2_X1 port map( A1 => n258, A2 => n245, ZN => NEXT_STATE_4_port);
   U46 : INV_X1 port map( A => n245, ZN => net5866);
   U47 : NAND2_X1 port map( A1 => strobeA, A2 => net5895, ZN => n242);
   U49 : AOI21_X1 port map( B1 => n242, B2 => net5850, A => net5929, ZN => 
                           net5848);
   U51 : INV_X1 port map( A => strobeB, ZN => net5895);
   U53 : NAND2_X1 port map( A1 => net7215, A2 => net7175, ZN => net5874);
   U56 : AOI22_X1 port map( A1 => n224, A2 => net7177, B1 => net7154, B2 => 
                           net5979, ZN => net5929);
   U57 : NOR3_X1 port map( A1 => net5862, A2 => net5861, A3 => n238, ZN => 
                           net5860);
   U60 : NOR3_X1 port map( A1 => net6037, A2 => net6039, A3 => n264, ZN => 
                           shiftA);
   U62 : NAND2_X1 port map( A1 => strobeB, A2 => net5892, ZN => net5850);
   U63 : INV_X1 port map( A => strobeA, ZN => net5892);
   U64 : INV_X1 port map( A => n250, ZN => net5876);
   U69 : CLKBUF_X1 port map( A => net3581, Z => net6039);
   U70 : INV_X1 port map( A => rst, ZN => n1);
   U72 : OR2_X1 port map( A1 => net7163, A2 => net7208, ZN => n253);
   U77 : NAND2_X1 port map( A1 => net7161, A2 => net7191, ZN => net5875);
   U80 : NAND2_X1 port map( A1 => n49, A2 => net7163, ZN => net5853);
   U81 : OAI21_X1 port map( B1 => net5875, B2 => net7187, A => net5876, ZN => 
                           net5864);
   U82 : NOR2_X1 port map( A1 => n266, A2 => net5864, ZN => n256);
   U83 : OAI21_X1 port map( B1 => net7154, B2 => n253, A => net5874, ZN => 
                           net5870);
   U84 : NAND2_X1 port map( A1 => n256, A2 => net5869, ZN => NEXT_STATE_3_port)
                           ;
   U85 : NOR4_X1 port map( A1 => net5853, A2 => net5866, A3 => n248, A4 => n264
                           , ZN => net5861);
   U86 : INV_X1 port map( A => net5850, ZN => net5857);
   U87 : INV_X1 port map( A => net5860, ZN => NEXT_STATE_1_port);
   U88 : AOI21_X1 port map( B1 => net7175, B2 => net7195, A => n248, ZN => n257
                           );
   U89 : OAI21_X1 port map( B1 => n257, B2 => net5853, A => net5854, ZN => 
                           net5846);
   CURRENT_STATE_reg_1_inst : DFFR_X1 port map( D => NEXT_STATE_1_port, CK => 
                           clk, RN => n1, Q => net3549, QN => net5950);
   CURRENT_STATE_reg_3_inst : DFFR_X1 port map( D => NEXT_STATE_3_port, CK => 
                           clk, RN => n1, Q => net3523, QN => net5930);
   CURRENT_STATE_reg_4_inst : DFFR_X1 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n1, Q => net3581, QN => net5931);
   CURRENT_STATE_reg_2_inst : DFFR_X1 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n1, Q => net3527, QN => net5946);
   CURRENT_STATE_reg_0_inst : DFFR_X1 port map( D => n230, CK => clk, RN => n1,
                           Q => net3560, QN => net5954);
   U28 : NOR3_X1 port map( A1 => net3581, A2 => net5930, A3 => net5946, ZN => 
                           n252);
   U44 : NAND2_X1 port map( A1 => net7161, A2 => n262, ZN => n245);
   U61 : INV_X1 port map( A => net5946, ZN => net5947);
   U23 : NAND2_X1 port map( A1 => net5931, A2 => net5947, ZN => n239);
   U65 : AOI21_X1 port map( B1 => net7157, B2 => n223, A => net5888, ZN => 
                           net5887);
   U78 : NAND2_X1 port map( A1 => net5950, A2 => net5954, ZN => net5888);
   U4 : NOR2_X1 port map( A1 => n239, A2 => n222, ZN => n255);
   U59 : CLKBUF_X1 port map( A => net3527, Z => net6037);
   U5 : NAND2_X1 port map( A1 => net3523, A2 => net3549, ZN => n222);
   U67 : NOR3_X1 port map( A1 => n232, A2 => net5888, A3 => net7223, ZN => 
                           net5898);
   U16 : OR2_X1 port map( A1 => net3523, A2 => net3527, ZN => n232);
   U3 : OR2_X1 port map( A1 => n259, A2 => net7163, ZN => n258);
   U6 : INV_X1 port map( A => net5881, ZN => n259);
   U8 : BUF_X1 port map( A => net5931, Z => net7223);
   U9 : BUF_X1 port map( A => net5946, Z => net7177);
   U11 : AND2_X1 port map( A1 => n252, A2 => n251, ZN => loadC_port);
   U15 : AND2_X1 port map( A1 => n250, A2 => net6037, ZN => n260);
   U18 : OR3_X1 port map( A1 => net7177, A2 => net7163, A3 => net7157, ZN => 
                           n261);
   U22 : CLKBUF_X1 port map( A => net3549, Z => n262);
   U25 : AND2_X2 port map( A1 => net7215, A2 => net7175, ZN => loadB);
   U26 : AND4_X1 port map( A1 => net3523, A2 => net3549, A3 => net5931, A4 => 
                           net5954, ZN => n250);
   U27 : AND3_X1 port map( A1 => net5930, A2 => net5931, A3 => net3527, ZN => 
                           net5882);
   U29 : OR2_X2 port map( A1 => net5898, A2 => n255, ZN => shiftC);
   U30 : NAND3_X1 port map( A1 => net7223, A2 => net7177, A3 => n223, ZN => 
                           net7187);
   U32 : AND2_X1 port map( A1 => net5931, A2 => net5947, ZN => net5881);
   U34 : INV_X1 port map( A => net3549, ZN => net7172);
   U35 : AND2_X1 port map( A1 => net5950, A2 => net5954, ZN => n264);
   U36 : CLKBUF_X1 port map( A => net5950, Z => net7191);
   U48 : CLKBUF_X1 port map( A => net5954, Z => net7195);
   U52 : BUF_X1 port map( A => net5882, Z => net7215);
   U54 : AND2_X1 port map( A1 => n236, A2 => n237, ZN => n265);
   U55 : BUF_X1 port map( A => net7157, Z => net7208);
   U58 : INV_X1 port map( A => net7163, ZN => net7197);
   U66 : BUF_X1 port map( A => net5930, Z => net7163);
   U68 : CLKBUF_X1 port map( A => loadC_port, Z => n266);
   U71 : INV_X1 port map( A => net7172, ZN => net7175);
   U73 : BUF_X1 port map( A => net3560, Z => net7161);
   U74 : CLKBUF_X1 port map( A => n227, Z => n267);
   U75 : MUX2_X1 port map( A => n227, B => net7187, S => net5857, Z => net5854)
                           ;
   U76 : INV_X1 port map( A => net5931, ZN => net7157);
   U79 : CLKBUF_X1 port map( A => net7161, Z => net7154);
   U90 : AND2_X1 port map( A1 => net5882, A2 => n262, ZN => net5979);
   U91 : INV_X1 port map( A => net5930, ZN => n223);
   U92 : OAI221_X1 port map( B1 => n248, B2 => n267, C1 => n246, C2 => n245, A 
                           => n265, ZN => NEXT_STATE_2_port);
   U93 : MUX2_X1 port map( A => n244, B => net5864, S => net5850, Z => net5862)
                           ;
   U94 : AND2_X1 port map( A1 => net3560, A2 => net5950, ZN => n251);

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   signal n233, EA, LDB, LDC, SHIFTC, n32, n44, n45, n46, n48, n49, n50, n51, 
      n52, n53, n54, n80, n136, n139, n148, n152, n153, n156, n158, n159, n160,
      n161, n162, n163, n164, n165, n166, n167, n168, n169, n188, n196, n197, 
      n198, n199, n200, n202, n206, n207, n208, n211, n213, n214, n215, n216, 
      n217, n218, n219, n221, n222, n223, n224, net7165, net7170, net7169, 
      net7168, net7200, net7202, n210, n209, n195, n194, n193, n191, n190, n205
      , n204, n228, n229, STARTC_port, n231, n232, n_1000, n_1001 : std_logic;

begin
   STARTC <= STARTC_port;
   
   U99 : OAI21_X1 port map( B1 => net7165, B2 => net7202, A => n163, ZN => n54)
                           ;
   U101 : OAI21_X1 port map( B1 => net7165, B2 => n231, A => n164, ZN => n53);
   U102 : NAND2_X1 port map( A1 => n136, A2 => net7165, ZN => n164);
   U103 : OAI21_X1 port map( B1 => net7165, B2 => n152, A => n165, ZN => n52);
   U104 : NAND2_X1 port map( A1 => n198, A2 => net7165, ZN => n165);
   U105 : OAI21_X1 port map( B1 => n153, B2 => LDB, A => n166, ZN => n51);
   U106 : NAND2_X1 port map( A1 => LDB, A2 => B(3), ZN => n166);
   U107 : OAI21_X1 port map( B1 => n202, B2 => LDB, A => n167, ZN => n50);
   U108 : NAND2_X1 port map( A1 => LDB, A2 => B(2), ZN => n167);
   U109 : OAI21_X1 port map( B1 => net7200, B2 => LDB, A => n168, ZN => n49);
   U110 : NAND2_X1 port map( A1 => LDB, A2 => B(1), ZN => n168);
   U111 : OAI21_X1 port map( B1 => n156, B2 => LDB, A => n169, ZN => n48);
   U112 : NAND2_X1 port map( A1 => LDB, A2 => B(0), ZN => n169);
   U142 : NOR2_X1 port map( A1 => n196, A2 => n197, ZN => n224);
   U144 : INV_X1 port map( A => n202, ZN => n199);
   U145 : NOR2_X1 port map( A1 => n198, A2 => n160, ZN => n197);
   U158 : INV_X1 port map( A => RESET, ZN => n148);
   U161 : OR2_X1 port map( A1 => n221, A2 => n208, ZN => n206);
   U162 : NAND2_X1 port map( A1 => n219, A2 => n206, ZN => n46);
   U163 : OR2_X1 port map( A1 => n214, A2 => n208, ZN => n207);
   U164 : NAND2_X1 port map( A1 => n213, A2 => n207, ZN => n45);
   U173 : XOR2_X1 port map( A => n211, B => n215, Z => n214);
   U175 : NAND2_X1 port map( A1 => n80, A2 => n136, ZN => n216);
   U177 : XOR2_X1 port map( A => n198, B => n160, Z => n218);
   U178 : XOR2_X1 port map( A => n223, B => n218, Z => n221);
   U180 : NAND2_X1 port map( A1 => n228, A2 => n199, ZN => n222);
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => LDC, shiftC => SHIFTC, startC => n233);
   PISO_reg_3_inst : DFFR_X1 port map( D => net7168, CK => CLK, RN => n148, Q 
                           => n188, QN => net7170);
   PIPO_reg_1_inst : DFFR_X1 port map( D => n49, CK => CLK, RN => n148, Q => 
                           n80, QN => net7200);
   SIPO_reg_0_inst : DFFR_X1 port map( D => n54, CK => CLK, RN => n148, Q => 
                           n136, QN => net7202);
   SIPO_reg_1_inst : DFFR_X1 port map( D => n53, CK => CLK, RN => n148, Q => 
                           n198, QN => n231);
   U100 : NAND2_X1 port map( A1 => net7165, A2 => A, ZN => n163);
   U172 : INV_X1 port map( A => n210, ZN => n215);
   U168 : NAND2_X1 port map( A1 => n139, A2 => A, ZN => n210);
   U136 : INV_X1 port map( A => n233, ZN => n190);
   U140 : OR2_X1 port map( A1 => n190, A2 => n156, ZN => n194);
   U137 : INV_X1 port map( A => A, ZN => n191);
   U139 : NAND2_X1 port map( A1 => n194, A2 => n195, ZN => n193);
   U170 : OAI21_X1 port map( B1 => n32, B2 => n229, A => n209, ZN => n44);
   U141 : OR2_X1 port map( A1 => n190, A2 => n191, ZN => n195);
   U179 : AOI22_X1 port map( A1 => n204, A2 => n188, B1 => n205, B2 => n161, ZN
                           => n219);
   U169 : AOI22_X1 port map( A1 => n193, A2 => n210, B1 => n204, B2 => n162, ZN
                           => n209);
   U174 : AOI22_X1 port map( A1 => n204, A2 => n161, B1 => n205, B2 => n162, ZN
                           => n213);
   SIPO_reg_2_inst : DFFR_X1 port map( D => n52, CK => CLK, RN => n148, Q => 
                           n158, QN => n152);
   PISO_reg_1_inst : DFFR_X1 port map( D => n45, CK => CLK, RN => n148, Q => 
                           n162, QN => n_1000);
   PISO_reg_2_inst : DFFR_X1 port map( D => n46, CK => CLK, RN => n148, Q => 
                           n161, QN => n_1001);
   PIPO_reg_0_inst : DFFR_X1 port map( D => n48, CK => CLK, RN => n148, Q => 
                           n139, QN => n156);
   PIPO_reg_2_inst : DFFR_X1 port map( D => n50, CK => CLK, RN => n148, Q => 
                           n160, QN => n202);
   PIPO_reg_3_inst : DFFR_X1 port map( D => n51, CK => CLK, RN => n148, Q => 
                           n159, QN => n153);
   PISO_reg_0_inst : DFFR_X1 port map( D => n44, CK => CLK, RN => n148, Q => C,
                           QN => n32);
   U135 : INV_X1 port map( A => n231, ZN => n228);
   U138 : CLKBUF_X1 port map( A => n190, Z => n208);
   U143 : AND2_X1 port map( A1 => SHIFTC, A2 => n190, ZN => n204);
   U146 : OR2_X1 port map( A1 => STARTC_port, A2 => SHIFTC, ZN => n229);
   U147 : NOR2_X1 port map( A1 => SHIFTC, A2 => STARTC_port, ZN => n205);
   U148 : CLKBUF_X1 port map( A => LDC, Z => STARTC_port);
   U149 : OAI22_X1 port map( A1 => net7169, A2 => n208, B1 => net7170, B2 => 
                           n229, ZN => net7168);
   U150 : OAI211_X1 port map( C1 => n80, C2 => n136, A => n139, B => A, ZN => 
                           n217);
   U151 : XNOR2_X1 port map( A => net7202, B => net7200, ZN => n211);
   U152 : XNOR2_X1 port map( A => n224, B => n232, ZN => net7169);
   U153 : XOR2_X1 port map( A => n159, B => n158, Z => n232);
   U154 : BUF_X2 port map( A => EA, Z => net7165);
   U155 : AND2_X1 port map( A1 => n216, A2 => n222, ZN => n200);
   U156 : AND2_X1 port map( A1 => n217, A2 => n216, ZN => n223);
   U157 : AND2_X1 port map( A1 => n217, A2 => n200, ZN => n196);

end SYN_A;
