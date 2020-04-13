
module G_0 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  AOI21_X1 U1 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(Gx) );
endmodule


module PG_0 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_IK), .A2(P_K_1), .ZN(Px) );
endmodule


module G_1 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   net1819, n3, n4;
  assign Gx = net1819;

  OR2_X1 U1 ( .A1(P_IK), .A2(G_IK), .ZN(n3) );
  OR2_X1 U2 ( .A1(G_K_1), .A2(G_IK), .ZN(n4) );
  AND2_X2 U3 ( .A1(n4), .A2(n3), .ZN(net1819) );
endmodule


module G_2 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   net1813, n3, n4;
  assign Gx = net1813;

  AND2_X2 U1 ( .A1(n3), .A2(n4), .ZN(net1813) );
  OR2_X1 U2 ( .A1(G_K_1), .A2(G_IK), .ZN(n3) );
  OR2_X1 U3 ( .A1(G_IK), .A2(P_IK), .ZN(n4) );
endmodule


module G_3 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   net1807, n3;
  assign Gx = net1807;

  AOI21_X1 U1 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(net1807) );
endmodule


module G_4 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
endmodule


module G_5 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   n3;

  AOI21_X1 U1 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(Gx) );
endmodule


module G_6 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   net3558, n3, n4;
  assign Gx = net3558;

  NAND2_X1 U1 ( .A1(n4), .A2(n3), .ZN(net3558) );
  NAND2_X1 U2 ( .A1(G_K_1), .A2(P_IK), .ZN(n4) );
  INV_X1 U3 ( .A(G_IK), .ZN(n3) );
endmodule


module G_7 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   net3549, n3, n4;
  assign Gx = net3549;

  NAND2_X1 U1 ( .A1(n4), .A2(n3), .ZN(net3549) );
  NAND2_X1 U2 ( .A1(G_K_1), .A2(P_IK), .ZN(n4) );
  INV_X1 U3 ( .A(G_IK), .ZN(n3) );
endmodule


module G_8 ( G_IK, P_IK, G_K_1, Gx );
  input G_IK, P_IK, G_K_1;
  output Gx;
  wire   net3569, n3, n4;
  assign Gx = net3569;

  NOR2_X1 U1 ( .A1(n4), .A2(n3), .ZN(net3569) );
  NOR2_X1 U2 ( .A1(G_K_1), .A2(G_IK), .ZN(n4) );
  NOR2_X1 U3 ( .A1(G_IK), .A2(P_IK), .ZN(n3) );
endmodule


module PG_1 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3, n4, n5;

  AOI21_X1 U1 ( .B1(n3), .B2(n4), .A(n5), .ZN(Gx) );
  INV_X1 U2 ( .A(G_K_1), .ZN(n3) );
  INV_X1 U3 ( .A(G_IK), .ZN(n4) );
  NOR2_X1 U4 ( .A1(P_IK), .A2(G_IK), .ZN(n5) );
  AND2_X1 U5 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_2 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  INV_X1 U2 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U3 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_3 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_4 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_5 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n4, n5, n6;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  OAI21_X1 U2 ( .B1(n5), .B2(n4), .A(n6), .ZN(Gx) );
  INV_X1 U3 ( .A(P_IK), .ZN(n4) );
  INV_X1 U4 ( .A(G_K_1), .ZN(n5) );
  INV_X1 U5 ( .A(G_IK), .ZN(n6) );
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

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  INV_X1 U2 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U3 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
endmodule


module PG_8 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3, n4;

  NOR2_X1 U1 ( .A1(P_IK), .A2(G_IK), .ZN(n3) );
  NOR2_X1 U2 ( .A1(G_K_1), .A2(G_IK), .ZN(n4) );
  NOR2_X1 U3 ( .A1(n3), .A2(n4), .ZN(Gx) );
  AND2_X1 U4 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_9 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_10 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_11 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_12 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AOI21_X1 U1 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(Gx) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
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
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  AND2_X1 U3 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
endmodule


module PG_15 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gx) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
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
  wire   n3, n4;

  CLKBUF_X1 U1 ( .A(P_IK), .Z(n3) );
  AND2_X1 U2 ( .A1(n3), .A2(P_K_1), .ZN(Px) );
  AOI21_X1 U3 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n4) );
  INV_X1 U4 ( .A(n4), .ZN(Gx) );
endmodule


module PG_18 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_19 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_20 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_21 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_IK), .A2(P_K_1), .ZN(Px) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_22 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_23 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_IK), .A2(P_K_1), .ZN(Px) );
  AOI21_X1 U2 ( .B1(P_IK), .B2(G_K_1), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_24 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module PG_25 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3, n4;

  NOR2_X1 U1 ( .A1(n3), .A2(n4), .ZN(Gx) );
  NOR2_X1 U2 ( .A1(G_K_1), .A2(G_IK), .ZN(n4) );
  NOR2_X1 U3 ( .A1(P_IK), .A2(G_IK), .ZN(n3) );
  AND2_X1 U4 ( .A1(P_IK), .A2(P_K_1), .ZN(Px) );
endmodule


module PG_26 ( G_IK, P_IK, G_K_1, P_K_1, Gx, Px );
  input G_IK, P_IK, G_K_1, P_K_1;
  output Gx, Px;
  wire   n3;

  AND2_X1 U1 ( .A1(P_K_1), .A2(P_IK), .ZN(Px) );
  AOI21_X1 U2 ( .B1(G_K_1), .B2(P_IK), .A(G_IK), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(Gx) );
endmodule


module carry_generator_N32_NPB4 ( A, B, Cin, Co );
  input [31:0] A;
  input [31:0] B;
  output [7:0] Co;
  input Cin;
  wire   n64, n65, n66, \PG_Network[4][1][31] , \PG_Network[4][1][27] ,
         \PG_Network[4][0][31] , \PG_Network[4][0][27] ,
         \PG_Network[3][1][31] , \PG_Network[3][1][23] ,
         \PG_Network[3][1][15] , \PG_Network[3][0][31] ,
         \PG_Network[3][0][23] , \PG_Network[3][0][15] ,
         \PG_Network[2][1][31] , \PG_Network[2][1][27] ,
         \PG_Network[2][1][23] , \PG_Network[2][1][19] ,
         \PG_Network[2][1][15] , \PG_Network[2][1][11] , \PG_Network[2][1][7] ,
         \PG_Network[2][0][31] , \PG_Network[2][0][27] ,
         \PG_Network[2][0][23] , \PG_Network[2][0][19] ,
         \PG_Network[2][0][15] , \PG_Network[2][0][11] , \PG_Network[2][0][7] ,
         \PG_Network[1][1][31] , \PG_Network[1][1][29] ,
         \PG_Network[1][1][27] , \PG_Network[1][1][25] ,
         \PG_Network[1][1][23] , \PG_Network[1][1][21] ,
         \PG_Network[1][1][19] , \PG_Network[1][1][17] ,
         \PG_Network[1][1][15] , \PG_Network[1][1][13] ,
         \PG_Network[1][1][11] , \PG_Network[1][1][9] , \PG_Network[1][1][7] ,
         \PG_Network[1][1][5] , \PG_Network[1][1][3] , \PG_Network[1][1][1] ,
         \PG_Network[1][0][31] , \PG_Network[1][0][29] ,
         \PG_Network[1][0][27] , \PG_Network[1][0][25] ,
         \PG_Network[1][0][23] , \PG_Network[1][0][21] ,
         \PG_Network[1][0][19] , \PG_Network[1][0][17] ,
         \PG_Network[1][0][15] , \PG_Network[1][0][13] ,
         \PG_Network[1][0][11] , \PG_Network[1][0][9] , \PG_Network[1][0][7] ,
         \PG_Network[1][0][5] , \PG_Network[1][0][3] , \PG_Network[0][1][31] ,
         \PG_Network[0][1][30] , \PG_Network[0][1][29] ,
         \PG_Network[0][1][28] , \PG_Network[0][1][27] ,
         \PG_Network[0][1][26] , \PG_Network[0][1][25] ,
         \PG_Network[0][1][24] , \PG_Network[0][1][23] ,
         \PG_Network[0][1][22] , \PG_Network[0][1][21] ,
         \PG_Network[0][1][20] , \PG_Network[0][1][19] ,
         \PG_Network[0][1][18] , \PG_Network[0][1][17] ,
         \PG_Network[0][1][16] , \PG_Network[0][1][15] ,
         \PG_Network[0][1][14] , \PG_Network[0][1][13] ,
         \PG_Network[0][1][12] , \PG_Network[0][1][11] ,
         \PG_Network[0][1][10] , \PG_Network[0][1][9] , \PG_Network[0][1][8] ,
         \PG_Network[0][1][7] , \PG_Network[0][1][6] , \PG_Network[0][1][5] ,
         \PG_Network[0][1][4] , \PG_Network[0][1][3] , \PG_Network[0][1][2] ,
         \PG_Network[0][1][1] , \PG_Network[0][0][31] , \PG_Network[0][0][30] ,
         \PG_Network[0][0][29] , \PG_Network[0][0][28] ,
         \PG_Network[0][0][27] , \PG_Network[0][0][26] ,
         \PG_Network[0][0][25] , \PG_Network[0][0][24] ,
         \PG_Network[0][0][23] , \PG_Network[0][0][22] ,
         \PG_Network[0][0][21] , \PG_Network[0][0][20] ,
         \PG_Network[0][0][19] , \PG_Network[0][0][18] ,
         \PG_Network[0][0][17] , \PG_Network[0][0][16] ,
         \PG_Network[0][0][15] , \PG_Network[0][0][14] ,
         \PG_Network[0][0][13] , \PG_Network[0][0][12] ,
         \PG_Network[0][0][11] , \PG_Network[0][0][10] , \PG_Network[0][0][9] ,
         \PG_Network[0][0][8] , \PG_Network[0][0][7] , \PG_Network[0][0][6] ,
         \PG_Network[0][0][5] , \PG_Network[0][0][4] , \PG_Network[0][0][3] ,
         \PG_Network[0][0][2] , \PG_Network[0][0][1] , n1, net2583, net2584,
         net2591, net2592, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63;

  G_0 GJ_0_0_0 ( .G_IK(\PG_Network[0][1][1] ), .P_IK(\PG_Network[0][0][1] ), 
        .G_K_1(n1), .Gx(\PG_Network[1][1][1] ) );
  PG_0 PGJ_0_1_0 ( .G_IK(\PG_Network[0][1][3] ), .P_IK(\PG_Network[0][0][3] ), 
        .G_K_1(\PG_Network[0][1][2] ), .P_K_1(\PG_Network[0][0][2] ), .Gx(
        \PG_Network[1][1][3] ), .Px(\PG_Network[1][0][3] ) );
  PG_26 PGJ_0_2_0 ( .G_IK(\PG_Network[0][1][5] ), .P_IK(\PG_Network[0][0][5] ), 
        .G_K_1(\PG_Network[0][1][4] ), .P_K_1(\PG_Network[0][0][4] ), .Gx(
        \PG_Network[1][1][5] ), .Px(\PG_Network[1][0][5] ) );
  PG_25 PGJ_0_3_0 ( .G_IK(\PG_Network[0][1][7] ), .P_IK(\PG_Network[0][0][7] ), 
        .G_K_1(\PG_Network[0][1][6] ), .P_K_1(\PG_Network[0][0][6] ), .Gx(
        \PG_Network[1][1][7] ), .Px(\PG_Network[1][0][7] ) );
  PG_24 PGJ_0_4_0 ( .G_IK(\PG_Network[0][1][9] ), .P_IK(\PG_Network[0][0][9] ), 
        .G_K_1(\PG_Network[0][1][8] ), .P_K_1(\PG_Network[0][0][8] ), .Gx(
        \PG_Network[1][1][9] ), .Px(\PG_Network[1][0][9] ) );
  PG_23 PGJ_0_5_0 ( .G_IK(\PG_Network[0][1][11] ), .P_IK(
        \PG_Network[0][0][11] ), .G_K_1(\PG_Network[0][1][10] ), .P_K_1(
        \PG_Network[0][0][10] ), .Gx(\PG_Network[1][1][11] ), .Px(
        \PG_Network[1][0][11] ) );
  PG_22 PGJ_0_6_0 ( .G_IK(\PG_Network[0][1][13] ), .P_IK(
        \PG_Network[0][0][13] ), .G_K_1(\PG_Network[0][1][12] ), .P_K_1(
        \PG_Network[0][0][12] ), .Gx(\PG_Network[1][1][13] ), .Px(
        \PG_Network[1][0][13] ) );
  PG_21 PGJ_0_7_0 ( .G_IK(\PG_Network[0][1][15] ), .P_IK(
        \PG_Network[0][0][15] ), .G_K_1(\PG_Network[0][1][14] ), .P_K_1(
        \PG_Network[0][0][14] ), .Gx(\PG_Network[1][1][15] ), .Px(
        \PG_Network[1][0][15] ) );
  PG_20 PGJ_0_8_0 ( .G_IK(\PG_Network[0][1][17] ), .P_IK(
        \PG_Network[0][0][17] ), .G_K_1(\PG_Network[0][1][16] ), .P_K_1(
        \PG_Network[0][0][16] ), .Gx(\PG_Network[1][1][17] ), .Px(
        \PG_Network[1][0][17] ) );
  PG_19 PGJ_0_9_0 ( .G_IK(\PG_Network[0][1][19] ), .P_IK(
        \PG_Network[0][0][19] ), .G_K_1(\PG_Network[0][1][18] ), .P_K_1(
        \PG_Network[0][0][18] ), .Gx(\PG_Network[1][1][19] ), .Px(
        \PG_Network[1][0][19] ) );
  PG_18 PGJ_0_10_0 ( .G_IK(\PG_Network[0][1][21] ), .P_IK(
        \PG_Network[0][0][21] ), .G_K_1(\PG_Network[0][1][20] ), .P_K_1(
        \PG_Network[0][0][20] ), .Gx(\PG_Network[1][1][21] ), .Px(
        \PG_Network[1][0][21] ) );
  PG_17 PGJ_0_11_0 ( .G_IK(\PG_Network[0][1][23] ), .P_IK(
        \PG_Network[0][0][23] ), .G_K_1(\PG_Network[0][1][22] ), .P_K_1(
        \PG_Network[0][0][22] ), .Gx(\PG_Network[1][1][23] ), .Px(
        \PG_Network[1][0][23] ) );
  PG_16 PGJ_0_12_0 ( .G_IK(\PG_Network[0][1][25] ), .P_IK(
        \PG_Network[0][0][25] ), .G_K_1(\PG_Network[0][1][24] ), .P_K_1(
        \PG_Network[0][0][24] ), .Gx(\PG_Network[1][1][25] ), .Px(
        \PG_Network[1][0][25] ) );
  PG_15 PGJ_0_13_0 ( .G_IK(\PG_Network[0][1][27] ), .P_IK(
        \PG_Network[0][0][27] ), .G_K_1(\PG_Network[0][1][26] ), .P_K_1(
        \PG_Network[0][0][26] ), .Gx(\PG_Network[1][1][27] ), .Px(
        \PG_Network[1][0][27] ) );
  PG_14 PGJ_0_14_0 ( .G_IK(\PG_Network[0][1][29] ), .P_IK(
        \PG_Network[0][0][29] ), .G_K_1(\PG_Network[0][1][28] ), .P_K_1(
        \PG_Network[0][0][28] ), .Gx(\PG_Network[1][1][29] ), .Px(
        \PG_Network[1][0][29] ) );
  PG_13 PGJ_0_15_0 ( .G_IK(\PG_Network[0][1][31] ), .P_IK(
        \PG_Network[0][0][31] ), .G_K_1(\PG_Network[0][1][30] ), .P_K_1(
        \PG_Network[0][0][30] ), .Gx(\PG_Network[1][1][31] ), .Px(
        \PG_Network[1][0][31] ) );
  G_8 GJ_1_0_0 ( .G_IK(\PG_Network[1][1][3] ), .P_IK(\PG_Network[1][0][3] ), 
        .G_K_1(\PG_Network[1][1][1] ), .Gx(n66) );
  PG_12 PGJ_1_1_0 ( .G_IK(\PG_Network[1][1][7] ), .P_IK(\PG_Network[1][0][7] ), 
        .G_K_1(\PG_Network[1][1][5] ), .P_K_1(\PG_Network[1][0][5] ), .Gx(
        \PG_Network[2][1][7] ), .Px(\PG_Network[2][0][7] ) );
  PG_11 PGJ_1_2_0 ( .G_IK(\PG_Network[1][1][11] ), .P_IK(
        \PG_Network[1][0][11] ), .G_K_1(\PG_Network[1][1][9] ), .P_K_1(
        \PG_Network[1][0][9] ), .Gx(\PG_Network[2][1][11] ), .Px(
        \PG_Network[2][0][11] ) );
  PG_10 PGJ_1_3_0 ( .G_IK(\PG_Network[1][1][15] ), .P_IK(
        \PG_Network[1][0][15] ), .G_K_1(\PG_Network[1][1][13] ), .P_K_1(
        \PG_Network[1][0][13] ), .Gx(\PG_Network[2][1][15] ), .Px(
        \PG_Network[2][0][15] ) );
  PG_9 PGJ_1_4_0 ( .G_IK(\PG_Network[1][1][19] ), .P_IK(\PG_Network[1][0][19] ), .G_K_1(\PG_Network[1][1][17] ), .P_K_1(\PG_Network[1][0][17] ), .Gx(
        \PG_Network[2][1][19] ), .Px(\PG_Network[2][0][19] ) );
  PG_8 PGJ_1_5_0 ( .G_IK(\PG_Network[1][1][23] ), .P_IK(\PG_Network[1][0][23] ), .G_K_1(\PG_Network[1][1][21] ), .P_K_1(\PG_Network[1][0][21] ), .Gx(
        \PG_Network[2][1][23] ), .Px(\PG_Network[2][0][23] ) );
  PG_7 PGJ_1_6_0 ( .G_IK(\PG_Network[1][1][27] ), .P_IK(\PG_Network[1][0][27] ), .G_K_1(\PG_Network[1][1][25] ), .P_K_1(\PG_Network[1][0][25] ), .Gx(
        \PG_Network[2][1][27] ), .Px(\PG_Network[2][0][27] ) );
  PG_6 PGJ_1_7_0 ( .G_IK(\PG_Network[1][1][31] ), .P_IK(\PG_Network[1][0][31] ), .G_K_1(\PG_Network[1][1][29] ), .P_K_1(\PG_Network[1][0][29] ), .Gx(
        \PG_Network[2][1][31] ), .Px(\PG_Network[2][0][31] ) );
  G_7 GJ_2_0_0 ( .G_IK(\PG_Network[2][1][7] ), .P_IK(\PG_Network[2][0][7] ), 
        .G_K_1(n66), .Gx(n65) );
  PG_5 PGJ_2_1_0 ( .G_IK(\PG_Network[2][1][15] ), .P_IK(\PG_Network[2][0][15] ), .G_K_1(\PG_Network[2][1][11] ), .P_K_1(\PG_Network[2][0][11] ), .Gx(
        \PG_Network[3][1][15] ), .Px(\PG_Network[3][0][15] ) );
  PG_4 PGJ_2_2_0 ( .G_IK(\PG_Network[2][1][23] ), .P_IK(\PG_Network[2][0][23] ), .G_K_1(\PG_Network[2][1][19] ), .P_K_1(\PG_Network[2][0][19] ), .Gx(
        \PG_Network[3][1][23] ), .Px(\PG_Network[3][0][23] ) );
  PG_3 PGJ_2_3_0 ( .G_IK(\PG_Network[2][1][31] ), .P_IK(\PG_Network[2][0][31] ), .G_K_1(\PG_Network[2][1][27] ), .P_K_1(\PG_Network[2][0][27] ), .Gx(
        \PG_Network[3][1][31] ), .Px(\PG_Network[3][0][31] ) );
  G_6 GJ_3_0_0 ( .G_IK(\PG_Network[3][1][15] ), .P_IK(\PG_Network[3][0][15] ), 
        .G_K_1(n65), .Gx(n64) );
  G_5 GJ_3_0_1 ( .G_IK(n27), .P_IK(\PG_Network[2][0][11] ), .G_K_1(n37), .Gx(
        Co[2]) );
  PG_2 PGJ_3_1_0 ( .G_IK(\PG_Network[3][1][31] ), .P_IK(\PG_Network[3][0][31] ), .G_K_1(n22), .P_K_1(\PG_Network[3][0][23] ), .Gx(\PG_Network[4][1][31] ), 
        .Px(\PG_Network[4][0][31] ) );
  PG_1 PGJ_3_1_1 ( .G_IK(\PG_Network[2][1][27] ), .P_IK(\PG_Network[2][0][27] ), .G_K_1(\PG_Network[3][1][23] ), .P_K_1(\PG_Network[3][0][23] ), .Gx(
        \PG_Network[4][1][27] ), .Px(\PG_Network[4][0][27] ) );
  G_4 GJ_4_0_0 ( .G_IK(\PG_Network[4][1][31] ), .P_IK(\PG_Network[4][0][31] ), 
        .G_K_1(Co[3]), .Gx(Co[7]) );
  G_3 GJ_4_0_1 ( .G_IK(\PG_Network[4][1][27] ), .P_IK(\PG_Network[4][0][27] ), 
        .G_K_1(n64), .Gx(Co[6]) );
  G_2 GJ_4_0_2 ( .G_IK(n22), .P_IK(\PG_Network[3][0][23] ), .G_K_1(n64), .Gx(
        Co[5]) );
  G_1 GJ_4_0_3 ( .G_IK(n9), .P_IK(\PG_Network[2][0][19] ), .G_K_1(n64), .Gx(
        Co[4]) );
  XOR2_X1 U37 ( .A(B[8]), .B(A[8]), .Z(\PG_Network[0][0][8] ) );
  XOR2_X1 U43 ( .A(B[31]), .B(A[31]), .Z(\PG_Network[0][0][31] ) );
  XOR2_X1 U44 ( .A(B[30]), .B(A[30]), .Z(\PG_Network[0][0][30] ) );
  XOR2_X1 U46 ( .A(B[29]), .B(A[29]), .Z(\PG_Network[0][0][29] ) );
  XOR2_X1 U47 ( .A(B[28]), .B(A[28]), .Z(\PG_Network[0][0][28] ) );
  XOR2_X1 U48 ( .A(B[27]), .B(A[27]), .Z(\PG_Network[0][0][27] ) );
  XOR2_X1 U49 ( .A(B[26]), .B(A[26]), .Z(\PG_Network[0][0][26] ) );
  XOR2_X1 U50 ( .A(B[25]), .B(A[25]), .Z(\PG_Network[0][0][25] ) );
  XOR2_X1 U51 ( .A(B[24]), .B(A[24]), .Z(\PG_Network[0][0][24] ) );
  XOR2_X1 U53 ( .A(B[22]), .B(A[22]), .Z(\PG_Network[0][0][22] ) );
  XOR2_X1 U55 ( .A(B[20]), .B(A[20]), .Z(\PG_Network[0][0][20] ) );
  XOR2_X1 U58 ( .A(B[18]), .B(A[18]), .Z(\PG_Network[0][0][18] ) );
  XOR2_X1 U60 ( .A(B[16]), .B(A[16]), .Z(\PG_Network[0][0][16] ) );
  XOR2_X1 U64 ( .A(B[12]), .B(A[12]), .Z(\PG_Network[0][0][12] ) );
  NAND2_X1 U1 ( .A1(n8), .A2(n7), .ZN(\PG_Network[0][0][3] ) );
  NAND2_X1 U2 ( .A1(n5), .A2(A[3]), .ZN(n8) );
  INV_X1 U3 ( .A(B[3]), .ZN(n5) );
  NAND2_X1 U4 ( .A1(n6), .A2(B[3]), .ZN(n7) );
  INV_X1 U5 ( .A(A[3]), .ZN(n6) );
  CLKBUF_X1 U6 ( .A(\PG_Network[2][1][19] ), .Z(n9) );
  NAND2_X1 U7 ( .A1(n11), .A2(B[19]), .ZN(n12) );
  NAND2_X1 U8 ( .A1(n10), .A2(A[19]), .ZN(n13) );
  NAND2_X1 U9 ( .A1(n12), .A2(n13), .ZN(\PG_Network[0][0][19] ) );
  INV_X1 U10 ( .A(B[19]), .ZN(n10) );
  INV_X1 U11 ( .A(A[19]), .ZN(n11) );
  INV_X1 U12 ( .A(A[0]), .ZN(n14) );
  INV_X1 U13 ( .A(n36), .ZN(Co[1]) );
  INV_X1 U14 ( .A(n36), .ZN(n37) );
  BUF_X1 U15 ( .A(\PG_Network[3][1][23] ), .Z(n22) );
  NAND2_X1 U16 ( .A1(n17), .A2(B[7]), .ZN(n18) );
  NAND2_X1 U17 ( .A1(n19), .A2(n18), .ZN(\PG_Network[0][0][7] ) );
  INV_X1 U18 ( .A(A[7]), .ZN(n17) );
  INV_X1 U19 ( .A(B[7]), .ZN(net2592) );
  INV_X1 U20 ( .A(B[7]), .ZN(n16) );
  INV_X1 U21 ( .A(A[7]), .ZN(net2591) );
  NAND2_X1 U22 ( .A1(n16), .A2(A[7]), .ZN(n19) );
  INV_X1 U23 ( .A(A[0]), .ZN(n20) );
  INV_X1 U24 ( .A(B[0]), .ZN(n21) );
  NAND2_X1 U25 ( .A1(n24), .A2(B[23]), .ZN(n25) );
  NAND2_X1 U26 ( .A1(n23), .A2(A[23]), .ZN(n26) );
  NAND2_X1 U27 ( .A1(n26), .A2(n25), .ZN(\PG_Network[0][0][23] ) );
  INV_X1 U28 ( .A(B[23]), .ZN(n23) );
  INV_X1 U29 ( .A(A[23]), .ZN(n24) );
  CLKBUF_X1 U30 ( .A(\PG_Network[2][1][11] ), .Z(n27) );
  NAND2_X1 U31 ( .A1(n29), .A2(B[11]), .ZN(n30) );
  NAND2_X1 U32 ( .A1(n28), .A2(A[11]), .ZN(n31) );
  NAND2_X1 U33 ( .A1(n30), .A2(n31), .ZN(\PG_Network[0][0][11] ) );
  INV_X1 U34 ( .A(B[11]), .ZN(n28) );
  INV_X1 U35 ( .A(A[11]), .ZN(n29) );
  NAND2_X1 U36 ( .A1(n33), .A2(B[15]), .ZN(n34) );
  NAND2_X1 U38 ( .A1(n32), .A2(A[15]), .ZN(n35) );
  NAND2_X1 U39 ( .A1(n34), .A2(n35), .ZN(\PG_Network[0][0][15] ) );
  INV_X1 U40 ( .A(B[15]), .ZN(n32) );
  INV_X1 U41 ( .A(A[15]), .ZN(n33) );
  AND2_X1 U42 ( .A1(A[18]), .A2(B[18]), .ZN(\PG_Network[0][1][18] ) );
  AND2_X1 U45 ( .A1(A[19]), .A2(B[19]), .ZN(\PG_Network[0][1][19] ) );
  AND2_X1 U52 ( .A1(A[16]), .A2(B[16]), .ZN(\PG_Network[0][1][16] ) );
  AND2_X1 U54 ( .A1(A[17]), .A2(B[17]), .ZN(\PG_Network[0][1][17] ) );
  AND2_X1 U56 ( .A1(A[26]), .A2(B[26]), .ZN(\PG_Network[0][1][26] ) );
  AND2_X1 U57 ( .A1(A[27]), .A2(B[27]), .ZN(\PG_Network[0][1][27] ) );
  AND2_X1 U59 ( .A1(A[24]), .A2(B[24]), .ZN(\PG_Network[0][1][24] ) );
  AND2_X1 U61 ( .A1(A[25]), .A2(B[25]), .ZN(\PG_Network[0][1][25] ) );
  AND2_X1 U62 ( .A1(A[30]), .A2(B[30]), .ZN(\PG_Network[0][1][30] ) );
  AND2_X1 U63 ( .A1(A[31]), .A2(B[31]), .ZN(\PG_Network[0][1][31] ) );
  AND2_X1 U65 ( .A1(A[5]), .A2(B[5]), .ZN(\PG_Network[0][1][5] ) );
  AND2_X1 U66 ( .A1(A[28]), .A2(B[28]), .ZN(\PG_Network[0][1][28] ) );
  AND2_X1 U67 ( .A1(A[29]), .A2(B[29]), .ZN(\PG_Network[0][1][29] ) );
  AND2_X1 U68 ( .A1(A[20]), .A2(B[20]), .ZN(\PG_Network[0][1][20] ) );
  AND2_X1 U69 ( .A1(A[21]), .A2(B[21]), .ZN(\PG_Network[0][1][21] ) );
  AND2_X1 U70 ( .A1(A[22]), .A2(B[22]), .ZN(\PG_Network[0][1][22] ) );
  AND2_X1 U71 ( .A1(A[23]), .A2(B[23]), .ZN(\PG_Network[0][1][23] ) );
  AND2_X1 U72 ( .A1(A[4]), .A2(B[4]), .ZN(\PG_Network[0][1][4] ) );
  INV_X1 U73 ( .A(n65), .ZN(n36) );
  CLKBUF_X1 U74 ( .A(n66), .Z(Co[0]) );
  CLKBUF_X1 U75 ( .A(n64), .Z(Co[3]) );
  XOR2_X1 U76 ( .A(B[21]), .B(A[21]), .Z(\PG_Network[0][0][21] ) );
  XOR2_X1 U77 ( .A(B[17]), .B(A[17]), .Z(\PG_Network[0][0][17] ) );
  XOR2_X1 U78 ( .A(B[14]), .B(A[14]), .Z(\PG_Network[0][0][14] ) );
  INV_X1 U79 ( .A(A[14]), .ZN(n41) );
  INV_X1 U80 ( .A(B[14]), .ZN(n40) );
  NOR2_X1 U81 ( .A1(n41), .A2(n40), .ZN(\PG_Network[0][1][14] ) );
  INV_X1 U82 ( .A(A[15]), .ZN(n43) );
  INV_X1 U83 ( .A(B[15]), .ZN(n42) );
  NOR2_X1 U84 ( .A1(n43), .A2(n42), .ZN(\PG_Network[0][1][15] ) );
  INV_X1 U85 ( .A(A[12]), .ZN(n45) );
  INV_X1 U86 ( .A(B[12]), .ZN(n44) );
  NOR2_X1 U87 ( .A1(n45), .A2(n44), .ZN(\PG_Network[0][1][12] ) );
  XOR2_X1 U88 ( .A(B[13]), .B(A[13]), .Z(\PG_Network[0][0][13] ) );
  INV_X1 U89 ( .A(A[13]), .ZN(n47) );
  INV_X1 U90 ( .A(B[13]), .ZN(n46) );
  NOR2_X1 U91 ( .A1(n47), .A2(n46), .ZN(\PG_Network[0][1][13] ) );
  XOR2_X1 U92 ( .A(B[10]), .B(A[10]), .Z(\PG_Network[0][0][10] ) );
  INV_X1 U93 ( .A(A[10]), .ZN(n49) );
  INV_X1 U94 ( .A(B[10]), .ZN(n48) );
  NOR2_X1 U95 ( .A1(n49), .A2(n48), .ZN(\PG_Network[0][1][10] ) );
  INV_X1 U96 ( .A(A[11]), .ZN(n51) );
  INV_X1 U97 ( .A(B[11]), .ZN(n50) );
  NOR2_X1 U98 ( .A1(n51), .A2(n50), .ZN(\PG_Network[0][1][11] ) );
  INV_X1 U99 ( .A(A[8]), .ZN(n53) );
  INV_X1 U100 ( .A(B[8]), .ZN(n52) );
  NOR2_X1 U101 ( .A1(n53), .A2(n52), .ZN(\PG_Network[0][1][8] ) );
  XOR2_X1 U102 ( .A(B[9]), .B(A[9]), .Z(\PG_Network[0][0][9] ) );
  INV_X1 U103 ( .A(A[9]), .ZN(n55) );
  INV_X1 U104 ( .A(B[9]), .ZN(n54) );
  NOR2_X1 U105 ( .A1(n55), .A2(n54), .ZN(\PG_Network[0][1][9] ) );
  XOR2_X1 U106 ( .A(B[6]), .B(A[6]), .Z(\PG_Network[0][0][6] ) );
  INV_X1 U107 ( .A(A[6]), .ZN(n57) );
  INV_X1 U108 ( .A(B[6]), .ZN(n56) );
  NOR2_X1 U109 ( .A1(n57), .A2(n56), .ZN(\PG_Network[0][1][6] ) );
  NOR2_X1 U110 ( .A1(net2591), .A2(net2592), .ZN(\PG_Network[0][1][7] ) );
  XOR2_X1 U111 ( .A(B[4]), .B(A[4]), .Z(\PG_Network[0][0][4] ) );
  XOR2_X1 U112 ( .A(B[5]), .B(A[5]), .Z(\PG_Network[0][0][5] ) );
  XOR2_X1 U113 ( .A(B[2]), .B(A[2]), .Z(\PG_Network[0][0][2] ) );
  INV_X1 U114 ( .A(A[2]), .ZN(n59) );
  INV_X1 U115 ( .A(B[2]), .ZN(n58) );
  NOR2_X1 U116 ( .A1(n59), .A2(n58), .ZN(\PG_Network[0][1][2] ) );
  INV_X1 U117 ( .A(A[3]), .ZN(net2583) );
  INV_X1 U118 ( .A(B[3]), .ZN(net2584) );
  NOR2_X1 U119 ( .A1(net2583), .A2(net2584), .ZN(\PG_Network[0][1][3] ) );
  INV_X1 U120 ( .A(Cin), .ZN(n61) );
  INV_X1 U121 ( .A(B[0]), .ZN(n60) );
  OAI222_X1 U122 ( .A1(n20), .A2(n61), .B1(n60), .B2(n61), .C1(n21), .C2(n14), 
        .ZN(n1) );
  XOR2_X1 U123 ( .A(B[1]), .B(A[1]), .Z(\PG_Network[0][0][1] ) );
  INV_X1 U124 ( .A(A[1]), .ZN(n63) );
  INV_X1 U125 ( .A(B[1]), .ZN(n62) );
  NOR2_X1 U126 ( .A1(n63), .A2(n62), .ZN(\PG_Network[0][1][1] ) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3, n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  BUF_X1 U1 ( .A(A), .Z(n4) );
  INV_X1 U2 ( .A(n2), .ZN(Co) );
  XOR2_X1 U5 ( .A(n4), .B(B), .Z(n5) );
  AOI22_X1 U6 ( .A1(B), .A2(n4), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_61 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
endmodule


module FA_62 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7, n8;

  XOR2_X1 U3 ( .A(Ci), .B(n8), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n8) );
  OAI22_X1 U1 ( .A1(n4), .A2(n5), .B1(n7), .B2(n6), .ZN(Co) );
  INV_X1 U2 ( .A(B), .ZN(n4) );
  INV_X1 U5 ( .A(A), .ZN(n5) );
  INV_X1 U6 ( .A(n8), .ZN(n6) );
  INV_X1 U7 ( .A(Ci), .ZN(n7) );
endmodule


module FA_63 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n7, n8, n9;

  XOR2_X1 U3 ( .A(Ci), .B(n9), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n9) );
  OR2_X1 U1 ( .A1(n4), .A2(n5), .ZN(n7) );
  INV_X1 U2 ( .A(A), .ZN(n4) );
  INV_X1 U5 ( .A(B), .ZN(n5) );
  NAND2_X1 U6 ( .A1(n8), .A2(n7), .ZN(Co) );
  NAND2_X1 U7 ( .A1(Ci), .A2(n9), .ZN(n8) );
endmodule


module RCA_N4_0 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_63 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_62 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_61 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_generic_N4_0 ( A, B, sel, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input sel;
  wire   n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(sel), .ZN(n5) );
  INV_X1 U2 ( .A(n6), .ZN(Y[3]) );
  INV_X1 U3 ( .A(n7), .ZN(Y[2]) );
  AOI22_X1 U4 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n5), .ZN(n7) );
  INV_X1 U5 ( .A(n8), .ZN(Y[1]) );
  AOI22_X1 U6 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n5), .ZN(n8) );
  INV_X1 U7 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U8 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n5), .ZN(n9) );
  AOI22_X1 U9 ( .A1(A[3]), .A2(sel), .B1(B[3]), .B2(n5), .ZN(n6) );
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


module carry_select_block_NPB4_0 ( A, B, Ci, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;

  wire   [3:0] S1;
  wire   [3:0] S2;

  RCA_N4_0 UADDER1 ( .A(A), .B(B), .Ci(1'b1), .S(S1) );
  RCA_N4_15 UADDER2 ( .A(A), .B(B), .Ci(1'b0), .S(S2) );
  MUX21_generic_N4_0 mux ( .A(S1), .B(S2), .sel(Ci), .Y(S) );
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
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
endmodule


module FA_54 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_55 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_56 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n6) );
  BUF_X1 U1 ( .A(B), .Z(n4) );
  XOR2_X1 U2 ( .A(A), .B(n4), .Z(n5) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
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

  INV_X1 U1 ( .A(n13), .ZN(Y[3]) );
  INV_X1 U2 ( .A(n12), .ZN(Y[2]) );
  INV_X1 U3 ( .A(n11), .ZN(Y[1]) );
  INV_X1 U4 ( .A(n10), .ZN(Y[0]) );
  AOI22_X1 U5 ( .A1(A[3]), .A2(sel), .B1(B[3]), .B2(n14), .ZN(n13) );
  AOI22_X1 U6 ( .A1(A[2]), .A2(sel), .B1(B[2]), .B2(n14), .ZN(n12) );
  AOI22_X1 U7 ( .A1(A[1]), .A2(sel), .B1(B[1]), .B2(n14), .ZN(n11) );
  AOI22_X1 U8 ( .A1(A[0]), .A2(sel), .B1(B[0]), .B2(n14), .ZN(n10) );
  INV_X1 U9 ( .A(sel), .ZN(n14) );
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


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
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
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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


  MUX2_X1 U1 ( .A(B[0]), .B(A[0]), .S(sel), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(B[2]), .B(A[2]), .S(sel), .Z(Y[2]) );
  MUX2_X1 U3 ( .A(B[1]), .B(A[1]), .S(sel), .Z(Y[1]) );
  MUX2_X1 U4 ( .A(B[3]), .B(A[3]), .S(sel), .Z(Y[3]) );
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
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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


  MUX2_X1 U1 ( .A(B[3]), .B(A[3]), .S(sel), .Z(Y[3]) );
  MUX2_X1 U2 ( .A(B[0]), .B(A[0]), .S(sel), .Z(Y[0]) );
  MUX2_X1 U3 ( .A(B[1]), .B(A[1]), .S(sel), .Z(Y[1]) );
  MUX2_X1 U4 ( .A(B[2]), .B(A[2]), .S(sel), .Z(Y[2]) );
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


  MUX2_X1 U1 ( .A(B[0]), .B(A[0]), .S(sel), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(B[1]), .B(A[1]), .S(sel), .Z(Y[1]) );
  MUX2_X1 U3 ( .A(B[2]), .B(A[2]), .S(sel), .Z(Y[2]) );
  MUX2_X1 U4 ( .A(B[3]), .B(A[3]), .S(sel), .Z(Y[3]) );
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


  MUX2_X1 U1 ( .A(B[0]), .B(A[0]), .S(sel), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(B[1]), .B(A[1]), .S(sel), .Z(Y[1]) );
  MUX2_X1 U3 ( .A(B[2]), .B(A[2]), .S(sel), .Z(Y[2]) );
  MUX2_X1 U4 ( .A(B[3]), .B(A[3]), .S(sel), .Z(Y[3]) );
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


  MUX2_X1 U1 ( .A(B[0]), .B(A[0]), .S(sel), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(B[1]), .B(A[1]), .S(sel), .Z(Y[1]) );
  MUX2_X1 U3 ( .A(B[2]), .B(A[2]), .S(sel), .Z(Y[2]) );
  MUX2_X1 U4 ( .A(B[3]), .B(A[3]), .S(sel), .Z(Y[3]) );
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
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_48 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n6) );
  BUF_X1 U1 ( .A(B), .Z(n4) );
  XOR2_X1 U2 ( .A(A), .B(n4), .Z(n5) );
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
  wire   n10, n11, n12, n13, n14, n15;

  BUF_X2 U1 ( .A(sel), .Z(n10) );
  INV_X1 U2 ( .A(n14), .ZN(Y[3]) );
  INV_X1 U3 ( .A(n12), .ZN(Y[1]) );
  INV_X1 U4 ( .A(n13), .ZN(Y[2]) );
  INV_X1 U5 ( .A(n11), .ZN(Y[0]) );
  AOI22_X1 U6 ( .A1(A[3]), .A2(n10), .B1(B[3]), .B2(n15), .ZN(n14) );
  AOI22_X1 U7 ( .A1(A[2]), .A2(n10), .B1(B[2]), .B2(n15), .ZN(n13) );
  AOI22_X1 U8 ( .A1(A[1]), .A2(n10), .B1(B[1]), .B2(n15), .ZN(n12) );
  AOI22_X1 U9 ( .A1(A[0]), .A2(n10), .B1(n15), .B2(B[0]), .ZN(n11) );
  INV_X1 U10 ( .A(sel), .ZN(n15) );
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


module sum_generator_N32_NPB4 ( A, B, Ci, S, Co );
  input [31:0] A;
  input [31:0] B;
  input [8:0] Ci;
  output [31:0] S;
  output Co;

  assign Co = Ci[8];

  carry_select_block_NPB4_0 csbi_0 ( .A(A[3:0]), .B(B[3:0]), .Ci(Ci[0]), .S(
        S[3:0]) );
  carry_select_block_NPB4_7 csbi_1 ( .A(A[7:4]), .B(B[7:4]), .Ci(Ci[1]), .S(
        S[7:4]) );
  carry_select_block_NPB4_6 csbi_2 ( .A(A[11:8]), .B(B[11:8]), .Ci(Ci[2]), .S(
        S[11:8]) );
  carry_select_block_NPB4_5 csbi_3 ( .A(A[15:12]), .B(B[15:12]), .Ci(Ci[3]), 
        .S(S[15:12]) );
  carry_select_block_NPB4_4 csbi_4 ( .A(A[19:16]), .B(B[19:16]), .Ci(Ci[4]), 
        .S(S[19:16]) );
  carry_select_block_NPB4_3 csbi_5 ( .A(A[23:20]), .B(B[23:20]), .Ci(Ci[5]), 
        .S(S[23:20]) );
  carry_select_block_NPB4_2 csbi_6 ( .A(A[27:24]), .B(B[27:24]), .Ci(Ci[6]), 
        .S(S[27:24]) );
  carry_select_block_NPB4_1 csbi_7 ( .A(A[31:28]), .B(B[31:28]), .Ci(Ci[7]), 
        .S(S[31:28]) );
endmodule


module P4_ADDER ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [8:1] CoutCgen;

  carry_generator_N32_NPB4 CGEN ( .A(A), .B(B), .Cin(Cin), .Co(CoutCgen) );
  sum_generator_N32_NPB4 SGEN ( .A({A[31:24], n4, A[22:16], n7, A[14:8], n10, 
        A[6:4], n6, A[2:1], n5}), .B({B[31:24], n3, B[22:16], n8, B[14:8], n9, 
        B[6:4], n1, B[2:0]}), .Ci({CoutCgen, n2}), .S(S), .Co(Cout) );
  BUF_X1 U1 ( .A(B[3]), .Z(n1) );
  BUF_X1 U2 ( .A(A[15]), .Z(n7) );
  BUF_X1 U3 ( .A(B[23]), .Z(n3) );
  BUF_X1 U4 ( .A(A[23]), .Z(n4) );
  BUF_X1 U5 ( .A(A[3]), .Z(n6) );
  BUF_X1 U6 ( .A(Cin), .Z(n2) );
  BUF_X2 U7 ( .A(A[0]), .Z(n5) );
  BUF_X1 U8 ( .A(B[15]), .Z(n8) );
  BUF_X1 U9 ( .A(B[7]), .Z(n9) );
  BUF_X1 U10 ( .A(A[7]), .Z(n10) );
endmodule

