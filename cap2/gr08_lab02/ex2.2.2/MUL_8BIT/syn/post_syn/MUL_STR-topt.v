
module Booth_Encoder_0 ( i, o );
  input [2:0] i;
  output [2:0] o;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  NAND2_X1 U3 ( .A1(i[1]), .A2(i[0]), .ZN(n2) );
  AND2_X1 U4 ( .A1(n2), .A2(i[2]), .ZN(n4) );
  AND2_X1 U5 ( .A1(n7), .A2(n4), .ZN(o[2]) );
  INV_X1 U6 ( .A(i[1]), .ZN(n5) );
  NAND2_X1 U7 ( .A1(n5), .A2(n9), .ZN(n6) );
  NAND2_X1 U8 ( .A1(n10), .A2(n2), .ZN(n7) );
  NAND2_X1 U9 ( .A1(n8), .A2(n9), .ZN(n10) );
  NAND2_X1 U10 ( .A1(n6), .A2(n2), .ZN(n3) );
  INV_X1 U11 ( .A(i[1]), .ZN(n8) );
  INV_X1 U12 ( .A(i[0]), .ZN(n9) );
  OAI22_X1 U13 ( .A1(n7), .A2(n1), .B1(i[2]), .B2(n2), .ZN(o[1]) );
  AOI21_X1 U14 ( .B1(n3), .B2(n2), .A(i[2]), .ZN(o[0]) );
  INV_X1 U15 ( .A(i[2]), .ZN(n1) );
endmodule


module MUX_booth_N16_0 ( A, B, C, D, E, sel, Y );
  input [15:0] A;
  input [15:0] B;
  input [15:0] C;
  input [15:0] D;
  input [15:0] E;
  input [2:0] sel;
  output [15:0] Y;
  wire   n3, n4, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, net32575, net32579, net32578, net32587, net32594,
         net32593, net32675, net32705, net33098, net33175, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58;

  AOI21_X1 U1 ( .B1(net32575), .B2(E[4]), .A(n54), .ZN(n41) );
  INV_X1 U2 ( .A(D[4]), .ZN(n50) );
  INV_X1 U3 ( .A(A[4]), .ZN(n43) );
  INV_X1 U4 ( .A(sel[2]), .ZN(n46) );
  INV_X1 U5 ( .A(n44), .ZN(net32705) );
  CLKBUF_X1 U6 ( .A(net32587), .Z(n40) );
  INV_X1 U7 ( .A(n47), .ZN(net32587) );
  CLKBUF_X1 U8 ( .A(sel[0]), .Z(n55) );
  NAND2_X1 U9 ( .A1(n45), .A2(n46), .ZN(n44) );
  NOR2_X1 U10 ( .A1(sel[2]), .A2(n42), .ZN(n51) );
  NAND2_X1 U11 ( .A1(n41), .A2(n18), .ZN(Y[4]) );
  NOR2_X1 U12 ( .A1(n55), .A2(sel[2]), .ZN(n53) );
  INV_X2 U13 ( .A(n49), .ZN(net32675) );
  INV_X1 U14 ( .A(sel[0]), .ZN(n42) );
  NAND2_X1 U15 ( .A1(n53), .A2(sel[1]), .ZN(n47) );
  NOR2_X1 U16 ( .A1(sel[1]), .A2(n42), .ZN(n52) );
  NOR2_X1 U17 ( .A1(n55), .A2(sel[1]), .ZN(n45) );
  NAND2_X1 U18 ( .A1(n51), .A2(sel[1]), .ZN(n48) );
  INV_X1 U19 ( .A(n48), .ZN(net33175) );
  OAI22_X1 U20 ( .A1(n50), .A2(n48), .B1(n43), .B2(n44), .ZN(n54) );
  NAND2_X1 U21 ( .A1(n52), .A2(n46), .ZN(n49) );
  AND4_X2 U22 ( .A1(n44), .A2(n47), .A3(n48), .A4(n49), .ZN(net32575) );
  AND3_X1 U23 ( .A1(n56), .A2(n57), .A3(n58), .ZN(n17) );
  NAND2_X1 U24 ( .A1(D[5]), .A2(net33175), .ZN(n56) );
  NAND2_X1 U25 ( .A1(E[5]), .A2(net32578), .ZN(n57) );
  NAND2_X1 U26 ( .A1(A[5]), .A2(net32705), .ZN(n58) );
  CLKBUF_X1 U27 ( .A(net32575), .Z(net32593) );
  BUF_X2 U28 ( .A(net32575), .Z(net32594) );
  CLKBUF_X1 U29 ( .A(net32594), .Z(net33098) );
  BUF_X1 U30 ( .A(net32575), .Z(net32578) );
  NAND2_X1 U31 ( .A1(n21), .A2(n20), .ZN(Y[3]) );
  BUF_X1 U32 ( .A(net32578), .Z(net32579) );
  NAND2_X1 U33 ( .A1(n12), .A2(n13), .ZN(Y[7]) );
  NAND2_X1 U34 ( .A1(n17), .A2(n16), .ZN(Y[5]) );
  NAND2_X1 U35 ( .A1(n24), .A2(n25), .ZN(Y[1]) );
  NAND2_X1 U36 ( .A1(n34), .A2(n35), .ZN(Y[11]) );
  NAND2_X1 U37 ( .A1(n38), .A2(n39), .ZN(Y[0]) );
  NAND2_X1 U38 ( .A1(n22), .A2(n23), .ZN(Y[2]) );
  NAND2_X1 U39 ( .A1(n32), .A2(n33), .ZN(Y[12]) );
  NAND2_X1 U40 ( .A1(n30), .A2(n31), .ZN(Y[13]) );
  NAND2_X1 U41 ( .A1(n26), .A2(n27), .ZN(Y[15]) );
  NAND2_X1 U42 ( .A1(n28), .A2(n29), .ZN(Y[14]) );
  NAND2_X1 U43 ( .A1(n3), .A2(n4), .ZN(Y[9]) );
  NAND2_X1 U44 ( .A1(n14), .A2(n15), .ZN(Y[6]) );
  NAND2_X1 U45 ( .A1(n36), .A2(n37), .ZN(Y[10]) );
  NAND2_X1 U46 ( .A1(n10), .A2(n11), .ZN(Y[8]) );
  AOI22_X1 U47 ( .A1(B[15]), .A2(net32675), .B1(C[15]), .B2(n40), .ZN(n26) );
  AOI22_X1 U48 ( .A1(B[1]), .A2(net32675), .B1(C[1]), .B2(n40), .ZN(n24) );
  AOI22_X1 U49 ( .A1(B[0]), .A2(net32675), .B1(C[0]), .B2(n40), .ZN(n38) );
  AOI22_X1 U50 ( .A1(B[14]), .A2(net32675), .B1(C[14]), .B2(n40), .ZN(n28) );
  AOI22_X1 U51 ( .A1(B[13]), .A2(net32675), .B1(C[13]), .B2(n40), .ZN(n30) );
  AOI22_X1 U52 ( .A1(B[12]), .A2(net32675), .B1(C[12]), .B2(n40), .ZN(n32) );
  AOI22_X1 U53 ( .A1(B[10]), .A2(net32675), .B1(C[10]), .B2(net32587), .ZN(n36) );
  AOI22_X1 U54 ( .A1(B[11]), .A2(net32675), .B1(C[11]), .B2(net32587), .ZN(n34) );
  AOI22_X1 U55 ( .A1(B[9]), .A2(net32675), .B1(C[9]), .B2(net32587), .ZN(n3)
         );
  AOI22_X1 U56 ( .A1(B[6]), .A2(net32675), .B1(C[6]), .B2(net32587), .ZN(n14)
         );
  AOI22_X1 U57 ( .A1(B[2]), .A2(net32675), .B1(C[2]), .B2(net32587), .ZN(n22)
         );
  AOI22_X1 U58 ( .A1(B[8]), .A2(net32675), .B1(C[8]), .B2(net32587), .ZN(n10)
         );
  AOI22_X1 U59 ( .A1(B[7]), .A2(net32675), .B1(C[7]), .B2(net32587), .ZN(n12)
         );
  AOI22_X1 U60 ( .A1(B[3]), .A2(net32675), .B1(C[3]), .B2(net32587), .ZN(n20)
         );
  AOI22_X1 U61 ( .A1(B[5]), .A2(net32675), .B1(C[5]), .B2(net32587), .ZN(n16)
         );
  AOI22_X1 U62 ( .A1(B[4]), .A2(net32675), .B1(C[4]), .B2(net32587), .ZN(n18)
         );
  AOI222_X1 U63 ( .A1(D[0]), .A2(net33175), .B1(E[0]), .B2(net32579), .C1(A[0]), .C2(net32705), .ZN(n39) );
  AOI222_X1 U64 ( .A1(D[15]), .A2(net33175), .B1(E[15]), .B2(net33098), .C1(
        A[15]), .C2(net32705), .ZN(n27) );
  AOI222_X1 U65 ( .A1(D[1]), .A2(net33175), .B1(E[1]), .B2(net32594), .C1(A[1]), .C2(net32705), .ZN(n25) );
  AOI222_X1 U66 ( .A1(D[14]), .A2(net33175), .B1(E[14]), .B2(net33098), .C1(
        A[14]), .C2(net32705), .ZN(n29) );
  AOI222_X1 U67 ( .A1(D[13]), .A2(net33175), .B1(E[13]), .B2(net32579), .C1(
        A[13]), .C2(net32705), .ZN(n31) );
  AOI222_X1 U68 ( .A1(D[12]), .A2(net33175), .B1(E[12]), .B2(net33098), .C1(
        A[12]), .C2(net32705), .ZN(n33) );
  AOI222_X1 U69 ( .A1(D[10]), .A2(net33175), .B1(E[10]), .B2(net32594), .C1(
        A[10]), .C2(net32705), .ZN(n37) );
  AOI222_X1 U70 ( .A1(D[11]), .A2(net33175), .B1(E[11]), .B2(net33098), .C1(
        A[11]), .C2(net32705), .ZN(n35) );
  AOI222_X1 U71 ( .A1(D[9]), .A2(net33175), .B1(E[9]), .B2(net32579), .C1(A[9]), .C2(net32705), .ZN(n4) );
  AOI222_X1 U72 ( .A1(D[6]), .A2(net33175), .B1(E[6]), .B2(net32593), .C1(A[6]), .C2(net32705), .ZN(n15) );
  AOI222_X1 U73 ( .A1(D[2]), .A2(net33175), .B1(E[2]), .B2(net32594), .C1(A[2]), .C2(net32705), .ZN(n23) );
  AOI222_X1 U74 ( .A1(D[8]), .A2(net33175), .B1(net32593), .B2(E[8]), .C1(A[8]), .C2(net32705), .ZN(n11) );
  AOI222_X1 U75 ( .A1(D[7]), .A2(net33175), .B1(E[7]), .B2(net32594), .C1(A[7]), .C2(net32705), .ZN(n13) );
  AOI222_X1 U76 ( .A1(D[3]), .A2(net33175), .B1(net32594), .B2(E[3]), .C1(A[3]), .C2(net32705), .ZN(n21) );
endmodule


module G_0 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n2) );
endmodule


module PG_0 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(Gx) );
  AND2_X1 U2 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U3 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n2) );
endmodule


module G_11 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module G_12 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module G_13 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
endmodule


module G_14 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_23 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AND2_X1 U2 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U3 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_24 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_25 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_26 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_27 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_28 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_29 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_30 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_31 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_IK), .A2(P_K_1), .ZN(Px) );
endmodule


module PG_32 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module carry_generator_N16_NPB4_0 ( A, B, Cin, Co );
  input [15:0] A;
  input [15:0] B;
  output [3:0] Co;
  input Cin;
  wire   \PG_Network[3][1][15] , \PG_Network[3][0][15] ,
         \PG_Network[2][1][15] , \PG_Network[2][1][11] , \PG_Network[2][1][7] ,
         \PG_Network[2][0][15] , \PG_Network[2][0][11] , \PG_Network[2][0][7] ,
         \PG_Network[1][1][15] , \PG_Network[1][1][13] ,
         \PG_Network[1][1][11] , \PG_Network[1][1][9] , \PG_Network[1][1][7] ,
         \PG_Network[1][1][5] , \PG_Network[1][1][3] , \PG_Network[1][1][1] ,
         \PG_Network[1][0][15] , \PG_Network[1][0][13] ,
         \PG_Network[1][0][11] , \PG_Network[1][0][9] , \PG_Network[1][0][7] ,
         \PG_Network[1][0][5] , \PG_Network[1][0][3] , \PG_Network[0][1][15] ,
         \PG_Network[0][1][14] , \PG_Network[0][1][13] ,
         \PG_Network[0][1][12] , \PG_Network[0][1][11] ,
         \PG_Network[0][1][10] , \PG_Network[0][1][9] , \PG_Network[0][1][8] ,
         \PG_Network[0][1][7] , \PG_Network[0][1][6] , \PG_Network[0][1][5] ,
         \PG_Network[0][1][4] , \PG_Network[0][1][3] , \PG_Network[0][1][2] ,
         \PG_Network[0][1][1] , \PG_Network[0][0][15] , \PG_Network[0][0][14] ,
         \PG_Network[0][0][13] , \PG_Network[0][0][12] ,
         \PG_Network[0][0][11] , \PG_Network[0][0][10] , \PG_Network[0][0][9] ,
         \PG_Network[0][0][8] , \PG_Network[0][0][7] , \PG_Network[0][0][6] ,
         \PG_Network[0][0][5] , \PG_Network[0][0][4] , \PG_Network[0][0][3] ,
         \PG_Network[0][0][2] , \PG_Network[0][0][1] , n1, n2, n3, n4, n5;

  G_0 GJ_0_0_0 ( .G_IK(\PG_Network[0][1][1] ), .P_IK(\PG_Network[0][0][1] ), 
        .G_K_1(n1), .Gx(\PG_Network[1][1][1] ) );
  PG_0 PGJ_0_1_0 ( .G_IK(\PG_Network[0][1][3] ), .P_IK(\PG_Network[0][0][3] ), 
        .G_K_1(\PG_Network[0][1][2] ), .P_K_1(\PG_Network[0][0][2] ), .Gx(
        \PG_Network[1][1][3] ), .Px(\PG_Network[1][0][3] ) );
  PG_32 PGJ_0_2_0 ( .G_IK(\PG_Network[0][1][5] ), .P_IK(\PG_Network[0][0][5] ), 
        .G_K_1(\PG_Network[0][1][4] ), .P_K_1(\PG_Network[0][0][4] ), .Gx(
        \PG_Network[1][1][5] ), .Px(\PG_Network[1][0][5] ) );
  PG_31 PGJ_0_3_0 ( .G_IK(\PG_Network[0][1][7] ), .P_IK(\PG_Network[0][0][7] ), 
        .G_K_1(\PG_Network[0][1][6] ), .P_K_1(\PG_Network[0][0][6] ), .Gx(
        \PG_Network[1][1][7] ), .Px(\PG_Network[1][0][7] ) );
  PG_30 PGJ_0_4_0 ( .G_IK(\PG_Network[0][1][9] ), .P_IK(\PG_Network[0][0][9] ), 
        .G_K_1(\PG_Network[0][1][8] ), .P_K_1(\PG_Network[0][0][8] ), .Gx(
        \PG_Network[1][1][9] ), .Px(\PG_Network[1][0][9] ) );
  PG_29 PGJ_0_5_0 ( .G_IK(\PG_Network[0][1][11] ), .P_IK(
        \PG_Network[0][0][11] ), .G_K_1(\PG_Network[0][1][10] ), .P_K_1(
        \PG_Network[0][0][10] ), .Gx(\PG_Network[1][1][11] ), .Px(
        \PG_Network[1][0][11] ) );
  PG_28 PGJ_0_6_0 ( .G_IK(\PG_Network[0][1][13] ), .P_IK(
        \PG_Network[0][0][13] ), .G_K_1(\PG_Network[0][1][12] ), .P_K_1(
        \PG_Network[0][0][12] ), .Gx(\PG_Network[1][1][13] ), .Px(
        \PG_Network[1][0][13] ) );
  PG_27 PGJ_0_7_0 ( .G_IK(\PG_Network[0][1][15] ), .P_IK(
        \PG_Network[0][0][15] ), .G_K_1(\PG_Network[0][1][14] ), .P_K_1(
        \PG_Network[0][0][14] ), .Gx(\PG_Network[1][1][15] ), .Px(
        \PG_Network[1][0][15] ) );
  G_14 GJ_1_0_0 ( .G_IK(\PG_Network[1][1][3] ), .P_IK(\PG_Network[1][0][3] ), 
        .G_K_1(\PG_Network[1][1][1] ), .Gx(Co[0]) );
  PG_26 PGJ_1_1_0 ( .G_IK(\PG_Network[1][1][7] ), .P_IK(\PG_Network[1][0][7] ), 
        .G_K_1(\PG_Network[1][1][5] ), .P_K_1(\PG_Network[1][0][5] ), .Gx(
        \PG_Network[2][1][7] ), .Px(\PG_Network[2][0][7] ) );
  PG_25 PGJ_1_2_0 ( .G_IK(\PG_Network[1][1][11] ), .P_IK(
        \PG_Network[1][0][11] ), .G_K_1(\PG_Network[1][1][9] ), .P_K_1(
        \PG_Network[1][0][9] ), .Gx(\PG_Network[2][1][11] ), .Px(
        \PG_Network[2][0][11] ) );
  PG_24 PGJ_1_3_0 ( .G_IK(\PG_Network[1][1][15] ), .P_IK(
        \PG_Network[1][0][15] ), .G_K_1(\PG_Network[1][1][13] ), .P_K_1(
        \PG_Network[1][0][13] ), .Gx(\PG_Network[2][1][15] ), .Px(
        \PG_Network[2][0][15] ) );
  G_13 GJ_2_0_0 ( .G_IK(\PG_Network[2][1][7] ), .P_IK(\PG_Network[2][0][7] ), 
        .G_K_1(Co[0]), .Gx(Co[1]) );
  PG_23 PGJ_2_1_0 ( .G_IK(\PG_Network[2][1][15] ), .P_IK(
        \PG_Network[2][0][15] ), .G_K_1(\PG_Network[2][1][11] ), .P_K_1(
        \PG_Network[2][0][11] ), .Gx(\PG_Network[3][1][15] ), .Px(
        \PG_Network[3][0][15] ) );
  G_12 GJ_3_0_0 ( .G_IK(\PG_Network[3][1][15] ), .P_IK(\PG_Network[3][0][15] ), 
        .G_K_1(n5), .Gx(Co[3]) );
  G_11 GJ_3_0_1 ( .G_IK(\PG_Network[2][1][11] ), .P_IK(\PG_Network[2][0][11] ), 
        .G_K_1(n5), .Gx(Co[2]) );
  XOR2_X1 U20 ( .A(B[9]), .B(A[9]), .Z(\PG_Network[0][0][9] ) );
  XOR2_X1 U21 ( .A(B[8]), .B(A[8]), .Z(\PG_Network[0][0][8] ) );
  XOR2_X1 U22 ( .A(B[7]), .B(A[7]), .Z(\PG_Network[0][0][7] ) );
  XOR2_X1 U23 ( .A(B[6]), .B(A[6]), .Z(\PG_Network[0][0][6] ) );
  XOR2_X1 U24 ( .A(B[5]), .B(A[5]), .Z(\PG_Network[0][0][5] ) );
  XOR2_X1 U25 ( .A(B[4]), .B(A[4]), .Z(\PG_Network[0][0][4] ) );
  XOR2_X1 U26 ( .A(B[3]), .B(A[3]), .Z(\PG_Network[0][0][3] ) );
  XOR2_X1 U27 ( .A(B[2]), .B(A[2]), .Z(\PG_Network[0][0][2] ) );
  XOR2_X1 U28 ( .A(B[1]), .B(A[1]), .Z(\PG_Network[0][0][1] ) );
  XOR2_X1 U29 ( .A(B[15]), .B(A[15]), .Z(\PG_Network[0][0][15] ) );
  XOR2_X1 U30 ( .A(B[14]), .B(A[14]), .Z(\PG_Network[0][0][14] ) );
  XOR2_X1 U31 ( .A(B[13]), .B(A[13]), .Z(\PG_Network[0][0][13] ) );
  XOR2_X1 U32 ( .A(B[12]), .B(A[12]), .Z(\PG_Network[0][0][12] ) );
  XOR2_X1 U33 ( .A(B[11]), .B(A[11]), .Z(\PG_Network[0][0][11] ) );
  XOR2_X1 U34 ( .A(B[10]), .B(A[10]), .Z(\PG_Network[0][0][10] ) );
  BUF_X1 U1 ( .A(Co[1]), .Z(n5) );
  AND2_X1 U2 ( .A1(A[7]), .A2(B[7]), .ZN(\PG_Network[0][1][7] ) );
  AND2_X1 U3 ( .A1(A[11]), .A2(B[11]), .ZN(\PG_Network[0][1][11] ) );
  AND2_X1 U4 ( .A1(A[10]), .A2(B[10]), .ZN(\PG_Network[0][1][10] ) );
  AND2_X1 U5 ( .A1(A[9]), .A2(B[9]), .ZN(\PG_Network[0][1][9] ) );
  AND2_X1 U6 ( .A1(A[2]), .A2(B[2]), .ZN(\PG_Network[0][1][2] ) );
  INV_X1 U7 ( .A(n3), .ZN(n1) );
  AND2_X1 U8 ( .A1(A[1]), .A2(B[1]), .ZN(\PG_Network[0][1][1] ) );
  AND2_X1 U9 ( .A1(A[13]), .A2(B[13]), .ZN(\PG_Network[0][1][13] ) );
  AND2_X1 U10 ( .A1(A[12]), .A2(B[12]), .ZN(\PG_Network[0][1][12] ) );
  AND2_X1 U11 ( .A1(A[15]), .A2(B[15]), .ZN(\PG_Network[0][1][15] ) );
  AND2_X1 U12 ( .A1(A[14]), .A2(B[14]), .ZN(\PG_Network[0][1][14] ) );
  AOI21_X1 U13 ( .B1(A[0]), .B2(B[0]), .A(n2), .ZN(n3) );
  INV_X1 U14 ( .A(n4), .ZN(n2) );
  OAI21_X1 U15 ( .B1(A[0]), .B2(B[0]), .A(Cin), .ZN(n4) );
  AND2_X1 U16 ( .A1(A[4]), .A2(B[4]), .ZN(\PG_Network[0][1][4] ) );
  AND2_X1 U17 ( .A1(A[6]), .A2(B[6]), .ZN(\PG_Network[0][1][6] ) );
  AND2_X1 U18 ( .A1(A[8]), .A2(B[8]), .ZN(\PG_Network[0][1][8] ) );
  AND2_X1 U19 ( .A1(A[5]), .A2(B[5]), .ZN(\PG_Network[0][1][5] ) );
  AND2_X1 U35 ( .A1(B[3]), .A2(A[3]), .ZN(\PG_Network[0][1][3] ) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n2), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_93 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_94 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_95 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_0 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_95 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_94 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_93 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_0 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U2 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n5), .ZN(n9) );
  INV_X1 U3 ( .A(n8), .ZN(Y[1]) );
  AOI22_X1 U4 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n5), .ZN(n8) );
  INV_X1 U5 ( .A(n7), .ZN(Y[2]) );
  AOI22_X1 U6 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n5), .ZN(n7) );
  INV_X1 U7 ( .A(n6), .ZN(Y[3]) );
  AOI22_X1 U8 ( .A1(sel), .A2(A[3]), .B1(B[3]), .B2(n5), .ZN(n6) );
  INV_X1 U9 ( .A(sel), .ZN(n5) );
endmodule


module FA_89 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_90 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_91 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_92 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_23 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_92 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_91 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_90 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_89 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module carry_select_block_NPB4_0 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_0 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_23 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_0 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module FA_81 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_82 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_83 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_84 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_21 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_84 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_83 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_82 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_81 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_85 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
endmodule


module FA_86 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(n4), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_87 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(n4), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_88 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(n5), .Z(n4) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module RCA_N4_22 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_88 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_87 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_86 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_85 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_11 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(n11), .ZN(Y[1]) );
  INV_X1 U2 ( .A(n10), .ZN(Y[0]) );
  INV_X1 U3 ( .A(n12), .ZN(Y[2]) );
  INV_X1 U4 ( .A(sel), .ZN(n14) );
  AOI22_X1 U5 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n14), .ZN(n12) );
  AOI22_X1 U6 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n14), .ZN(n10) );
  AOI22_X1 U7 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n14), .ZN(n11) );
  INV_X1 U8 ( .A(n13), .ZN(Y[3]) );
  AOI22_X1 U9 ( .A1(A[3]), .A2(sel), .B1(B[3]), .B2(n14), .ZN(n13) );
endmodule


module carry_select_block_NPB4_11 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_22 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_21 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_11 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module FA_65 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_66 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_67 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_68 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_17 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_68 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_67 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_66 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_65 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_69 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_70 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_71 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_72 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_18 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_72 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_71 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_70 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_69 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_9 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(n10), .ZN(Y[0]) );
  INV_X1 U2 ( .A(sel), .ZN(n14) );
  INV_X1 U3 ( .A(n13), .ZN(Y[3]) );
  AOI22_X1 U4 ( .A1(sel), .A2(A[3]), .B1(B[3]), .B2(n14), .ZN(n13) );
  INV_X1 U5 ( .A(n12), .ZN(Y[2]) );
  AOI22_X1 U6 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n14), .ZN(n12) );
  INV_X1 U7 ( .A(n11), .ZN(Y[1]) );
  AOI22_X1 U8 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n14), .ZN(n11) );
  AOI22_X1 U9 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n14), .ZN(n10) );
endmodule


module carry_select_block_NPB4_9 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_18 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_17 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_9 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module FA_73 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_74 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_75 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_76 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_19 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_76 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_75 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_74 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_73 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_77 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
endmodule


module FA_78 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_79 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(n4), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_80 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n6) );
  CLKBUF_X1 U1 ( .A(n6), .Z(n4) );
  CLKBUF_X1 U2 ( .A(B), .Z(n5) );
  AOI22_X1 U5 ( .A1(n5), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module RCA_N4_20 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_80 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_79 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_78 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_77 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_10 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14, n15, n16, n17;

  CLKBUF_X1 U1 ( .A(sel), .Z(n10) );
  CLKBUF_X1 U2 ( .A(sel), .Z(n12) );
  INV_X1 U3 ( .A(n12), .ZN(n11) );
  INV_X1 U4 ( .A(n15), .ZN(Y[2]) );
  INV_X1 U5 ( .A(n14), .ZN(Y[1]) );
  INV_X1 U6 ( .A(n13), .ZN(Y[0]) );
  AOI22_X1 U7 ( .A1(A[2]), .A2(n10), .B1(B[2]), .B2(n17), .ZN(n15) );
  AOI22_X1 U8 ( .A1(n12), .A2(A[1]), .B1(B[1]), .B2(n17), .ZN(n14) );
  INV_X1 U9 ( .A(sel), .ZN(n17) );
  AOI22_X1 U10 ( .A1(A[3]), .A2(n10), .B1(B[3]), .B2(n11), .ZN(n16) );
  INV_X1 U11 ( .A(n16), .ZN(Y[3]) );
  AOI22_X1 U12 ( .A1(sel), .A2(A[0]), .B1(n17), .B2(B[0]), .ZN(n13) );
endmodule


module carry_select_block_NPB4_10 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_20 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_19 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_10 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module sum_generator_N16_NPB4_0 ( A, B, Ci, S, Co );
  input [15:0] A;
  input [15:0] B;
  input [4:0] Ci;
  output [15:0] S;
  output Co;

  assign Co = Ci[4];

  carry_select_block_NPB4_0 csbi_0 ( .A(A[3:0]), .B(B[3:0]), .Ci(Ci[0]), .S(
        S[3:0]) );
  carry_select_block_NPB4_11 csbi_1 ( .A(A[7:4]), .B(B[7:4]), .Ci(Ci[1]), .S(
        S[7:4]) );
  carry_select_block_NPB4_10 csbi_2 ( .A(A[11:8]), .B(B[11:8]), .Ci(Ci[2]), 
        .S(S[11:8]) );
  carry_select_block_NPB4_9 csbi_3 ( .A(A[15:12]), .B(B[15:12]), .Ci(Ci[3]), 
        .S(S[15:12]) );
endmodule


module P4_ADDER_N16_0 ( A, B, Cin, S, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [4:1] CoutCgen;

  carry_generator_N16_NPB4_0 CGEN ( .A({A[15:9], n5, A[7:5], n8, A[3:0]}), .B(
        {B[15:9], n3, B[7:5], n4, B[3:0]}), .Cin(Cin), .Co(CoutCgen) );
  sum_generator_N16_NPB4_0 SGEN ( .A({A[15:4], n1, A[2:0]}), .B({B[15:8], n7, 
        B[6:4], n2, B[2:0]}), .Ci({CoutCgen, Cin}), .S(S), .Co(Cout) );
  CLKBUF_X1 U1 ( .A(A[3]), .Z(n1) );
  CLKBUF_X1 U2 ( .A(B[3]), .Z(n2) );
  CLKBUF_X1 U3 ( .A(B[8]), .Z(n3) );
  CLKBUF_X1 U4 ( .A(B[4]), .Z(n4) );
  CLKBUF_X1 U5 ( .A(A[8]), .Z(n5) );
  INV_X1 U6 ( .A(B[7]), .ZN(n6) );
  INV_X1 U7 ( .A(n6), .ZN(n7) );
  CLKBUF_X1 U8 ( .A(A[4]), .Z(n8) );
endmodule


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_9 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_36 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_35 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_34 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_33 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(n5), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module RCA_N4_10 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_40 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_39 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_38 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_37 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_5 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14, n15, n16, n17;

  CLKBUF_X1 U1 ( .A(sel), .Z(n10) );
  INV_X1 U2 ( .A(n12), .ZN(n11) );
  INV_X1 U3 ( .A(n13), .ZN(Y[0]) );
  INV_X1 U4 ( .A(n15), .ZN(Y[2]) );
  INV_X1 U5 ( .A(n14), .ZN(Y[1]) );
  INV_X1 U6 ( .A(n16), .ZN(Y[3]) );
  INV_X1 U7 ( .A(sel), .ZN(n17) );
  CLKBUF_X1 U8 ( .A(n10), .Z(n12) );
  AOI22_X1 U9 ( .A1(n12), .A2(A[3]), .B1(B[3]), .B2(n11), .ZN(n16) );
  AOI22_X1 U10 ( .A1(A[2]), .A2(n12), .B1(B[2]), .B2(n11), .ZN(n15) );
  AOI22_X1 U11 ( .A1(A[1]), .A2(n10), .B1(B[1]), .B2(n17), .ZN(n14) );
  AOI22_X1 U12 ( .A1(sel), .A2(A[0]), .B1(B[0]), .B2(n17), .ZN(n13) );
endmodule


module carry_select_block_NPB4_5 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_10 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_9 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_5 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(n5), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_11 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_44 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_43 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_42 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_41 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_48 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n6) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  CLKBUF_X1 U2 ( .A(n6), .Z(n5) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
endmodule


module RCA_N4_12 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_48 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_47 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_46 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_45 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_6 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(n11), .ZN(Y[1]) );
  INV_X1 U2 ( .A(n10), .ZN(Y[0]) );
  INV_X1 U3 ( .A(n12), .ZN(Y[2]) );
  AOI22_X1 U4 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n14), .ZN(n12) );
  AOI22_X1 U5 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n14), .ZN(n11) );
  AOI22_X1 U6 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n14), .ZN(n10) );
  INV_X1 U7 ( .A(sel), .ZN(n14) );
  INV_X1 U8 ( .A(n13), .ZN(Y[3]) );
  AOI22_X1 U9 ( .A1(A[3]), .A2(sel), .B1(B[3]), .B2(n14), .ZN(n13) );
endmodule


module carry_select_block_NPB4_6 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_12 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_11 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_6 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module FA_49 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_50 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module RCA_N4_13 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_52 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_51 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_50 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_49 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_53 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_54 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_55 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_56 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_14 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_56 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_55 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_54 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_53 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_7 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(sel), .ZN(n14) );
  AOI22_X1 U2 ( .A1(sel), .A2(A[3]), .B1(B[3]), .B2(n14), .ZN(n13) );
  INV_X1 U3 ( .A(n12), .ZN(Y[2]) );
  AOI22_X1 U4 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n14), .ZN(n12) );
  INV_X1 U5 ( .A(n11), .ZN(Y[1]) );
  AOI22_X1 U6 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n14), .ZN(n11) );
  INV_X1 U7 ( .A(n10), .ZN(Y[0]) );
  AOI22_X1 U8 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n14), .ZN(n10) );
  INV_X1 U9 ( .A(n13), .ZN(Y[3]) );
endmodule


module carry_select_block_NPB4_7 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_14 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_13 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_7 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module FA_57 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_58 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_59 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_60 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_15 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_60 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_59 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_58 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_57 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_61 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_62 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_63 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_64 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_16 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_64 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_63 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_62 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_61 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_8 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(n11), .ZN(Y[1]) );
  AOI22_X1 U2 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n14), .ZN(n11) );
  INV_X1 U3 ( .A(n12), .ZN(Y[2]) );
  AOI22_X1 U4 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n14), .ZN(n12) );
  INV_X1 U5 ( .A(n13), .ZN(Y[3]) );
  AOI22_X1 U6 ( .A1(sel), .A2(A[3]), .B1(B[3]), .B2(n14), .ZN(n13) );
  INV_X1 U7 ( .A(n10), .ZN(Y[0]) );
  AOI22_X1 U8 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n14), .ZN(n10) );
  INV_X1 U9 ( .A(sel), .ZN(n14) );
endmodule


module carry_select_block_NPB4_8 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_16 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_15 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_8 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module sum_generator_N16_NPB4_2 ( A, B, Ci, S, Co );
  input [15:0] A;
  input [15:0] B;
  input [4:0] Ci;
  output [15:0] S;
  output Co;

  assign Co = Ci[4];

  carry_select_block_NPB4_8 csbi_0 ( .A(A[3:0]), .B(B[3:0]), .Ci(Ci[0]), .S(
        S[3:0]) );
  carry_select_block_NPB4_7 csbi_1 ( .A(A[7:4]), .B(B[7:4]), .Ci(Ci[1]), .S(
        S[7:4]) );
  carry_select_block_NPB4_6 csbi_2 ( .A(A[11:8]), .B(B[11:8]), .Ci(Ci[2]), .S(
        S[11:8]) );
  carry_select_block_NPB4_5 csbi_3 ( .A(A[15:12]), .B(B[15:12]), .Ci(Ci[3]), 
        .S(S[15:12]) );
endmodule


module G_6 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
endmodule


module G_7 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module G_8 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n4;

  OR2_X2 U1 ( .A1(n4), .A2(G_IK), .ZN(Gx) );
  AND2_X1 U2 ( .A1(P_IK), .A2(G_K_1), .ZN(n4) );
endmodule


module G_9 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module G_10 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_12 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AND2_X1 U2 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U3 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_13 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_14 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n4;

  OR2_X1 U1 ( .A1(n4), .A2(G_IK), .ZN(Gx) );
  AND2_X1 U2 ( .A1(P_IK), .A2(G_K_1), .ZN(n4) );
  AND2_X1 U3 ( .A1(P_IK), .A2(P_K_1), .ZN(Px) );
endmodule


module PG_15 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n4;

  OR2_X1 U1 ( .A1(n4), .A2(G_IK), .ZN(Gx) );
  AND2_X1 U2 ( .A1(P_IK), .A2(G_K_1), .ZN(n4) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_16 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_17 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_18 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_IK), .A2(P_K_1), .ZN(Px) );
  INV_X1 U2 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U3 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_19 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AOI21_X1 U1 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  AND2_X1 U2 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_20 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_IK), .A2(P_K_1), .ZN(Px) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_21 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AND2_X1 U2 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U3 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_22 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module carry_generator_N16_NPB4_2 ( A, B, Cin, Co );
  input [15:0] A;
  input [15:0] B;
  output [3:0] Co;
  input Cin;
  wire   \PG_Network[3][1][15] , \PG_Network[3][0][15] ,
         \PG_Network[2][1][15] , \PG_Network[2][1][11] , \PG_Network[2][1][7] ,
         \PG_Network[2][0][15] , \PG_Network[2][0][11] , \PG_Network[2][0][7] ,
         \PG_Network[1][1][15] , \PG_Network[1][1][13] ,
         \PG_Network[1][1][11] , \PG_Network[1][1][9] , \PG_Network[1][1][7] ,
         \PG_Network[1][1][5] , \PG_Network[1][1][3] , \PG_Network[1][1][1] ,
         \PG_Network[1][0][15] , \PG_Network[1][0][13] ,
         \PG_Network[1][0][11] , \PG_Network[1][0][9] , \PG_Network[1][0][7] ,
         \PG_Network[1][0][5] , \PG_Network[1][0][3] , \PG_Network[0][1][15] ,
         \PG_Network[0][1][14] , \PG_Network[0][1][13] ,
         \PG_Network[0][1][12] , \PG_Network[0][1][11] ,
         \PG_Network[0][1][10] , \PG_Network[0][1][9] , \PG_Network[0][1][8] ,
         \PG_Network[0][1][7] , \PG_Network[0][1][6] , \PG_Network[0][1][5] ,
         \PG_Network[0][1][4] , \PG_Network[0][1][3] , \PG_Network[0][1][2] ,
         \PG_Network[0][1][1] , \PG_Network[0][0][15] , \PG_Network[0][0][14] ,
         \PG_Network[0][0][13] , \PG_Network[0][0][12] ,
         \PG_Network[0][0][11] , \PG_Network[0][0][10] , \PG_Network[0][0][9] ,
         \PG_Network[0][0][8] , \PG_Network[0][0][7] , \PG_Network[0][0][6] ,
         \PG_Network[0][0][5] , \PG_Network[0][0][4] , \PG_Network[0][0][3] ,
         \PG_Network[0][0][2] , \PG_Network[0][0][1] , n5, n6, n7, n8, n9;

  G_10 GJ_0_0_0 ( .G_IK(\PG_Network[0][1][1] ), .P_IK(\PG_Network[0][0][1] ), 
        .G_K_1(n9), .Gx(\PG_Network[1][1][1] ) );
  PG_22 PGJ_0_1_0 ( .G_IK(\PG_Network[0][1][3] ), .P_IK(\PG_Network[0][0][3] ), 
        .G_K_1(\PG_Network[0][1][2] ), .P_K_1(\PG_Network[0][0][2] ), .Gx(
        \PG_Network[1][1][3] ), .Px(\PG_Network[1][0][3] ) );
  PG_21 PGJ_0_2_0 ( .G_IK(\PG_Network[0][1][5] ), .P_IK(\PG_Network[0][0][5] ), 
        .G_K_1(\PG_Network[0][1][4] ), .P_K_1(\PG_Network[0][0][4] ), .Gx(
        \PG_Network[1][1][5] ), .Px(\PG_Network[1][0][5] ) );
  PG_20 PGJ_0_3_0 ( .G_IK(\PG_Network[0][1][7] ), .P_IK(\PG_Network[0][0][7] ), 
        .G_K_1(\PG_Network[0][1][6] ), .P_K_1(\PG_Network[0][0][6] ), .Gx(
        \PG_Network[1][1][7] ), .Px(\PG_Network[1][0][7] ) );
  PG_19 PGJ_0_4_0 ( .G_IK(\PG_Network[0][1][9] ), .P_IK(\PG_Network[0][0][9] ), 
        .G_K_1(\PG_Network[0][1][8] ), .P_K_1(\PG_Network[0][0][8] ), .Gx(
        \PG_Network[1][1][9] ), .Px(\PG_Network[1][0][9] ) );
  PG_18 PGJ_0_5_0 ( .G_IK(\PG_Network[0][1][11] ), .P_IK(
        \PG_Network[0][0][11] ), .G_K_1(\PG_Network[0][1][10] ), .P_K_1(
        \PG_Network[0][0][10] ), .Gx(\PG_Network[1][1][11] ), .Px(
        \PG_Network[1][0][11] ) );
  PG_17 PGJ_0_6_0 ( .G_IK(\PG_Network[0][1][13] ), .P_IK(
        \PG_Network[0][0][13] ), .G_K_1(\PG_Network[0][1][12] ), .P_K_1(
        \PG_Network[0][0][12] ), .Gx(\PG_Network[1][1][13] ), .Px(
        \PG_Network[1][0][13] ) );
  PG_16 PGJ_0_7_0 ( .G_IK(\PG_Network[0][1][15] ), .P_IK(
        \PG_Network[0][0][15] ), .G_K_1(\PG_Network[0][1][14] ), .P_K_1(
        \PG_Network[0][0][14] ), .Gx(\PG_Network[1][1][15] ), .Px(
        \PG_Network[1][0][15] ) );
  G_9 GJ_1_0_0 ( .G_IK(\PG_Network[1][1][3] ), .P_IK(\PG_Network[1][0][3] ), 
        .G_K_1(\PG_Network[1][1][1] ), .Gx(Co[0]) );
  PG_15 PGJ_1_1_0 ( .G_IK(\PG_Network[1][1][7] ), .P_IK(\PG_Network[1][0][7] ), 
        .G_K_1(\PG_Network[1][1][5] ), .P_K_1(\PG_Network[1][0][5] ), .Gx(
        \PG_Network[2][1][7] ), .Px(\PG_Network[2][0][7] ) );
  PG_14 PGJ_1_2_0 ( .G_IK(\PG_Network[1][1][11] ), .P_IK(
        \PG_Network[1][0][11] ), .G_K_1(\PG_Network[1][1][9] ), .P_K_1(
        \PG_Network[1][0][9] ), .Gx(\PG_Network[2][1][11] ), .Px(
        \PG_Network[2][0][11] ) );
  PG_13 PGJ_1_3_0 ( .G_IK(\PG_Network[1][1][15] ), .P_IK(
        \PG_Network[1][0][15] ), .G_K_1(\PG_Network[1][1][13] ), .P_K_1(
        \PG_Network[1][0][13] ), .Gx(\PG_Network[2][1][15] ), .Px(
        \PG_Network[2][0][15] ) );
  G_8 GJ_2_0_0 ( .G_IK(\PG_Network[2][1][7] ), .P_IK(\PG_Network[2][0][7] ), 
        .G_K_1(Co[0]), .Gx(Co[1]) );
  PG_12 PGJ_2_1_0 ( .G_IK(\PG_Network[2][1][15] ), .P_IK(
        \PG_Network[2][0][15] ), .G_K_1(n5), .P_K_1(\PG_Network[2][0][11] ), 
        .Gx(\PG_Network[3][1][15] ), .Px(\PG_Network[3][0][15] ) );
  G_7 GJ_3_0_0 ( .G_IK(\PG_Network[3][1][15] ), .P_IK(\PG_Network[3][0][15] ), 
        .G_K_1(Co[1]), .Gx(Co[3]) );
  G_6 GJ_3_0_1 ( .G_IK(\PG_Network[2][1][11] ), .P_IK(\PG_Network[2][0][11] ), 
        .G_K_1(Co[1]), .Gx(Co[2]) );
  XOR2_X1 U20 ( .A(B[9]), .B(A[9]), .Z(\PG_Network[0][0][9] ) );
  XOR2_X1 U21 ( .A(B[8]), .B(A[8]), .Z(\PG_Network[0][0][8] ) );
  XOR2_X1 U22 ( .A(B[7]), .B(A[7]), .Z(\PG_Network[0][0][7] ) );
  XOR2_X1 U23 ( .A(B[6]), .B(A[6]), .Z(\PG_Network[0][0][6] ) );
  XOR2_X1 U24 ( .A(B[5]), .B(A[5]), .Z(\PG_Network[0][0][5] ) );
  XOR2_X1 U25 ( .A(B[4]), .B(A[4]), .Z(\PG_Network[0][0][4] ) );
  XOR2_X1 U26 ( .A(B[3]), .B(A[3]), .Z(\PG_Network[0][0][3] ) );
  XOR2_X1 U27 ( .A(B[2]), .B(A[2]), .Z(\PG_Network[0][0][2] ) );
  XOR2_X1 U28 ( .A(B[1]), .B(A[1]), .Z(\PG_Network[0][0][1] ) );
  XOR2_X1 U29 ( .A(B[15]), .B(A[15]), .Z(\PG_Network[0][0][15] ) );
  XOR2_X1 U30 ( .A(B[14]), .B(A[14]), .Z(\PG_Network[0][0][14] ) );
  XOR2_X1 U31 ( .A(B[13]), .B(A[13]), .Z(\PG_Network[0][0][13] ) );
  XOR2_X1 U32 ( .A(B[12]), .B(A[12]), .Z(\PG_Network[0][0][12] ) );
  XOR2_X1 U33 ( .A(B[11]), .B(A[11]), .Z(\PG_Network[0][0][11] ) );
  XOR2_X1 U34 ( .A(B[10]), .B(A[10]), .Z(\PG_Network[0][0][10] ) );
  AND2_X1 U1 ( .A1(A[6]), .A2(B[6]), .ZN(\PG_Network[0][1][6] ) );
  AND2_X1 U2 ( .A1(A[10]), .A2(B[10]), .ZN(\PG_Network[0][1][10] ) );
  AND2_X1 U3 ( .A1(A[9]), .A2(B[9]), .ZN(\PG_Network[0][1][9] ) );
  AND2_X1 U4 ( .A1(A[5]), .A2(B[5]), .ZN(\PG_Network[0][1][5] ) );
  AND2_X1 U5 ( .A1(A[4]), .A2(B[4]), .ZN(\PG_Network[0][1][4] ) );
  AND2_X1 U6 ( .A1(A[3]), .A2(B[3]), .ZN(\PG_Network[0][1][3] ) );
  AND2_X1 U7 ( .A1(A[2]), .A2(B[2]), .ZN(\PG_Network[0][1][2] ) );
  INV_X1 U8 ( .A(n7), .ZN(n9) );
  AND2_X1 U9 ( .A1(A[1]), .A2(B[1]), .ZN(\PG_Network[0][1][1] ) );
  AND2_X1 U10 ( .A1(A[13]), .A2(B[13]), .ZN(\PG_Network[0][1][13] ) );
  AND2_X1 U11 ( .A1(A[12]), .A2(B[12]), .ZN(\PG_Network[0][1][12] ) );
  AND2_X1 U12 ( .A1(A[15]), .A2(B[15]), .ZN(\PG_Network[0][1][15] ) );
  AND2_X1 U13 ( .A1(A[14]), .A2(B[14]), .ZN(\PG_Network[0][1][14] ) );
  AOI21_X1 U14 ( .B1(A[0]), .B2(B[0]), .A(n8), .ZN(n7) );
  INV_X1 U15 ( .A(n6), .ZN(n8) );
  OAI21_X1 U16 ( .B1(A[0]), .B2(B[0]), .A(Cin), .ZN(n6) );
  AND2_X1 U17 ( .A1(A[8]), .A2(B[8]), .ZN(\PG_Network[0][1][8] ) );
  CLKBUF_X1 U18 ( .A(\PG_Network[2][1][11] ), .Z(n5) );
  AND2_X1 U19 ( .A1(B[11]), .A2(A[11]), .ZN(\PG_Network[0][1][11] ) );
  AND2_X1 U35 ( .A1(B[7]), .A2(A[7]), .ZN(\PG_Network[0][1][7] ) );
endmodule


module P4_ADDER_N16_2 ( A, B, Cin, S, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5;
  wire   [4:1] CoutCgen;

  carry_generator_N16_NPB4_2 CGEN ( .A(A), .B({B[15:13], n2, B[11:9], n1, 
        B[7:0]}), .Cin(Cin), .Co(CoutCgen) );
  sum_generator_N16_NPB4_2 SGEN ( .A(A), .B({B[15:12], n3, B[10], n5, B[8], n4, 
        B[6:0]}), .Ci({CoutCgen, Cin}), .S(S), .Co(Cout) );
  BUF_X1 U1 ( .A(B[9]), .Z(n5) );
  CLKBUF_X1 U2 ( .A(B[8]), .Z(n1) );
  CLKBUF_X1 U3 ( .A(B[12]), .Z(n2) );
  CLKBUF_X1 U4 ( .A(B[11]), .Z(n3) );
  CLKBUF_X1 U5 ( .A(B[7]), .Z(n4) );
endmodule


module Booth_Encoder_1 ( i, o );
  input [2:0] i;
  output [2:0] o;
  wire   n5, n6, n7;

  OAI22_X1 U3 ( .A1(n7), .A2(n5), .B1(i[2]), .B2(n6), .ZN(o[1]) );
  INV_X1 U4 ( .A(i[2]), .ZN(n7) );
  AOI21_X1 U5 ( .B1(n5), .B2(n6), .A(i[2]), .ZN(o[0]) );
  AND3_X1 U6 ( .A1(i[2]), .A2(n6), .A3(n5), .ZN(o[2]) );
  OAI21_X1 U7 ( .B1(i[1]), .B2(i[0]), .A(n6), .ZN(n5) );
  NAND2_X1 U8 ( .A1(i[1]), .A2(i[0]), .ZN(n6) );
endmodule


module Booth_Encoder_2 ( i, o );
  input [2:0] i;
  output [2:0] o;
  wire   n5, n6, n7;

  AOI21_X1 U3 ( .B1(n5), .B2(n6), .A(i[2]), .ZN(o[0]) );
  OAI22_X1 U4 ( .A1(n7), .A2(n5), .B1(i[2]), .B2(n6), .ZN(o[1]) );
  INV_X1 U5 ( .A(i[2]), .ZN(n7) );
  AND3_X1 U6 ( .A1(i[2]), .A2(n6), .A3(n5), .ZN(o[2]) );
  OAI21_X1 U7 ( .B1(i[1]), .B2(i[0]), .A(n6), .ZN(n5) );
  NAND2_X1 U8 ( .A1(i[1]), .A2(i[0]), .ZN(n6) );
endmodule


module Booth_Encoder_3 ( i, o );
  input [2:0] i;
  output [2:0] o;
  wire   n4, n5, n6, n8, n9, n10;

  NAND2_X1 U3 ( .A1(i[0]), .A2(i[1]), .ZN(n4) );
  NAND2_X1 U4 ( .A1(i[0]), .A2(i[1]), .ZN(n9) );
  OAI22_X1 U5 ( .A1(n8), .A2(n10), .B1(i[2]), .B2(n4), .ZN(o[1]) );
  BUF_X1 U6 ( .A(i[1]), .Z(n5) );
  OAI21_X1 U7 ( .B1(n5), .B2(i[0]), .A(n9), .ZN(n6) );
  INV_X1 U8 ( .A(i[2]), .ZN(n10) );
  AOI21_X1 U9 ( .B1(n6), .B2(n4), .A(i[2]), .ZN(o[0]) );
  AND3_X1 U10 ( .A1(n6), .A2(n4), .A3(i[2]), .ZN(o[2]) );
  OAI21_X1 U11 ( .B1(n5), .B2(i[0]), .A(n9), .ZN(n8) );
endmodule


module MUX_booth_N16_1 ( A, B, C, D, E, sel, Y );
  input [15:0] A;
  input [15:0] B;
  input [15:0] C;
  input [15:0] D;
  input [15:0] E;
  input [2:0] sel;
  output [15:0] Y;
  wire   n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78;

  NAND2_X1 U1 ( .A1(n45), .A2(n44), .ZN(Y[11]) );
  NOR4_X4 U2 ( .A1(n72), .A2(n74), .A3(n71), .A4(n70), .ZN(n73) );
  INV_X1 U3 ( .A(sel[1]), .ZN(n78) );
  INV_X1 U4 ( .A(sel[0]), .ZN(n77) );
  NAND2_X1 U5 ( .A1(n76), .A2(n75), .ZN(Y[9]) );
  AOI22_X1 U6 ( .A1(B[9]), .A2(n71), .B1(C[9]), .B2(n70), .ZN(n76) );
  AOI222_X1 U7 ( .A1(D[9]), .A2(n74), .B1(E[9]), .B2(n73), .C1(A[9]), .C2(n72), 
        .ZN(n75) );
  NAND2_X1 U8 ( .A1(n67), .A2(n66), .ZN(Y[7]) );
  AOI22_X1 U9 ( .A1(B[7]), .A2(n71), .B1(C[7]), .B2(n70), .ZN(n67) );
  AOI222_X1 U10 ( .A1(D[7]), .A2(n74), .B1(E[7]), .B2(n73), .C1(A[7]), .C2(n72), .ZN(n66) );
  NAND2_X1 U11 ( .A1(n69), .A2(n68), .ZN(Y[8]) );
  AOI22_X1 U12 ( .A1(B[8]), .A2(n71), .B1(C[8]), .B2(n70), .ZN(n69) );
  AOI222_X1 U13 ( .A1(D[8]), .A2(n74), .B1(E[8]), .B2(n73), .C1(A[8]), .C2(n72), .ZN(n68) );
  NAND2_X1 U14 ( .A1(n43), .A2(n42), .ZN(Y[10]) );
  AOI22_X1 U15 ( .A1(B[10]), .A2(n71), .B1(C[10]), .B2(n70), .ZN(n43) );
  AOI222_X1 U16 ( .A1(D[10]), .A2(n74), .B1(E[10]), .B2(n73), .C1(A[10]), .C2(
        n72), .ZN(n42) );
  NAND2_X1 U17 ( .A1(n49), .A2(n48), .ZN(Y[13]) );
  AOI22_X1 U18 ( .A1(B[13]), .A2(n71), .B1(C[13]), .B2(n70), .ZN(n49) );
  AOI222_X1 U19 ( .A1(D[13]), .A2(n74), .B1(E[13]), .B2(n73), .C1(A[13]), .C2(
        n72), .ZN(n48) );
  NAND2_X1 U20 ( .A1(n51), .A2(n50), .ZN(Y[14]) );
  AOI22_X1 U21 ( .A1(B[14]), .A2(n71), .B1(C[14]), .B2(n70), .ZN(n51) );
  AOI222_X1 U22 ( .A1(D[14]), .A2(n74), .B1(E[14]), .B2(n73), .C1(A[14]), .C2(
        n72), .ZN(n50) );
  NAND2_X1 U23 ( .A1(n53), .A2(n52), .ZN(Y[15]) );
  AOI22_X1 U24 ( .A1(B[15]), .A2(n71), .B1(C[15]), .B2(n70), .ZN(n53) );
  AOI222_X1 U25 ( .A1(D[15]), .A2(n74), .B1(E[15]), .B2(n73), .C1(A[15]), .C2(
        n72), .ZN(n52) );
  NAND2_X1 U26 ( .A1(n47), .A2(n46), .ZN(Y[12]) );
  AOI22_X1 U27 ( .A1(B[12]), .A2(n71), .B1(C[12]), .B2(n70), .ZN(n47) );
  AOI222_X1 U28 ( .A1(D[12]), .A2(n74), .B1(E[12]), .B2(n73), .C1(A[12]), .C2(
        n72), .ZN(n46) );
  AOI22_X1 U29 ( .A1(B[11]), .A2(n71), .B1(C[11]), .B2(n70), .ZN(n45) );
  AOI222_X1 U30 ( .A1(D[11]), .A2(n74), .B1(E[11]), .B2(n73), .C1(A[11]), .C2(
        n72), .ZN(n44) );
  NAND2_X1 U31 ( .A1(n65), .A2(n64), .ZN(Y[6]) );
  AOI222_X1 U32 ( .A1(D[6]), .A2(n74), .B1(E[6]), .B2(n73), .C1(A[6]), .C2(n72), .ZN(n64) );
  AOI22_X1 U33 ( .A1(B[6]), .A2(n71), .B1(C[6]), .B2(n70), .ZN(n65) );
  NAND2_X1 U34 ( .A1(n41), .A2(n40), .ZN(Y[0]) );
  AOI22_X1 U35 ( .A1(B[0]), .A2(n71), .B1(C[0]), .B2(n70), .ZN(n41) );
  AOI222_X1 U36 ( .A1(D[0]), .A2(n74), .B1(E[0]), .B2(n73), .C1(A[0]), .C2(n72), .ZN(n40) );
  NAND2_X1 U37 ( .A1(n55), .A2(n54), .ZN(Y[1]) );
  AOI22_X1 U38 ( .A1(B[1]), .A2(n71), .B1(C[1]), .B2(n70), .ZN(n55) );
  AOI222_X1 U39 ( .A1(D[1]), .A2(n74), .B1(E[1]), .B2(n73), .C1(A[1]), .C2(n72), .ZN(n54) );
  NAND2_X1 U40 ( .A1(n57), .A2(n56), .ZN(Y[2]) );
  AOI22_X1 U41 ( .A1(B[2]), .A2(n71), .B1(C[2]), .B2(n70), .ZN(n57) );
  AOI222_X1 U42 ( .A1(D[2]), .A2(n74), .B1(E[2]), .B2(n73), .C1(A[2]), .C2(n72), .ZN(n56) );
  NAND2_X1 U43 ( .A1(n61), .A2(n60), .ZN(Y[4]) );
  AOI22_X1 U44 ( .A1(B[4]), .A2(n71), .B1(C[4]), .B2(n70), .ZN(n61) );
  AOI222_X1 U45 ( .A1(D[4]), .A2(n74), .B1(E[4]), .B2(n73), .C1(A[4]), .C2(n72), .ZN(n60) );
  NAND2_X1 U46 ( .A1(n63), .A2(n62), .ZN(Y[5]) );
  AOI22_X1 U47 ( .A1(B[5]), .A2(n71), .B1(C[5]), .B2(n70), .ZN(n63) );
  AOI222_X1 U48 ( .A1(D[5]), .A2(n74), .B1(E[5]), .B2(n73), .C1(A[5]), .C2(n72), .ZN(n62) );
  NAND2_X1 U49 ( .A1(n59), .A2(n58), .ZN(Y[3]) );
  AOI22_X1 U50 ( .A1(B[3]), .A2(n71), .B1(C[3]), .B2(n70), .ZN(n59) );
  AOI222_X1 U51 ( .A1(D[3]), .A2(n74), .B1(E[3]), .B2(n73), .C1(A[3]), .C2(n72), .ZN(n58) );
  NOR3_X4 U52 ( .A1(sel[1]), .A2(sel[2]), .A3(n77), .ZN(n71) );
  NOR3_X4 U53 ( .A1(sel[0]), .A2(sel[2]), .A3(n78), .ZN(n70) );
  NOR3_X4 U54 ( .A1(n78), .A2(sel[2]), .A3(n77), .ZN(n74) );
  NOR3_X4 U55 ( .A1(sel[1]), .A2(sel[2]), .A3(sel[0]), .ZN(n72) );
endmodule


module MUX_booth_N16_2 ( A, B, C, D, E, sel, Y );
  input [15:0] A;
  input [15:0] B;
  input [15:0] C;
  input [15:0] D;
  input [15:0] E;
  input [2:0] sel;
  output [15:0] Y;
  wire   n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78;

  NOR4_X4 U1 ( .A1(n72), .A2(n74), .A3(n71), .A4(n70), .ZN(n73) );
  INV_X1 U2 ( .A(sel[1]), .ZN(n78) );
  INV_X1 U3 ( .A(sel[0]), .ZN(n77) );
  NAND2_X1 U4 ( .A1(n63), .A2(n62), .ZN(Y[5]) );
  AOI22_X1 U5 ( .A1(B[5]), .A2(n71), .B1(C[5]), .B2(n70), .ZN(n63) );
  NAND2_X1 U6 ( .A1(n65), .A2(n64), .ZN(Y[6]) );
  AOI22_X1 U7 ( .A1(B[6]), .A2(n71), .B1(C[6]), .B2(n70), .ZN(n65) );
  NAND2_X1 U8 ( .A1(n49), .A2(n48), .ZN(Y[13]) );
  AOI22_X1 U9 ( .A1(B[13]), .A2(n71), .B1(C[13]), .B2(n70), .ZN(n49) );
  NAND2_X1 U10 ( .A1(n51), .A2(n50), .ZN(Y[14]) );
  AOI22_X1 U11 ( .A1(B[14]), .A2(n71), .B1(C[14]), .B2(n70), .ZN(n51) );
  NAND2_X1 U12 ( .A1(n53), .A2(n52), .ZN(Y[15]) );
  AOI22_X1 U13 ( .A1(B[15]), .A2(n71), .B1(C[15]), .B2(n70), .ZN(n53) );
  NAND2_X1 U14 ( .A1(n43), .A2(n42), .ZN(Y[10]) );
  AOI22_X1 U15 ( .A1(B[10]), .A2(n71), .B1(C[10]), .B2(n70), .ZN(n43) );
  NAND2_X1 U16 ( .A1(n47), .A2(n46), .ZN(Y[12]) );
  AOI22_X1 U17 ( .A1(B[12]), .A2(n71), .B1(C[12]), .B2(n70), .ZN(n47) );
  NAND2_X1 U18 ( .A1(n76), .A2(n75), .ZN(Y[9]) );
  AOI22_X1 U19 ( .A1(B[9]), .A2(n71), .B1(C[9]), .B2(n70), .ZN(n76) );
  NAND2_X1 U20 ( .A1(n61), .A2(n60), .ZN(Y[4]) );
  AOI22_X1 U21 ( .A1(B[4]), .A2(n71), .B1(C[4]), .B2(n70), .ZN(n61) );
  NAND2_X1 U22 ( .A1(n45), .A2(n44), .ZN(Y[11]) );
  AOI22_X1 U23 ( .A1(B[11]), .A2(n71), .B1(C[11]), .B2(n70), .ZN(n45) );
  NAND2_X1 U24 ( .A1(n69), .A2(n68), .ZN(Y[8]) );
  AOI22_X1 U25 ( .A1(B[8]), .A2(n71), .B1(C[8]), .B2(n70), .ZN(n69) );
  NAND2_X1 U26 ( .A1(n67), .A2(n66), .ZN(Y[7]) );
  AOI22_X1 U27 ( .A1(B[7]), .A2(n71), .B1(C[7]), .B2(n70), .ZN(n67) );
  NAND2_X1 U28 ( .A1(n41), .A2(n40), .ZN(Y[0]) );
  AOI22_X1 U29 ( .A1(B[0]), .A2(n71), .B1(C[0]), .B2(n70), .ZN(n41) );
  NAND2_X1 U30 ( .A1(n55), .A2(n54), .ZN(Y[1]) );
  AOI22_X1 U31 ( .A1(B[1]), .A2(n71), .B1(C[1]), .B2(n70), .ZN(n55) );
  NAND2_X1 U32 ( .A1(n57), .A2(n56), .ZN(Y[2]) );
  AOI22_X1 U33 ( .A1(B[2]), .A2(n71), .B1(C[2]), .B2(n70), .ZN(n57) );
  NAND2_X1 U34 ( .A1(n59), .A2(n58), .ZN(Y[3]) );
  AOI22_X1 U35 ( .A1(B[3]), .A2(n71), .B1(C[3]), .B2(n70), .ZN(n59) );
  AOI222_X1 U36 ( .A1(D[4]), .A2(n74), .B1(E[4]), .B2(n73), .C1(A[4]), .C2(n72), .ZN(n60) );
  AOI222_X1 U37 ( .A1(D[3]), .A2(n74), .B1(E[3]), .B2(n73), .C1(A[3]), .C2(n72), .ZN(n58) );
  AOI222_X1 U38 ( .A1(D[2]), .A2(n74), .B1(E[2]), .B2(n73), .C1(A[2]), .C2(n72), .ZN(n56) );
  AOI222_X1 U39 ( .A1(D[1]), .A2(n74), .B1(E[1]), .B2(n73), .C1(A[1]), .C2(n72), .ZN(n54) );
  AOI222_X1 U40 ( .A1(D[0]), .A2(n74), .B1(E[0]), .B2(n73), .C1(A[0]), .C2(n72), .ZN(n40) );
  AOI222_X1 U41 ( .A1(D[15]), .A2(n74), .B1(E[15]), .B2(n73), .C1(A[15]), .C2(
        n72), .ZN(n52) );
  AOI222_X1 U42 ( .A1(D[14]), .A2(n74), .B1(E[14]), .B2(n73), .C1(A[14]), .C2(
        n72), .ZN(n50) );
  AOI222_X1 U43 ( .A1(D[13]), .A2(n74), .B1(E[13]), .B2(n73), .C1(A[13]), .C2(
        n72), .ZN(n48) );
  AOI222_X1 U44 ( .A1(D[12]), .A2(n74), .B1(E[12]), .B2(n73), .C1(A[12]), .C2(
        n72), .ZN(n46) );
  AOI222_X1 U45 ( .A1(D[10]), .A2(n74), .B1(E[10]), .B2(n73), .C1(A[10]), .C2(
        n72), .ZN(n42) );
  AOI222_X1 U46 ( .A1(D[9]), .A2(n74), .B1(E[9]), .B2(n73), .C1(A[9]), .C2(n72), .ZN(n75) );
  AOI222_X1 U47 ( .A1(D[11]), .A2(n74), .B1(E[11]), .B2(n73), .C1(A[11]), .C2(
        n72), .ZN(n44) );
  AOI222_X1 U48 ( .A1(D[8]), .A2(n74), .B1(E[8]), .B2(n73), .C1(A[8]), .C2(n72), .ZN(n68) );
  AOI222_X1 U49 ( .A1(D[6]), .A2(n74), .B1(E[6]), .B2(n73), .C1(A[6]), .C2(n72), .ZN(n64) );
  AOI222_X1 U50 ( .A1(D[7]), .A2(n74), .B1(E[7]), .B2(n73), .C1(A[7]), .C2(n72), .ZN(n66) );
  AOI222_X1 U51 ( .A1(D[5]), .A2(n74), .B1(E[5]), .B2(n73), .C1(A[5]), .C2(n72), .ZN(n62) );
  NOR3_X4 U52 ( .A1(sel[1]), .A2(sel[2]), .A3(n77), .ZN(n71) );
  NOR3_X4 U53 ( .A1(sel[0]), .A2(sel[2]), .A3(n78), .ZN(n70) );
  NOR3_X4 U54 ( .A1(n78), .A2(sel[2]), .A3(n77), .ZN(n74) );
  NOR3_X4 U55 ( .A1(sel[1]), .A2(sel[2]), .A3(sel[0]), .ZN(n72) );
endmodule


module MUX_booth_N16_3 ( A, B, C, D, E, sel, Y );
  input [15:0] A;
  input [15:0] B;
  input [15:0] C;
  input [15:0] D;
  input [15:0] E;
  input [2:0] sel;
  output [15:0] Y;
  wire   n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100;

  BUF_X1 U1 ( .A(n55), .Z(n54) );
  OR2_X1 U2 ( .A1(n58), .A2(n59), .ZN(Y[4]) );
  BUF_X2 U3 ( .A(n51), .Z(n52) );
  BUF_X1 U4 ( .A(n40), .Z(n48) );
  NAND2_X1 U5 ( .A1(n85), .A2(n84), .ZN(Y[5]) );
  BUF_X1 U6 ( .A(n96), .Z(n49) );
  BUF_X1 U7 ( .A(n94), .Z(n40) );
  BUF_X1 U8 ( .A(n93), .Z(n51) );
  NAND2_X1 U9 ( .A1(n82), .A2(n81), .ZN(Y[3]) );
  BUF_X2 U10 ( .A(n57), .Z(n41) );
  NAND2_X1 U11 ( .A1(D[3]), .A2(n50), .ZN(n42) );
  NAND2_X1 U12 ( .A1(n95), .A2(E[3]), .ZN(n43) );
  NAND2_X1 U13 ( .A1(A[3]), .A2(n48), .ZN(n44) );
  AND3_X1 U14 ( .A1(n42), .A2(n43), .A3(n44), .ZN(n81) );
  BUF_X1 U15 ( .A(sel[0]), .Z(n45) );
  NOR3_X1 U16 ( .A1(n99), .A2(sel[2]), .A3(sel[1]), .ZN(n93) );
  NOR3_X1 U17 ( .A1(n100), .A2(sel[2]), .A3(n99), .ZN(n46) );
  CLKBUF_X1 U18 ( .A(n57), .Z(n47) );
  NOR3_X1 U19 ( .A1(n100), .A2(sel[2]), .A3(n99), .ZN(n96) );
  NAND2_X1 U20 ( .A1(n70), .A2(n69), .ZN(Y[12]) );
  NAND2_X1 U21 ( .A1(n74), .A2(n73), .ZN(Y[14]) );
  NAND2_X1 U22 ( .A1(n87), .A2(n86), .ZN(Y[6]) );
  NAND2_X1 U23 ( .A1(n98), .A2(n97), .ZN(Y[9]) );
  NAND2_X1 U24 ( .A1(n72), .A2(n71), .ZN(Y[13]) );
  NAND2_X1 U25 ( .A1(n76), .A2(n75), .ZN(Y[15]) );
  NAND2_X1 U26 ( .A1(n68), .A2(n67), .ZN(Y[11]) );
  NAND2_X1 U27 ( .A1(n66), .A2(n65), .ZN(Y[10]) );
  NAND2_X1 U28 ( .A1(n80), .A2(n79), .ZN(Y[2]) );
  NAND2_X1 U29 ( .A1(n64), .A2(n63), .ZN(Y[0]) );
  NAND2_X1 U30 ( .A1(n78), .A2(n77), .ZN(Y[1]) );
  BUF_X1 U31 ( .A(n92), .Z(n55) );
  CLKBUF_X3 U32 ( .A(n46), .Z(n50) );
  NOR3_X1 U33 ( .A1(n100), .A2(sel[2]), .A3(n45), .ZN(n92) );
  NOR4_X1 U34 ( .A1(n94), .A2(n96), .A3(n93), .A4(n92), .ZN(n56) );
  CLKBUF_X1 U35 ( .A(n55), .Z(n53) );
  NOR3_X1 U36 ( .A1(n45), .A2(sel[2]), .A3(sel[1]), .ZN(n94) );
  NAND2_X1 U37 ( .A1(n89), .A2(n88), .ZN(Y[7]) );
  AOI222_X1 U38 ( .A1(D[0]), .A2(n50), .B1(E[0]), .B2(n41), .C1(A[0]), .C2(n48), .ZN(n63) );
  AOI222_X1 U39 ( .A1(D[1]), .A2(n50), .B1(E[1]), .B2(n41), .C1(A[1]), .C2(n48), .ZN(n77) );
  AOI222_X1 U40 ( .A1(D[2]), .A2(n50), .B1(E[2]), .B2(n41), .C1(A[2]), .C2(n48), .ZN(n79) );
  AOI222_X1 U41 ( .A1(D[9]), .A2(n50), .B1(E[9]), .B2(n57), .C1(A[9]), .C2(n48), .ZN(n97) );
  AOI222_X1 U42 ( .A1(D[10]), .A2(n50), .B1(E[10]), .B2(n41), .C1(A[10]), .C2(
        n48), .ZN(n65) );
  AOI222_X1 U43 ( .A1(D[13]), .A2(n50), .B1(E[13]), .B2(n41), .C1(A[13]), .C2(
        n48), .ZN(n71) );
  AOI222_X1 U44 ( .A1(D[15]), .A2(n50), .B1(E[15]), .B2(n41), .C1(A[15]), .C2(
        n48), .ZN(n75) );
  AOI222_X1 U45 ( .A1(D[6]), .A2(n50), .B1(E[6]), .B2(n56), .C1(A[6]), .C2(n48), .ZN(n86) );
  AOI222_X1 U46 ( .A1(D[7]), .A2(n50), .B1(n95), .B2(E[7]), .C1(A[7]), .C2(n48), .ZN(n88) );
  AOI22_X1 U47 ( .A1(B[1]), .A2(n52), .B1(C[1]), .B2(n53), .ZN(n78) );
  AOI22_X1 U48 ( .A1(B[0]), .A2(n52), .B1(C[0]), .B2(n53), .ZN(n64) );
  AOI22_X1 U49 ( .A1(B[15]), .A2(n52), .B1(C[15]), .B2(n53), .ZN(n76) );
  AOI22_X1 U50 ( .A1(B[14]), .A2(n52), .B1(C[14]), .B2(n53), .ZN(n74) );
  AOI22_X1 U51 ( .A1(B[13]), .A2(n52), .B1(C[13]), .B2(n53), .ZN(n72) );
  AOI22_X1 U52 ( .A1(B[12]), .A2(n52), .B1(C[12]), .B2(n53), .ZN(n70) );
  AOI22_X1 U53 ( .A1(B[10]), .A2(n52), .B1(C[10]), .B2(n53), .ZN(n66) );
  AOI22_X1 U54 ( .A1(B[11]), .A2(n52), .B1(C[11]), .B2(n53), .ZN(n68) );
  AOI22_X1 U55 ( .A1(B[9]), .A2(n52), .B1(C[9]), .B2(n53), .ZN(n98) );
  AOI22_X1 U56 ( .A1(B[6]), .A2(n52), .B1(C[6]), .B2(n54), .ZN(n87) );
  AOI22_X1 U57 ( .A1(B[2]), .A2(n52), .B1(C[2]), .B2(n54), .ZN(n80) );
  AOI22_X1 U58 ( .A1(B[8]), .A2(n52), .B1(C[8]), .B2(n54), .ZN(n91) );
  AOI22_X1 U59 ( .A1(B[7]), .A2(n52), .B1(C[7]), .B2(n54), .ZN(n89) );
  AOI22_X1 U60 ( .A1(B[5]), .A2(n52), .B1(C[5]), .B2(n54), .ZN(n85) );
  AOI22_X1 U61 ( .A1(B[3]), .A2(n52), .B1(C[3]), .B2(n54), .ZN(n82) );
  AOI22_X1 U62 ( .A1(B[4]), .A2(n51), .B1(n55), .B2(C[4]), .ZN(n83) );
  AOI222_X1 U63 ( .A1(D[11]), .A2(n50), .B1(E[11]), .B2(n47), .C1(A[11]), .C2(
        n48), .ZN(n67) );
  AOI222_X1 U64 ( .A1(D[14]), .A2(n50), .B1(E[14]), .B2(n47), .C1(A[14]), .C2(
        n48), .ZN(n73) );
  AOI222_X1 U65 ( .A1(D[12]), .A2(n50), .B1(E[12]), .B2(n47), .C1(A[12]), .C2(
        n48), .ZN(n69) );
  NOR4_X1 U66 ( .A1(n40), .A2(n49), .A3(n51), .A4(n55), .ZN(n57) );
  NOR4_X1 U67 ( .A1(n94), .A2(n46), .A3(n93), .A4(n92), .ZN(n95) );
  INV_X1 U68 ( .A(sel[0]), .ZN(n99) );
  AND2_X1 U69 ( .A1(n95), .A2(E[4]), .ZN(n58) );
  NAND2_X1 U70 ( .A1(n83), .A2(n60), .ZN(n59) );
  AOI222_X1 U71 ( .A1(D[5]), .A2(n50), .B1(E[5]), .B2(n56), .C1(A[5]), .C2(n48), .ZN(n84) );
  AND2_X1 U72 ( .A1(n61), .A2(n62), .ZN(n60) );
  NAND2_X1 U73 ( .A1(n91), .A2(n90), .ZN(Y[8]) );
  AOI222_X1 U74 ( .A1(D[8]), .A2(n50), .B1(E[8]), .B2(n56), .C1(A[8]), .C2(n48), .ZN(n90) );
  NAND2_X1 U75 ( .A1(D[4]), .A2(n49), .ZN(n61) );
  NAND2_X1 U76 ( .A1(A[4]), .A2(n48), .ZN(n62) );
  INV_X1 U77 ( .A(sel[1]), .ZN(n100) );
endmodule


module G_1 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(Gx) );
endmodule


module G_2 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module G_3 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module G_4 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module G_5 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_1 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  INV_X1 U2 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U3 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_2 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_3 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_4 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U2 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_5 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_6 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_7 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AND2_X1 U2 ( .A1(P_IK), .A2(P_K_1), .ZN(Px) );
  AOI21_X1 U3 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_8 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_9 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AND2_X1 U2 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U3 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_10 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_11 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module carry_generator_N16_NPB4_1 ( A, B, Cin, Co );
  input [15:0] A;
  input [15:0] B;
  output [3:0] Co;
  input Cin;
  wire   \PG_Network[3][1][15] , \PG_Network[3][0][15] ,
         \PG_Network[2][1][15] , \PG_Network[2][1][11] , \PG_Network[2][1][7] ,
         \PG_Network[2][0][15] , \PG_Network[2][0][11] , \PG_Network[2][0][7] ,
         \PG_Network[1][1][15] , \PG_Network[1][1][13] ,
         \PG_Network[1][1][11] , \PG_Network[1][1][9] , \PG_Network[1][1][7] ,
         \PG_Network[1][1][5] , \PG_Network[1][1][3] , \PG_Network[1][1][1] ,
         \PG_Network[1][0][15] , \PG_Network[1][0][13] ,
         \PG_Network[1][0][11] , \PG_Network[1][0][9] , \PG_Network[1][0][7] ,
         \PG_Network[1][0][5] , \PG_Network[1][0][3] , \PG_Network[0][1][15] ,
         \PG_Network[0][1][14] , \PG_Network[0][1][13] ,
         \PG_Network[0][1][12] , \PG_Network[0][1][11] ,
         \PG_Network[0][1][10] , \PG_Network[0][1][9] , \PG_Network[0][1][8] ,
         \PG_Network[0][1][7] , \PG_Network[0][1][6] , \PG_Network[0][1][5] ,
         \PG_Network[0][1][4] , \PG_Network[0][1][3] , \PG_Network[0][1][2] ,
         \PG_Network[0][1][1] , \PG_Network[0][0][15] , \PG_Network[0][0][14] ,
         \PG_Network[0][0][13] , \PG_Network[0][0][12] ,
         \PG_Network[0][0][11] , \PG_Network[0][0][10] , \PG_Network[0][0][9] ,
         \PG_Network[0][0][8] , \PG_Network[0][0][7] , \PG_Network[0][0][6] ,
         \PG_Network[0][0][5] , \PG_Network[0][0][4] , \PG_Network[0][0][3] ,
         \PG_Network[0][0][2] , \PG_Network[0][0][1] , n5, n6, n7, n8, n9, n10,
         n11, n12;

  G_5 GJ_0_0_0 ( .G_IK(\PG_Network[0][1][1] ), .P_IK(\PG_Network[0][0][1] ), 
        .G_K_1(n12), .Gx(\PG_Network[1][1][1] ) );
  PG_11 PGJ_0_1_0 ( .G_IK(\PG_Network[0][1][3] ), .P_IK(\PG_Network[0][0][3] ), 
        .G_K_1(\PG_Network[0][1][2] ), .P_K_1(\PG_Network[0][0][2] ), .Gx(
        \PG_Network[1][1][3] ), .Px(\PG_Network[1][0][3] ) );
  PG_10 PGJ_0_2_0 ( .G_IK(\PG_Network[0][1][5] ), .P_IK(\PG_Network[0][0][5] ), 
        .G_K_1(\PG_Network[0][1][4] ), .P_K_1(\PG_Network[0][0][4] ), .Gx(
        \PG_Network[1][1][5] ), .Px(\PG_Network[1][0][5] ) );
  PG_9 PGJ_0_3_0 ( .G_IK(\PG_Network[0][1][7] ), .P_IK(\PG_Network[0][0][7] ), 
        .G_K_1(\PG_Network[0][1][6] ), .P_K_1(\PG_Network[0][0][6] ), .Gx(
        \PG_Network[1][1][7] ), .Px(\PG_Network[1][0][7] ) );
  PG_8 PGJ_0_4_0 ( .G_IK(\PG_Network[0][1][9] ), .P_IK(\PG_Network[0][0][9] ), 
        .G_K_1(\PG_Network[0][1][8] ), .P_K_1(\PG_Network[0][0][8] ), .Gx(
        \PG_Network[1][1][9] ), .Px(\PG_Network[1][0][9] ) );
  PG_7 PGJ_0_5_0 ( .G_IK(\PG_Network[0][1][11] ), .P_IK(\PG_Network[0][0][11] ), .G_K_1(\PG_Network[0][1][10] ), .P_K_1(\PG_Network[0][0][10] ), .Gx(
        \PG_Network[1][1][11] ), .Px(\PG_Network[1][0][11] ) );
  PG_6 PGJ_0_6_0 ( .G_IK(\PG_Network[0][1][13] ), .P_IK(\PG_Network[0][0][13] ), .G_K_1(\PG_Network[0][1][12] ), .P_K_1(\PG_Network[0][0][12] ), .Gx(
        \PG_Network[1][1][13] ), .Px(\PG_Network[1][0][13] ) );
  PG_5 PGJ_0_7_0 ( .G_IK(\PG_Network[0][1][15] ), .P_IK(\PG_Network[0][0][15] ), .G_K_1(\PG_Network[0][1][14] ), .P_K_1(\PG_Network[0][0][14] ), .Gx(
        \PG_Network[1][1][15] ), .Px(\PG_Network[1][0][15] ) );
  G_4 GJ_1_0_0 ( .G_IK(\PG_Network[1][1][3] ), .P_IK(\PG_Network[1][0][3] ), 
        .G_K_1(\PG_Network[1][1][1] ), .Gx(Co[0]) );
  PG_4 PGJ_1_1_0 ( .G_IK(\PG_Network[1][1][7] ), .P_IK(\PG_Network[1][0][7] ), 
        .G_K_1(\PG_Network[1][1][5] ), .P_K_1(\PG_Network[1][0][5] ), .Gx(
        \PG_Network[2][1][7] ), .Px(\PG_Network[2][0][7] ) );
  PG_3 PGJ_1_2_0 ( .G_IK(\PG_Network[1][1][11] ), .P_IK(\PG_Network[1][0][11] ), .G_K_1(\PG_Network[1][1][9] ), .P_K_1(\PG_Network[1][0][9] ), .Gx(
        \PG_Network[2][1][11] ), .Px(\PG_Network[2][0][11] ) );
  PG_2 PGJ_1_3_0 ( .G_IK(\PG_Network[1][1][15] ), .P_IK(\PG_Network[1][0][15] ), .G_K_1(\PG_Network[1][1][13] ), .P_K_1(\PG_Network[1][0][13] ), .Gx(
        \PG_Network[2][1][15] ), .Px(\PG_Network[2][0][15] ) );
  G_3 GJ_2_0_0 ( .G_IK(\PG_Network[2][1][7] ), .P_IK(\PG_Network[2][0][7] ), 
        .G_K_1(Co[0]), .Gx(Co[1]) );
  PG_1 PGJ_2_1_0 ( .G_IK(\PG_Network[2][1][15] ), .P_IK(\PG_Network[2][0][15] ), .G_K_1(\PG_Network[2][1][11] ), .P_K_1(\PG_Network[2][0][11] ), .Gx(
        \PG_Network[3][1][15] ), .Px(\PG_Network[3][0][15] ) );
  G_2 GJ_3_0_0 ( .G_IK(\PG_Network[3][1][15] ), .P_IK(\PG_Network[3][0][15] ), 
        .G_K_1(Co[1]), .Gx(Co[3]) );
  G_1 GJ_3_0_1 ( .G_IK(\PG_Network[2][1][11] ), .P_IK(\PG_Network[2][0][11] ), 
        .G_K_1(Co[1]), .Gx(Co[2]) );
  XOR2_X1 U20 ( .A(B[9]), .B(A[9]), .Z(\PG_Network[0][0][9] ) );
  XOR2_X1 U21 ( .A(B[8]), .B(A[8]), .Z(\PG_Network[0][0][8] ) );
  XOR2_X1 U22 ( .A(B[7]), .B(A[7]), .Z(\PG_Network[0][0][7] ) );
  XOR2_X1 U23 ( .A(B[6]), .B(A[6]), .Z(\PG_Network[0][0][6] ) );
  XOR2_X1 U24 ( .A(B[5]), .B(A[5]), .Z(\PG_Network[0][0][5] ) );
  XOR2_X1 U25 ( .A(B[4]), .B(A[4]), .Z(\PG_Network[0][0][4] ) );
  XOR2_X1 U26 ( .A(B[3]), .B(A[3]), .Z(\PG_Network[0][0][3] ) );
  XOR2_X1 U27 ( .A(B[2]), .B(A[2]), .Z(\PG_Network[0][0][2] ) );
  XOR2_X1 U28 ( .A(B[1]), .B(A[1]), .Z(\PG_Network[0][0][1] ) );
  XOR2_X1 U29 ( .A(B[15]), .B(A[15]), .Z(\PG_Network[0][0][15] ) );
  XOR2_X1 U30 ( .A(B[14]), .B(A[14]), .Z(\PG_Network[0][0][14] ) );
  XOR2_X1 U31 ( .A(B[13]), .B(A[13]), .Z(\PG_Network[0][0][13] ) );
  XOR2_X1 U32 ( .A(B[12]), .B(A[12]), .Z(\PG_Network[0][0][12] ) );
  XOR2_X1 U34 ( .A(B[10]), .B(A[10]), .Z(\PG_Network[0][0][10] ) );
  NAND2_X1 U1 ( .A1(B[11]), .A2(n6), .ZN(n7) );
  NAND2_X1 U2 ( .A1(n5), .A2(A[11]), .ZN(n8) );
  NAND2_X1 U3 ( .A1(n7), .A2(n8), .ZN(\PG_Network[0][0][11] ) );
  INV_X1 U4 ( .A(B[11]), .ZN(n5) );
  INV_X1 U5 ( .A(A[11]), .ZN(n6) );
  AND2_X1 U6 ( .A1(A[6]), .A2(B[6]), .ZN(\PG_Network[0][1][6] ) );
  AND2_X1 U7 ( .A1(A[7]), .A2(B[7]), .ZN(\PG_Network[0][1][7] ) );
  AND2_X1 U8 ( .A1(A[10]), .A2(B[10]), .ZN(\PG_Network[0][1][10] ) );
  AND2_X1 U9 ( .A1(A[9]), .A2(B[9]), .ZN(\PG_Network[0][1][9] ) );
  AND2_X1 U10 ( .A1(A[8]), .A2(B[8]), .ZN(\PG_Network[0][1][8] ) );
  AND2_X1 U11 ( .A1(A[13]), .A2(B[13]), .ZN(\PG_Network[0][1][13] ) );
  AND2_X1 U12 ( .A1(A[15]), .A2(B[15]), .ZN(\PG_Network[0][1][15] ) );
  AND2_X1 U13 ( .A1(A[14]), .A2(B[14]), .ZN(\PG_Network[0][1][14] ) );
  AND2_X1 U14 ( .A1(A[3]), .A2(B[3]), .ZN(\PG_Network[0][1][3] ) );
  AND2_X1 U15 ( .A1(A[2]), .A2(B[2]), .ZN(\PG_Network[0][1][2] ) );
  INV_X1 U16 ( .A(n10), .ZN(n12) );
  AND2_X1 U17 ( .A1(A[1]), .A2(B[1]), .ZN(\PG_Network[0][1][1] ) );
  AND2_X1 U18 ( .A1(A[4]), .A2(B[4]), .ZN(\PG_Network[0][1][4] ) );
  AND2_X1 U19 ( .A1(A[5]), .A2(B[5]), .ZN(\PG_Network[0][1][5] ) );
  AOI21_X1 U33 ( .B1(A[0]), .B2(B[0]), .A(n11), .ZN(n10) );
  INV_X1 U35 ( .A(n9), .ZN(n11) );
  OAI21_X1 U36 ( .B1(A[0]), .B2(B[0]), .A(Cin), .ZN(n9) );
  AND2_X1 U37 ( .A1(B[11]), .A2(A[11]), .ZN(\PG_Network[0][1][11] ) );
  AND2_X1 U38 ( .A1(A[12]), .A2(B[12]), .ZN(\PG_Network[0][1][12] ) );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_1 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_4 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_3 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_2 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_1 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  INV_X1 U1 ( .A(n6), .ZN(Co) );
  CLKBUF_X1 U2 ( .A(Ci), .Z(n4) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(n4), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(n4), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n6) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  CLKBUF_X1 U2 ( .A(n6), .Z(n5) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
  INV_X1 U6 ( .A(n7), .ZN(Co) );
endmodule


module RCA_N4_2 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_8 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_7 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_6 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_5 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_1 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14, n15;

  INV_X1 U1 ( .A(sel), .ZN(n10) );
  INV_X1 U2 ( .A(n13), .ZN(Y[2]) );
  AOI22_X1 U3 ( .A1(sel), .A2(A[1]), .B1(n15), .B2(B[1]), .ZN(n12) );
  INV_X1 U4 ( .A(sel), .ZN(n15) );
  INV_X1 U5 ( .A(n14), .ZN(Y[3]) );
  INV_X1 U6 ( .A(n11), .ZN(Y[0]) );
  AOI22_X1 U7 ( .A1(sel), .A2(A[0]), .B1(B[0]), .B2(n10), .ZN(n11) );
  INV_X1 U8 ( .A(n12), .ZN(Y[1]) );
  AOI22_X1 U9 ( .A1(sel), .A2(A[2]), .B1(n10), .B2(B[2]), .ZN(n13) );
  AOI22_X1 U10 ( .A1(A[3]), .A2(sel), .B1(B[3]), .B2(n15), .ZN(n14) );
endmodule


module carry_select_block_NPB4_1 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_2 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_1 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_1 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_3 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_12 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_11 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_10 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_9 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_4 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_16 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_15 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_14 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_13 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_2 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(n13), .ZN(Y[3]) );
  INV_X1 U2 ( .A(n12), .ZN(Y[2]) );
  INV_X1 U3 ( .A(n11), .ZN(Y[1]) );
  INV_X1 U4 ( .A(n10), .ZN(Y[0]) );
  AOI22_X1 U5 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n14), .ZN(n12) );
  AOI22_X1 U6 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n14), .ZN(n11) );
  AOI22_X1 U7 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n14), .ZN(n10) );
  INV_X1 U8 ( .A(sel), .ZN(n14) );
  AOI22_X1 U9 ( .A1(sel), .A2(A[3]), .B1(B[3]), .B2(n14), .ZN(n13) );
endmodule


module carry_select_block_NPB4_2 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_4 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_3 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_2 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_5 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_20 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_19 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_18 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_17 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_6 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_24 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_23 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_22 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_21 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_3 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(sel), .ZN(n14) );
  INV_X1 U2 ( .A(n12), .ZN(Y[2]) );
  AOI22_X1 U3 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n14), .ZN(n12) );
  INV_X1 U4 ( .A(n13), .ZN(Y[3]) );
  AOI22_X1 U5 ( .A1(sel), .A2(A[3]), .B1(B[3]), .B2(n14), .ZN(n13) );
  INV_X1 U6 ( .A(n11), .ZN(Y[1]) );
  AOI22_X1 U7 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n14), .ZN(n11) );
  INV_X1 U8 ( .A(n10), .ZN(Y[0]) );
  AOI22_X1 U9 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n14), .ZN(n10) );
endmodule


module carry_select_block_NPB4_3 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_6 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_5 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_3 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_7 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_28 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_27 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_26 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_25 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_29 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_30 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_31 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_32 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_8 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_32 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_31 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_30 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_29 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_4 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(n10), .ZN(Y[0]) );
  AOI22_X1 U2 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n14), .ZN(n10) );
  INV_X1 U3 ( .A(n11), .ZN(Y[1]) );
  AOI22_X1 U4 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n14), .ZN(n11) );
  INV_X1 U5 ( .A(n12), .ZN(Y[2]) );
  AOI22_X1 U6 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n14), .ZN(n12) );
  INV_X1 U7 ( .A(n13), .ZN(Y[3]) );
  AOI22_X1 U8 ( .A1(sel), .A2(A[3]), .B1(B[3]), .B2(n14), .ZN(n13) );
  INV_X1 U9 ( .A(sel), .ZN(n14) );
endmodule


module carry_select_block_NPB4_4 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_8 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_7 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_4 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
endmodule


module sum_generator_N16_NPB4_1 ( A, B, Ci, S, Co );
  input [15:0] A;
  input [15:0] B;
  input [4:0] Ci;
  output [15:0] S;
  output Co;

  assign Co = Ci[4];

  carry_select_block_NPB4_4 csbi_0 ( .A(A[3:0]), .B(B[3:0]), .Ci(Ci[0]), .S(
        S[3:0]) );
  carry_select_block_NPB4_3 csbi_1 ( .A(A[7:4]), .B(B[7:4]), .Ci(Ci[1]), .S(
        S[7:4]) );
  carry_select_block_NPB4_2 csbi_2 ( .A(A[11:8]), .B(B[11:8]), .Ci(Ci[2]), .S(
        S[11:8]) );
  carry_select_block_NPB4_1 csbi_3 ( .A(A[15:12]), .B(B[15:12]), .Ci(Ci[3]), 
        .S(S[15:12]) );
endmodule


module P4_ADDER_N16_1 ( A, B, Cin, S, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3;
  wire   [4:1] CoutCgen;

  carry_generator_N16_NPB4_1 CGEN ( .A(A), .B({B[15:14], n1, n3, B[11:0]}), 
        .Cin(Cin), .Co(CoutCgen) );
  sum_generator_N16_NPB4_1 SGEN ( .A(A), .B({B[15:12], n2, B[10:0]}), .Ci({
        CoutCgen, Cin}), .S(S), .Co(Cout) );
  CLKBUF_X1 U1 ( .A(B[13]), .Z(n1) );
  CLKBUF_X1 U2 ( .A(B[11]), .Z(n2) );
  CLKBUF_X1 U3 ( .A(B[12]), .Z(n3) );
endmodule


module booth_mul_N8 ( A, B, S );
  input [7:0] A;
  input [7:0] B;
  output [15:0] S;
  wire   \minus_A[0] , \select_array[3][2] , \select_array[3][1] ,
         \select_array[3][0] , \select_array[2][2] , \select_array[2][1] ,
         \select_array[2][0] , \select_array[1][2] , \select_array[1][1] ,
         \select_array[1][0] , \select_array[0][2] , \select_array[0][1] ,
         \select_array[0][0] , \result_array[2][15] , \result_array[2][14] ,
         \result_array[2][13] , \result_array[2][12] , \result_array[2][11] ,
         \result_array[2][10] , \result_array[2][9] , \result_array[2][8] ,
         \result_array[2][7] , \result_array[2][6] , \result_array[2][5] ,
         \result_array[2][4] , \result_array[2][3] , \result_array[2][2] ,
         \result_array[2][1] , \result_array[2][0] , \result_array[1][15] ,
         \result_array[1][14] , \result_array[1][13] , \result_array[1][12] ,
         \result_array[1][11] , \result_array[1][10] , \result_array[1][9] ,
         \result_array[1][8] , \result_array[1][7] , \result_array[1][6] ,
         \result_array[1][5] , \result_array[1][4] , \result_array[1][3] ,
         \result_array[1][2] , \result_array[1][1] , \result_array[1][0] ,
         \result_array[0][15] , \result_array[0][14] , \result_array[0][13] ,
         \result_array[0][12] , \result_array[0][11] , \result_array[0][10] ,
         \result_array[0][9] , \result_array[0][8] , \result_array[0][7] ,
         \result_array[0][6] , \result_array[0][5] , \result_array[0][4] ,
         \result_array[0][3] , \result_array[0][2] , \result_array[0][1] ,
         \result_array[0][0] , \array_mux_out[3][15] , \array_mux_out[3][14] ,
         \array_mux_out[3][13] , \array_mux_out[3][12] ,
         \array_mux_out[3][11] , \array_mux_out[3][10] , \array_mux_out[3][9] ,
         \array_mux_out[3][8] , \array_mux_out[3][7] , \array_mux_out[3][6] ,
         \array_mux_out[3][5] , \array_mux_out[3][4] , \array_mux_out[3][3] ,
         \array_mux_out[3][2] , \array_mux_out[3][1] , \array_mux_out[3][0] ,
         \array_mux_out[2][15] , \array_mux_out[2][14] ,
         \array_mux_out[2][13] , \array_mux_out[2][12] ,
         \array_mux_out[2][11] , \array_mux_out[2][10] , \array_mux_out[2][9] ,
         \array_mux_out[2][8] , \array_mux_out[2][7] , \array_mux_out[2][6] ,
         \array_mux_out[2][5] , \array_mux_out[2][4] , \array_mux_out[2][3] ,
         \array_mux_out[2][2] , \array_mux_out[2][1] , \array_mux_out[2][0] ,
         \array_mux_out[1][15] , \array_mux_out[1][14] ,
         \array_mux_out[1][13] , \array_mux_out[1][12] ,
         \array_mux_out[1][11] , \array_mux_out[1][10] , \array_mux_out[1][9] ,
         \array_mux_out[1][8] , \array_mux_out[1][7] , \array_mux_out[1][6] ,
         \array_mux_out[1][5] , \array_mux_out[1][4] , \array_mux_out[1][3] ,
         \array_mux_out[1][2] , \array_mux_out[1][1] , \array_mux_out[1][0] ,
         n5, n6, n7, n8, n9, n10, n11, n31, n32, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;
  assign \minus_A[0]  = A[0];

  Booth_Encoder_0 booth_o_0 ( .i({n46, B[0], 1'b0}), .o({\select_array[0][2] , 
        \select_array[0][1] , \select_array[0][0] }) );
  MUX_booth_N16_0 mux_0_0 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({A[7], A[7], A[7], 
        A[7], A[7], A[7], A[7], A[7], A[7:1], \minus_A[0] }), .C({n48, n42, 
        n43, n43, n47, n47, n36, n36, n45, n9, n6, n5, n10, n8, n7, 
        \minus_A[0] }), .D({A[7], A[7], A[7], A[7], A[7], A[7], A[7], A[7:1], 
        \minus_A[0] , 1'b0}), .E({n43, n47, n42, n43, n36, n43, n36, n11, n9, 
        n6, n5, n10, n8, n7, \minus_A[0] , 1'b0}), .sel({\select_array[0][2] , 
        \select_array[0][1] , \select_array[0][0] }), .Y({
        \result_array[0][15] , \result_array[0][14] , \result_array[0][13] , 
        \result_array[0][12] , \result_array[0][11] , \result_array[0][10] , 
        \result_array[0][9] , \result_array[0][8] , \result_array[0][7] , 
        \result_array[0][6] , \result_array[0][5] , \result_array[0][4] , 
        \result_array[0][3] , \result_array[0][2] , \result_array[0][1] , 
        \result_array[0][0] }) );
  Booth_Encoder_3 booth_j_1 ( .i(B[3:1]), .o({\select_array[1][2] , 
        \select_array[1][1] , \select_array[1][0] }) );
  MUX_booth_N16_3 mux_j_1 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({A[7], A[7], A[7], 
        A[7], A[7], A[7], A[7:1], \minus_A[0] , 1'b0, 1'b0}), .C({n48, n47, 
        n42, n47, n42, n47, n45, n9, n6, n5, n10, n8, n7, \minus_A[0] , 1'b0, 
        1'b0}), .D({A[7], A[7], A[7], A[7], A[7], A[7:1], \minus_A[0] , 1'b0, 
        1'b0, 1'b0}), .E({n42, n43, n47, n42, n36, n45, n9, n6, n5, n10, n8, 
        n7, \minus_A[0] , 1'b0, 1'b0, 1'b0}), .sel({\select_array[1][2] , 
        \select_array[1][1] , \select_array[1][0] }), .Y({
        \array_mux_out[1][15] , \array_mux_out[1][14] , \array_mux_out[1][13] , 
        \array_mux_out[1][12] , \array_mux_out[1][11] , \array_mux_out[1][10] , 
        \array_mux_out[1][9] , \array_mux_out[1][8] , \array_mux_out[1][7] , 
        \array_mux_out[1][6] , \array_mux_out[1][5] , \array_mux_out[1][4] , 
        \array_mux_out[1][3] , \array_mux_out[1][2] , \array_mux_out[1][1] , 
        \array_mux_out[1][0] }) );
  P4_ADDER_N16_0 adder_1 ( .A({\array_mux_out[1][15] , \array_mux_out[1][14] , 
        \array_mux_out[1][13] , \array_mux_out[1][12] , \array_mux_out[1][11] , 
        \array_mux_out[1][10] , \array_mux_out[1][9] , \array_mux_out[1][8] , 
        \array_mux_out[1][7] , \array_mux_out[1][6] , \array_mux_out[1][5] , 
        \array_mux_out[1][4] , \array_mux_out[1][3] , \array_mux_out[1][2] , 
        \array_mux_out[1][1] , \array_mux_out[1][0] }), .B({
        \result_array[0][15] , \result_array[0][14] , \result_array[0][13] , 
        \result_array[0][12] , \result_array[0][11] , \result_array[0][10] , 
        \result_array[0][9] , \result_array[0][8] , \result_array[0][7] , 
        \result_array[0][6] , \result_array[0][5] , \result_array[0][4] , 
        \result_array[0][3] , \result_array[0][2] , \result_array[0][1] , 
        \result_array[0][0] }), .Cin(1'b0), .S({\result_array[1][15] , 
        \result_array[1][14] , \result_array[1][13] , \result_array[1][12] , 
        \result_array[1][11] , \result_array[1][10] , \result_array[1][9] , 
        \result_array[1][8] , \result_array[1][7] , \result_array[1][6] , 
        \result_array[1][5] , \result_array[1][4] , \result_array[1][3] , 
        \result_array[1][2] , \result_array[1][1] , \result_array[1][0] }) );
  Booth_Encoder_2 booth_j_2 ( .i(B[5:3]), .o({\select_array[2][2] , 
        \select_array[2][1] , \select_array[2][0] }) );
  MUX_booth_N16_2 mux_j_2 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({A[7], A[7], A[7], 
        A[7], A[7:1], \minus_A[0] , 1'b0, 1'b0, 1'b0, 1'b0}), .C({n48, n48, 
        n48, n47, n45, n9, n6, n5, n10, n8, n7, \minus_A[0] , 1'b0, 1'b0, 1'b0, 
        1'b0}), .D({A[7], A[7], A[7], A[7:1], \minus_A[0] , 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .E({n48, n48, n48, n37, n9, n6, n5, n10, n8, n7, 
        \minus_A[0] , 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sel({
        \select_array[2][2] , \select_array[2][1] , \select_array[2][0] }), 
        .Y({\array_mux_out[2][15] , \array_mux_out[2][14] , 
        \array_mux_out[2][13] , \array_mux_out[2][12] , \array_mux_out[2][11] , 
        \array_mux_out[2][10] , \array_mux_out[2][9] , \array_mux_out[2][8] , 
        \array_mux_out[2][7] , \array_mux_out[2][6] , \array_mux_out[2][5] , 
        \array_mux_out[2][4] , \array_mux_out[2][3] , \array_mux_out[2][2] , 
        \array_mux_out[2][1] , \array_mux_out[2][0] }) );
  P4_ADDER_N16_2 adder_2 ( .A({\array_mux_out[2][15] , \array_mux_out[2][14] , 
        \array_mux_out[2][13] , \array_mux_out[2][12] , \array_mux_out[2][11] , 
        \array_mux_out[2][10] , \array_mux_out[2][9] , \array_mux_out[2][8] , 
        \array_mux_out[2][7] , \array_mux_out[2][6] , \array_mux_out[2][5] , 
        \array_mux_out[2][4] , \array_mux_out[2][3] , \array_mux_out[2][2] , 
        \array_mux_out[2][1] , \array_mux_out[2][0] }), .B({
        \result_array[1][15] , \result_array[1][14] , \result_array[1][13] , 
        \result_array[1][12] , \result_array[1][11] , \result_array[1][10] , 
        \result_array[1][9] , \result_array[1][8] , \result_array[1][7] , 
        \result_array[1][6] , \result_array[1][5] , \result_array[1][4] , 
        \result_array[1][3] , \result_array[1][2] , \result_array[1][1] , 
        \result_array[1][0] }), .Cin(1'b0), .S({\result_array[2][15] , 
        \result_array[2][14] , \result_array[2][13] , \result_array[2][12] , 
        \result_array[2][11] , \result_array[2][10] , \result_array[2][9] , 
        \result_array[2][8] , \result_array[2][7] , \result_array[2][6] , 
        \result_array[2][5] , \result_array[2][4] , \result_array[2][3] , 
        \result_array[2][2] , \result_array[2][1] , \result_array[2][0] }) );
  Booth_Encoder_1 booth_j_3 ( .i(B[7:5]), .o({\select_array[3][2] , 
        \select_array[3][1] , \select_array[3][0] }) );
  MUX_booth_N16_1 mux_j_3 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({A[7], A[7], 
        A[7:1], \minus_A[0] , 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .C({n48, 
        n48, n37, n9, n6, n5, n10, n8, n7, \minus_A[0] , 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .D({A[7], A[7:1], \minus_A[0] , 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .E({n48, n37, n9, n6, n5, n10, n8, n7, 
        \minus_A[0] , 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sel({
        \select_array[3][2] , \select_array[3][1] , \select_array[3][0] }), 
        .Y({\array_mux_out[3][15] , \array_mux_out[3][14] , 
        \array_mux_out[3][13] , \array_mux_out[3][12] , \array_mux_out[3][11] , 
        \array_mux_out[3][10] , \array_mux_out[3][9] , \array_mux_out[3][8] , 
        \array_mux_out[3][7] , \array_mux_out[3][6] , \array_mux_out[3][5] , 
        \array_mux_out[3][4] , \array_mux_out[3][3] , \array_mux_out[3][2] , 
        \array_mux_out[3][1] , \array_mux_out[3][0] }) );
  P4_ADDER_N16_1 adder_3 ( .A({\array_mux_out[3][15] , \array_mux_out[3][14] , 
        \array_mux_out[3][13] , \array_mux_out[3][12] , \array_mux_out[3][11] , 
        \array_mux_out[3][10] , \array_mux_out[3][9] , \array_mux_out[3][8] , 
        \array_mux_out[3][7] , \array_mux_out[3][6] , \array_mux_out[3][5] , 
        \array_mux_out[3][4] , \array_mux_out[3][3] , \array_mux_out[3][2] , 
        \array_mux_out[3][1] , \array_mux_out[3][0] }), .B({
        \result_array[2][15] , \result_array[2][14] , \result_array[2][13] , 
        \result_array[2][12] , \result_array[2][11] , \result_array[2][10] , 
        \result_array[2][9] , \result_array[2][8] , \result_array[2][7] , 
        \result_array[2][6] , \result_array[2][5] , \result_array[2][4] , 
        \result_array[2][3] , \result_array[2][2] , \result_array[2][1] , 
        \result_array[2][0] }), .Cin(1'b0), .S(S) );
  XOR2_X1 U19 ( .A(n39), .B(A[5]), .Z(n6) );
  XOR2_X1 U20 ( .A(n34), .B(A[3]), .Z(n10) );
  BUF_X1 U21 ( .A(B[1]), .Z(n46) );
  AND2_X1 U22 ( .A1(n35), .A2(n49), .ZN(n36) );
  CLKBUF_X1 U23 ( .A(n45), .Z(n37) );
  XNOR2_X1 U24 ( .A(n38), .B(A[6]), .ZN(n9) );
  NOR2_X1 U25 ( .A1(n39), .A2(A[5]), .ZN(n38) );
  BUF_X1 U26 ( .A(n11), .Z(n45) );
  OR3_X2 U27 ( .A1(A[3]), .A2(A[4]), .A3(n34), .ZN(n39) );
  OR3_X1 U28 ( .A1(n34), .A2(A[4]), .A3(A[3]), .ZN(n31) );
  OR2_X1 U29 ( .A1(A[5]), .A2(A[6]), .ZN(n40) );
  OR2_X2 U30 ( .A1(n40), .A2(n31), .ZN(n35) );
  INV_X1 U31 ( .A(A[7]), .ZN(n49) );
  BUF_X1 U32 ( .A(n36), .Z(n47) );
  XOR2_X1 U33 ( .A(\minus_A[0] ), .B(A[1]), .Z(n7) );
  XNOR2_X1 U34 ( .A(A[2]), .B(n32), .ZN(n8) );
  NOR2_X1 U35 ( .A1(A[1]), .A2(\minus_A[0] ), .ZN(n32) );
  XOR2_X1 U36 ( .A(A[4]), .B(n41), .Z(n5) );
  OR2_X1 U37 ( .A1(A[3]), .A2(n34), .ZN(n41) );
  OR3_X2 U38 ( .A1(A[2]), .A2(\minus_A[0] ), .A3(A[1]), .ZN(n34) );
  CLKBUF_X1 U39 ( .A(n36), .Z(n42) );
  CLKBUF_X1 U40 ( .A(n36), .Z(n43) );
  NAND2_X1 U41 ( .A1(n35), .A2(n49), .ZN(n44) );
  CLKBUF_X1 U42 ( .A(n36), .Z(n48) );
  OAI21_X1 U43 ( .B1(n35), .B2(n49), .A(n44), .ZN(n11) );
endmodule

