library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_acc_N64_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_acc_N64_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N64_1.all;

entity acc_N64_1_DW01_add_1 is

   port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (63 downto 0);  CO : out std_logic);

end acc_N64_1_DW01_add_1;

architecture SYN_rpl of acc_N64_1_DW01_add_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_63_port, carry_62_port, carry_61_port, carry_60_port, 
      carry_59_port, carry_58_port, carry_57_port, carry_56_port, carry_55_port
      , carry_54_port, carry_53_port, carry_52_port, carry_51_port, 
      carry_50_port, carry_49_port, carry_48_port, carry_47_port, carry_46_port
      , carry_45_port, carry_44_port, carry_43_port, carry_42_port, 
      carry_41_port, carry_40_port, carry_39_port, carry_38_port, carry_37_port
      , carry_36_port, carry_35_port, carry_34_port, carry_33_port, 
      carry_32_port, carry_31_port, carry_30_port, carry_29_port, carry_28_port
      , carry_27_port, carry_26_port, carry_25_port, carry_24_port, 
      carry_23_port, carry_22_port, carry_21_port, carry_20_port, carry_19_port
      , carry_18_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_63 : FA_X1 port map( A => A(63), B => B(63), CI => carry_63_port, CO => 
                           n_1002, S => SUM(63));
   U1_62 : FA_X1 port map( A => A(62), B => B(62), CI => carry_62_port, CO => 
                           carry_63_port, S => SUM(62));
   U1_61 : FA_X1 port map( A => A(61), B => B(61), CI => carry_61_port, CO => 
                           carry_62_port, S => SUM(61));
   U1_60 : FA_X1 port map( A => A(60), B => B(60), CI => carry_60_port, CO => 
                           carry_61_port, S => SUM(60));
   U1_59 : FA_X1 port map( A => A(59), B => B(59), CI => carry_59_port, CO => 
                           carry_60_port, S => SUM(59));
   U1_58 : FA_X1 port map( A => A(58), B => B(58), CI => carry_58_port, CO => 
                           carry_59_port, S => SUM(58));
   U1_57 : FA_X1 port map( A => A(57), B => B(57), CI => carry_57_port, CO => 
                           carry_58_port, S => SUM(57));
   U1_56 : FA_X1 port map( A => A(56), B => B(56), CI => carry_56_port, CO => 
                           carry_57_port, S => SUM(56));
   U1_55 : FA_X1 port map( A => A(55), B => B(55), CI => carry_55_port, CO => 
                           carry_56_port, S => SUM(55));
   U1_54 : FA_X1 port map( A => A(54), B => B(54), CI => carry_54_port, CO => 
                           carry_55_port, S => SUM(54));
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           carry_54_port, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N64_1.all;

entity acc_N64_1_DW02_mult_0 is

   port( A : in std_logic_vector (63 downto 0);  B, TC : in std_logic;  PRODUCT
         : out std_logic_vector (64 downto 0));

end acc_N64_1_DW02_mult_0;

architecture SYN_csa of acc_N64_1_DW02_mult_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U2 : AND2_X1 port map( A1 => A(0), A2 => B, ZN => PRODUCT(0));
   U3 : AND2_X1 port map( A1 => A(63), A2 => B, ZN => PRODUCT(63));
   U4 : AND2_X1 port map( A1 => A(62), A2 => B, ZN => PRODUCT(62));
   U5 : AND2_X1 port map( A1 => A(61), A2 => B, ZN => PRODUCT(61));
   U6 : AND2_X1 port map( A1 => A(60), A2 => B, ZN => PRODUCT(60));
   U7 : AND2_X1 port map( A1 => A(59), A2 => B, ZN => PRODUCT(59));
   U8 : AND2_X1 port map( A1 => A(58), A2 => B, ZN => PRODUCT(58));
   U9 : AND2_X1 port map( A1 => A(57), A2 => B, ZN => PRODUCT(57));
   U10 : AND2_X1 port map( A1 => A(56), A2 => B, ZN => PRODUCT(56));
   U11 : AND2_X1 port map( A1 => A(55), A2 => B, ZN => PRODUCT(55));
   U12 : AND2_X1 port map( A1 => A(54), A2 => B, ZN => PRODUCT(54));
   U13 : AND2_X1 port map( A1 => A(53), A2 => B, ZN => PRODUCT(53));
   U14 : AND2_X1 port map( A1 => A(52), A2 => B, ZN => PRODUCT(52));
   U15 : AND2_X1 port map( A1 => A(51), A2 => B, ZN => PRODUCT(51));
   U16 : AND2_X1 port map( A1 => A(50), A2 => B, ZN => PRODUCT(50));
   U17 : AND2_X1 port map( A1 => A(49), A2 => B, ZN => PRODUCT(49));
   U18 : AND2_X1 port map( A1 => A(48), A2 => B, ZN => PRODUCT(48));
   U19 : AND2_X1 port map( A1 => A(47), A2 => B, ZN => PRODUCT(47));
   U20 : AND2_X1 port map( A1 => A(46), A2 => B, ZN => PRODUCT(46));
   U21 : AND2_X1 port map( A1 => A(45), A2 => B, ZN => PRODUCT(45));
   U22 : AND2_X1 port map( A1 => A(44), A2 => B, ZN => PRODUCT(44));
   U23 : AND2_X1 port map( A1 => A(43), A2 => B, ZN => PRODUCT(43));
   U24 : AND2_X1 port map( A1 => A(42), A2 => B, ZN => PRODUCT(42));
   U25 : AND2_X1 port map( A1 => A(41), A2 => B, ZN => PRODUCT(41));
   U26 : AND2_X1 port map( A1 => A(40), A2 => B, ZN => PRODUCT(40));
   U27 : AND2_X1 port map( A1 => A(39), A2 => B, ZN => PRODUCT(39));
   U28 : AND2_X1 port map( A1 => A(38), A2 => B, ZN => PRODUCT(38));
   U29 : AND2_X1 port map( A1 => A(37), A2 => B, ZN => PRODUCT(37));
   U30 : AND2_X1 port map( A1 => A(36), A2 => B, ZN => PRODUCT(36));
   U31 : AND2_X1 port map( A1 => A(35), A2 => B, ZN => PRODUCT(35));
   U32 : AND2_X1 port map( A1 => A(34), A2 => B, ZN => PRODUCT(34));
   U33 : AND2_X1 port map( A1 => A(33), A2 => B, ZN => PRODUCT(33));
   U34 : AND2_X1 port map( A1 => A(32), A2 => B, ZN => PRODUCT(32));
   U35 : AND2_X1 port map( A1 => A(31), A2 => B, ZN => PRODUCT(31));
   U36 : AND2_X1 port map( A1 => A(30), A2 => B, ZN => PRODUCT(30));
   U37 : AND2_X1 port map( A1 => A(29), A2 => B, ZN => PRODUCT(29));
   U38 : AND2_X1 port map( A1 => A(28), A2 => B, ZN => PRODUCT(28));
   U39 : AND2_X1 port map( A1 => A(27), A2 => B, ZN => PRODUCT(27));
   U40 : AND2_X1 port map( A1 => A(26), A2 => B, ZN => PRODUCT(26));
   U41 : AND2_X1 port map( A1 => A(25), A2 => B, ZN => PRODUCT(25));
   U42 : AND2_X1 port map( A1 => A(24), A2 => B, ZN => PRODUCT(24));
   U43 : AND2_X1 port map( A1 => A(23), A2 => B, ZN => PRODUCT(23));
   U44 : AND2_X1 port map( A1 => A(22), A2 => B, ZN => PRODUCT(22));
   U45 : AND2_X1 port map( A1 => A(21), A2 => B, ZN => PRODUCT(21));
   U46 : AND2_X1 port map( A1 => A(20), A2 => B, ZN => PRODUCT(20));
   U47 : AND2_X1 port map( A1 => A(19), A2 => B, ZN => PRODUCT(19));
   U48 : AND2_X1 port map( A1 => A(18), A2 => B, ZN => PRODUCT(18));
   U49 : AND2_X1 port map( A1 => A(17), A2 => B, ZN => PRODUCT(17));
   U50 : AND2_X1 port map( A1 => A(16), A2 => B, ZN => PRODUCT(16));
   U51 : AND2_X1 port map( A1 => A(15), A2 => B, ZN => PRODUCT(15));
   U52 : AND2_X1 port map( A1 => A(14), A2 => B, ZN => PRODUCT(14));
   U53 : AND2_X1 port map( A1 => A(13), A2 => B, ZN => PRODUCT(13));
   U54 : AND2_X1 port map( A1 => A(12), A2 => B, ZN => PRODUCT(12));
   U55 : AND2_X1 port map( A1 => A(11), A2 => B, ZN => PRODUCT(11));
   U56 : AND2_X1 port map( A1 => A(10), A2 => B, ZN => PRODUCT(10));
   U57 : AND2_X1 port map( A1 => A(8), A2 => B, ZN => PRODUCT(8));
   U58 : AND2_X1 port map( A1 => A(7), A2 => B, ZN => PRODUCT(7));
   U59 : AND2_X1 port map( A1 => A(6), A2 => B, ZN => PRODUCT(6));
   U60 : AND2_X1 port map( A1 => A(5), A2 => B, ZN => PRODUCT(5));
   U61 : AND2_X1 port map( A1 => A(4), A2 => B, ZN => PRODUCT(4));
   U62 : AND2_X1 port map( A1 => A(3), A2 => B, ZN => PRODUCT(3));
   U63 : AND2_X1 port map( A1 => A(2), A2 => B, ZN => PRODUCT(2));
   U64 : AND2_X1 port map( A1 => A(1), A2 => B, ZN => PRODUCT(1));
   U65 : AND2_X1 port map( A1 => B, A2 => A(9), ZN => PRODUCT(9));

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N64_1.all;

entity acc_N64_1 is

   port( A, B : in std_logic_vector (63 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Y : out std_logic_vector (63 downto 0));

end acc_N64_1;

architecture SYN_BEHAVIORAL of acc_N64_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component acc_N64_1_DW01_add_1
      port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (63 downto 0);  CO : out std_logic);
   end component;
   
   component acc_N64_1_DW02_mult_0
      port( A : in std_logic_vector (63 downto 0);  B, TC : in std_logic;  
            PRODUCT : out std_logic_vector (64 downto 0));
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port, Y_58_port, 
      Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, Y_52_port, 
      Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, Y_46_port, 
      Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, Y_40_port, 
      Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, Y_34_port, 
      Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, 
      Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, 
      Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, 
      Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, Y_0_port, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, 
      N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27
      , N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, 
      N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56
      , N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, 
      N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85
      , N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, 
      N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, 
      N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, 
      N124, N125, N126, N127, N128, N129, N130, n2, n3_port, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, 
      n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, 
      n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, 
      n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, 
      n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, 
      n199, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, 
      n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, 
      n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, 
      n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, n_1039, 
      n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, n_1048, 
      n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, n_1057, 
      n_1058, n_1059, n_1060, n_1061, n_1062, n_1063, n_1064, n_1065, n_1066, 
      n_1067, n_1068, n_1069, n_1070 : std_logic;

begin
   Y <= ( Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port, Y_58_port, 
      Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, Y_52_port, 
      Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, Y_46_port, 
      Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, Y_40_port, 
      Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, Y_34_port, 
      Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, 
      Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, 
      Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, 
      Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, Y_0_port );
   
   n2 <= '0';
   n3_port <= '0';
   feed_back_reg_0_inst : DFF_X1 port map( D => N67, CK => CLK, Q => Y_0_port, 
                           QN => n_1005);
   feed_back_reg_1_inst : DFF_X1 port map( D => N68, CK => CLK, Q => Y_1_port, 
                           QN => n_1006);
   feed_back_reg_2_inst : DFF_X1 port map( D => N69, CK => CLK, Q => Y_2_port, 
                           QN => n_1007);
   feed_back_reg_3_inst : DFF_X1 port map( D => N70, CK => CLK, Q => Y_3_port, 
                           QN => n_1008);
   feed_back_reg_4_inst : DFF_X1 port map( D => N71, CK => CLK, Q => Y_4_port, 
                           QN => n_1009);
   feed_back_reg_5_inst : DFF_X1 port map( D => N72, CK => CLK, Q => Y_5_port, 
                           QN => n_1010);
   feed_back_reg_6_inst : DFF_X1 port map( D => N73, CK => CLK, Q => Y_6_port, 
                           QN => n_1011);
   feed_back_reg_7_inst : DFF_X1 port map( D => N74, CK => CLK, Q => Y_7_port, 
                           QN => n_1012);
   feed_back_reg_8_inst : DFF_X1 port map( D => N75, CK => CLK, Q => Y_8_port, 
                           QN => n_1013);
   feed_back_reg_9_inst : DFF_X1 port map( D => N76, CK => CLK, Q => Y_9_port, 
                           QN => n_1014);
   feed_back_reg_10_inst : DFF_X1 port map( D => N77, CK => CLK, Q => Y_10_port
                           , QN => n_1015);
   feed_back_reg_11_inst : DFF_X1 port map( D => N78, CK => CLK, Q => Y_11_port
                           , QN => n_1016);
   feed_back_reg_12_inst : DFF_X1 port map( D => N79, CK => CLK, Q => Y_12_port
                           , QN => n_1017);
   feed_back_reg_13_inst : DFF_X1 port map( D => N80, CK => CLK, Q => Y_13_port
                           , QN => n_1018);
   feed_back_reg_14_inst : DFF_X1 port map( D => N81, CK => CLK, Q => Y_14_port
                           , QN => n_1019);
   feed_back_reg_15_inst : DFF_X1 port map( D => N82, CK => CLK, Q => Y_15_port
                           , QN => n_1020);
   feed_back_reg_16_inst : DFF_X1 port map( D => N83, CK => CLK, Q => Y_16_port
                           , QN => n_1021);
   feed_back_reg_17_inst : DFF_X1 port map( D => N84, CK => CLK, Q => Y_17_port
                           , QN => n_1022);
   feed_back_reg_18_inst : DFF_X1 port map( D => N85, CK => CLK, Q => Y_18_port
                           , QN => n_1023);
   feed_back_reg_19_inst : DFF_X1 port map( D => N86, CK => CLK, Q => Y_19_port
                           , QN => n_1024);
   feed_back_reg_20_inst : DFF_X1 port map( D => N87, CK => CLK, Q => Y_20_port
                           , QN => n_1025);
   feed_back_reg_21_inst : DFF_X1 port map( D => N88, CK => CLK, Q => Y_21_port
                           , QN => n_1026);
   feed_back_reg_22_inst : DFF_X1 port map( D => N89, CK => CLK, Q => Y_22_port
                           , QN => n_1027);
   feed_back_reg_23_inst : DFF_X1 port map( D => N90, CK => CLK, Q => Y_23_port
                           , QN => n_1028);
   feed_back_reg_24_inst : DFF_X1 port map( D => N91, CK => CLK, Q => Y_24_port
                           , QN => n_1029);
   feed_back_reg_25_inst : DFF_X1 port map( D => N92, CK => CLK, Q => Y_25_port
                           , QN => n_1030);
   feed_back_reg_26_inst : DFF_X1 port map( D => N93, CK => CLK, Q => Y_26_port
                           , QN => n_1031);
   feed_back_reg_27_inst : DFF_X1 port map( D => N94, CK => CLK, Q => Y_27_port
                           , QN => n_1032);
   feed_back_reg_28_inst : DFF_X1 port map( D => N95, CK => CLK, Q => Y_28_port
                           , QN => n_1033);
   feed_back_reg_29_inst : DFF_X1 port map( D => N96, CK => CLK, Q => Y_29_port
                           , QN => n_1034);
   feed_back_reg_30_inst : DFF_X1 port map( D => N97, CK => CLK, Q => Y_30_port
                           , QN => n_1035);
   feed_back_reg_31_inst : DFF_X1 port map( D => N98, CK => CLK, Q => Y_31_port
                           , QN => n_1036);
   feed_back_reg_32_inst : DFF_X1 port map( D => N99, CK => CLK, Q => Y_32_port
                           , QN => n_1037);
   feed_back_reg_33_inst : DFF_X1 port map( D => N100, CK => CLK, Q => 
                           Y_33_port, QN => n_1038);
   feed_back_reg_34_inst : DFF_X1 port map( D => N101, CK => CLK, Q => 
                           Y_34_port, QN => n_1039);
   feed_back_reg_35_inst : DFF_X1 port map( D => N102, CK => CLK, Q => 
                           Y_35_port, QN => n_1040);
   feed_back_reg_36_inst : DFF_X1 port map( D => N103, CK => CLK, Q => 
                           Y_36_port, QN => n_1041);
   feed_back_reg_37_inst : DFF_X1 port map( D => N104, CK => CLK, Q => 
                           Y_37_port, QN => n_1042);
   feed_back_reg_38_inst : DFF_X1 port map( D => N105, CK => CLK, Q => 
                           Y_38_port, QN => n_1043);
   feed_back_reg_39_inst : DFF_X1 port map( D => N106, CK => CLK, Q => 
                           Y_39_port, QN => n_1044);
   feed_back_reg_40_inst : DFF_X1 port map( D => N107, CK => CLK, Q => 
                           Y_40_port, QN => n_1045);
   feed_back_reg_41_inst : DFF_X1 port map( D => N108, CK => CLK, Q => 
                           Y_41_port, QN => n_1046);
   feed_back_reg_42_inst : DFF_X1 port map( D => N109, CK => CLK, Q => 
                           Y_42_port, QN => n_1047);
   feed_back_reg_43_inst : DFF_X1 port map( D => N110, CK => CLK, Q => 
                           Y_43_port, QN => n_1048);
   feed_back_reg_44_inst : DFF_X1 port map( D => N111, CK => CLK, Q => 
                           Y_44_port, QN => n_1049);
   feed_back_reg_45_inst : DFF_X1 port map( D => N112, CK => CLK, Q => 
                           Y_45_port, QN => n_1050);
   feed_back_reg_46_inst : DFF_X1 port map( D => N113, CK => CLK, Q => 
                           Y_46_port, QN => n_1051);
   feed_back_reg_47_inst : DFF_X1 port map( D => N114, CK => CLK, Q => 
                           Y_47_port, QN => n_1052);
   feed_back_reg_48_inst : DFF_X1 port map( D => N115, CK => CLK, Q => 
                           Y_48_port, QN => n_1053);
   feed_back_reg_49_inst : DFF_X1 port map( D => N116, CK => CLK, Q => 
                           Y_49_port, QN => n_1054);
   feed_back_reg_50_inst : DFF_X1 port map( D => N117, CK => CLK, Q => 
                           Y_50_port, QN => n_1055);
   feed_back_reg_51_inst : DFF_X1 port map( D => N118, CK => CLK, Q => 
                           Y_51_port, QN => n_1056);
   feed_back_reg_52_inst : DFF_X1 port map( D => N119, CK => CLK, Q => 
                           Y_52_port, QN => n_1057);
   feed_back_reg_53_inst : DFF_X1 port map( D => N120, CK => CLK, Q => 
                           Y_53_port, QN => n_1058);
   feed_back_reg_54_inst : DFF_X1 port map( D => N121, CK => CLK, Q => 
                           Y_54_port, QN => n_1059);
   feed_back_reg_55_inst : DFF_X1 port map( D => N122, CK => CLK, Q => 
                           Y_55_port, QN => n_1060);
   feed_back_reg_56_inst : DFF_X1 port map( D => N123, CK => CLK, Q => 
                           Y_56_port, QN => n_1061);
   feed_back_reg_57_inst : DFF_X1 port map( D => N124, CK => CLK, Q => 
                           Y_57_port, QN => n_1062);
   feed_back_reg_58_inst : DFF_X1 port map( D => N125, CK => CLK, Q => 
                           Y_58_port, QN => n_1063);
   feed_back_reg_59_inst : DFF_X1 port map( D => N126, CK => CLK, Q => 
                           Y_59_port, QN => n_1064);
   feed_back_reg_60_inst : DFF_X1 port map( D => N127, CK => CLK, Q => 
                           Y_60_port, QN => n_1065);
   feed_back_reg_61_inst : DFF_X1 port map( D => N128, CK => CLK, Q => 
                           Y_61_port, QN => n_1066);
   feed_back_reg_62_inst : DFF_X1 port map( D => N129, CK => CLK, Q => 
                           Y_62_port, QN => n_1067);
   feed_back_reg_63_inst : DFF_X1 port map( D => N130, CK => CLK, Q => 
                           Y_63_port, QN => n_1068);
   mult_add_92_2_aco : acc_N64_1_DW02_mult_0 port map( A(63) => N66, A(62) => 
                           N65, A(61) => N64, A(60) => N63, A(59) => N62, A(58)
                           => N61, A(57) => N60, A(56) => N59, A(55) => N58, 
                           A(54) => N57, A(53) => N56, A(52) => N55, A(51) => 
                           N54, A(50) => N53, A(49) => N52, A(48) => N51, A(47)
                           => N50, A(46) => N49, A(45) => N48, A(44) => N47, 
                           A(43) => N46, A(42) => N45, A(41) => N44, A(40) => 
                           N43, A(39) => N42, A(38) => N41, A(37) => N40, A(36)
                           => N39, A(35) => N38, A(34) => N37, A(33) => N36, 
                           A(32) => N35, A(31) => N34, A(30) => N33, A(29) => 
                           N32, A(28) => N31, A(27) => N30, A(26) => N29, A(25)
                           => N28, A(24) => N27, A(23) => N26, A(22) => N25, 
                           A(21) => N24, A(20) => N23, A(19) => N22, A(18) => 
                           N21, A(17) => N20, A(16) => N19, A(15) => N18, A(14)
                           => N17, A(13) => N16, A(12) => N15, A(11) => N14, 
                           A(10) => N13, A(9) => N12, A(8) => N11, A(7) => N10,
                           A(6) => N9, A(5) => N8, A(4) => N7, A(3) => N6, A(2)
                           => N5, A(1) => N4, A(0) => N3, B => RST_n, TC => n2,
                           PRODUCT(64) => n_1069, PRODUCT(63) => N130, 
                           PRODUCT(62) => N129, PRODUCT(61) => N128, 
                           PRODUCT(60) => N127, PRODUCT(59) => N126, 
                           PRODUCT(58) => N125, PRODUCT(57) => N124, 
                           PRODUCT(56) => N123, PRODUCT(55) => N122, 
                           PRODUCT(54) => N121, PRODUCT(53) => N120, 
                           PRODUCT(52) => N119, PRODUCT(51) => N118, 
                           PRODUCT(50) => N117, PRODUCT(49) => N116, 
                           PRODUCT(48) => N115, PRODUCT(47) => N114, 
                           PRODUCT(46) => N113, PRODUCT(45) => N112, 
                           PRODUCT(44) => N111, PRODUCT(43) => N110, 
                           PRODUCT(42) => N109, PRODUCT(41) => N108, 
                           PRODUCT(40) => N107, PRODUCT(39) => N106, 
                           PRODUCT(38) => N105, PRODUCT(37) => N104, 
                           PRODUCT(36) => N103, PRODUCT(35) => N102, 
                           PRODUCT(34) => N101, PRODUCT(33) => N100, 
                           PRODUCT(32) => N99, PRODUCT(31) => N98, PRODUCT(30) 
                           => N97, PRODUCT(29) => N96, PRODUCT(28) => N95, 
                           PRODUCT(27) => N94, PRODUCT(26) => N93, PRODUCT(25) 
                           => N92, PRODUCT(24) => N91, PRODUCT(23) => N90, 
                           PRODUCT(22) => N89, PRODUCT(21) => N88, PRODUCT(20) 
                           => N87, PRODUCT(19) => N86, PRODUCT(18) => N85, 
                           PRODUCT(17) => N84, PRODUCT(16) => N83, PRODUCT(15) 
                           => N82, PRODUCT(14) => N81, PRODUCT(13) => N80, 
                           PRODUCT(12) => N79, PRODUCT(11) => N78, PRODUCT(10) 
                           => N77, PRODUCT(9) => N76, PRODUCT(8) => N75, 
                           PRODUCT(7) => N74, PRODUCT(6) => N73, PRODUCT(5) => 
                           N72, PRODUCT(4) => N71, PRODUCT(3) => N70, 
                           PRODUCT(2) => N69, PRODUCT(1) => N68, PRODUCT(0) => 
                           N67);
   add_92 : acc_N64_1_DW01_add_1 port map( A(63) => A(63), A(62) => A(62), 
                           A(61) => A(61), A(60) => A(60), A(59) => A(59), 
                           A(58) => A(58), A(57) => A(57), A(56) => A(56), 
                           A(55) => A(55), A(54) => A(54), A(53) => A(53), 
                           A(52) => A(52), A(51) => A(51), A(50) => A(50), 
                           A(49) => A(49), A(48) => A(48), A(47) => A(47), 
                           A(46) => A(46), A(45) => A(45), A(44) => A(44), 
                           A(43) => A(43), A(42) => A(42), A(41) => A(41), 
                           A(40) => A(40), A(39) => A(39), A(38) => A(38), 
                           A(37) => A(37), A(36) => A(36), A(35) => A(35), 
                           A(34) => A(34), A(33) => A(33), A(32) => A(32), 
                           A(31) => A(31), A(30) => A(30), A(29) => A(29), 
                           A(28) => A(28), A(27) => A(27), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(63) => n136, B(62) => n137, B(61) => n138, B(60) 
                           => n139, B(59) => n140, B(58) => n141, B(57) => n142
                           , B(56) => n143, B(55) => n144, B(54) => n145, B(53)
                           => n146, B(52) => n147, B(51) => n148, B(50) => n149
                           , B(49) => n150, B(48) => n151, B(47) => n152, B(46)
                           => n153, B(45) => n154, B(44) => n155, B(43) => n156
                           , B(42) => n157, B(41) => n158, B(40) => n159, B(39)
                           => n160, B(38) => n161, B(37) => n162, B(36) => n163
                           , B(35) => n164, B(34) => n165, B(33) => n166, B(32)
                           => n167, B(31) => n168, B(30) => n169, B(29) => n170
                           , B(28) => n171, B(27) => n172, B(26) => n173, B(25)
                           => n174, B(24) => n175, B(23) => n176, B(22) => n177
                           , B(21) => n178, B(20) => n179, B(19) => n180, B(18)
                           => n181, B(17) => n182, B(16) => n183, B(15) => n184
                           , B(14) => n185, B(13) => n186, B(12) => n187, B(11)
                           => n188, B(10) => n189, B(9) => n190, B(8) => n191, 
                           B(7) => n192, B(6) => n193, B(5) => n194, B(4) => 
                           n195, B(3) => n196, B(2) => n197, B(1) => n198, B(0)
                           => n199, CI => n3_port, SUM(63) => N66, SUM(62) => 
                           N65, SUM(61) => N64, SUM(60) => N63, SUM(59) => N62,
                           SUM(58) => N61, SUM(57) => N60, SUM(56) => N59, 
                           SUM(55) => N58, SUM(54) => N57, SUM(53) => N56, 
                           SUM(52) => N55, SUM(51) => N54, SUM(50) => N53, 
                           SUM(49) => N52, SUM(48) => N51, SUM(47) => N50, 
                           SUM(46) => N49, SUM(45) => N48, SUM(44) => N47, 
                           SUM(43) => N46, SUM(42) => N45, SUM(41) => N44, 
                           SUM(40) => N43, SUM(39) => N42, SUM(38) => N41, 
                           SUM(37) => N40, SUM(36) => N39, SUM(35) => N38, 
                           SUM(34) => N37, SUM(33) => N36, SUM(32) => N35, 
                           SUM(31) => N34, SUM(30) => N33, SUM(29) => N32, 
                           SUM(28) => N31, SUM(27) => N30, SUM(26) => N29, 
                           SUM(25) => N28, SUM(24) => N27, SUM(23) => N26, 
                           SUM(22) => N25, SUM(21) => N24, SUM(20) => N23, 
                           SUM(19) => N22, SUM(18) => N21, SUM(17) => N20, 
                           SUM(16) => N19, SUM(15) => N18, SUM(14) => N17, 
                           SUM(13) => N16, SUM(12) => N15, SUM(11) => N14, 
                           SUM(10) => N13, SUM(9) => N12, SUM(8) => N11, SUM(7)
                           => N10, SUM(6) => N9, SUM(5) => N8, SUM(4) => N7, 
                           SUM(3) => N6, SUM(2) => N5, SUM(1) => N4, SUM(0) => 
                           N3, CO => n_1070);
   U135 : MUX2_X1 port map( A => Y_63_port, B => B(63), S => ACCUMULATE, Z => 
                           n136);
   U136 : MUX2_X1 port map( A => Y_62_port, B => B(62), S => ACCUMULATE, Z => 
                           n137);
   U137 : MUX2_X1 port map( A => Y_61_port, B => B(61), S => ACCUMULATE, Z => 
                           n138);
   U138 : MUX2_X1 port map( A => Y_60_port, B => B(60), S => ACCUMULATE, Z => 
                           n139);
   U139 : MUX2_X1 port map( A => Y_59_port, B => B(59), S => ACCUMULATE, Z => 
                           n140);
   U140 : MUX2_X1 port map( A => Y_58_port, B => B(58), S => ACCUMULATE, Z => 
                           n141);
   U141 : MUX2_X1 port map( A => Y_57_port, B => B(57), S => ACCUMULATE, Z => 
                           n142);
   U142 : MUX2_X1 port map( A => Y_56_port, B => B(56), S => ACCUMULATE, Z => 
                           n143);
   U143 : MUX2_X1 port map( A => Y_55_port, B => B(55), S => ACCUMULATE, Z => 
                           n144);
   U144 : MUX2_X1 port map( A => Y_54_port, B => B(54), S => ACCUMULATE, Z => 
                           n145);
   U145 : MUX2_X1 port map( A => Y_53_port, B => B(53), S => ACCUMULATE, Z => 
                           n146);
   U146 : MUX2_X1 port map( A => Y_52_port, B => B(52), S => ACCUMULATE, Z => 
                           n147);
   U147 : MUX2_X1 port map( A => Y_51_port, B => B(51), S => ACCUMULATE, Z => 
                           n148);
   U148 : MUX2_X1 port map( A => Y_50_port, B => B(50), S => ACCUMULATE, Z => 
                           n149);
   U149 : MUX2_X1 port map( A => Y_49_port, B => B(49), S => ACCUMULATE, Z => 
                           n150);
   U150 : MUX2_X1 port map( A => Y_48_port, B => B(48), S => ACCUMULATE, Z => 
                           n151);
   U151 : MUX2_X1 port map( A => Y_47_port, B => B(47), S => ACCUMULATE, Z => 
                           n152);
   U152 : MUX2_X1 port map( A => Y_46_port, B => B(46), S => ACCUMULATE, Z => 
                           n153);
   U153 : MUX2_X1 port map( A => Y_45_port, B => B(45), S => ACCUMULATE, Z => 
                           n154);
   U154 : MUX2_X1 port map( A => Y_44_port, B => B(44), S => ACCUMULATE, Z => 
                           n155);
   U155 : MUX2_X1 port map( A => Y_43_port, B => B(43), S => ACCUMULATE, Z => 
                           n156);
   U156 : MUX2_X1 port map( A => Y_42_port, B => B(42), S => ACCUMULATE, Z => 
                           n157);
   U157 : MUX2_X1 port map( A => Y_41_port, B => B(41), S => ACCUMULATE, Z => 
                           n158);
   U158 : MUX2_X1 port map( A => Y_40_port, B => B(40), S => ACCUMULATE, Z => 
                           n159);
   U159 : MUX2_X1 port map( A => Y_39_port, B => B(39), S => ACCUMULATE, Z => 
                           n160);
   U160 : MUX2_X1 port map( A => Y_38_port, B => B(38), S => ACCUMULATE, Z => 
                           n161);
   U161 : MUX2_X1 port map( A => Y_37_port, B => B(37), S => ACCUMULATE, Z => 
                           n162);
   U162 : MUX2_X1 port map( A => Y_36_port, B => B(36), S => ACCUMULATE, Z => 
                           n163);
   U163 : MUX2_X1 port map( A => Y_35_port, B => B(35), S => ACCUMULATE, Z => 
                           n164);
   U164 : MUX2_X1 port map( A => Y_34_port, B => B(34), S => ACCUMULATE, Z => 
                           n165);
   U165 : MUX2_X1 port map( A => Y_33_port, B => B(33), S => ACCUMULATE, Z => 
                           n166);
   U166 : MUX2_X1 port map( A => Y_32_port, B => B(32), S => ACCUMULATE, Z => 
                           n167);
   U167 : MUX2_X1 port map( A => Y_31_port, B => B(31), S => ACCUMULATE, Z => 
                           n168);
   U168 : MUX2_X1 port map( A => Y_30_port, B => B(30), S => ACCUMULATE, Z => 
                           n169);
   U169 : MUX2_X1 port map( A => Y_29_port, B => B(29), S => ACCUMULATE, Z => 
                           n170);
   U170 : MUX2_X1 port map( A => Y_28_port, B => B(28), S => ACCUMULATE, Z => 
                           n171);
   U171 : MUX2_X1 port map( A => Y_27_port, B => B(27), S => ACCUMULATE, Z => 
                           n172);
   U172 : MUX2_X1 port map( A => Y_26_port, B => B(26), S => ACCUMULATE, Z => 
                           n173);
   U173 : MUX2_X1 port map( A => Y_25_port, B => B(25), S => ACCUMULATE, Z => 
                           n174);
   U174 : MUX2_X1 port map( A => Y_24_port, B => B(24), S => ACCUMULATE, Z => 
                           n175);
   U175 : MUX2_X1 port map( A => Y_23_port, B => B(23), S => ACCUMULATE, Z => 
                           n176);
   U176 : MUX2_X1 port map( A => Y_22_port, B => B(22), S => ACCUMULATE, Z => 
                           n177);
   U177 : MUX2_X1 port map( A => Y_21_port, B => B(21), S => ACCUMULATE, Z => 
                           n178);
   U178 : MUX2_X1 port map( A => Y_20_port, B => B(20), S => ACCUMULATE, Z => 
                           n179);
   U179 : MUX2_X1 port map( A => Y_19_port, B => B(19), S => ACCUMULATE, Z => 
                           n180);
   U180 : MUX2_X1 port map( A => Y_18_port, B => B(18), S => ACCUMULATE, Z => 
                           n181);
   U181 : MUX2_X1 port map( A => Y_17_port, B => B(17), S => ACCUMULATE, Z => 
                           n182);
   U182 : MUX2_X1 port map( A => Y_16_port, B => B(16), S => ACCUMULATE, Z => 
                           n183);
   U183 : MUX2_X1 port map( A => Y_15_port, B => B(15), S => ACCUMULATE, Z => 
                           n184);
   U184 : MUX2_X1 port map( A => Y_14_port, B => B(14), S => ACCUMULATE, Z => 
                           n185);
   U185 : MUX2_X1 port map( A => Y_13_port, B => B(13), S => ACCUMULATE, Z => 
                           n186);
   U186 : MUX2_X1 port map( A => Y_12_port, B => B(12), S => ACCUMULATE, Z => 
                           n187);
   U187 : MUX2_X1 port map( A => Y_11_port, B => B(11), S => ACCUMULATE, Z => 
                           n188);
   U188 : MUX2_X1 port map( A => Y_10_port, B => B(10), S => ACCUMULATE, Z => 
                           n189);
   U189 : MUX2_X1 port map( A => Y_9_port, B => B(9), S => ACCUMULATE, Z => 
                           n190);
   U190 : MUX2_X1 port map( A => Y_8_port, B => B(8), S => ACCUMULATE, Z => 
                           n191);
   U191 : MUX2_X1 port map( A => Y_7_port, B => B(7), S => ACCUMULATE, Z => 
                           n192);
   U192 : MUX2_X1 port map( A => Y_6_port, B => B(6), S => ACCUMULATE, Z => 
                           n193);
   U193 : MUX2_X1 port map( A => Y_5_port, B => B(5), S => ACCUMULATE, Z => 
                           n194);
   U194 : MUX2_X1 port map( A => Y_4_port, B => B(4), S => ACCUMULATE, Z => 
                           n195);
   U195 : MUX2_X1 port map( A => Y_3_port, B => B(3), S => ACCUMULATE, Z => 
                           n196);
   U196 : MUX2_X1 port map( A => Y_2_port, B => B(2), S => ACCUMULATE, Z => 
                           n197);
   U197 : MUX2_X1 port map( A => Y_1_port, B => B(1), S => ACCUMULATE, Z => 
                           n198);
   U198 : MUX2_X1 port map( A => Y_0_port, B => B(0), S => ACCUMULATE, Z => 
                           n199);

end SYN_BEHAVIORAL;
