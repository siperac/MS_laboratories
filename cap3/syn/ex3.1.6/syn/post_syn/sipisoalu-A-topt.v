
module sipisoAluControl ( clk, rst, strobeA, strobeB, shiftA, loadB, loadC, 
        shiftC, startC );
  input clk, rst, strobeA, strobeB;
  output shiftA, loadB, loadC, shiftC, startC;
  wire   N154, net3523, net3527, net3549, net3560, net3581, n1, n49, net5846,
         net5848, net5850, net5853, net5854, net5857, net5860, net5861,
         net5864, net5866, net5869, net5870, net5874, net5875, net5876,
         net5931, net5930, net5946, net5950, net5954, net6039, net6037,
         net5892, net5887, net5979, net5929, net5895, net5881, net5871,
         net5862, net5851, net5960, net5882, n223, n224, loadC, n227, n228,
         n229, n230, n233, n236, n237, n238, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n256, n257, net7154,
         net7157, net7161, net7163, net7172, net7175, net7177, net7187,
         net7191, net7195, net7197, net7208, net7215, net7223, net5947,
         net5898, net5888, n255, n239, n222, n232, n258, n259, n260, n261,
         n262, n264, n265, n266, n267;
  wire   [4:0] NEXT_STATE;
  assign shiftA = N154;
  assign startC = loadC;

  NOR2_X1 U50 ( .A1(net6039), .A2(net6037), .ZN(n49) );
  AOI21_X1 U7 ( .B1(net7208), .B2(net7197), .A(net5888), .ZN(n224) );
  AOI22_X1 U10 ( .A1(net5881), .A2(net7195), .B1(net5882), .B2(net7172), .ZN(
        n227) );
  INV_X1 U12 ( .A(net5848), .ZN(n228) );
  NAND2_X1 U13 ( .A1(n229), .A2(n228), .ZN(n230) );
  NOR2_X1 U14 ( .A1(net5846), .A2(n250), .ZN(n229) );
  NOR2_X1 U17 ( .A1(n261), .A2(net5875), .ZN(n233) );
  OR2_X1 U19 ( .A1(net5851), .A2(net5850), .ZN(n236) );
  NOR2_X1 U20 ( .A1(n233), .A2(n260), .ZN(n237) );
  NAND2_X1 U21 ( .A1(n236), .A2(n237), .ZN(n238) );
  NOR4_X1 U24 ( .A1(net7177), .A2(n223), .A3(net3581), .A4(net5950), .ZN(
        net5960) );
  AOI22_X1 U31 ( .A1(net5881), .A2(net7195), .B1(net5882), .B2(net7191), .ZN(
        n243) );
  AOI22_X1 U33 ( .A1(net7161), .A2(net5960), .B1(net5887), .B2(net7177), .ZN(
        net5851) );
  INV_X1 U37 ( .A(n243), .ZN(n244) );
  INV_X1 U38 ( .A(n247), .ZN(n246) );
  OAI21_X1 U39 ( .B1(n248), .B2(net5853), .A(n249), .ZN(n247) );
  NAND2_X1 U40 ( .A1(net5871), .A2(net5850), .ZN(n249) );
  INV_X1 U41 ( .A(net7187), .ZN(net5871) );
  AOI22_X1 U42 ( .A1(net5870), .A2(net5850), .B1(net5866), .B2(net5871), .ZN(
        net5869) );
  INV_X1 U43 ( .A(n242), .ZN(n248) );
  NOR2_X1 U45 ( .A1(n258), .A2(n245), .ZN(NEXT_STATE[4]) );
  INV_X1 U46 ( .A(n245), .ZN(net5866) );
  NAND2_X1 U47 ( .A1(strobeA), .A2(net5895), .ZN(n242) );
  AOI21_X1 U49 ( .B1(n242), .B2(net5850), .A(net5929), .ZN(net5848) );
  INV_X1 U51 ( .A(strobeB), .ZN(net5895) );
  NAND2_X1 U53 ( .A1(net7215), .A2(net7175), .ZN(net5874) );
  AOI22_X1 U56 ( .A1(n224), .A2(net7177), .B1(net7154), .B2(net5979), .ZN(
        net5929) );
  NOR3_X1 U57 ( .A1(net5862), .A2(net5861), .A3(n238), .ZN(net5860) );
  NOR3_X1 U60 ( .A1(net6037), .A2(net6039), .A3(n264), .ZN(N154) );
  NAND2_X1 U62 ( .A1(strobeB), .A2(net5892), .ZN(net5850) );
  INV_X1 U63 ( .A(strobeA), .ZN(net5892) );
  INV_X1 U64 ( .A(n250), .ZN(net5876) );
  CLKBUF_X1 U69 ( .A(net3581), .Z(net6039) );
  INV_X1 U70 ( .A(rst), .ZN(n1) );
  OR2_X1 U72 ( .A1(net7163), .A2(net7208), .ZN(n253) );
  NAND2_X1 U77 ( .A1(net7161), .A2(net7191), .ZN(net5875) );
  NAND2_X1 U80 ( .A1(n49), .A2(net7163), .ZN(net5853) );
  OAI21_X1 U81 ( .B1(net5875), .B2(net7187), .A(net5876), .ZN(net5864) );
  NOR2_X1 U82 ( .A1(n266), .A2(net5864), .ZN(n256) );
  OAI21_X1 U83 ( .B1(net7154), .B2(n253), .A(net5874), .ZN(net5870) );
  NAND2_X1 U84 ( .A1(n256), .A2(net5869), .ZN(NEXT_STATE[3]) );
  NOR4_X1 U85 ( .A1(net5853), .A2(net5866), .A3(n248), .A4(n264), .ZN(net5861)
         );
  INV_X1 U86 ( .A(net5850), .ZN(net5857) );
  INV_X1 U87 ( .A(net5860), .ZN(NEXT_STATE[1]) );
  AOI21_X1 U88 ( .B1(net7175), .B2(net7195), .A(n248), .ZN(n257) );
  OAI21_X1 U89 ( .B1(n257), .B2(net5853), .A(net5854), .ZN(net5846) );
  DFFR_X1 \CURRENT_STATE_reg[1]  ( .D(NEXT_STATE[1]), .CK(clk), .RN(n1), .Q(
        net3549), .QN(net5950) );
  DFFR_X1 \CURRENT_STATE_reg[3]  ( .D(NEXT_STATE[3]), .CK(clk), .RN(n1), .Q(
        net3523), .QN(net5930) );
  DFFR_X1 \CURRENT_STATE_reg[4]  ( .D(NEXT_STATE[4]), .CK(clk), .RN(n1), .Q(
        net3581), .QN(net5931) );
  DFFR_X1 \CURRENT_STATE_reg[2]  ( .D(NEXT_STATE[2]), .CK(clk), .RN(n1), .Q(
        net3527), .QN(net5946) );
  DFFR_X1 \CURRENT_STATE_reg[0]  ( .D(n230), .CK(clk), .RN(n1), .Q(net3560), 
        .QN(net5954) );
  NOR3_X1 U28 ( .A1(net3581), .A2(net5930), .A3(net5946), .ZN(n252) );
  NAND2_X1 U44 ( .A1(net7161), .A2(n262), .ZN(n245) );
  INV_X1 U61 ( .A(net5946), .ZN(net5947) );
  NAND2_X1 U23 ( .A1(net5931), .A2(net5947), .ZN(n239) );
  AOI21_X1 U65 ( .B1(net7157), .B2(n223), .A(net5888), .ZN(net5887) );
  NAND2_X1 U78 ( .A1(net5950), .A2(net5954), .ZN(net5888) );
  NOR2_X1 U4 ( .A1(n239), .A2(n222), .ZN(n255) );
  CLKBUF_X1 U59 ( .A(net3527), .Z(net6037) );
  NAND2_X1 U5 ( .A1(net3523), .A2(net3549), .ZN(n222) );
  NOR3_X1 U67 ( .A1(n232), .A2(net5888), .A3(net7223), .ZN(net5898) );
  OR2_X1 U16 ( .A1(net3523), .A2(net3527), .ZN(n232) );
  OR2_X1 U3 ( .A1(n259), .A2(net7163), .ZN(n258) );
  INV_X1 U6 ( .A(net5881), .ZN(n259) );
  BUF_X1 U8 ( .A(net5931), .Z(net7223) );
  BUF_X1 U9 ( .A(net5946), .Z(net7177) );
  AND2_X1 U11 ( .A1(n252), .A2(n251), .ZN(loadC) );
  AND2_X1 U15 ( .A1(n250), .A2(net6037), .ZN(n260) );
  OR3_X1 U18 ( .A1(net7177), .A2(net7163), .A3(net7157), .ZN(n261) );
  CLKBUF_X1 U22 ( .A(net3549), .Z(n262) );
  AND2_X2 U25 ( .A1(net7215), .A2(net7175), .ZN(loadB) );
  AND4_X1 U26 ( .A1(net3523), .A2(net3549), .A3(net5931), .A4(net5954), .ZN(
        n250) );
  AND3_X1 U27 ( .A1(net5930), .A2(net5931), .A3(net3527), .ZN(net5882) );
  OR2_X2 U29 ( .A1(net5898), .A2(n255), .ZN(shiftC) );
  NAND3_X1 U30 ( .A1(net7223), .A2(net7177), .A3(n223), .ZN(net7187) );
  AND2_X1 U32 ( .A1(net5931), .A2(net5947), .ZN(net5881) );
  INV_X1 U34 ( .A(net3549), .ZN(net7172) );
  AND2_X1 U35 ( .A1(net5950), .A2(net5954), .ZN(n264) );
  CLKBUF_X1 U36 ( .A(net5950), .Z(net7191) );
  CLKBUF_X1 U48 ( .A(net5954), .Z(net7195) );
  BUF_X1 U52 ( .A(net5882), .Z(net7215) );
  AND2_X1 U54 ( .A1(n236), .A2(n237), .ZN(n265) );
  BUF_X1 U55 ( .A(net7157), .Z(net7208) );
  INV_X1 U58 ( .A(net7163), .ZN(net7197) );
  BUF_X1 U66 ( .A(net5930), .Z(net7163) );
  CLKBUF_X1 U68 ( .A(loadC), .Z(n266) );
  INV_X1 U71 ( .A(net7172), .ZN(net7175) );
  BUF_X1 U73 ( .A(net3560), .Z(net7161) );
  CLKBUF_X1 U74 ( .A(n227), .Z(n267) );
  MUX2_X1 U75 ( .A(n227), .B(net7187), .S(net5857), .Z(net5854) );
  INV_X1 U76 ( .A(net5931), .ZN(net7157) );
  CLKBUF_X1 U79 ( .A(net7161), .Z(net7154) );
  AND2_X1 U90 ( .A1(net5882), .A2(n262), .ZN(net5979) );
  INV_X1 U91 ( .A(net5930), .ZN(n223) );
  OAI221_X1 U92 ( .B1(n248), .B2(n267), .C1(n246), .C2(n245), .A(n265), .ZN(
        NEXT_STATE[2]) );
  MUX2_X1 U93 ( .A(n244), .B(net5864), .S(net5850), .Z(net5862) );
  AND2_X1 U94 ( .A1(net3560), .A2(net5950), .ZN(n251) );
endmodule


module SIPISOALU ( CLK, RESET, STARTA, A, LOADB, B, STARTC, C );
  input [3:0] B;
  input CLK, RESET, STARTA, A, LOADB;
  output STARTC, C;
  wire   n233, EA, LDB, LDC, SHIFTC, n32, n44, n45, n46, n48, n49, n50, n51,
         n52, n53, n54, n80, n136, n139, n148, n152, n153, n156, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n188,
         n196, n197, n198, n199, n200, n202, n206, n207, n208, n211, n213,
         n214, n215, n216, n217, n218, n219, n221, n222, n223, n224, net7165,
         net7170, net7169, net7168, net7200, net7202, n210, n209, n195, n194,
         n193, n191, n190, n205, n204, n228, n229, n231, n232;

  OAI21_X1 U99 ( .B1(net7165), .B2(net7202), .A(n163), .ZN(n54) );
  OAI21_X1 U101 ( .B1(net7165), .B2(n231), .A(n164), .ZN(n53) );
  NAND2_X1 U102 ( .A1(n136), .A2(net7165), .ZN(n164) );
  OAI21_X1 U103 ( .B1(net7165), .B2(n152), .A(n165), .ZN(n52) );
  NAND2_X1 U104 ( .A1(n198), .A2(net7165), .ZN(n165) );
  OAI21_X1 U105 ( .B1(n153), .B2(LDB), .A(n166), .ZN(n51) );
  NAND2_X1 U106 ( .A1(LDB), .A2(B[3]), .ZN(n166) );
  OAI21_X1 U107 ( .B1(n202), .B2(LDB), .A(n167), .ZN(n50) );
  NAND2_X1 U108 ( .A1(LDB), .A2(B[2]), .ZN(n167) );
  OAI21_X1 U109 ( .B1(net7200), .B2(LDB), .A(n168), .ZN(n49) );
  NAND2_X1 U110 ( .A1(LDB), .A2(B[1]), .ZN(n168) );
  OAI21_X1 U111 ( .B1(n156), .B2(LDB), .A(n169), .ZN(n48) );
  NAND2_X1 U112 ( .A1(LDB), .A2(B[0]), .ZN(n169) );
  NOR2_X1 U142 ( .A1(n196), .A2(n197), .ZN(n224) );
  INV_X1 U144 ( .A(n202), .ZN(n199) );
  NOR2_X1 U145 ( .A1(n198), .A2(n160), .ZN(n197) );
  INV_X1 U158 ( .A(RESET), .ZN(n148) );
  OR2_X1 U161 ( .A1(n221), .A2(n208), .ZN(n206) );
  NAND2_X1 U162 ( .A1(n219), .A2(n206), .ZN(n46) );
  OR2_X1 U163 ( .A1(n214), .A2(n208), .ZN(n207) );
  NAND2_X1 U164 ( .A1(n213), .A2(n207), .ZN(n45) );
  XOR2_X1 U173 ( .A(n211), .B(n215), .Z(n214) );
  NAND2_X1 U175 ( .A1(n80), .A2(n136), .ZN(n216) );
  XOR2_X1 U177 ( .A(n198), .B(n160), .Z(n218) );
  XOR2_X1 U178 ( .A(n223), .B(n218), .Z(n221) );
  NAND2_X1 U180 ( .A1(n228), .A2(n199), .ZN(n222) );
  sipisoAluControl control ( .clk(CLK), .rst(RESET), .strobeA(STARTA), 
        .strobeB(LOADB), .shiftA(EA), .loadB(LDB), .loadC(LDC), .shiftC(SHIFTC), .startC(n233) );
  DFFR_X1 \PISO_reg[3]  ( .D(net7168), .CK(CLK), .RN(n148), .Q(n188), .QN(
        net7170) );
  DFFR_X1 \PIPO_reg[1]  ( .D(n49), .CK(CLK), .RN(n148), .Q(n80), .QN(net7200)
         );
  DFFR_X1 \SIPO_reg[0]  ( .D(n54), .CK(CLK), .RN(n148), .Q(n136), .QN(net7202)
         );
  DFFR_X1 \SIPO_reg[1]  ( .D(n53), .CK(CLK), .RN(n148), .Q(n198), .QN(n231) );
  NAND2_X1 U100 ( .A1(net7165), .A2(A), .ZN(n163) );
  INV_X1 U172 ( .A(n210), .ZN(n215) );
  NAND2_X1 U168 ( .A1(n139), .A2(A), .ZN(n210) );
  INV_X1 U136 ( .A(n233), .ZN(n190) );
  OR2_X1 U140 ( .A1(n190), .A2(n156), .ZN(n194) );
  INV_X1 U137 ( .A(A), .ZN(n191) );
  NAND2_X1 U139 ( .A1(n194), .A2(n195), .ZN(n193) );
  OAI21_X1 U170 ( .B1(n32), .B2(n229), .A(n209), .ZN(n44) );
  OR2_X1 U141 ( .A1(n190), .A2(n191), .ZN(n195) );
  AOI22_X1 U179 ( .A1(n204), .A2(n188), .B1(n205), .B2(n161), .ZN(n219) );
  AOI22_X1 U169 ( .A1(n193), .A2(n210), .B1(n204), .B2(n162), .ZN(n209) );
  AOI22_X1 U174 ( .A1(n204), .A2(n161), .B1(n205), .B2(n162), .ZN(n213) );
  DFFR_X1 \SIPO_reg[2]  ( .D(n52), .CK(CLK), .RN(n148), .Q(n158), .QN(n152) );
  DFFR_X1 \PISO_reg[1]  ( .D(n45), .CK(CLK), .RN(n148), .Q(n162) );
  DFFR_X1 \PISO_reg[2]  ( .D(n46), .CK(CLK), .RN(n148), .Q(n161) );
  DFFR_X1 \PIPO_reg[0]  ( .D(n48), .CK(CLK), .RN(n148), .Q(n139), .QN(n156) );
  DFFR_X1 \PIPO_reg[2]  ( .D(n50), .CK(CLK), .RN(n148), .Q(n160), .QN(n202) );
  DFFR_X1 \PIPO_reg[3]  ( .D(n51), .CK(CLK), .RN(n148), .Q(n159), .QN(n153) );
  DFFR_X1 \PISO_reg[0]  ( .D(n44), .CK(CLK), .RN(n148), .Q(C), .QN(n32) );
  INV_X1 U135 ( .A(n231), .ZN(n228) );
  CLKBUF_X1 U138 ( .A(n190), .Z(n208) );
  AND2_X1 U143 ( .A1(SHIFTC), .A2(n190), .ZN(n204) );
  OR2_X1 U146 ( .A1(STARTC), .A2(SHIFTC), .ZN(n229) );
  NOR2_X1 U147 ( .A1(SHIFTC), .A2(STARTC), .ZN(n205) );
  CLKBUF_X1 U148 ( .A(LDC), .Z(STARTC) );
  OAI22_X1 U149 ( .A1(net7169), .A2(n208), .B1(net7170), .B2(n229), .ZN(
        net7168) );
  OAI211_X1 U150 ( .C1(n80), .C2(n136), .A(n139), .B(A), .ZN(n217) );
  XNOR2_X1 U151 ( .A(net7202), .B(net7200), .ZN(n211) );
  XNOR2_X1 U152 ( .A(n224), .B(n232), .ZN(net7169) );
  XOR2_X1 U153 ( .A(n159), .B(n158), .Z(n232) );
  BUF_X2 U154 ( .A(EA), .Z(net7165) );
  AND2_X1 U155 ( .A1(n216), .A2(n222), .ZN(n200) );
  AND2_X1 U156 ( .A1(n217), .A2(n216), .ZN(n223) );
  AND2_X1 U157 ( .A1(n217), .A2(n200), .ZN(n196) );
endmodule

