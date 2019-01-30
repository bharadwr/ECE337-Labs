/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sun Sep 24 15:47:02 2017
/////////////////////////////////////////////////////////////


module controller ( clk, n_reset, dr, lc, overflow, cnt_up, clear, modwait, op, 
        src1, src2, dest, err );
  output [2:0] op;
  output [3:0] src1;
  output [3:0] src2;
  output [3:0] dest;
  input clk, n_reset, dr, lc, overflow;
  output cnt_up, clear, modwait, err;
  wire   next_hold, N154, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172;
  wire   [4:0] current;
  wire   [4:0] next;

  DFFSR current_hold_reg ( .D(next_hold), .CLK(clk), .R(n_reset), .S(1'b1), 
        .Q(modwait) );
  DFFSR \current_reg[0]  ( .D(next[0]), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current[0]) );
  DFFSR \current_reg[4]  ( .D(next[4]), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current[4]) );
  DFFSR \current_reg[2]  ( .D(next[2]), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current[2]) );
  DFFSR \current_reg[1]  ( .D(next[1]), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current[1]) );
  DFFSR \current_reg[3]  ( .D(next[3]), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current[3]) );
  NAND2X1 U166 ( .A(n172), .B(n171), .Y(N154) );
  AND2X1 U3 ( .A(n135), .B(n123), .Y(n104) );
  INVX4 U4 ( .A(n149), .Y(n68) );
  BUFX2 U5 ( .A(current[1]), .Y(n44) );
  BUFX2 U6 ( .A(n46), .Y(n12) );
  AND2X2 U7 ( .A(n21), .B(n47), .Y(n1) );
  INVX2 U8 ( .A(n161), .Y(n22) );
  INVX2 U9 ( .A(n86), .Y(n2) );
  NAND2X1 U10 ( .A(n40), .B(n1), .Y(n152) );
  INVX1 U11 ( .A(n62), .Y(n3) );
  INVX2 U12 ( .A(n3), .Y(n4) );
  INVX1 U13 ( .A(n46), .Y(n5) );
  INVX1 U14 ( .A(n136), .Y(n6) );
  INVX1 U15 ( .A(src1[2]), .Y(n95) );
  AND2X1 U16 ( .A(n2), .B(n84), .Y(n34) );
  AND2X2 U17 ( .A(n38), .B(n62), .Y(n7) );
  INVX1 U18 ( .A(n7), .Y(n133) );
  INVX2 U19 ( .A(n21), .Y(n8) );
  AND2X2 U20 ( .A(n41), .B(n157), .Y(n9) );
  INVX1 U21 ( .A(n9), .Y(n65) );
  BUFX2 U22 ( .A(n148), .Y(n10) );
  INVX4 U23 ( .A(n45), .Y(n161) );
  INVX1 U24 ( .A(n47), .Y(n11) );
  INVX1 U25 ( .A(n46), .Y(n48) );
  INVX2 U26 ( .A(n39), .Y(n40) );
  INVX2 U27 ( .A(n46), .Y(n47) );
  INVX2 U28 ( .A(n14), .Y(n13) );
  INVX4 U35 ( .A(n44), .Y(n148) );
  INVX2 U36 ( .A(n148), .Y(n14) );
  INVX1 U37 ( .A(n16), .Y(n15) );
  INVX1 U38 ( .A(n59), .Y(n16) );
  AND2X2 U39 ( .A(n37), .B(n62), .Y(n17) );
  INVX1 U40 ( .A(n17), .Y(n82) );
  INVX2 U41 ( .A(current[0]), .Y(n46) );
  INVX1 U42 ( .A(n68), .Y(n18) );
  INVX4 U43 ( .A(n157), .Y(n43) );
  INVX1 U44 ( .A(current[2]), .Y(n19) );
  INVX1 U45 ( .A(n19), .Y(n20) );
  INVX1 U46 ( .A(n45), .Y(n21) );
  AND2X2 U47 ( .A(n41), .B(n46), .Y(n37) );
  AND2X1 U48 ( .A(n6), .B(n81), .Y(n35) );
  INVX1 U49 ( .A(n42), .Y(n23) );
  BUFX2 U50 ( .A(n138), .Y(n24) );
  AND2X2 U51 ( .A(n135), .B(n138), .Y(n25) );
  AND2X2 U52 ( .A(n130), .B(n128), .Y(n32) );
  AND2X2 U53 ( .A(n133), .B(n82), .Y(n33) );
  AND2X2 U54 ( .A(n47), .B(n9), .Y(n36) );
  AND2X2 U55 ( .A(current[0]), .B(n41), .Y(n38) );
  INVX2 U56 ( .A(n20), .Y(n61) );
  INVX2 U57 ( .A(overflow), .Y(n39) );
  BUFX4 U58 ( .A(current[2]), .Y(n41) );
  BUFX4 U59 ( .A(current[4]), .Y(n45) );
  INVX1 U60 ( .A(n157), .Y(n42) );
  INVX1 U61 ( .A(n114), .Y(n115) );
  INVX1 U62 ( .A(n139), .Y(n86) );
  INVX2 U63 ( .A(current[3]), .Y(n157) );
  NAND3X1 U64 ( .A(n13), .B(n21), .C(n36), .Y(n123) );
  NAND3X1 U65 ( .A(n45), .B(n19), .C(n157), .Y(n149) );
  NAND3X1 U66 ( .A(n47), .B(n14), .C(n68), .Y(n131) );
  NAND2X1 U67 ( .A(n14), .B(n21), .Y(n111) );
  INVX2 U68 ( .A(n111), .Y(n53) );
  NOR2X1 U69 ( .A(n42), .B(n41), .Y(n49) );
  NAND3X1 U70 ( .A(n53), .B(n47), .C(n49), .Y(n122) );
  NAND3X1 U71 ( .A(n123), .B(n131), .C(n122), .Y(n57) );
  NAND3X1 U72 ( .A(n43), .B(n148), .C(n161), .Y(n164) );
  INVX2 U73 ( .A(n164), .Y(n62) );
  NAND3X1 U74 ( .A(n43), .B(n44), .C(n161), .Y(n50) );
  INVX2 U75 ( .A(n50), .Y(n59) );
  NAND3X1 U76 ( .A(n5), .B(n61), .C(n59), .Y(n132) );
  NAND3X1 U77 ( .A(n15), .B(n61), .C(n11), .Y(n81) );
  NAND3X1 U78 ( .A(n4), .B(n47), .C(n61), .Y(n168) );
  NAND3X1 U79 ( .A(n33), .B(n35), .C(n168), .Y(n51) );
  INVX2 U80 ( .A(n51), .Y(n73) );
  NAND2X1 U81 ( .A(n13), .B(n61), .Y(n154) );
  INVX2 U82 ( .A(n154), .Y(n158) );
  NAND3X1 U83 ( .A(n158), .B(n23), .C(n21), .Y(n52) );
  INVX2 U84 ( .A(n52), .Y(n67) );
  NAND2X1 U85 ( .A(n47), .B(n67), .Y(n140) );
  NAND2X1 U86 ( .A(n38), .B(n15), .Y(n129) );
  INVX2 U87 ( .A(n129), .Y(n103) );
  NAND2X1 U88 ( .A(n36), .B(n53), .Y(n125) );
  INVX2 U89 ( .A(n125), .Y(n54) );
  NOR2X1 U90 ( .A(n103), .B(n54), .Y(n55) );
  NAND3X1 U91 ( .A(n73), .B(n140), .C(n55), .Y(n56) );
  OR2X1 U92 ( .A(n57), .B(n56), .Y(op[0]) );
  NAND2X1 U93 ( .A(n9), .B(n12), .Y(n101) );
  INVX2 U94 ( .A(n101), .Y(n94) );
  NAND3X1 U95 ( .A(n94), .B(n22), .C(n13), .Y(n84) );
  NAND3X1 U96 ( .A(n148), .B(n12), .C(n68), .Y(n138) );
  NAND3X1 U97 ( .A(n5), .B(n45), .C(n9), .Y(n58) );
  INVX2 U98 ( .A(n58), .Y(n60) );
  NAND2X1 U99 ( .A(n60), .B(n10), .Y(n130) );
  NAND3X1 U100 ( .A(n68), .B(n48), .C(n10), .Y(n128) );
  NAND3X1 U101 ( .A(n84), .B(n138), .C(n32), .Y(src2[0]) );
  NAND2X1 U102 ( .A(n37), .B(n59), .Y(n135) );
  INVX2 U103 ( .A(lc), .Y(n172) );
  NAND2X1 U104 ( .A(n67), .B(n172), .Y(n64) );
  NAND2X1 U105 ( .A(n60), .B(n14), .Y(n118) );
  NAND3X1 U106 ( .A(n4), .B(n61), .C(n11), .Y(n126) );
  NAND2X1 U107 ( .A(n118), .B(n126), .Y(n75) );
  INVX2 U108 ( .A(n75), .Y(n63) );
  OAI21X1 U109 ( .A(n47), .B(n64), .C(n63), .Y(n71) );
  NAND3X1 U110 ( .A(n8), .B(n14), .C(n94), .Y(n170) );
  OAI21X1 U111 ( .A(n14), .B(n65), .C(n111), .Y(n66) );
  OAI21X1 U112 ( .A(n67), .B(n66), .C(n11), .Y(n77) );
  AND2X2 U113 ( .A(n170), .B(n77), .Y(n70) );
  NAND3X1 U114 ( .A(n14), .B(n12), .C(n68), .Y(n139) );
  NOR3X1 U115 ( .A(op[0]), .B(src2[0]), .C(n75), .Y(n69) );
  NAND3X1 U116 ( .A(n70), .B(n2), .C(n69), .Y(n109) );
  INVX2 U117 ( .A(n109), .Y(n98) );
  AOI21X1 U118 ( .A(n71), .B(dr), .C(n98), .Y(n72) );
  NAND3X1 U119 ( .A(n73), .B(n135), .C(n72), .Y(next[3]) );
  NAND3X1 U120 ( .A(n131), .B(n129), .C(n32), .Y(n78) );
  INVX2 U121 ( .A(n78), .Y(n74) );
  NAND2X1 U122 ( .A(n74), .B(n34), .Y(src2[3]) );
  INVX2 U123 ( .A(src2[3]), .Y(n143) );
  INVX2 U124 ( .A(dr), .Y(n171) );
  NAND2X1 U125 ( .A(n75), .B(n171), .Y(n100) );
  AND2X2 U126 ( .A(n100), .B(n109), .Y(n76) );
  NAND3X1 U127 ( .A(n143), .B(n76), .C(n24), .Y(next[4]) );
  INVX2 U128 ( .A(n77), .Y(n79) );
  AOI22X1 U129 ( .A(n79), .B(lc), .C(n40), .D(n78), .Y(n80) );
  OAI21X1 U130 ( .A(dr), .B(n118), .C(n80), .Y(n89) );
  INVX2 U131 ( .A(n81), .Y(src1[3]) );
  NOR2X1 U132 ( .A(src1[3]), .B(n17), .Y(n83) );
  NAND3X1 U133 ( .A(n126), .B(n84), .C(n83), .Y(n85) );
  INVX2 U134 ( .A(n85), .Y(n121) );
  AOI21X1 U135 ( .A(n98), .B(n47), .C(n86), .Y(n87) );
  NAND3X1 U136 ( .A(n121), .B(n25), .C(n87), .Y(n88) );
  OR2X1 U137 ( .A(n89), .B(n88), .Y(next[0]) );
  NAND2X1 U138 ( .A(n41), .B(n148), .Y(n92) );
  XOR2X1 U139 ( .A(n22), .B(n43), .Y(n90) );
  OAI21X1 U140 ( .A(n42), .B(n12), .C(n90), .Y(n91) );
  OAI21X1 U141 ( .A(n92), .B(n91), .C(n132), .Y(src1[2]) );
  INVX2 U142 ( .A(overflow), .Y(n110) );
  INVX2 U143 ( .A(n122), .Y(n93) );
  AOI21X1 U144 ( .A(n94), .B(n13), .C(n93), .Y(n96) );
  NAND3X1 U145 ( .A(n96), .B(n131), .C(n95), .Y(n97) );
  AOI21X1 U146 ( .A(n98), .B(n41), .C(n97), .Y(n99) );
  OAI21X1 U147 ( .A(n110), .B(n128), .C(n99), .Y(n106) );
  OAI21X1 U148 ( .A(n101), .B(n111), .C(n100), .Y(n102) );
  AOI21X1 U149 ( .A(overflow), .B(n103), .C(n102), .Y(n105) );
  NAND3X1 U150 ( .A(n130), .B(n104), .C(n105), .Y(n114) );
  OR2X1 U151 ( .A(n106), .B(n114), .Y(next[2]) );
  NAND2X1 U152 ( .A(n133), .B(n140), .Y(n108) );
  NAND2X1 U153 ( .A(n2), .B(n168), .Y(n107) );
  NOR2X1 U154 ( .A(n108), .B(n107), .Y(n117) );
  OAI22X1 U155 ( .A(n110), .B(n131), .C(n13), .D(n109), .Y(n113) );
  OAI21X1 U156 ( .A(n47), .B(n111), .C(n128), .Y(n112) );
  NOR2X1 U157 ( .A(n113), .B(n112), .Y(n116) );
  NAND3X1 U158 ( .A(n117), .B(n115), .C(n116), .Y(next[1]) );
  INVX2 U159 ( .A(n118), .Y(err) );
  INVX2 U160 ( .A(n140), .Y(clear) );
  INVX2 U161 ( .A(n123), .Y(n119) );
  NOR2X1 U162 ( .A(clear), .B(n119), .Y(n120) );
  NAND3X1 U163 ( .A(n121), .B(n24), .C(n120), .Y(dest[0]) );
  NAND3X1 U164 ( .A(n25), .B(n123), .C(n122), .Y(n124) );
  INVX2 U165 ( .A(n124), .Y(n141) );
  NAND2X1 U167 ( .A(n141), .B(n33), .Y(dest[1]) );
  NAND3X1 U168 ( .A(n34), .B(n126), .C(n125), .Y(n127) );
  INVX2 U169 ( .A(n127), .Y(n142) );
  NAND2X1 U170 ( .A(n142), .B(n33), .Y(dest[2]) );
  NAND3X1 U171 ( .A(n35), .B(n25), .C(n34), .Y(dest[3]) );
  NAND3X1 U172 ( .A(n25), .B(n129), .C(n128), .Y(src2[1]) );
  NAND3X1 U173 ( .A(n25), .B(n131), .C(n130), .Y(src2[2]) );
  INVX2 U174 ( .A(n132), .Y(n136) );
  NOR2X1 U175 ( .A(n136), .B(n7), .Y(n134) );
  NAND3X1 U176 ( .A(n139), .B(n135), .C(n134), .Y(src1[0]) );
  NOR2X1 U177 ( .A(n17), .B(n136), .Y(n137) );
  NAND3X1 U178 ( .A(n139), .B(n138), .C(n137), .Y(src1[1]) );
  NAND3X1 U179 ( .A(n142), .B(n141), .C(n140), .Y(op[1]) );
  NAND3X1 U180 ( .A(n25), .B(n143), .C(n168), .Y(op[2]) );
  NAND2X1 U181 ( .A(lc), .B(n21), .Y(n145) );
  NAND3X1 U182 ( .A(n8), .B(dr), .C(n23), .Y(n144) );
  MUX2X1 U183 ( .B(n145), .A(n144), .S(n47), .Y(n146) );
  AOI21X1 U184 ( .A(n42), .B(n21), .C(n146), .Y(n147) );
  NAND2X1 U185 ( .A(n41), .B(n14), .Y(n155) );
  NOR2X1 U186 ( .A(n147), .B(n155), .Y(n153) );
  NAND3X1 U187 ( .A(n8), .B(n13), .C(n23), .Y(n150) );
  AOI22X1 U188 ( .A(n150), .B(n18), .C(n40), .D(n48), .Y(n151) );
  AOI21X1 U189 ( .A(n153), .B(n152), .C(n151), .Y(n169) );
  NAND2X1 U190 ( .A(n155), .B(n154), .Y(n160) );
  INVX2 U191 ( .A(modwait), .Y(n156) );
  MUX2X1 U192 ( .B(n160), .A(n156), .S(n8), .Y(n166) );
  NAND3X1 U193 ( .A(N154), .B(n158), .C(n23), .Y(n159) );
  OAI21X1 U194 ( .A(n172), .B(n160), .C(n159), .Y(n162) );
  NAND3X1 U195 ( .A(n162), .B(n21), .C(n11), .Y(n163) );
  OAI21X1 U196 ( .A(n171), .B(n164), .C(n163), .Y(n165) );
  AOI21X1 U197 ( .A(n42), .B(n166), .C(n165), .Y(n167) );
  NAND3X1 U198 ( .A(n169), .B(n168), .C(n167), .Y(next_hold) );
  INVX2 U199 ( .A(n170), .Y(cnt_up) );
endmodule


module sync_low_1 ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   Intermediate;

  DFFSR Intermediate_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        Intermediate) );
  DFFSR sync_out_reg ( .D(Intermediate), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sync_out) );
endmodule


module sync_low_0 ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   Intermediate;

  DFFSR Intermediate_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        Intermediate) );
  DFFSR sync_out_reg ( .D(Intermediate), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sync_out) );
endmodule


module magnitude_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HAX1 U1_1_14 ( .A(A[14]), .B(carry[14]), .YC(carry[15]), .YS(SUM[14]) );
  HAX1 U1_1_13 ( .A(A[13]), .B(carry[13]), .YC(carry[14]), .YS(SUM[13]) );
  HAX1 U1_1_12 ( .A(A[12]), .B(carry[12]), .YC(carry[13]), .YS(SUM[12]) );
  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(carry[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
endmodule


module magnitude ( in, out );
  input [16:0] in;
  output [15:0] out;
  wire   N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n33, n34;

  OAI21X1 U18 ( .A(n1), .B(n9), .C(n17), .Y(out[9]) );
  NAND2X1 U19 ( .A(in[16]), .B(N27), .Y(n17) );
  OAI21X1 U20 ( .A(n1), .B(n10), .C(n18), .Y(out[8]) );
  NAND2X1 U21 ( .A(N26), .B(in[16]), .Y(n18) );
  OAI21X1 U22 ( .A(n1), .B(n11), .C(n19), .Y(out[7]) );
  NAND2X1 U23 ( .A(N25), .B(in[16]), .Y(n19) );
  OAI21X1 U24 ( .A(n1), .B(n12), .C(n20), .Y(out[6]) );
  NAND2X1 U25 ( .A(N24), .B(in[16]), .Y(n20) );
  OAI21X1 U26 ( .A(n1), .B(n13), .C(n21), .Y(out[5]) );
  NAND2X1 U27 ( .A(N23), .B(in[16]), .Y(n21) );
  OAI21X1 U28 ( .A(n1), .B(n14), .C(n22), .Y(out[4]) );
  NAND2X1 U29 ( .A(N22), .B(in[16]), .Y(n22) );
  OAI21X1 U30 ( .A(n1), .B(n15), .C(n23), .Y(out[3]) );
  NAND2X1 U31 ( .A(N21), .B(in[16]), .Y(n23) );
  OAI21X1 U32 ( .A(n1), .B(n16), .C(n24), .Y(out[2]) );
  NAND2X1 U33 ( .A(N20), .B(n1), .Y(n24) );
  OAI21X1 U34 ( .A(n1), .B(n33), .C(n25), .Y(out[1]) );
  NAND2X1 U35 ( .A(N19), .B(n1), .Y(n25) );
  OAI21X1 U36 ( .A(n1), .B(n3), .C(n26), .Y(out[15]) );
  NAND2X1 U37 ( .A(N33), .B(in[16]), .Y(n26) );
  OAI21X1 U38 ( .A(n1), .B(n4), .C(n27), .Y(out[14]) );
  NAND2X1 U39 ( .A(N32), .B(n1), .Y(n27) );
  OAI21X1 U40 ( .A(n1), .B(n5), .C(n28), .Y(out[13]) );
  NAND2X1 U41 ( .A(N31), .B(in[16]), .Y(n28) );
  OAI21X1 U42 ( .A(n1), .B(n6), .C(n29), .Y(out[12]) );
  NAND2X1 U43 ( .A(N30), .B(in[16]), .Y(n29) );
  OAI21X1 U44 ( .A(in[16]), .B(n7), .C(n30), .Y(out[11]) );
  NAND2X1 U45 ( .A(N29), .B(in[16]), .Y(n30) );
  OAI21X1 U46 ( .A(in[16]), .B(n8), .C(n31), .Y(out[10]) );
  NAND2X1 U47 ( .A(N28), .B(in[16]), .Y(n31) );
  OAI21X1 U48 ( .A(in[16]), .B(n34), .C(n32), .Y(out[0]) );
  NAND2X1 U49 ( .A(N18), .B(in[16]), .Y(n32) );
  magnitude_DW01_inc_0 add_16 ( .A({n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, 
        n13, n14, n15, n16, n33, n34}), .SUM({N33, N32, N31, N30, N29, N28, 
        N27, N26, N25, N24, N23, N22, N21, N20, N19, N18}) );
  INVX2 U2 ( .A(n2), .Y(n1) );
  INVX2 U3 ( .A(in[16]), .Y(n2) );
  INVX2 U4 ( .A(in[15]), .Y(n3) );
  INVX2 U5 ( .A(in[14]), .Y(n4) );
  INVX2 U6 ( .A(in[13]), .Y(n5) );
  INVX2 U7 ( .A(in[12]), .Y(n6) );
  INVX2 U8 ( .A(in[11]), .Y(n7) );
  INVX2 U9 ( .A(in[10]), .Y(n8) );
  INVX2 U10 ( .A(in[9]), .Y(n9) );
  INVX2 U11 ( .A(in[8]), .Y(n10) );
  INVX2 U12 ( .A(in[7]), .Y(n11) );
  INVX2 U13 ( .A(in[6]), .Y(n12) );
  INVX2 U14 ( .A(in[5]), .Y(n13) );
  INVX2 U15 ( .A(in[4]), .Y(n14) );
  INVX2 U16 ( .A(in[3]), .Y(n15) );
  INVX2 U17 ( .A(in[2]), .Y(n16) );
  INVX2 U50 ( .A(in[1]), .Y(n33) );
  INVX2 U51 ( .A(in[0]), .Y(n34) );
endmodule


module datapath_decode ( op, w_en, w_data_sel, alu_op );
  input [2:0] op;
  output [1:0] w_data_sel;
  output [1:0] alu_op;
  output w_en;
  wire   n4, n5, n1, n2, n3;

  NAND3X1 U6 ( .A(n2), .B(n3), .C(n1), .Y(w_en) );
  NOR2X1 U7 ( .A(n1), .B(w_data_sel[1]), .Y(w_data_sel[0]) );
  NAND2X1 U8 ( .A(op[1]), .B(n3), .Y(w_data_sel[1]) );
  OAI21X1 U9 ( .A(n3), .B(n4), .C(n5), .Y(alu_op[1]) );
  NAND3X1 U10 ( .A(op[0]), .B(n2), .C(op[2]), .Y(n5) );
  NAND2X1 U11 ( .A(op[1]), .B(n1), .Y(n4) );
  NOR2X1 U12 ( .A(op[0]), .B(n3), .Y(alu_op[0]) );
  INVX2 U3 ( .A(op[0]), .Y(n1) );
  INVX2 U4 ( .A(op[1]), .Y(n2) );
  INVX2 U5 ( .A(op[2]), .Y(n3) );
endmodule


module alu_DW_mult_uns_1 ( a, b, product );
  input [30:0] a;
  input [15:0] b;
  output [46:0] product;
  wire   n1, n6, n7, n13, n18, n19, n25, n31, n36, n37, n40, n42, n48, n49,
         n51, n52, n53, n56, n59, n60, n62, n64, n65, n66, n67, n68, n69, n70,
         n72, n73, n74, n75, n77, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n109, n111, n112, n113,
         n114, n115, n116, n120, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n133, n134, n135, n136, n137, n140, n142, n144, n145,
         n146, n147, n148, n149, n151, n154, n155, n156, n159, n160, n161,
         n162, n163, n164, n165, n166, n169, n170, n171, n172, n173, n174,
         n177, n178, n179, n181, n182, n183, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n197, n198, n199, n200, n201, n202,
         n205, n206, n207, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n248, n249, n250,
         n251, n256, n257, n258, n259, n264, n265, n266, n267, n275, n279,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n545, n548, n549,
         n551, n552, n554, n555, n557, n558, n561, n563, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n733, n734,
         n737, n739, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n893, n894,
         n895, n896, n897, n898, n899, n917, n918, n995, n996, n997, n998,
         n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008,
         n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018,
         n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028,
         n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038,
         n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048,
         n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058,
         n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078,
         n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088,
         n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098,
         n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108,
         n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118,
         n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128,
         n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168,
         n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178,
         n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188,
         n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198,
         n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208,
         n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218,
         n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228,
         n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238,
         n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248,
         n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258,
         n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268,
         n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278,
         n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288,
         n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298,
         n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308,
         n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318,
         n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328,
         n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338,
         n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348,
         n1349, n1350, n1351, n1352, n1353, n1354, n1355;
  assign n1 = a[16];
  assign n7 = a[18];
  assign n13 = a[20];
  assign n19 = a[22];
  assign n25 = a[24];
  assign n31 = a[26];
  assign n37 = a[28];
  assign n49 = b[0];
  assign n541 = a[30];
  assign n877 = b[15];
  assign n878 = b[14];
  assign n879 = b[13];
  assign n880 = b[12];
  assign n881 = b[11];
  assign n882 = b[10];
  assign n883 = b[9];
  assign n884 = b[8];
  assign n885 = b[7];
  assign n886 = b[6];
  assign n887 = b[5];
  assign n888 = b[4];
  assign n889 = b[3];
  assign n890 = b[2];
  assign n891 = b[1];

  NAND2X1 U58 ( .A(n292), .B(n293), .Y(n72) );
  AOI21X1 U60 ( .A(n74), .B(n1269), .C(n75), .Y(n73) );
  NOR2X1 U61 ( .A(n1191), .B(n1213), .Y(n74) );
  OAI21X1 U62 ( .A(n1219), .B(n1191), .C(n77), .Y(n75) );
  OAI21X1 U66 ( .A(n80), .B(n140), .C(n81), .Y(n79) );
  NAND2X1 U67 ( .A(n82), .B(n104), .Y(n80) );
  AOI21X1 U68 ( .A(n82), .B(n105), .C(n83), .Y(n81) );
  NOR2X1 U69 ( .A(n84), .B(n93), .Y(n82) );
  OAI21X1 U70 ( .A(n94), .B(n84), .C(n85), .Y(n83) );
  NOR2X1 U73 ( .A(n294), .B(n297), .Y(n84) );
  NAND2X1 U74 ( .A(n294), .B(n297), .Y(n85) );
  XOR2X1 U75 ( .A(n95), .B(n56), .Y(product[44]) );
  AOI21X1 U76 ( .A(n1302), .B(n87), .C(n88), .Y(n86) );
  NOR2X1 U77 ( .A(n1213), .B(n89), .Y(n87) );
  OAI21X1 U78 ( .A(n89), .B(n1220), .C(n90), .Y(n88) );
  NAND2X1 U79 ( .A(n91), .B(n100), .Y(n89) );
  AOI21X1 U80 ( .A(n91), .B(n101), .C(n92), .Y(n90) );
  NAND2X1 U83 ( .A(n94), .B(n91), .Y(n56) );
  NOR2X1 U85 ( .A(n298), .B(n301), .Y(n93) );
  NAND2X1 U86 ( .A(n298), .B(n301), .Y(n94) );
  AOI21X1 U88 ( .A(n1302), .B(n96), .C(n97), .Y(n95) );
  NOR2X1 U89 ( .A(n98), .B(n1213), .Y(n96) );
  OAI21X1 U90 ( .A(n1220), .B(n98), .C(n99), .Y(n97) );
  NOR2X1 U93 ( .A(n102), .B(n137), .Y(n100) );
  OAI21X1 U94 ( .A(n140), .B(n102), .C(n103), .Y(n101) );
  NOR2X1 U97 ( .A(n106), .B(n130), .Y(n104) );
  OAI21X1 U98 ( .A(n1100), .B(n133), .C(n107), .Y(n105) );
  NAND2X1 U99 ( .A(n1199), .B(n1006), .Y(n106) );
  AOI21X1 U100 ( .A(n120), .B(n1199), .C(n109), .Y(n107) );
  NAND2X1 U106 ( .A(n302), .B(n307), .Y(n111) );
  AOI21X1 U108 ( .A(n1302), .B(n113), .C(n114), .Y(n112) );
  NOR2X1 U109 ( .A(n1213), .B(n115), .Y(n113) );
  OAI21X1 U110 ( .A(n115), .B(n1220), .C(n116), .Y(n114) );
  NAND2X1 U111 ( .A(n1006), .B(n128), .Y(n115) );
  AOI21X1 U112 ( .A(n1006), .B(n129), .C(n120), .Y(n116) );
  NAND2X1 U120 ( .A(n308), .B(n313), .Y(n122) );
  XOR2X1 U121 ( .A(n134), .B(n59), .Y(product[41]) );
  AOI21X1 U122 ( .A(n1302), .B(n124), .C(n125), .Y(n123) );
  NOR2X1 U123 ( .A(n126), .B(n1213), .Y(n124) );
  OAI21X1 U124 ( .A(n1219), .B(n126), .C(n127), .Y(n125) );
  NOR2X1 U127 ( .A(n130), .B(n137), .Y(n128) );
  OAI21X1 U128 ( .A(n140), .B(n130), .C(n133), .Y(n129) );
  NAND2X1 U131 ( .A(n133), .B(n279), .Y(n59) );
  NOR2X1 U133 ( .A(n314), .B(n321), .Y(n130) );
  NAND2X1 U134 ( .A(n314), .B(n321), .Y(n133) );
  XOR2X1 U135 ( .A(n145), .B(n60), .Y(product[40]) );
  AOI21X1 U136 ( .A(n1302), .B(n135), .C(n136), .Y(n134) );
  NOR2X1 U137 ( .A(n137), .B(n1213), .Y(n135) );
  OAI21X1 U138 ( .A(n1220), .B(n137), .C(n140), .Y(n136) );
  NAND2X1 U141 ( .A(n1007), .B(n1222), .Y(n137) );
  AOI21X1 U142 ( .A(n151), .B(n1007), .C(n142), .Y(n140) );
  NAND2X1 U145 ( .A(n144), .B(n1007), .Y(n60) );
  NAND2X1 U148 ( .A(n322), .B(n329), .Y(n144) );
  AOI21X1 U150 ( .A(n1302), .B(n146), .C(n147), .Y(n145) );
  NOR2X1 U151 ( .A(n148), .B(n1213), .Y(n146) );
  OAI21X1 U152 ( .A(n1219), .B(n148), .C(n149), .Y(n147) );
  NAND2X1 U160 ( .A(n339), .B(n330), .Y(n149) );
  XOR2X1 U161 ( .A(n163), .B(n62), .Y(product[38]) );
  AOI21X1 U162 ( .A(n155), .B(n1302), .C(n156), .Y(n154) );
  NAND2X1 U165 ( .A(n159), .B(n171), .Y(n53) );
  AOI21X1 U166 ( .A(n159), .B(n172), .C(n160), .Y(n52) );
  NOR2X1 U167 ( .A(n161), .B(n166), .Y(n159) );
  OAI21X1 U168 ( .A(n161), .B(n169), .C(n162), .Y(n160) );
  NAND2X1 U169 ( .A(n162), .B(n282), .Y(n62) );
  NOR2X1 U171 ( .A(n340), .B(n349), .Y(n161) );
  NAND2X1 U172 ( .A(n340), .B(n349), .Y(n162) );
  AOI21X1 U174 ( .A(n164), .B(n1302), .C(n165), .Y(n163) );
  NOR2X1 U175 ( .A(n999), .B(n173), .Y(n164) );
  OAI21X1 U176 ( .A(n174), .B(n166), .C(n169), .Y(n165) );
  NOR2X1 U181 ( .A(n361), .B(n350), .Y(n166) );
  NAND2X1 U182 ( .A(n1035), .B(n361), .Y(n169) );
  XOR2X1 U183 ( .A(n179), .B(n64), .Y(product[36]) );
  AOI21X1 U184 ( .A(n171), .B(n1302), .C(n1124), .Y(n170) );
  NOR2X1 U189 ( .A(n182), .B(n177), .Y(n171) );
  OAI21X1 U190 ( .A(n177), .B(n183), .C(n178), .Y(n172) );
  NAND2X1 U191 ( .A(n178), .B(n284), .Y(n64) );
  NOR2X1 U193 ( .A(n373), .B(n362), .Y(n177) );
  NAND2X1 U194 ( .A(n373), .B(n362), .Y(n178) );
  XNOR2X1 U195 ( .A(n1302), .B(n65), .Y(product[35]) );
  AOI21X1 U196 ( .A(n285), .B(n1302), .C(n181), .Y(n179) );
  NAND2X1 U199 ( .A(n183), .B(n285), .Y(n65) );
  NOR2X1 U201 ( .A(n387), .B(n374), .Y(n182) );
  NAND2X1 U202 ( .A(n387), .B(n374), .Y(n183) );
  XOR2X1 U203 ( .A(n191), .B(n66), .Y(product[34]) );
  OAI21X1 U204 ( .A(n213), .B(n185), .C(n186), .Y(n51) );
  NAND2X1 U205 ( .A(n199), .B(n187), .Y(n185) );
  AOI21X1 U206 ( .A(n200), .B(n187), .C(n188), .Y(n186) );
  NOR2X1 U207 ( .A(n194), .B(n189), .Y(n187) );
  OAI21X1 U208 ( .A(n189), .B(n197), .C(n190), .Y(n188) );
  NAND2X1 U209 ( .A(n190), .B(n286), .Y(n66) );
  NOR2X1 U211 ( .A(n401), .B(n388), .Y(n189) );
  NAND2X1 U212 ( .A(n401), .B(n1052), .Y(n190) );
  XOR2X1 U213 ( .A(n198), .B(n67), .Y(product[33]) );
  AOI21X1 U214 ( .A(n996), .B(n192), .C(n193), .Y(n191) );
  NOR2X1 U215 ( .A(n1187), .B(n201), .Y(n192) );
  OAI21X1 U216 ( .A(n202), .B(n1187), .C(n197), .Y(n193) );
  NAND2X1 U219 ( .A(n197), .B(n287), .Y(n67) );
  NOR2X1 U221 ( .A(n415), .B(n402), .Y(n194) );
  NAND2X1 U222 ( .A(n415), .B(n402), .Y(n197) );
  XOR2X1 U223 ( .A(n207), .B(n68), .Y(product[32]) );
  AOI21X1 U224 ( .A(n1026), .B(n996), .C(n1123), .Y(n198) );
  NOR2X1 U229 ( .A(n205), .B(n210), .Y(n199) );
  OAI21X1 U230 ( .A(n205), .B(n211), .C(n206), .Y(n200) );
  NAND2X1 U231 ( .A(n206), .B(n288), .Y(n68) );
  NOR2X1 U233 ( .A(n429), .B(n416), .Y(n205) );
  NAND2X1 U234 ( .A(n429), .B(n1072), .Y(n206) );
  XNOR2X1 U235 ( .A(n996), .B(n69), .Y(product[31]) );
  AOI21X1 U236 ( .A(n289), .B(n996), .C(n209), .Y(n207) );
  NAND2X1 U239 ( .A(n211), .B(n289), .Y(n69) );
  NOR2X1 U241 ( .A(n443), .B(n430), .Y(n210) );
  NAND2X1 U242 ( .A(n443), .B(n430), .Y(n211) );
  XNOR2X1 U243 ( .A(n218), .B(n70), .Y(product[30]) );
  AOI21X1 U245 ( .A(n222), .B(n214), .C(n215), .Y(n213) );
  NOR2X1 U246 ( .A(n219), .B(n1049), .Y(n214) );
  OAI21X1 U247 ( .A(n216), .B(n220), .C(n217), .Y(n215) );
  NAND2X1 U248 ( .A(n217), .B(n290), .Y(n70) );
  NOR2X1 U250 ( .A(n457), .B(n444), .Y(n216) );
  NAND2X1 U251 ( .A(n457), .B(n444), .Y(n217) );
  OAI21X1 U252 ( .A(n221), .B(n219), .C(n220), .Y(n218) );
  NOR2X1 U253 ( .A(n469), .B(n458), .Y(n219) );
  NAND2X1 U254 ( .A(n469), .B(n458), .Y(n220) );
  OAI21X1 U256 ( .A(n223), .B(n233), .C(n224), .Y(n222) );
  NAND2X1 U257 ( .A(n1195), .B(n1192), .Y(n223) );
  AOI21X1 U258 ( .A(n1194), .B(n1192), .C(n1196), .Y(n224) );
  AOI21X1 U267 ( .A(n240), .B(n234), .C(n235), .Y(n233) );
  NOR2X1 U268 ( .A(n238), .B(n236), .Y(n234) );
  OAI21X1 U269 ( .A(n236), .B(n239), .C(n237), .Y(n235) );
  NOR2X1 U270 ( .A(n501), .B(n492), .Y(n236) );
  NAND2X1 U271 ( .A(n501), .B(n492), .Y(n237) );
  NOR2X1 U272 ( .A(n509), .B(n502), .Y(n238) );
  NAND2X1 U273 ( .A(n509), .B(n502), .Y(n239) );
  OAI21X1 U274 ( .A(n243), .B(n241), .C(n242), .Y(n240) );
  NOR2X1 U275 ( .A(n517), .B(n510), .Y(n241) );
  NAND2X1 U276 ( .A(n517), .B(n510), .Y(n242) );
  AOI21X1 U277 ( .A(n1193), .B(n248), .C(n1197), .Y(n243) );
  OAI21X1 U282 ( .A(n251), .B(n249), .C(n250), .Y(n248) );
  NOR2X1 U283 ( .A(n529), .B(n524), .Y(n249) );
  NAND2X1 U284 ( .A(n529), .B(n524), .Y(n250) );
  AOI21X1 U285 ( .A(n256), .B(n1200), .C(n1201), .Y(n251) );
  OAI21X1 U290 ( .A(n257), .B(n259), .C(n258), .Y(n256) );
  NOR2X1 U291 ( .A(n537), .B(n534), .Y(n257) );
  NAND2X1 U292 ( .A(n537), .B(n534), .Y(n258) );
  AOI21X1 U293 ( .A(n264), .B(n1202), .C(n1203), .Y(n259) );
  OAI21X1 U298 ( .A(n265), .B(n267), .C(n266), .Y(n264) );
  NOR2X1 U299 ( .A(n723), .B(n540), .Y(n265) );
  NAND2X1 U300 ( .A(n723), .B(n540), .Y(n266) );
  AOI21X1 U301 ( .A(n1204), .B(n1189), .C(n1190), .Y(n267) );
  XOR2X1 U308 ( .A(n573), .B(n291), .Y(n292) );
  FAX1 U310 ( .A(n296), .B(n584), .C(n299), .YC(n293), .YS(n294) );
  FAX1 U312 ( .A(n601), .B(n300), .C(n303), .YC(n297), .YS(n298) );
  FAX1 U313 ( .A(n305), .B(n574), .C(n585), .YC(n299), .YS(n300) );
  FAX1 U314 ( .A(n311), .B(n304), .C(n309), .YC(n301), .YS(n302) );
  FAX1 U315 ( .A(n306), .B(n586), .C(n602), .YC(n303), .YS(n304) );
  FAX1 U318 ( .A(n603), .B(n619), .C(n312), .YC(n309), .YS(n310) );
  FAX1 U319 ( .A(n575), .B(n319), .C(n587), .YC(n311), .YS(n312) );
  FAX1 U320 ( .A(n318), .B(n316), .C(n323), .YC(n313), .YS(n314) );
  FAX1 U321 ( .A(n604), .B(n327), .C(n325), .YC(n315), .YS(n316) );
  FAX1 U322 ( .A(n320), .B(n588), .C(n620), .YC(n317), .YS(n318) );
  FAX1 U324 ( .A(n333), .B(n324), .C(n331), .YC(n321), .YS(n322) );
  FAX1 U325 ( .A(n328), .B(n335), .C(n326), .YC(n323), .YS(n324) );
  FAX1 U326 ( .A(n605), .B(n621), .C(n637), .YC(n325), .YS(n326) );
  FAX1 U327 ( .A(n337), .B(n576), .C(n589), .YC(n327), .YS(n328) );
  FAX1 U328 ( .A(n343), .B(n332), .C(n341), .YC(n329), .YS(n330) );
  FAX1 U331 ( .A(n338), .B(n590), .C(n638), .YC(n335), .YS(n336) );
  FAX1 U335 ( .A(n607), .B(n348), .C(n357), .YC(n343), .YS(n344) );
  FAX1 U336 ( .A(n623), .B(n639), .C(n655), .YC(n345), .YS(n346) );
  FAX1 U338 ( .A(n363), .B(n354), .C(n352), .YC(n349), .YS(n350) );
  FAX1 U340 ( .A(n371), .B(n369), .C(n358), .YC(n353), .YS(n354) );
  FAX1 U341 ( .A(n608), .B(n624), .C(n640), .YC(n355), .YS(n356) );
  FAX1 U342 ( .A(n360), .B(n592), .C(n656), .YC(n357), .YS(n358) );
  FAX1 U347 ( .A(n657), .B(n641), .C(n372), .YC(n367), .YS(n368) );
  FAX1 U348 ( .A(n625), .B(n673), .C(n609), .YC(n369), .YS(n370) );
  FAX1 U349 ( .A(n578), .B(n1166), .C(n593), .YC(n371), .YS(n372) );
  FAX1 U350 ( .A(n378), .B(n389), .C(n376), .YC(n373), .YS(n374) );
  FAX1 U352 ( .A(n395), .B(n384), .C(n382), .YC(n377), .YS(n378) );
  FAX1 U353 ( .A(n626), .B(n399), .C(n397), .YC(n379), .YS(n380) );
  FAX1 U354 ( .A(n642), .B(n610), .C(n658), .YC(n381), .YS(n382) );
  FAX1 U355 ( .A(n386), .B(n594), .C(n674), .YC(n383), .YS(n384) );
  FAX1 U357 ( .A(n392), .B(n1254), .C(n390), .YC(n387), .YS(n388) );
  FAX1 U361 ( .A(n675), .B(n659), .C(n709), .YC(n395), .YS(n396) );
  FAX1 U364 ( .A(n406), .B(n417), .C(n404), .YC(n401), .YS(n402) );
  FAX1 U365 ( .A(n421), .B(n408), .C(n419), .YC(n403), .YS(n404) );
  FAX1 U368 ( .A(n676), .B(n644), .C(n660), .YC(n409), .YS(n410) );
  FAX1 U370 ( .A(n1074), .B(n580), .C(n596), .YC(n413), .YS(n414) );
  FAX1 U371 ( .A(n420), .B(n1001), .C(n418), .YC(n415), .YS(n416) );
  FAX1 U373 ( .A(n439), .B(n426), .C(n424), .YC(n419), .YS(n420) );
  FAX1 U374 ( .A(n1041), .B(n428), .C(n437), .YC(n421), .YS(n422) );
  FAX1 U379 ( .A(n1119), .B(n436), .C(n447), .YC(n431), .YS(n432) );
  FAX1 U382 ( .A(n598), .B(n662), .C(n646), .YC(n437), .YS(n438) );
  FAX1 U384 ( .A(n694), .B(n582), .C(n710), .YC(n441), .YS(n442) );
  FAX1 U387 ( .A(n465), .B(n454), .C(n452), .YC(n447), .YS(n448) );
  FAX1 U388 ( .A(n615), .B(n467), .C(n456), .YC(n449), .YS(n450) );
  FAX1 U389 ( .A(n663), .B(n647), .C(n679), .YC(n451), .YS(n452) );
  HAX1 U391 ( .A(n711), .B(n565), .YC(n455), .YS(n456) );
  FAX1 U392 ( .A(n462), .B(n471), .C(n460), .YC(n457), .YS(n458) );
  FAX1 U395 ( .A(n680), .B(n616), .C(n479), .YC(n463), .YS(n464) );
  FAX1 U397 ( .A(n712), .B(n664), .C(n600), .YC(n467), .YS(n468) );
  FAX1 U398 ( .A(n474), .B(n1017), .C(n472), .YC(n469), .YS(n470) );
  FAX1 U399 ( .A(n478), .B(n476), .C(n485), .YC(n471), .YS(n472) );
  FAX1 U400 ( .A(n480), .B(n489), .C(n487), .YC(n473), .YS(n474) );
  FAX1 U402 ( .A(n649), .B(n681), .C(n697), .YC(n477), .YS(n478) );
  HAX1 U403 ( .A(n713), .B(n617), .YC(n479), .YS(n480) );
  FAX1 U404 ( .A(n486), .B(n493), .C(n484), .YC(n481), .YS(n482) );
  FAX1 U405 ( .A(n490), .B(n488), .C(n495), .YC(n483), .YS(n484) );
  FAX1 U407 ( .A(n698), .B(n650), .C(n682), .YC(n487), .YS(n488) );
  FAX1 U408 ( .A(n714), .B(n666), .C(n618), .YC(n489), .YS(n490) );
  FAX1 U409 ( .A(n496), .B(n503), .C(n494), .YC(n491), .YS(n492) );
  FAX1 U410 ( .A(n507), .B(n505), .C(n498), .YC(n493), .YS(n494) );
  FAX1 U411 ( .A(n699), .B(n651), .C(n500), .YC(n495), .YS(n496) );
  HAX1 U413 ( .A(n715), .B(n635), .YC(n499), .YS(n500) );
  FAX1 U414 ( .A(n506), .B(n511), .C(n504), .YC(n501), .YS(n502) );
  FAX1 U415 ( .A(n515), .B(n513), .C(n508), .YC(n503), .YS(n504) );
  FAX1 U416 ( .A(n700), .B(n668), .C(n652), .YC(n505), .YS(n506) );
  FAX1 U417 ( .A(n716), .B(n684), .C(n636), .YC(n507), .YS(n508) );
  FAX1 U418 ( .A(n514), .B(n519), .C(n512), .YC(n509), .YS(n510) );
  FAX1 U419 ( .A(n669), .B(n516), .C(n521), .YC(n511), .YS(n512) );
  FAX1 U420 ( .A(n701), .B(n568), .C(n685), .YC(n513), .YS(n514) );
  HAX1 U421 ( .A(n717), .B(n653), .YC(n515), .YS(n516) );
  FAX1 U422 ( .A(n525), .B(n522), .C(n520), .YC(n517), .YS(n518) );
  FAX1 U423 ( .A(n686), .B(n670), .C(n527), .YC(n519), .YS(n520) );
  FAX1 U424 ( .A(n718), .B(n702), .C(n654), .YC(n521), .YS(n522) );
  FAX1 U425 ( .A(n528), .B(n531), .C(n526), .YC(n523), .YS(n524) );
  FAX1 U426 ( .A(n703), .B(n569), .C(n687), .YC(n525), .YS(n526) );
  HAX1 U427 ( .A(n719), .B(n671), .YC(n527), .YS(n528) );
  FAX1 U428 ( .A(n688), .B(n535), .C(n532), .YC(n529), .YS(n530) );
  FAX1 U429 ( .A(n720), .B(n704), .C(n672), .YC(n531), .YS(n532) );
  FAX1 U430 ( .A(n689), .B(n705), .C(n536), .YC(n533), .YS(n534) );
  HAX1 U431 ( .A(n721), .B(n570), .YC(n535), .YS(n536) );
  FAX1 U432 ( .A(n722), .B(n690), .C(n706), .YC(n537), .YS(n538) );
  HAX1 U433 ( .A(n571), .B(n707), .YC(n539), .YS(n540) );
  NOR2X1 U434 ( .A(n726), .B(n918), .Y(n573) );
  NOR2X1 U435 ( .A(n918), .B(n727), .Y(n295) );
  NOR2X1 U436 ( .A(n918), .B(n728), .Y(n574) );
  NOR2X1 U437 ( .A(n918), .B(n729), .Y(n305) );
  NOR2X1 U438 ( .A(n730), .B(n918), .Y(n575) );
  NOR2X1 U439 ( .A(n918), .B(n731), .Y(n319) );
  NOR2X1 U440 ( .A(n918), .B(n1319), .Y(n576) );
  NOR2X1 U441 ( .A(n733), .B(n918), .Y(n337) );
  NOR2X1 U442 ( .A(n918), .B(n734), .Y(n577) );
  NOR2X1 U443 ( .A(n918), .B(n1313), .Y(n359) );
  NOR2X1 U444 ( .A(n1311), .B(n918), .Y(n578) );
  NOR2X1 U445 ( .A(n918), .B(n737), .Y(n385) );
  NOR2X1 U446 ( .A(n918), .B(n1307), .Y(n579) );
  NOR2X1 U447 ( .A(n918), .B(n739), .Y(n580) );
  NOR2X1 U448 ( .A(n918), .B(n1303), .Y(n581) );
  OAI22X1 U466 ( .A(n757), .B(n1221), .C(n918), .D(n1248), .Y(n565) );
  OAI22X1 U469 ( .A(n918), .B(n1221), .C(n741), .D(n1248), .Y(n584) );
  OAI22X1 U470 ( .A(n741), .B(n1221), .C(n742), .D(n1243), .Y(n585) );
  OAI22X1 U471 ( .A(n742), .B(n1221), .C(n743), .D(n1243), .Y(n586) );
  OAI22X1 U472 ( .A(n743), .B(n1221), .C(n744), .D(n1243), .Y(n587) );
  OAI22X1 U473 ( .A(n744), .B(n1221), .C(n745), .D(n1243), .Y(n588) );
  OAI22X1 U474 ( .A(n745), .B(n1221), .C(n746), .D(n1243), .Y(n589) );
  OAI22X1 U475 ( .A(n746), .B(n1221), .C(n747), .D(n1300), .Y(n590) );
  OAI22X1 U476 ( .A(n747), .B(n1298), .C(n748), .D(n1243), .Y(n591) );
  OAI22X1 U477 ( .A(n748), .B(n1221), .C(n749), .D(n1300), .Y(n592) );
  OAI22X1 U478 ( .A(n749), .B(n1298), .C(n750), .D(n1248), .Y(n593) );
  OAI22X1 U479 ( .A(n750), .B(n1298), .C(n751), .D(n1300), .Y(n594) );
  OAI22X1 U480 ( .A(n751), .B(n1221), .C(n752), .D(n1243), .Y(n595) );
  OAI22X1 U481 ( .A(n752), .B(n1298), .C(n753), .D(n1300), .Y(n596) );
  OAI22X1 U482 ( .A(n753), .B(n1221), .C(n1248), .D(n754), .Y(n597) );
  OAI22X1 U483 ( .A(n755), .B(n1300), .C(n1298), .D(n754), .Y(n598) );
  OAI22X1 U484 ( .A(n755), .B(n1298), .C(n756), .D(n1248), .Y(n599) );
  XNOR2X1 U487 ( .A(n1334), .B(n1332), .Y(n741) );
  XNOR2X1 U488 ( .A(n1330), .B(n1334), .Y(n742) );
  XNOR2X1 U489 ( .A(n1328), .B(n1334), .Y(n743) );
  XNOR2X1 U490 ( .A(n1326), .B(n1334), .Y(n744) );
  XNOR2X1 U491 ( .A(n1334), .B(n1324), .Y(n745) );
  XNOR2X1 U492 ( .A(n1322), .B(n1334), .Y(n746) );
  XNOR2X1 U493 ( .A(n1320), .B(n1334), .Y(n747) );
  XNOR2X1 U494 ( .A(n1334), .B(n1318), .Y(n748) );
  XNOR2X1 U495 ( .A(n1316), .B(n1334), .Y(n749) );
  XNOR2X1 U496 ( .A(n1314), .B(n1334), .Y(n750) );
  XNOR2X1 U497 ( .A(n1335), .B(n1312), .Y(n751) );
  XNOR2X1 U498 ( .A(n1310), .B(n1334), .Y(n752) );
  XNOR2X1 U499 ( .A(n1308), .B(n1334), .Y(n753) );
  XNOR2X1 U500 ( .A(n1306), .B(n1334), .Y(n754) );
  XNOR2X1 U501 ( .A(n1304), .B(n1334), .Y(n755) );
  XNOR2X1 U502 ( .A(n1334), .B(n1336), .Y(n756) );
  OR2X1 U503 ( .A(n1336), .B(n918), .Y(n757) );
  OAI22X1 U505 ( .A(n1295), .B(n774), .C(n1355), .D(n1218), .Y(n566) );
  OAI22X1 U508 ( .A(n1355), .B(n1244), .C(n758), .D(n1218), .Y(n602) );
  OAI22X1 U509 ( .A(n758), .B(n1295), .C(n759), .D(n1218), .Y(n603) );
  OAI22X1 U510 ( .A(n759), .B(n1244), .C(n760), .D(n1218), .Y(n604) );
  OAI22X1 U511 ( .A(n760), .B(n1244), .C(n761), .D(n1218), .Y(n605) );
  OAI22X1 U512 ( .A(n761), .B(n1295), .C(n762), .D(n1218), .Y(n606) );
  OAI22X1 U513 ( .A(n762), .B(n1295), .C(n763), .D(n1218), .Y(n607) );
  OAI22X1 U514 ( .A(n763), .B(n1244), .C(n764), .D(n1218), .Y(n608) );
  OAI22X1 U515 ( .A(n764), .B(n1295), .C(n765), .D(n1297), .Y(n609) );
  OAI22X1 U516 ( .A(n765), .B(n1244), .C(n766), .D(n1297), .Y(n610) );
  OAI22X1 U517 ( .A(n766), .B(n1295), .C(n767), .D(n1297), .Y(n611) );
  OAI22X1 U518 ( .A(n767), .B(n1295), .C(n768), .D(n1218), .Y(n612) );
  OAI22X1 U519 ( .A(n768), .B(n1295), .C(n769), .D(n1218), .Y(n613) );
  OAI22X1 U520 ( .A(n769), .B(n1244), .C(n770), .D(n1218), .Y(n614) );
  OAI22X1 U521 ( .A(n770), .B(n1295), .C(n1218), .D(n771), .Y(n615) );
  OAI22X1 U522 ( .A(n772), .B(n1218), .C(n1244), .D(n771), .Y(n616) );
  OAI22X1 U523 ( .A(n772), .B(n1244), .C(n773), .D(n1218), .Y(n617) );
  AND2X1 U524 ( .A(n1337), .B(n1294), .Y(n618) );
  XNOR2X1 U526 ( .A(n1354), .B(n1332), .Y(n758) );
  XNOR2X1 U527 ( .A(n1354), .B(n1330), .Y(n759) );
  XNOR2X1 U528 ( .A(n1354), .B(n1328), .Y(n760) );
  XNOR2X1 U529 ( .A(n1354), .B(n1326), .Y(n761) );
  XNOR2X1 U530 ( .A(n1354), .B(n1324), .Y(n762) );
  XNOR2X1 U531 ( .A(n1354), .B(n1322), .Y(n763) );
  XNOR2X1 U532 ( .A(n1354), .B(n1320), .Y(n764) );
  XNOR2X1 U533 ( .A(n1354), .B(n1318), .Y(n765) );
  XNOR2X1 U534 ( .A(n1354), .B(n1316), .Y(n766) );
  XNOR2X1 U535 ( .A(n1354), .B(n1314), .Y(n767) );
  XNOR2X1 U536 ( .A(n1354), .B(n1312), .Y(n768) );
  XNOR2X1 U537 ( .A(n1354), .B(n1310), .Y(n769) );
  XNOR2X1 U538 ( .A(n1354), .B(n1308), .Y(n770) );
  XNOR2X1 U539 ( .A(n1306), .B(n1354), .Y(n771) );
  XNOR2X1 U540 ( .A(n1354), .B(n1046), .Y(n772) );
  XNOR2X1 U541 ( .A(n1354), .B(n1336), .Y(n773) );
  OR2X1 U542 ( .A(n1336), .B(n1355), .Y(n774) );
  OAI22X1 U544 ( .A(n1291), .B(n791), .C(n1353), .D(n1247), .Y(n567) );
  OAI22X1 U547 ( .A(n1353), .B(n1291), .C(n775), .D(n1247), .Y(n620) );
  OAI22X1 U548 ( .A(n775), .B(n1291), .C(n776), .D(n1247), .Y(n621) );
  OAI22X1 U549 ( .A(n776), .B(n1291), .C(n777), .D(n1247), .Y(n622) );
  OAI22X1 U550 ( .A(n777), .B(n1291), .C(n778), .D(n1247), .Y(n623) );
  OAI22X1 U551 ( .A(n778), .B(n1291), .C(n779), .D(n1247), .Y(n624) );
  OAI22X1 U552 ( .A(n779), .B(n1291), .C(n780), .D(n1247), .Y(n625) );
  OAI22X1 U553 ( .A(n780), .B(n1291), .C(n781), .D(n1247), .Y(n626) );
  OAI22X1 U554 ( .A(n781), .B(n1291), .C(n782), .D(n1247), .Y(n627) );
  OAI22X1 U555 ( .A(n782), .B(n1291), .C(n783), .D(n1247), .Y(n628) );
  OAI22X1 U556 ( .A(n783), .B(n1291), .C(n784), .D(n1247), .Y(n629) );
  OAI22X1 U557 ( .A(n784), .B(n1291), .C(n785), .D(n1247), .Y(n630) );
  OAI22X1 U558 ( .A(n785), .B(n1291), .C(n786), .D(n1247), .Y(n631) );
  OAI22X1 U559 ( .A(n786), .B(n1291), .C(n787), .D(n1247), .Y(n632) );
  OAI22X1 U560 ( .A(n787), .B(n1291), .C(n1247), .D(n788), .Y(n633) );
  OAI22X1 U561 ( .A(n789), .B(n1247), .C(n1291), .D(n788), .Y(n634) );
  OAI22X1 U562 ( .A(n789), .B(n1291), .C(n790), .D(n1247), .Y(n635) );
  AND2X1 U563 ( .A(n1336), .B(n549), .Y(n636) );
  XNOR2X1 U565 ( .A(n1250), .B(n1332), .Y(n775) );
  XNOR2X1 U566 ( .A(n1250), .B(n1330), .Y(n776) );
  XNOR2X1 U567 ( .A(n1250), .B(n1328), .Y(n777) );
  XNOR2X1 U568 ( .A(n1250), .B(n1326), .Y(n778) );
  XNOR2X1 U569 ( .A(n1352), .B(n1324), .Y(n779) );
  XNOR2X1 U570 ( .A(n1352), .B(n1322), .Y(n780) );
  XNOR2X1 U571 ( .A(n1352), .B(n1320), .Y(n781) );
  XNOR2X1 U572 ( .A(n1352), .B(n1318), .Y(n782) );
  XNOR2X1 U573 ( .A(n1250), .B(n1316), .Y(n783) );
  XNOR2X1 U574 ( .A(n1352), .B(n1314), .Y(n784) );
  XNOR2X1 U575 ( .A(n1250), .B(n1312), .Y(n785) );
  XNOR2X1 U576 ( .A(n1352), .B(n1310), .Y(n786) );
  XNOR2X1 U577 ( .A(n1250), .B(n1308), .Y(n787) );
  XNOR2X1 U578 ( .A(n1306), .B(n1250), .Y(n788) );
  XNOR2X1 U579 ( .A(n1250), .B(n1045), .Y(n789) );
  XNOR2X1 U580 ( .A(n1250), .B(n1336), .Y(n790) );
  OR2X1 U581 ( .A(n1336), .B(n1353), .Y(n791) );
  OAI22X1 U583 ( .A(n1288), .B(n808), .C(n1351), .D(n1050), .Y(n568) );
  OAI22X1 U586 ( .A(n1351), .B(n1245), .C(n792), .D(n1050), .Y(n638) );
  OAI22X1 U587 ( .A(n792), .B(n1288), .C(n793), .D(n1050), .Y(n639) );
  OAI22X1 U588 ( .A(n793), .B(n1245), .C(n794), .D(n1050), .Y(n640) );
  OAI22X1 U589 ( .A(n794), .B(n1288), .C(n795), .D(n1050), .Y(n641) );
  OAI22X1 U590 ( .A(n795), .B(n1245), .C(n796), .D(n1028), .Y(n642) );
  OAI22X1 U591 ( .A(n796), .B(n1288), .C(n797), .D(n1255), .Y(n643) );
  OAI22X1 U592 ( .A(n797), .B(n1245), .C(n798), .D(n1028), .Y(n644) );
  OAI22X1 U593 ( .A(n798), .B(n1288), .C(n799), .D(n1290), .Y(n645) );
  OAI22X1 U594 ( .A(n799), .B(n1245), .C(n800), .D(n1290), .Y(n646) );
  OAI22X1 U595 ( .A(n800), .B(n1288), .C(n801), .D(n1255), .Y(n647) );
  OAI22X1 U596 ( .A(n801), .B(n1245), .C(n802), .D(n1050), .Y(n648) );
  OAI22X1 U597 ( .A(n802), .B(n1288), .C(n803), .D(n1050), .Y(n649) );
  OAI22X1 U598 ( .A(n803), .B(n1245), .C(n804), .D(n1050), .Y(n650) );
  OAI22X1 U599 ( .A(n804), .B(n1288), .C(n1050), .D(n805), .Y(n651) );
  OAI22X1 U600 ( .A(n806), .B(n1050), .C(n1288), .D(n805), .Y(n652) );
  OAI22X1 U601 ( .A(n806), .B(n1245), .C(n807), .D(n1050), .Y(n653) );
  AND2X1 U602 ( .A(n1337), .B(n552), .Y(n654) );
  XNOR2X1 U604 ( .A(n1350), .B(n1332), .Y(n792) );
  XNOR2X1 U605 ( .A(n1350), .B(n1330), .Y(n793) );
  XNOR2X1 U606 ( .A(n1350), .B(n1328), .Y(n794) );
  XNOR2X1 U607 ( .A(n1349), .B(n1326), .Y(n795) );
  XNOR2X1 U609 ( .A(n1349), .B(n1322), .Y(n797) );
  XNOR2X1 U610 ( .A(n1349), .B(n1320), .Y(n798) );
  XNOR2X1 U611 ( .A(n1349), .B(n1318), .Y(n799) );
  XNOR2X1 U612 ( .A(n1349), .B(n1316), .Y(n800) );
  XNOR2X1 U614 ( .A(n1349), .B(n1312), .Y(n802) );
  XNOR2X1 U615 ( .A(n1350), .B(n1310), .Y(n803) );
  XNOR2X1 U616 ( .A(n1350), .B(n1308), .Y(n804) );
  XNOR2X1 U617 ( .A(n1306), .B(n1350), .Y(n805) );
  XNOR2X1 U618 ( .A(n1350), .B(n1045), .Y(n806) );
  XNOR2X1 U619 ( .A(n1350), .B(n1336), .Y(n807) );
  OR2X1 U620 ( .A(n1336), .B(n1351), .Y(n808) );
  OAI22X1 U622 ( .A(n1109), .B(n825), .C(n1070), .D(n1286), .Y(n569) );
  OAI22X1 U625 ( .A(n1348), .B(n1185), .C(n809), .D(n1286), .Y(n656) );
  OAI22X1 U626 ( .A(n809), .B(n1184), .C(n810), .D(n1286), .Y(n657) );
  OAI22X1 U627 ( .A(n810), .B(n1184), .C(n811), .D(n1005), .Y(n658) );
  OAI22X1 U628 ( .A(n811), .B(n1185), .C(n1287), .D(n812), .Y(n659) );
  OAI22X1 U629 ( .A(n812), .B(n1184), .C(n1287), .D(n813), .Y(n660) );
  OAI22X1 U630 ( .A(n813), .B(n1185), .C(n814), .D(n1005), .Y(n661) );
  OAI22X1 U631 ( .A(n814), .B(n1184), .C(n815), .D(n1005), .Y(n662) );
  OAI22X1 U632 ( .A(n815), .B(n1285), .C(n816), .D(n1055), .Y(n663) );
  OAI22X1 U633 ( .A(n816), .B(n1184), .C(n1055), .D(n817), .Y(n664) );
  OAI22X1 U634 ( .A(n817), .B(n1185), .C(n818), .D(n1286), .Y(n665) );
  OAI22X1 U635 ( .A(n818), .B(n1185), .C(n819), .D(n1286), .Y(n666) );
  OAI22X1 U636 ( .A(n819), .B(n1185), .C(n820), .D(n1286), .Y(n667) );
  OAI22X1 U637 ( .A(n820), .B(n1185), .C(n821), .D(n1286), .Y(n668) );
  OAI22X1 U638 ( .A(n821), .B(n1109), .C(n1286), .D(n822), .Y(n669) );
  OAI22X1 U639 ( .A(n823), .B(n1286), .C(n1185), .D(n822), .Y(n670) );
  OAI22X1 U640 ( .A(n823), .B(n1185), .C(n824), .D(n1286), .Y(n671) );
  AND2X1 U641 ( .A(n1337), .B(n555), .Y(n672) );
  XNOR2X1 U643 ( .A(n1031), .B(n1332), .Y(n809) );
  XNOR2X1 U644 ( .A(n1031), .B(n1330), .Y(n810) );
  XNOR2X1 U645 ( .A(n1031), .B(n1328), .Y(n811) );
  XNOR2X1 U646 ( .A(n1031), .B(n1326), .Y(n812) );
  XNOR2X1 U647 ( .A(n1030), .B(n1324), .Y(n813) );
  XNOR2X1 U648 ( .A(n1030), .B(n1322), .Y(n814) );
  XNOR2X1 U651 ( .A(n1030), .B(n1316), .Y(n817) );
  XNOR2X1 U652 ( .A(n1031), .B(n1314), .Y(n818) );
  XNOR2X1 U653 ( .A(n1031), .B(n1312), .Y(n819) );
  XNOR2X1 U654 ( .A(n1031), .B(n1310), .Y(n820) );
  XNOR2X1 U655 ( .A(n1031), .B(n1308), .Y(n821) );
  XNOR2X1 U656 ( .A(n1306), .B(n1031), .Y(n822) );
  XNOR2X1 U657 ( .A(n1031), .B(n1046), .Y(n823) );
  XNOR2X1 U658 ( .A(n1031), .B(n1336), .Y(n824) );
  OR2X1 U659 ( .A(n1186), .B(n1070), .Y(n825) );
  OAI22X1 U661 ( .A(n1004), .B(n842), .C(n1047), .D(n1284), .Y(n570) );
  OAI22X1 U664 ( .A(n1047), .B(n1169), .C(n826), .D(n1284), .Y(n674) );
  OAI22X1 U665 ( .A(n826), .B(n1171), .C(n827), .D(n1284), .Y(n675) );
  OAI22X1 U666 ( .A(n827), .B(n1169), .C(n828), .D(n1284), .Y(n676) );
  OAI22X1 U667 ( .A(n828), .B(n1004), .C(n829), .D(n1284), .Y(n677) );
  OAI22X1 U668 ( .A(n829), .B(n1004), .C(n830), .D(n1284), .Y(n678) );
  OAI22X1 U669 ( .A(n830), .B(n1004), .C(n1009), .D(n1284), .Y(n679) );
  OAI22X1 U670 ( .A(n1009), .B(n1004), .C(n832), .D(n1284), .Y(n680) );
  OAI22X1 U671 ( .A(n832), .B(n1171), .C(n833), .D(n1284), .Y(n681) );
  OAI22X1 U672 ( .A(n833), .B(n1004), .C(n834), .D(n1284), .Y(n682) );
  OAI22X1 U673 ( .A(n834), .B(n1171), .C(n835), .D(n1284), .Y(n683) );
  OAI22X1 U674 ( .A(n835), .B(n1004), .C(n836), .D(n1284), .Y(n684) );
  OAI22X1 U675 ( .A(n836), .B(n1004), .C(n837), .D(n1284), .Y(n685) );
  OAI22X1 U676 ( .A(n837), .B(n1004), .C(n838), .D(n1284), .Y(n686) );
  OAI22X1 U677 ( .A(n838), .B(n1171), .C(n1284), .D(n839), .Y(n687) );
  OAI22X1 U678 ( .A(n840), .B(n1284), .C(n1004), .D(n839), .Y(n688) );
  OAI22X1 U679 ( .A(n840), .B(n1171), .C(n841), .D(n1284), .Y(n689) );
  AND2X1 U680 ( .A(n1337), .B(n558), .Y(n690) );
  XNOR2X1 U682 ( .A(n1212), .B(n1332), .Y(n826) );
  XNOR2X1 U683 ( .A(n1345), .B(n1330), .Y(n827) );
  XNOR2X1 U684 ( .A(n1345), .B(n1328), .Y(n828) );
  XNOR2X1 U685 ( .A(n1345), .B(n1326), .Y(n829) );
  XNOR2X1 U688 ( .A(n1212), .B(n1320), .Y(n832) );
  XNOR2X1 U689 ( .A(n1212), .B(n1318), .Y(n833) );
  XNOR2X1 U690 ( .A(n1212), .B(n1316), .Y(n834) );
  XNOR2X1 U691 ( .A(n1212), .B(n1314), .Y(n835) );
  XNOR2X1 U692 ( .A(n1212), .B(n1312), .Y(n836) );
  XNOR2X1 U693 ( .A(n1212), .B(n1310), .Y(n837) );
  XNOR2X1 U694 ( .A(n1085), .B(n1308), .Y(n838) );
  XNOR2X1 U695 ( .A(n1306), .B(n1085), .Y(n839) );
  XNOR2X1 U696 ( .A(n1085), .B(n1046), .Y(n840) );
  XNOR2X1 U697 ( .A(n1085), .B(n1186), .Y(n841) );
  OR2X1 U698 ( .A(n1336), .B(n1047), .Y(n842) );
  OAI22X1 U700 ( .A(n1242), .B(n859), .C(n1114), .D(n1282), .Y(n571) );
  OAI22X1 U703 ( .A(n1114), .B(n1258), .C(n843), .D(n1281), .Y(n692) );
  OAI22X1 U704 ( .A(n843), .B(n1256), .C(n844), .D(n1282), .Y(n693) );
  OAI22X1 U705 ( .A(n844), .B(n1258), .C(n845), .D(n1281), .Y(n694) );
  OAI22X1 U706 ( .A(n845), .B(n1256), .C(n846), .D(n1281), .Y(n695) );
  OAI22X1 U707 ( .A(n846), .B(n1242), .C(n847), .D(n1282), .Y(n696) );
  OAI22X1 U708 ( .A(n847), .B(n1256), .C(n848), .D(n1282), .Y(n697) );
  OAI22X1 U709 ( .A(n848), .B(n1242), .C(n849), .D(n1282), .Y(n698) );
  OAI22X1 U710 ( .A(n849), .B(n1256), .C(n850), .D(n1282), .Y(n699) );
  OAI22X1 U711 ( .A(n850), .B(n1242), .C(n851), .D(n1282), .Y(n700) );
  OAI22X1 U712 ( .A(n851), .B(n1256), .C(n852), .D(n1282), .Y(n701) );
  OAI22X1 U713 ( .A(n852), .B(n1242), .C(n853), .D(n1282), .Y(n702) );
  OAI22X1 U714 ( .A(n853), .B(n1256), .C(n854), .D(n1282), .Y(n703) );
  OAI22X1 U715 ( .A(n854), .B(n1242), .C(n855), .D(n1282), .Y(n704) );
  OAI22X1 U716 ( .A(n855), .B(n1256), .C(n1282), .D(n856), .Y(n705) );
  OAI22X1 U717 ( .A(n857), .B(n1282), .C(n1256), .D(n856), .Y(n706) );
  OAI22X1 U718 ( .A(n857), .B(n1242), .C(n858), .D(n1282), .Y(n707) );
  AND2X1 U719 ( .A(n1186), .B(n561), .Y(n708) );
  XNOR2X1 U723 ( .A(n1342), .B(n1328), .Y(n845) );
  XNOR2X1 U724 ( .A(n1342), .B(n1326), .Y(n846) );
  XNOR2X1 U725 ( .A(n1342), .B(n1324), .Y(n847) );
  XNOR2X1 U726 ( .A(n1168), .B(n1322), .Y(n848) );
  XNOR2X1 U727 ( .A(n1167), .B(n1320), .Y(n849) );
  XNOR2X1 U728 ( .A(n1168), .B(n1318), .Y(n850) );
  XNOR2X1 U729 ( .A(n1167), .B(n1316), .Y(n851) );
  XNOR2X1 U730 ( .A(n1168), .B(n1314), .Y(n852) );
  XNOR2X1 U731 ( .A(n1168), .B(n1312), .Y(n853) );
  XNOR2X1 U732 ( .A(n1167), .B(n1310), .Y(n854) );
  XNOR2X1 U733 ( .A(n1168), .B(n1308), .Y(n855) );
  XNOR2X1 U734 ( .A(n1306), .B(n1167), .Y(n856) );
  XNOR2X1 U735 ( .A(n1168), .B(n1045), .Y(n857) );
  XNOR2X1 U736 ( .A(n1167), .B(n1186), .Y(n858) );
  OR2X1 U737 ( .A(n1186), .B(n1114), .Y(n859) );
  OAI22X1 U739 ( .A(n1241), .B(n876), .C(n1340), .D(n1056), .Y(n572) );
  OAI22X1 U742 ( .A(n1241), .B(n1149), .C(n860), .D(n1120), .Y(n710) );
  OAI22X1 U743 ( .A(n1241), .B(n860), .C(n861), .D(n1280), .Y(n711) );
  OAI22X1 U744 ( .A(n1241), .B(n861), .C(n862), .D(n1120), .Y(n712) );
  OAI22X1 U745 ( .A(n1241), .B(n862), .C(n863), .D(n1280), .Y(n713) );
  OAI22X1 U746 ( .A(n1241), .B(n863), .C(n864), .D(n1101), .Y(n714) );
  OAI22X1 U747 ( .A(n1241), .B(n864), .C(n865), .D(n1280), .Y(n715) );
  OAI22X1 U748 ( .A(n1241), .B(n865), .C(n866), .D(n1120), .Y(n716) );
  OAI22X1 U749 ( .A(n1241), .B(n866), .C(n867), .D(n1280), .Y(n717) );
  OAI22X1 U750 ( .A(n1241), .B(n867), .C(n868), .D(n1101), .Y(n718) );
  OAI22X1 U751 ( .A(n1241), .B(n868), .C(n869), .D(n1280), .Y(n719) );
  OAI22X1 U752 ( .A(n1241), .B(n869), .C(n870), .D(n1101), .Y(n720) );
  OAI22X1 U753 ( .A(n1241), .B(n870), .C(n871), .D(n1056), .Y(n721) );
  OAI22X1 U754 ( .A(n1241), .B(n871), .C(n872), .D(n1150), .Y(n722) );
  OAI22X1 U755 ( .A(n1241), .B(n872), .C(n1056), .D(n873), .Y(n723) );
  OAI22X1 U756 ( .A(n874), .B(n1150), .C(n1241), .D(n873), .Y(n724) );
  OAI22X1 U757 ( .A(n1241), .B(n874), .C(n875), .D(n1056), .Y(n725) );
  XNOR2X1 U759 ( .A(n1339), .B(n1330), .Y(n861) );
  XNOR2X1 U760 ( .A(n1339), .B(n1328), .Y(n862) );
  XNOR2X1 U761 ( .A(n1271), .B(n1326), .Y(n863) );
  XNOR2X1 U762 ( .A(n1271), .B(n1324), .Y(n864) );
  XNOR2X1 U763 ( .A(n1271), .B(n1322), .Y(n865) );
  XNOR2X1 U764 ( .A(n1271), .B(n1320), .Y(n866) );
  XNOR2X1 U765 ( .A(n1271), .B(n1318), .Y(n867) );
  XNOR2X1 U766 ( .A(n1271), .B(n1316), .Y(n868) );
  XNOR2X1 U767 ( .A(n1271), .B(n1314), .Y(n869) );
  XNOR2X1 U768 ( .A(n1271), .B(n1312), .Y(n870) );
  XNOR2X1 U769 ( .A(n1271), .B(n1310), .Y(n871) );
  XNOR2X1 U770 ( .A(n1271), .B(n1308), .Y(n872) );
  XNOR2X1 U771 ( .A(n1306), .B(n1271), .Y(n873) );
  XNOR2X1 U772 ( .A(n1271), .B(n1045), .Y(n874) );
  XNOR2X1 U773 ( .A(n1271), .B(n1337), .Y(n875) );
  OR2X1 U774 ( .A(n1186), .B(n1149), .Y(n876) );
  NAND2X1 U801 ( .A(n893), .B(n1153), .Y(n48) );
  NAND2X1 U804 ( .A(n40), .B(n894), .Y(n42) );
  XOR2X1 U805 ( .A(a[27]), .B(n37), .Y(n894) );
  NAND2X1 U807 ( .A(n1292), .B(n895), .Y(n36) );
  NAND2X1 U816 ( .A(n1054), .B(n898), .Y(n18) );
  NAND2X1 U822 ( .A(n917), .B(n1246), .Y(n6) );
  INVX4 U828 ( .A(n1208), .Y(n1298) );
  INVX8 U829 ( .A(n1151), .Y(n1282) );
  INVX4 U830 ( .A(n1152), .Y(n1281) );
  BUFX2 U831 ( .A(n359), .Y(n995) );
  INVX8 U832 ( .A(n1002), .Y(n1004) );
  INVX4 U833 ( .A(n1170), .Y(n1002) );
  BUFX4 U834 ( .A(n1289), .Y(n1245) );
  INVX4 U835 ( .A(n1294), .Y(n1244) );
  INVX4 U836 ( .A(n883), .Y(n1319) );
  INVX4 U837 ( .A(n882), .Y(n1321) );
  INVX4 U838 ( .A(n884), .Y(n1317) );
  INVX8 U839 ( .A(n1327), .Y(n1328) );
  INVX4 U840 ( .A(n879), .Y(n1327) );
  INVX8 U841 ( .A(n1323), .Y(n1324) );
  BUFX4 U842 ( .A(n917), .Y(n1241) );
  INVX4 U843 ( .A(a[15]), .Y(n917) );
  INVX4 U844 ( .A(n881), .Y(n1323) );
  BUFX4 U845 ( .A(n212), .Y(n996) );
  INVX4 U846 ( .A(n1351), .Y(n1349) );
  INVX8 U847 ( .A(n25), .Y(n1351) );
  INVX8 U848 ( .A(n1313), .Y(n1314) );
  INVX4 U849 ( .A(n886), .Y(n1313) );
  INVX2 U850 ( .A(n7), .Y(n1343) );
  BUFX2 U851 ( .A(n1054), .Y(n1170) );
  INVX4 U852 ( .A(n49), .Y(n1338) );
  BUFX2 U853 ( .A(n440), .Y(n1249) );
  INVX4 U854 ( .A(n1305), .Y(n1306) );
  BUFX2 U855 ( .A(n398), .Y(n1231) );
  INVX2 U856 ( .A(n885), .Y(n1315) );
  INVX2 U857 ( .A(n888), .Y(n1309) );
  INVX2 U858 ( .A(n1002), .Y(n1003) );
  INVX2 U859 ( .A(n1042), .Y(n1043) );
  INVX4 U860 ( .A(n1217), .Y(n1218) );
  INVX2 U861 ( .A(n880), .Y(n1325) );
  INVX2 U862 ( .A(n877), .Y(n1331) );
  INVX4 U863 ( .A(n1027), .Y(n1330) );
  INVX2 U864 ( .A(n878), .Y(n1027) );
  NAND3X1 U865 ( .A(n1143), .B(n1144), .C(n1145), .Y(n997) );
  BUFX2 U866 ( .A(n695), .Y(n998) );
  INVX2 U867 ( .A(n283), .Y(n999) );
  BUFX2 U868 ( .A(n391), .Y(n1000) );
  INVX4 U869 ( .A(n31), .Y(n1353) );
  BUFX4 U870 ( .A(n431), .Y(n1001) );
  INVX2 U871 ( .A(n1074), .Y(n709) );
  INVX2 U872 ( .A(n889), .Y(n1307) );
  BUFX2 U873 ( .A(n48), .Y(n1248) );
  INVX2 U874 ( .A(n48), .Y(n1299) );
  NAND2X1 U875 ( .A(n1285), .B(n897), .Y(n1005) );
  OR2X2 U876 ( .A(n308), .B(n313), .Y(n1006) );
  OR2X2 U877 ( .A(n322), .B(n329), .Y(n1007) );
  AND2X2 U878 ( .A(n169), .B(n283), .Y(n1008) );
  XNOR2X1 U879 ( .A(n1346), .B(n1321), .Y(n1009) );
  INVX4 U880 ( .A(n1311), .Y(n1312) );
  INVX2 U881 ( .A(n887), .Y(n1311) );
  INVX4 U882 ( .A(n1319), .Y(n1320) );
  INVX2 U883 ( .A(n1303), .Y(n1304) );
  INVX2 U884 ( .A(n891), .Y(n1303) );
  OR2X2 U885 ( .A(n292), .B(n293), .Y(n1010) );
  INVX2 U886 ( .A(n413), .Y(n1011) );
  INVX4 U887 ( .A(n1011), .Y(n1012) );
  XOR2X1 U888 ( .A(n1013), .B(n1014), .Y(n364) );
  XNOR2X1 U889 ( .A(n379), .B(n368), .Y(n1013) );
  INVX2 U890 ( .A(n377), .Y(n1014) );
  INVX1 U891 ( .A(n1171), .Y(n558) );
  BUFX2 U892 ( .A(n629), .Y(n1015) );
  INVX2 U893 ( .A(n483), .Y(n1016) );
  INVX4 U894 ( .A(n1016), .Y(n1017) );
  XOR2X1 U895 ( .A(n1339), .B(n1331), .Y(n860) );
  INVX4 U896 ( .A(n1331), .Y(n1332) );
  INVX4 U897 ( .A(n1310), .Y(n737) );
  XOR2X1 U898 ( .A(n630), .B(n678), .Y(n1018) );
  XOR2X1 U899 ( .A(n614), .B(n1018), .Y(n440) );
  NAND2X1 U900 ( .A(n614), .B(n630), .Y(n1019) );
  NAND2X1 U901 ( .A(n614), .B(n678), .Y(n1020) );
  NAND2X1 U902 ( .A(n630), .B(n678), .Y(n1021) );
  NAND3X1 U903 ( .A(n1020), .B(n1019), .C(n1021), .Y(n439) );
  XOR2X1 U904 ( .A(n581), .B(n1215), .Y(n1022) );
  XOR2X1 U905 ( .A(n693), .B(n1022), .Y(n428) );
  NAND2X1 U906 ( .A(n693), .B(n581), .Y(n1023) );
  NAND2X1 U907 ( .A(n693), .B(n1215), .Y(n1024) );
  NAND2X1 U908 ( .A(n581), .B(n1215), .Y(n1025) );
  NAND3X1 U909 ( .A(n1024), .B(n1023), .C(n1025), .Y(n427) );
  INVX2 U910 ( .A(n201), .Y(n1026) );
  INVX1 U911 ( .A(n878), .Y(n1329) );
  XNOR2X1 U912 ( .A(a[29]), .B(n1333), .Y(n893) );
  INVX4 U913 ( .A(n541), .Y(n1333) );
  XOR2X1 U914 ( .A(n1349), .B(n1313), .Y(n801) );
  INVX1 U915 ( .A(n1316), .Y(n734) );
  XOR2X1 U916 ( .A(n1030), .B(n1319), .Y(n815) );
  INVX1 U917 ( .A(n1252), .Y(n1028) );
  INVX2 U918 ( .A(n1252), .Y(n1255) );
  AND2X2 U919 ( .A(n1337), .B(n1208), .Y(n600) );
  XNOR2X1 U920 ( .A(n154), .B(n1029), .Y(product[39]) );
  AND2X2 U921 ( .A(n149), .B(n1094), .Y(n1029) );
  INVX8 U922 ( .A(n1283), .Y(n1284) );
  BUFX4 U923 ( .A(n1347), .Y(n1030) );
  BUFX4 U924 ( .A(n1347), .Y(n1031) );
  INVX2 U925 ( .A(n1348), .Y(n1347) );
  INVX2 U926 ( .A(n1341), .Y(n1032) );
  XNOR2X1 U927 ( .A(n1033), .B(n597), .Y(n424) );
  XNOR2X1 U928 ( .A(n661), .B(n645), .Y(n1033) );
  INVX2 U929 ( .A(n1340), .Y(n1270) );
  INVX1 U930 ( .A(n350), .Y(n1034) );
  INVX1 U931 ( .A(n1034), .Y(n1035) );
  XNOR2X1 U932 ( .A(n1036), .B(n405), .Y(n390) );
  XNOR2X1 U933 ( .A(n407), .B(n394), .Y(n1036) );
  INVX2 U934 ( .A(n1340), .Y(n1339) );
  XOR2X1 U935 ( .A(n1030), .B(n1317), .Y(n816) );
  INVX8 U936 ( .A(n1333), .Y(n1334) );
  XOR2X1 U937 ( .A(n611), .B(n1257), .Y(n1037) );
  XOR2X1 U938 ( .A(n1037), .B(n627), .Y(n398) );
  NAND2X1 U939 ( .A(n627), .B(n611), .Y(n1038) );
  NAND2X1 U940 ( .A(n627), .B(n1257), .Y(n1039) );
  NAND2X1 U941 ( .A(n611), .B(n1257), .Y(n1040) );
  NAND3X1 U942 ( .A(n1039), .B(n1038), .C(n1040), .Y(n397) );
  BUFX2 U943 ( .A(n422), .Y(n1216) );
  BUFX4 U944 ( .A(n441), .Y(n1041) );
  INVX2 U945 ( .A(n353), .Y(n1042) );
  INVX2 U946 ( .A(n1299), .Y(n1243) );
  XNOR2X1 U947 ( .A(n37), .B(a[29]), .Y(n1044) );
  INVX4 U948 ( .A(n1303), .Y(n1045) );
  INVX2 U949 ( .A(n1303), .Y(n1046) );
  INVX2 U950 ( .A(n1345), .Y(n1047) );
  INVX4 U951 ( .A(n1211), .Y(n1212) );
  INVX4 U952 ( .A(n13), .Y(n1346) );
  INVX1 U953 ( .A(n541), .Y(n1048) );
  INVX2 U954 ( .A(n1048), .Y(n1335) );
  XOR2X1 U955 ( .A(a[17]), .B(n1341), .Y(n899) );
  NOR2X1 U956 ( .A(n457), .B(n444), .Y(n1049) );
  INVX4 U957 ( .A(n1251), .Y(n1050) );
  INVX1 U958 ( .A(n1251), .Y(n1290) );
  INVX1 U959 ( .A(n388), .Y(n1051) );
  INVX1 U960 ( .A(n1051), .Y(n1052) );
  XOR2X1 U961 ( .A(n1323), .B(n1345), .Y(n830) );
  XNOR2X1 U962 ( .A(a[23]), .B(n1348), .Y(n1205) );
  NAND3X1 U963 ( .A(n1156), .B(n1157), .C(n1158), .Y(n1053) );
  XOR2X1 U964 ( .A(n1340), .B(a[17]), .Y(n1210) );
  XOR2X1 U965 ( .A(a[19]), .B(n1343), .Y(n1054) );
  NAND2X1 U966 ( .A(n1285), .B(n897), .Y(n1055) );
  BUFX2 U967 ( .A(n1280), .Y(n1056) );
  INVX2 U968 ( .A(n1279), .Y(n1280) );
  INVX1 U969 ( .A(n1288), .Y(n552) );
  BUFX4 U970 ( .A(n52), .Y(n1220) );
  BUFX4 U971 ( .A(n52), .Y(n1219) );
  XOR2X1 U972 ( .A(n622), .B(n606), .Y(n1057) );
  XOR2X1 U973 ( .A(n1057), .B(n347), .Y(n334) );
  XOR2X1 U974 ( .A(n345), .B(n336), .Y(n1058) );
  XOR2X1 U975 ( .A(n1058), .B(n334), .Y(n332) );
  NAND2X1 U976 ( .A(n622), .B(n606), .Y(n1059) );
  NAND2X1 U977 ( .A(n622), .B(n347), .Y(n1060) );
  NAND2X1 U978 ( .A(n606), .B(n347), .Y(n1061) );
  NAND3X1 U979 ( .A(n1059), .B(n1060), .C(n1061), .Y(n333) );
  NAND2X1 U980 ( .A(n345), .B(n336), .Y(n1062) );
  NAND2X1 U981 ( .A(n345), .B(n334), .Y(n1063) );
  NAND2X1 U982 ( .A(n336), .B(n334), .Y(n1064) );
  NAND3X1 U983 ( .A(n1062), .B(n1063), .C(n1064), .Y(n331) );
  XOR2X1 U984 ( .A(n995), .B(n577), .Y(n1065) );
  XOR2X1 U985 ( .A(n591), .B(n1065), .Y(n348) );
  NAND2X1 U986 ( .A(n591), .B(n995), .Y(n1066) );
  NAND2X1 U987 ( .A(n591), .B(n577), .Y(n1067) );
  NAND2X1 U988 ( .A(n995), .B(n577), .Y(n1068) );
  NAND3X1 U989 ( .A(n1067), .B(n1066), .C(n1068), .Y(n347) );
  XNOR2X1 U990 ( .A(n1069), .B(n997), .Y(n352) );
  XNOR2X1 U991 ( .A(n356), .B(n367), .Y(n1069) );
  BUFX2 U992 ( .A(n1348), .Y(n1070) );
  INVX1 U993 ( .A(n416), .Y(n1071) );
  INVX1 U994 ( .A(n1071), .Y(n1072) );
  XNOR2X1 U995 ( .A(n1073), .B(n453), .Y(n436) );
  XNOR2X1 U996 ( .A(n455), .B(n451), .Y(n1073) );
  INVX2 U997 ( .A(n1214), .Y(n1074) );
  BUFX4 U998 ( .A(n1120), .Y(n1101) );
  XOR2X1 U999 ( .A(n366), .B(n375), .Y(n1075) );
  XOR2X1 U1000 ( .A(n1075), .B(n364), .Y(n362) );
  NAND2X1 U1001 ( .A(n379), .B(n368), .Y(n1076) );
  NAND2X1 U1002 ( .A(n379), .B(n377), .Y(n1077) );
  NAND2X1 U1003 ( .A(n368), .B(n377), .Y(n1078) );
  NAND3X1 U1004 ( .A(n1076), .B(n1078), .C(n1077), .Y(n363) );
  NAND2X1 U1005 ( .A(n366), .B(n375), .Y(n1079) );
  NAND2X1 U1006 ( .A(n366), .B(n364), .Y(n1080) );
  NAND2X1 U1007 ( .A(n375), .B(n364), .Y(n1081) );
  NAND3X1 U1008 ( .A(n1079), .B(n1080), .C(n1081), .Y(n361) );
  INVX4 U1009 ( .A(n1214), .Y(n1215) );
  NAND2X1 U1010 ( .A(n597), .B(n661), .Y(n1082) );
  NAND2X1 U1011 ( .A(n597), .B(n645), .Y(n1083) );
  NAND2X1 U1012 ( .A(n661), .B(n645), .Y(n1084) );
  NAND3X1 U1013 ( .A(n1083), .B(n1082), .C(n1084), .Y(n423) );
  INVX1 U1014 ( .A(n1324), .Y(n730) );
  BUFX2 U1015 ( .A(n1212), .Y(n1085) );
  XOR2X1 U1016 ( .A(n1231), .B(n409), .Y(n1086) );
  XOR2X1 U1017 ( .A(n1086), .B(n396), .Y(n392) );
  NAND2X1 U1018 ( .A(n1231), .B(n409), .Y(n1087) );
  NAND2X1 U1019 ( .A(n1231), .B(n396), .Y(n1088) );
  NAND2X1 U1020 ( .A(n409), .B(n396), .Y(n1089) );
  NAND3X1 U1021 ( .A(n1087), .B(n1088), .C(n1089), .Y(n391) );
  XOR2X1 U1022 ( .A(n393), .B(n380), .Y(n1090) );
  XOR2X1 U1023 ( .A(n1090), .B(n1000), .Y(n376) );
  NAND2X1 U1024 ( .A(n393), .B(n380), .Y(n1091) );
  NAND2X1 U1025 ( .A(n393), .B(n391), .Y(n1092) );
  NAND2X1 U1026 ( .A(n380), .B(n391), .Y(n1093) );
  NAND3X1 U1027 ( .A(n1091), .B(n1092), .C(n1093), .Y(n375) );
  XNOR2X1 U1028 ( .A(n1259), .B(n423), .Y(n1180) );
  INVX2 U1029 ( .A(n148), .Y(n1094) );
  AND2X1 U1030 ( .A(n711), .B(n565), .Y(n1095) );
  XOR2X1 U1031 ( .A(n310), .B(n317), .Y(n1096) );
  XOR2X1 U1032 ( .A(n315), .B(n1096), .Y(n308) );
  NAND2X1 U1033 ( .A(n315), .B(n310), .Y(n1097) );
  NAND2X1 U1034 ( .A(n315), .B(n317), .Y(n1098) );
  NAND2X1 U1035 ( .A(n310), .B(n317), .Y(n1099) );
  NAND3X1 U1036 ( .A(n1098), .B(n1097), .C(n1099), .Y(n307) );
  NAND2X1 U1037 ( .A(n1199), .B(n1006), .Y(n1100) );
  XNOR2X1 U1038 ( .A(a[19]), .B(n1346), .Y(n898) );
  INVX1 U1039 ( .A(n1346), .Y(n1344) );
  XOR2X1 U1040 ( .A(n414), .B(n410), .Y(n1102) );
  XOR2X1 U1041 ( .A(n1102), .B(n412), .Y(n406) );
  NAND2X1 U1042 ( .A(n414), .B(n410), .Y(n1103) );
  NAND2X1 U1043 ( .A(n414), .B(n412), .Y(n1104) );
  NAND2X1 U1044 ( .A(n410), .B(n412), .Y(n1105) );
  NAND3X1 U1045 ( .A(n1103), .B(n1104), .C(n1105), .Y(n405) );
  NAND2X1 U1046 ( .A(n407), .B(n394), .Y(n1106) );
  NAND2X1 U1047 ( .A(n407), .B(n405), .Y(n1107) );
  NAND2X1 U1048 ( .A(n394), .B(n405), .Y(n1108) );
  NAND3X1 U1049 ( .A(n1106), .B(n1107), .C(n1108), .Y(n389) );
  INVX1 U1050 ( .A(n1330), .Y(n727) );
  INVX1 U1051 ( .A(n555), .Y(n1109) );
  INVX1 U1052 ( .A(n1185), .Y(n555) );
  XOR2X1 U1053 ( .A(n1349), .B(n1323), .Y(n796) );
  XOR2X1 U1054 ( .A(n445), .B(n434), .Y(n1110) );
  XOR2X1 U1055 ( .A(n432), .B(n1110), .Y(n430) );
  NAND2X1 U1056 ( .A(n432), .B(n1053), .Y(n1111) );
  NAND2X1 U1057 ( .A(n432), .B(n434), .Y(n1112) );
  NAND2X1 U1058 ( .A(n1053), .B(n434), .Y(n1113) );
  NAND3X1 U1059 ( .A(n1112), .B(n1111), .C(n1113), .Y(n429) );
  INVX1 U1060 ( .A(n1341), .Y(n1114) );
  INVX4 U1061 ( .A(n1208), .Y(n1221) );
  XOR2X1 U1062 ( .A(n643), .B(n579), .Y(n1115) );
  XOR2X1 U1063 ( .A(n1115), .B(n595), .Y(n400) );
  NAND2X1 U1064 ( .A(n595), .B(n643), .Y(n1116) );
  NAND2X1 U1065 ( .A(n595), .B(n579), .Y(n1117) );
  NAND2X1 U1066 ( .A(n643), .B(n579), .Y(n1118) );
  NAND3X1 U1067 ( .A(n1117), .B(n1116), .C(n1118), .Y(n399) );
  BUFX4 U1068 ( .A(n449), .Y(n1119) );
  INVX2 U1069 ( .A(n1344), .Y(n1211) );
  BUFX4 U1070 ( .A(n6), .Y(n1120) );
  INVX1 U1071 ( .A(n6), .Y(n1279) );
  XNOR2X1 U1072 ( .A(n112), .B(n1121), .Y(product[43]) );
  AND2X2 U1073 ( .A(n111), .B(n1199), .Y(n1121) );
  XNOR2X1 U1074 ( .A(n123), .B(n1122), .Y(product[42]) );
  AND2X2 U1075 ( .A(n122), .B(n1006), .Y(n1122) );
  BUFX2 U1076 ( .A(n200), .Y(n1123) );
  INVX1 U1077 ( .A(n174), .Y(n1124) );
  XNOR2X1 U1078 ( .A(n1114), .B(n1331), .Y(n843) );
  XOR2X1 U1079 ( .A(n667), .B(n567), .Y(n1125) );
  XOR2X1 U1080 ( .A(n1125), .B(n1133), .Y(n498) );
  NAND2X1 U1081 ( .A(n667), .B(n567), .Y(n1126) );
  NAND2X1 U1082 ( .A(n667), .B(n683), .Y(n1127) );
  NAND2X1 U1083 ( .A(n567), .B(n683), .Y(n1128) );
  NAND3X1 U1084 ( .A(n1126), .B(n1127), .C(n1128), .Y(n497) );
  XOR2X1 U1085 ( .A(n634), .B(n499), .Y(n1129) );
  XOR2X1 U1086 ( .A(n1129), .B(n497), .Y(n486) );
  NAND2X1 U1087 ( .A(n634), .B(n499), .Y(n1130) );
  NAND2X1 U1088 ( .A(n634), .B(n497), .Y(n1131) );
  NAND2X1 U1089 ( .A(n499), .B(n497), .Y(n1132) );
  NAND3X1 U1090 ( .A(n1130), .B(n1131), .C(n1132), .Y(n485) );
  BUFX2 U1091 ( .A(n683), .Y(n1133) );
  XOR2X1 U1092 ( .A(n1342), .B(n1329), .Y(n844) );
  INVX1 U1093 ( .A(n128), .Y(n126) );
  XOR2X1 U1094 ( .A(n695), .B(n599), .Y(n1134) );
  XOR2X1 U1095 ( .A(n1134), .B(n631), .Y(n454) );
  NAND2X1 U1096 ( .A(n599), .B(n998), .Y(n1135) );
  NAND2X1 U1097 ( .A(n599), .B(n631), .Y(n1136) );
  NAND2X1 U1098 ( .A(n998), .B(n631), .Y(n1137) );
  NAND3X1 U1099 ( .A(n1135), .B(n1136), .C(n1137), .Y(n453) );
  NAND2X1 U1100 ( .A(n1095), .B(n451), .Y(n1138) );
  NAND2X1 U1101 ( .A(n1095), .B(n453), .Y(n1139) );
  NAND2X1 U1102 ( .A(n451), .B(n453), .Y(n1140) );
  NAND3X1 U1103 ( .A(n1138), .B(n1139), .C(n1140), .Y(n435) );
  INVX1 U1104 ( .A(n100), .Y(n98) );
  INVX1 U1105 ( .A(n1301), .Y(n1269) );
  XNOR2X1 U1106 ( .A(n86), .B(n1141), .Y(product[45]) );
  AND2X2 U1107 ( .A(n85), .B(n275), .Y(n1141) );
  XOR2X1 U1108 ( .A(n383), .B(n381), .Y(n1142) );
  XOR2X1 U1109 ( .A(n1142), .B(n370), .Y(n366) );
  NAND2X1 U1110 ( .A(n383), .B(n381), .Y(n1143) );
  NAND2X1 U1111 ( .A(n383), .B(n370), .Y(n1144) );
  NAND2X1 U1112 ( .A(n381), .B(n370), .Y(n1145) );
  NAND3X1 U1113 ( .A(n1143), .B(n1144), .C(n1145), .Y(n365) );
  NAND2X1 U1114 ( .A(n356), .B(n367), .Y(n1146) );
  NAND2X1 U1115 ( .A(n356), .B(n365), .Y(n1147) );
  NAND2X1 U1116 ( .A(n367), .B(n365), .Y(n1148) );
  NAND3X1 U1117 ( .A(n1146), .B(n1147), .C(n1148), .Y(n351) );
  INVX2 U1118 ( .A(n1205), .Y(n1289) );
  INVX2 U1119 ( .A(n1296), .Y(n1297) );
  INVX1 U1120 ( .A(n1), .Y(n1149) );
  INVX4 U1121 ( .A(n1223), .Y(n1286) );
  XNOR2X1 U1122 ( .A(a[25]), .B(n1353), .Y(n895) );
  INVX2 U1123 ( .A(n1353), .Y(n1352) );
  INVX2 U1124 ( .A(n1346), .Y(n1345) );
  INVX2 U1125 ( .A(n1032), .Y(n1342) );
  BUFX2 U1126 ( .A(n1101), .Y(n1150) );
  AND2X2 U1127 ( .A(n1210), .B(n899), .Y(n1151) );
  AND2X2 U1128 ( .A(n1210), .B(n899), .Y(n1152) );
  INVX1 U1129 ( .A(n42), .Y(n1296) );
  INVX1 U1130 ( .A(n1332), .Y(n726) );
  INVX4 U1131 ( .A(n19), .Y(n1348) );
  INVX1 U1132 ( .A(n189), .Y(n286) );
  XNOR2X1 U1133 ( .A(n37), .B(a[29]), .Y(n1153) );
  INVX2 U1134 ( .A(n1044), .Y(n1208) );
  XNOR2X1 U1135 ( .A(n170), .B(n1008), .Y(product[37]) );
  INVX4 U1136 ( .A(n1206), .Y(n1291) );
  INVX1 U1137 ( .A(n1206), .Y(n1292) );
  INVX4 U1138 ( .A(n37), .Y(n1355) );
  INVX8 U1139 ( .A(n1355), .Y(n1354) );
  INVX1 U1140 ( .A(n222), .Y(n221) );
  XOR2X1 U1141 ( .A(n463), .B(n450), .Y(n1154) );
  XOR2X1 U1142 ( .A(n1154), .B(n461), .Y(n446) );
  XOR2X1 U1143 ( .A(n459), .B(n448), .Y(n1155) );
  XOR2X1 U1144 ( .A(n1155), .B(n446), .Y(n444) );
  NAND2X1 U1145 ( .A(n463), .B(n450), .Y(n1156) );
  NAND2X1 U1146 ( .A(n463), .B(n461), .Y(n1157) );
  NAND2X1 U1147 ( .A(n450), .B(n461), .Y(n1158) );
  NAND3X1 U1148 ( .A(n1156), .B(n1157), .C(n1158), .Y(n445) );
  NAND2X1 U1149 ( .A(n448), .B(n459), .Y(n1159) );
  NAND2X1 U1150 ( .A(n448), .B(n446), .Y(n1160) );
  NAND2X1 U1151 ( .A(n459), .B(n446), .Y(n1161) );
  NAND3X1 U1152 ( .A(n1159), .B(n1160), .C(n1161), .Y(n443) );
  XOR2X1 U1153 ( .A(n665), .B(n633), .Y(n1162) );
  XOR2X1 U1154 ( .A(n566), .B(n1162), .Y(n476) );
  NAND2X1 U1155 ( .A(n566), .B(n665), .Y(n1163) );
  NAND2X1 U1156 ( .A(n566), .B(n633), .Y(n1164) );
  NAND2X1 U1157 ( .A(n665), .B(n633), .Y(n1165) );
  NAND3X1 U1158 ( .A(n1164), .B(n1163), .C(n1165), .Y(n475) );
  NOR2X1 U1159 ( .A(n918), .B(n737), .Y(n1166) );
  BUFX2 U1160 ( .A(n1341), .Y(n1167) );
  BUFX2 U1161 ( .A(n1341), .Y(n1168) );
  INVX4 U1162 ( .A(n1343), .Y(n1341) );
  BUFX2 U1163 ( .A(n1003), .Y(n1169) );
  BUFX4 U1164 ( .A(n1003), .Y(n1171) );
  XOR2X1 U1165 ( .A(n464), .B(n468), .Y(n1172) );
  XOR2X1 U1166 ( .A(n473), .B(n1172), .Y(n460) );
  NAND2X1 U1167 ( .A(n473), .B(n464), .Y(n1173) );
  NAND2X1 U1168 ( .A(n473), .B(n468), .Y(n1174) );
  NAND2X1 U1169 ( .A(n464), .B(n468), .Y(n1175) );
  NAND3X1 U1170 ( .A(n1174), .B(n1173), .C(n1175), .Y(n459) );
  INVX8 U1171 ( .A(n1338), .Y(n1336) );
  XOR2X1 U1172 ( .A(n629), .B(n677), .Y(n1176) );
  XOR2X1 U1173 ( .A(n1176), .B(n613), .Y(n426) );
  NAND2X1 U1174 ( .A(n1015), .B(n677), .Y(n1177) );
  NAND2X1 U1175 ( .A(n1015), .B(n613), .Y(n1178) );
  NAND2X1 U1176 ( .A(n677), .B(n613), .Y(n1179) );
  NAND3X1 U1177 ( .A(n1177), .B(n1178), .C(n1179), .Y(n425) );
  XOR2X1 U1178 ( .A(n1180), .B(n425), .Y(n408) );
  NAND2X1 U1179 ( .A(n427), .B(n423), .Y(n1181) );
  NAND2X1 U1180 ( .A(n427), .B(n425), .Y(n1182) );
  NAND2X1 U1181 ( .A(n423), .B(n425), .Y(n1183) );
  NAND3X1 U1182 ( .A(n1181), .B(n1182), .C(n1183), .Y(n407) );
  BUFX2 U1183 ( .A(n1285), .Y(n1184) );
  BUFX4 U1184 ( .A(n1285), .Y(n1185) );
  INVX1 U1185 ( .A(n1338), .Y(n1186) );
  INVX2 U1186 ( .A(n287), .Y(n1187) );
  OR2X2 U1187 ( .A(n137), .B(n80), .Y(n1191) );
  OR2X2 U1188 ( .A(n481), .B(n470), .Y(n1192) );
  XOR2X1 U1189 ( .A(n1188), .B(n1043), .Y(n342) );
  XOR2X1 U1190 ( .A(n355), .B(n346), .Y(n1188) );
  OR2X2 U1191 ( .A(n302), .B(n307), .Y(n1199) );
  OR2X2 U1192 ( .A(n708), .B(n724), .Y(n1189) );
  AND2X1 U1193 ( .A(n708), .B(n724), .Y(n1190) );
  AND2X1 U1194 ( .A(n725), .B(n572), .Y(n1204) );
  BUFX4 U1195 ( .A(n1207), .Y(n1256) );
  INVX2 U1196 ( .A(n890), .Y(n1305) );
  BUFX2 U1197 ( .A(n351), .Y(n1232) );
  OR2X1 U1198 ( .A(n523), .B(n518), .Y(n1193) );
  AND2X2 U1199 ( .A(n491), .B(n482), .Y(n1194) );
  OR2X1 U1200 ( .A(n491), .B(n482), .Y(n1195) );
  AND2X2 U1201 ( .A(n481), .B(n470), .Y(n1196) );
  AND2X2 U1202 ( .A(n523), .B(n518), .Y(n1197) );
  XNOR2X1 U1203 ( .A(n1198), .B(n648), .Y(n466) );
  XNOR2X1 U1204 ( .A(n696), .B(n632), .Y(n1198) );
  OR2X1 U1205 ( .A(n533), .B(n530), .Y(n1200) );
  AND2X2 U1206 ( .A(n533), .B(n530), .Y(n1201) );
  INVX2 U1207 ( .A(n554), .Y(n655) );
  INVX2 U1208 ( .A(n551), .Y(n637) );
  INVX2 U1209 ( .A(n1299), .Y(n1300) );
  OR2X1 U1210 ( .A(n539), .B(n538), .Y(n1202) );
  AND2X2 U1211 ( .A(n539), .B(n538), .Y(n1203) );
  INVX2 U1212 ( .A(n542), .Y(n583) );
  INVX2 U1213 ( .A(n548), .Y(n619) );
  INVX4 U1214 ( .A(n1340), .Y(n1271) );
  INVX2 U1215 ( .A(n1205), .Y(n1288) );
  INVX2 U1216 ( .A(n545), .Y(n601) );
  INVX2 U1217 ( .A(n1351), .Y(n1350) );
  INVX2 U1218 ( .A(n563), .Y(n1214) );
  INVX2 U1219 ( .A(n42), .Y(n1217) );
  INVX2 U1220 ( .A(n1338), .Y(n1337) );
  INVX2 U1221 ( .A(n1209), .Y(n1285) );
  XOR2X1 U1222 ( .A(n25), .B(a[25]), .Y(n1206) );
  XNOR2X1 U1223 ( .A(n1270), .B(a[17]), .Y(n1207) );
  XNOR2X1 U1224 ( .A(a[21]), .B(n1348), .Y(n897) );
  XNOR2X1 U1225 ( .A(a[21]), .B(n1346), .Y(n1209) );
  INVX2 U1226 ( .A(n18), .Y(n1283) );
  INVX2 U1227 ( .A(n40), .Y(n1294) );
  INVX4 U1228 ( .A(n1335), .Y(n918) );
  BUFX4 U1229 ( .A(n53), .Y(n1213) );
  INVX8 U1230 ( .A(n1293), .Y(n1247) );
  XOR2X1 U1231 ( .A(n1340), .B(n917), .Y(n1246) );
  OR2X2 U1232 ( .A(n339), .B(n330), .Y(n1222) );
  INVX1 U1233 ( .A(n1222), .Y(n148) );
  AND2X2 U1234 ( .A(n897), .B(n1285), .Y(n1223) );
  XOR2X1 U1235 ( .A(n477), .B(n475), .Y(n1224) );
  XOR2X1 U1236 ( .A(n1224), .B(n466), .Y(n462) );
  NAND2X1 U1237 ( .A(n696), .B(n632), .Y(n1225) );
  NAND2X1 U1238 ( .A(n696), .B(n648), .Y(n1226) );
  NAND2X1 U1239 ( .A(n632), .B(n648), .Y(n1227) );
  NAND3X1 U1240 ( .A(n1225), .B(n1226), .C(n1227), .Y(n465) );
  NAND2X1 U1241 ( .A(n477), .B(n475), .Y(n1228) );
  NAND2X1 U1242 ( .A(n477), .B(n466), .Y(n1229) );
  NAND2X1 U1243 ( .A(n475), .B(n466), .Y(n1230) );
  NAND3X1 U1244 ( .A(n1228), .B(n1229), .C(n1230), .Y(n461) );
  INVX1 U1245 ( .A(n1223), .Y(n1287) );
  XNOR2X1 U1246 ( .A(a[23]), .B(n1351), .Y(n896) );
  XOR2X1 U1247 ( .A(n442), .B(n1249), .Y(n1233) );
  XOR2X1 U1248 ( .A(n1233), .B(n438), .Y(n434) );
  NAND2X1 U1249 ( .A(n442), .B(n1249), .Y(n1234) );
  NAND2X1 U1250 ( .A(n442), .B(n438), .Y(n1235) );
  NAND2X1 U1251 ( .A(n1249), .B(n438), .Y(n1236) );
  NAND3X1 U1252 ( .A(n1234), .B(n1235), .C(n1236), .Y(n433) );
  XOR2X1 U1253 ( .A(n422), .B(n435), .Y(n1237) );
  XOR2X1 U1254 ( .A(n1237), .B(n433), .Y(n418) );
  NAND2X1 U1255 ( .A(n435), .B(n1216), .Y(n1238) );
  NAND2X1 U1256 ( .A(n435), .B(n433), .Y(n1239) );
  NAND2X1 U1257 ( .A(n1216), .B(n433), .Y(n1240) );
  NAND3X1 U1258 ( .A(n1238), .B(n1239), .C(n1240), .Y(n417) );
  BUFX4 U1259 ( .A(n1258), .Y(n1242) );
  AND2X2 U1260 ( .A(n1337), .B(n1334), .Y(n582) );
  INVX2 U1261 ( .A(n1207), .Y(n561) );
  INVX4 U1262 ( .A(n1294), .Y(n1295) );
  INVX4 U1263 ( .A(n1353), .Y(n1250) );
  AND2X2 U1264 ( .A(n1289), .B(n896), .Y(n1251) );
  AND2X2 U1265 ( .A(n896), .B(n1289), .Y(n1252) );
  INVX1 U1266 ( .A(n182), .Y(n285) );
  INVX2 U1267 ( .A(n403), .Y(n1253) );
  INVX4 U1268 ( .A(n1253), .Y(n1254) );
  INVX1 U1269 ( .A(n1049), .Y(n290) );
  INVX1 U1270 ( .A(n213), .Y(n212) );
  AOI22X1 U1271 ( .A(n561), .B(n1167), .C(n1152), .D(n1167), .Y(n1257) );
  BUFX2 U1272 ( .A(n1210), .Y(n1258) );
  INVX2 U1273 ( .A(n427), .Y(n1259) );
  INVX1 U1274 ( .A(n200), .Y(n202) );
  XOR2X1 U1275 ( .A(n692), .B(n612), .Y(n1260) );
  XOR2X1 U1276 ( .A(n1260), .B(n628), .Y(n412) );
  NAND2X1 U1277 ( .A(n692), .B(n612), .Y(n1261) );
  NAND2X1 U1278 ( .A(n692), .B(n628), .Y(n1262) );
  NAND2X1 U1279 ( .A(n612), .B(n628), .Y(n1263) );
  NAND3X1 U1280 ( .A(n1261), .B(n1262), .C(n1263), .Y(n411) );
  XOR2X1 U1281 ( .A(n400), .B(n1012), .Y(n1264) );
  XOR2X1 U1282 ( .A(n1264), .B(n411), .Y(n394) );
  NAND2X1 U1283 ( .A(n1012), .B(n400), .Y(n1265) );
  NAND2X1 U1284 ( .A(n1012), .B(n411), .Y(n1266) );
  NAND2X1 U1285 ( .A(n400), .B(n411), .Y(n1267) );
  NAND3X1 U1286 ( .A(n1265), .B(n1266), .C(n1267), .Y(n393) );
  XNOR2X1 U1287 ( .A(n73), .B(n1268), .Y(product[46]) );
  AND2X2 U1288 ( .A(n72), .B(n1010), .Y(n1268) );
  XOR2X1 U1289 ( .A(a[27]), .B(n1353), .Y(n40) );
  XOR2X1 U1290 ( .A(n344), .B(n1232), .Y(n1272) );
  XOR2X1 U1291 ( .A(n1272), .B(n342), .Y(n340) );
  NAND2X1 U1292 ( .A(n355), .B(n346), .Y(n1273) );
  NAND2X1 U1293 ( .A(n355), .B(n1043), .Y(n1274) );
  NAND2X1 U1294 ( .A(n346), .B(n1043), .Y(n1275) );
  NAND3X1 U1295 ( .A(n1273), .B(n1274), .C(n1275), .Y(n341) );
  NAND2X1 U1296 ( .A(n344), .B(n1232), .Y(n1276) );
  NAND2X1 U1297 ( .A(n344), .B(n342), .Y(n1277) );
  NAND2X1 U1298 ( .A(n1232), .B(n342), .Y(n1278) );
  NAND3X1 U1299 ( .A(n1276), .B(n1277), .C(n1278), .Y(n339) );
  INVX2 U1300 ( .A(n557), .Y(n673) );
  INVX1 U1301 ( .A(n194), .Y(n287) );
  INVX1 U1302 ( .A(n205), .Y(n288) );
  INVX1 U1303 ( .A(n199), .Y(n201) );
  INVX1 U1304 ( .A(n172), .Y(n174) );
  INVX1 U1305 ( .A(n171), .Y(n173) );
  INVX1 U1306 ( .A(n161), .Y(n282) );
  INVX1 U1307 ( .A(n166), .Y(n283) );
  INVX1 U1308 ( .A(n177), .Y(n284) );
  INVX4 U1309 ( .A(n36), .Y(n1293) );
  INVX4 U1310 ( .A(n51), .Y(n1301) );
  INVX1 U1311 ( .A(n1213), .Y(n155) );
  INVX1 U1312 ( .A(n1219), .Y(n156) );
  INVX8 U1313 ( .A(n1301), .Y(n1302) );
  INVX8 U1314 ( .A(n1307), .Y(n1308) );
  INVX8 U1315 ( .A(n1309), .Y(n1310) );
  INVX8 U1316 ( .A(n1315), .Y(n1316) );
  INVX8 U1317 ( .A(n1317), .Y(n1318) );
  INVX8 U1318 ( .A(n1321), .Y(n1322) );
  INVX8 U1319 ( .A(n1325), .Y(n1326) );
  INVX8 U1320 ( .A(n1), .Y(n1340) );
  INVX2 U1321 ( .A(n101), .Y(n99) );
  INVX2 U1322 ( .A(n94), .Y(n92) );
  INVX2 U1323 ( .A(n79), .Y(n77) );
  INVX2 U1324 ( .A(n1306), .Y(n739) );
  INVX2 U1325 ( .A(n1318), .Y(n733) );
  INVX2 U1326 ( .A(n1322), .Y(n731) );
  INVX2 U1327 ( .A(n1326), .Y(n729) );
  INVX2 U1328 ( .A(n1328), .Y(n728) );
  OAI22X1 U1329 ( .A(n917), .B(n1149), .C(n1149), .D(n6), .Y(n563) );
  OAI22X1 U1330 ( .A(n1004), .B(n1047), .C(n1047), .D(n1284), .Y(n557) );
  OAI22X1 U1331 ( .A(n1185), .B(n1070), .C(n1286), .D(n1070), .Y(n554) );
  OAI22X1 U1332 ( .A(n1245), .B(n1351), .C(n1050), .D(n1351), .Y(n551) );
  INVX2 U1333 ( .A(n1291), .Y(n549) );
  OAI22X1 U1334 ( .A(n1291), .B(n1353), .C(n1247), .D(n1353), .Y(n548) );
  OAI22X1 U1335 ( .A(n1295), .B(n1355), .C(n1218), .D(n1355), .Y(n545) );
  OAI22X1 U1336 ( .A(n1221), .B(n918), .C(n1300), .D(n918), .Y(n542) );
  INVX2 U1337 ( .A(n385), .Y(n386) );
  INVX2 U1338 ( .A(n995), .Y(n360) );
  INVX2 U1339 ( .A(n337), .Y(n338) );
  INVX2 U1340 ( .A(n319), .Y(n320) );
  INVX2 U1341 ( .A(n305), .Y(n306) );
  INVX2 U1342 ( .A(n295), .Y(n296) );
  XOR2X1 U1343 ( .A(n583), .B(n295), .Y(n291) );
  INVX2 U1344 ( .A(n130), .Y(n279) );
  INVX2 U1345 ( .A(n93), .Y(n91) );
  INVX2 U1346 ( .A(n84), .Y(n275) );
  INVX2 U1347 ( .A(n211), .Y(n209) );
  INVX2 U1348 ( .A(n210), .Y(n289) );
  INVX2 U1349 ( .A(n183), .Y(n181) );
  INVX2 U1350 ( .A(n149), .Y(n151) );
  INVX2 U1351 ( .A(n144), .Y(n142) );
  INVX2 U1352 ( .A(n129), .Y(n127) );
  INVX2 U1353 ( .A(n122), .Y(n120) );
  INVX2 U1354 ( .A(n111), .Y(n109) );
  INVX2 U1355 ( .A(n105), .Y(n103) );
  INVX2 U1356 ( .A(n104), .Y(n102) );
endmodule


module alu_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n21, n22, n23, n24, n25, n27, n29, n30, n31, n32, n33, n35,
         n37, n38, n39, n40, n41, n43, n45, n46, n47, n48, n49, n51, n53, n54,
         n55, n56, n58, n60, n61, n63, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n82, n84, n86, n88, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n111, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185;

  XNOR2X1 U5 ( .A(n22), .B(n1), .Y(DIFF[14]) );
  AOI21X1 U6 ( .A(n184), .B(n22), .C(n19), .Y(n17) );
  NAND2X1 U9 ( .A(n21), .B(n184), .Y(n1) );
  NAND2X1 U12 ( .A(A[14]), .B(n96), .Y(n21) );
  XOR2X1 U13 ( .A(n25), .B(n2), .Y(DIFF[13]) );
  OAI21X1 U14 ( .A(n25), .B(n23), .C(n24), .Y(n22) );
  NAND2X1 U15 ( .A(n24), .B(n82), .Y(n2) );
  NOR2X1 U17 ( .A(A[13]), .B(n97), .Y(n23) );
  NAND2X1 U18 ( .A(A[13]), .B(n97), .Y(n24) );
  XNOR2X1 U19 ( .A(n30), .B(n3), .Y(DIFF[12]) );
  AOI21X1 U20 ( .A(n183), .B(n30), .C(n27), .Y(n25) );
  NAND2X1 U23 ( .A(n29), .B(n183), .Y(n3) );
  NAND2X1 U26 ( .A(A[12]), .B(n98), .Y(n29) );
  XOR2X1 U27 ( .A(n33), .B(n4), .Y(DIFF[11]) );
  OAI21X1 U28 ( .A(n33), .B(n31), .C(n32), .Y(n30) );
  NAND2X1 U29 ( .A(n32), .B(n84), .Y(n4) );
  NOR2X1 U31 ( .A(A[11]), .B(n99), .Y(n31) );
  NAND2X1 U32 ( .A(A[11]), .B(n99), .Y(n32) );
  XNOR2X1 U33 ( .A(n38), .B(n5), .Y(DIFF[10]) );
  AOI21X1 U34 ( .A(n171), .B(n38), .C(n35), .Y(n33) );
  NAND2X1 U37 ( .A(n37), .B(n171), .Y(n5) );
  NAND2X1 U40 ( .A(A[10]), .B(n100), .Y(n37) );
  XOR2X1 U41 ( .A(n41), .B(n6), .Y(DIFF[9]) );
  OAI21X1 U42 ( .A(n41), .B(n39), .C(n40), .Y(n38) );
  NAND2X1 U43 ( .A(n40), .B(n86), .Y(n6) );
  NOR2X1 U45 ( .A(A[9]), .B(n101), .Y(n39) );
  NAND2X1 U46 ( .A(A[9]), .B(n101), .Y(n40) );
  XNOR2X1 U47 ( .A(n46), .B(n7), .Y(DIFF[8]) );
  AOI21X1 U48 ( .A(n182), .B(n46), .C(n43), .Y(n41) );
  NAND2X1 U51 ( .A(n45), .B(n182), .Y(n7) );
  NAND2X1 U54 ( .A(A[8]), .B(n102), .Y(n45) );
  XOR2X1 U55 ( .A(n49), .B(n8), .Y(DIFF[7]) );
  OAI21X1 U56 ( .A(n49), .B(n47), .C(n48), .Y(n46) );
  NAND2X1 U57 ( .A(n48), .B(n88), .Y(n8) );
  NOR2X1 U59 ( .A(A[7]), .B(n103), .Y(n47) );
  NAND2X1 U60 ( .A(A[7]), .B(n103), .Y(n48) );
  XNOR2X1 U61 ( .A(n54), .B(n9), .Y(DIFF[6]) );
  AOI21X1 U62 ( .A(n181), .B(n54), .C(n51), .Y(n49) );
  NAND2X1 U65 ( .A(n53), .B(n181), .Y(n9) );
  NAND2X1 U68 ( .A(A[6]), .B(n104), .Y(n53) );
  XOR2X1 U69 ( .A(n61), .B(n10), .Y(DIFF[5]) );
  OAI21X1 U70 ( .A(n67), .B(n55), .C(n56), .Y(n54) );
  NAND2X1 U71 ( .A(n180), .B(n170), .Y(n55) );
  AOI21X1 U72 ( .A(n63), .B(n170), .C(n58), .Y(n56) );
  NAND2X1 U75 ( .A(n60), .B(n170), .Y(n10) );
  NAND2X1 U78 ( .A(A[5]), .B(n105), .Y(n60) );
  XNOR2X1 U79 ( .A(n66), .B(n11), .Y(DIFF[4]) );
  AOI21X1 U80 ( .A(n180), .B(n66), .C(n63), .Y(n61) );
  NAND2X1 U83 ( .A(n65), .B(n180), .Y(n11) );
  NAND2X1 U86 ( .A(A[4]), .B(n106), .Y(n65) );
  XNOR2X1 U87 ( .A(n72), .B(n12), .Y(DIFF[3]) );
  AOI21X1 U89 ( .A(n76), .B(n68), .C(n69), .Y(n67) );
  NOR2X1 U90 ( .A(n73), .B(n70), .Y(n68) );
  OAI21X1 U91 ( .A(n70), .B(n74), .C(n71), .Y(n69) );
  NAND2X1 U92 ( .A(n71), .B(n92), .Y(n12) );
  NOR2X1 U94 ( .A(A[3]), .B(n107), .Y(n70) );
  NAND2X1 U95 ( .A(A[3]), .B(n107), .Y(n71) );
  XOR2X1 U96 ( .A(n75), .B(n13), .Y(DIFF[2]) );
  OAI21X1 U97 ( .A(n75), .B(n73), .C(n74), .Y(n72) );
  NAND2X1 U98 ( .A(n74), .B(n93), .Y(n13) );
  NOR2X1 U100 ( .A(A[2]), .B(n108), .Y(n73) );
  NAND2X1 U101 ( .A(A[2]), .B(n108), .Y(n74) );
  XOR2X1 U102 ( .A(n14), .B(n79), .Y(DIFF[1]) );
  OAI21X1 U104 ( .A(n77), .B(n79), .C(n78), .Y(n76) );
  NAND2X1 U105 ( .A(n78), .B(n94), .Y(n14) );
  NOR2X1 U107 ( .A(A[1]), .B(n109), .Y(n77) );
  NAND2X1 U108 ( .A(A[1]), .B(n109), .Y(n78) );
  XNOR2X1 U109 ( .A(n185), .B(A[0]), .Y(DIFF[0]) );
  NOR2X1 U110 ( .A(A[0]), .B(n185), .Y(n79) );
  INVX1 U131 ( .A(B[0]), .Y(n185) );
  OR2X2 U132 ( .A(A[5]), .B(n105), .Y(n170) );
  OR2X2 U133 ( .A(A[10]), .B(n100), .Y(n171) );
  INVX1 U134 ( .A(B[2]), .Y(n108) );
  INVX1 U135 ( .A(B[3]), .Y(n107) );
  XOR2X1 U136 ( .A(A[15]), .B(n95), .Y(n172) );
  XOR2X1 U137 ( .A(n172), .B(n80), .Y(DIFF[15]) );
  NAND2X1 U138 ( .A(A[15]), .B(n95), .Y(n173) );
  NAND2X1 U139 ( .A(A[15]), .B(n80), .Y(n174) );
  NAND2X1 U140 ( .A(n95), .B(n80), .Y(n175) );
  NAND3X1 U141 ( .A(n173), .B(n174), .C(n175), .Y(n16) );
  XOR2X1 U142 ( .A(n111), .B(B[16]), .Y(n176) );
  XOR2X1 U143 ( .A(n176), .B(n16), .Y(DIFF[16]) );
  NAND2X1 U144 ( .A(n111), .B(B[16]), .Y(n177) );
  NAND2X1 U145 ( .A(n111), .B(n16), .Y(n178) );
  NAND2X1 U146 ( .A(B[16]), .B(n16), .Y(n179) );
  NAND3X1 U147 ( .A(n177), .B(n178), .C(n179), .Y(n15) );
  INVX1 U148 ( .A(B[1]), .Y(n109) );
  INVX1 U149 ( .A(n67), .Y(n66) );
  INVX1 U150 ( .A(n76), .Y(n75) );
  INVX1 U151 ( .A(B[8]), .Y(n102) );
  INVX1 U152 ( .A(B[12]), .Y(n98) );
  INVX1 U153 ( .A(B[14]), .Y(n96) );
  OR2X2 U154 ( .A(A[4]), .B(n106), .Y(n180) );
  OR2X2 U155 ( .A(A[6]), .B(n104), .Y(n181) );
  OR2X2 U156 ( .A(A[8]), .B(n102), .Y(n182) );
  OR2X2 U157 ( .A(A[12]), .B(n98), .Y(n183) );
  OR2X2 U158 ( .A(A[14]), .B(n96), .Y(n184) );
  INVX1 U159 ( .A(B[6]), .Y(n104) );
  INVX1 U160 ( .A(B[5]), .Y(n105) );
  INVX1 U161 ( .A(B[9]), .Y(n101) );
  INVX1 U162 ( .A(B[11]), .Y(n99) );
  INVX1 U163 ( .A(B[4]), .Y(n106) );
  INVX1 U164 ( .A(B[15]), .Y(n95) );
  INVX2 U165 ( .A(B[13]), .Y(n97) );
  INVX2 U166 ( .A(n77), .Y(n94) );
  INVX2 U167 ( .A(n73), .Y(n93) );
  INVX2 U168 ( .A(n70), .Y(n92) );
  INVX2 U169 ( .A(n47), .Y(n88) );
  INVX2 U170 ( .A(n39), .Y(n86) );
  INVX2 U171 ( .A(n31), .Y(n84) );
  INVX2 U172 ( .A(n23), .Y(n82) );
  INVX2 U173 ( .A(n17), .Y(n80) );
  INVX2 U174 ( .A(n65), .Y(n63) );
  INVX2 U175 ( .A(n60), .Y(n58) );
  INVX2 U176 ( .A(n53), .Y(n51) );
  INVX2 U177 ( .A(n45), .Y(n43) );
  INVX2 U178 ( .A(n37), .Y(n35) );
  INVX2 U179 ( .A(n29), .Y(n27) );
  INVX2 U180 ( .A(n21), .Y(n19) );
  INVX2 U181 ( .A(A[17]), .Y(n111) );
  INVX2 U182 ( .A(B[7]), .Y(n103) );
  INVX2 U183 ( .A(B[10]), .Y(n100) );
  INVX2 U184 ( .A(n15), .Y(DIFF[17]) );
endmodule


module alu_DW01_add_1 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n21, n23, n25, n26, n27, n28, n29, n31, n33, n34, n35,
         n36, n37, n39, n41, n42, n43, n44, n45, n47, n49, n50, n51, n52, n53,
         n55, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n74, n75, n77, n79, n81, n83, n85, n86, n87, n88, n90,
         n91, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165;

  XOR2X1 U4 ( .A(n21), .B(n1), .Y(SUM[14]) );
  OAI21X1 U5 ( .A(n21), .B(n19), .C(n20), .Y(n18) );
  NAND2X1 U6 ( .A(n20), .B(n75), .Y(n1) );
  NOR2X1 U8 ( .A(A[14]), .B(B[14]), .Y(n19) );
  NAND2X1 U9 ( .A(A[14]), .B(B[14]), .Y(n20) );
  XNOR2X1 U10 ( .A(n26), .B(n2), .Y(SUM[13]) );
  AOI21X1 U11 ( .A(n165), .B(n26), .C(n23), .Y(n21) );
  NAND2X1 U14 ( .A(n25), .B(n165), .Y(n2) );
  NAND2X1 U17 ( .A(A[13]), .B(B[13]), .Y(n25) );
  XOR2X1 U18 ( .A(n29), .B(n3), .Y(SUM[12]) );
  OAI21X1 U19 ( .A(n29), .B(n27), .C(n28), .Y(n26) );
  NAND2X1 U20 ( .A(n28), .B(n77), .Y(n3) );
  NOR2X1 U22 ( .A(A[12]), .B(B[12]), .Y(n27) );
  NAND2X1 U23 ( .A(A[12]), .B(B[12]), .Y(n28) );
  XNOR2X1 U24 ( .A(n34), .B(n4), .Y(SUM[11]) );
  AOI21X1 U25 ( .A(n164), .B(n34), .C(n31), .Y(n29) );
  NAND2X1 U28 ( .A(n33), .B(n164), .Y(n4) );
  NAND2X1 U31 ( .A(A[11]), .B(B[11]), .Y(n33) );
  XOR2X1 U32 ( .A(n37), .B(n5), .Y(SUM[10]) );
  OAI21X1 U33 ( .A(n37), .B(n35), .C(n36), .Y(n34) );
  NAND2X1 U34 ( .A(n36), .B(n79), .Y(n5) );
  NOR2X1 U36 ( .A(A[10]), .B(B[10]), .Y(n35) );
  NAND2X1 U37 ( .A(A[10]), .B(B[10]), .Y(n36) );
  XNOR2X1 U38 ( .A(n42), .B(n6), .Y(SUM[9]) );
  AOI21X1 U39 ( .A(n162), .B(n42), .C(n39), .Y(n37) );
  NAND2X1 U42 ( .A(n41), .B(n162), .Y(n6) );
  NAND2X1 U45 ( .A(A[9]), .B(B[9]), .Y(n41) );
  XOR2X1 U46 ( .A(n45), .B(n7), .Y(SUM[8]) );
  OAI21X1 U47 ( .A(n45), .B(n43), .C(n44), .Y(n42) );
  NAND2X1 U48 ( .A(n44), .B(n81), .Y(n7) );
  NOR2X1 U50 ( .A(A[8]), .B(B[8]), .Y(n43) );
  NAND2X1 U51 ( .A(A[8]), .B(B[8]), .Y(n44) );
  XNOR2X1 U52 ( .A(n50), .B(n8), .Y(SUM[7]) );
  AOI21X1 U53 ( .A(n161), .B(n50), .C(n47), .Y(n45) );
  NAND2X1 U56 ( .A(n49), .B(n161), .Y(n8) );
  NAND2X1 U59 ( .A(A[7]), .B(B[7]), .Y(n49) );
  XOR2X1 U60 ( .A(n159), .B(n9), .Y(SUM[6]) );
  OAI21X1 U61 ( .A(n53), .B(n51), .C(n52), .Y(n50) );
  NAND2X1 U62 ( .A(n52), .B(n83), .Y(n9) );
  NOR2X1 U64 ( .A(A[6]), .B(B[6]), .Y(n51) );
  NAND2X1 U65 ( .A(A[6]), .B(B[6]), .Y(n52) );
  XNOR2X1 U66 ( .A(n58), .B(n10), .Y(SUM[5]) );
  AOI21X1 U67 ( .A(n163), .B(n58), .C(n55), .Y(n53) );
  NAND2X1 U70 ( .A(n57), .B(n163), .Y(n10) );
  NAND2X1 U73 ( .A(A[5]), .B(B[5]), .Y(n57) );
  XOR2X1 U74 ( .A(n160), .B(n11), .Y(SUM[4]) );
  OAI21X1 U75 ( .A(n61), .B(n59), .C(n60), .Y(n58) );
  NAND2X1 U76 ( .A(n60), .B(n85), .Y(n11) );
  NOR2X1 U78 ( .A(A[4]), .B(B[4]), .Y(n59) );
  NAND2X1 U79 ( .A(A[4]), .B(B[4]), .Y(n60) );
  XNOR2X1 U80 ( .A(n66), .B(n12), .Y(SUM[3]) );
  AOI21X1 U81 ( .A(n70), .B(n62), .C(n63), .Y(n61) );
  NOR2X1 U82 ( .A(n67), .B(n64), .Y(n62) );
  OAI21X1 U83 ( .A(n64), .B(n68), .C(n65), .Y(n63) );
  NAND2X1 U84 ( .A(n65), .B(n86), .Y(n12) );
  NOR2X1 U86 ( .A(A[3]), .B(B[3]), .Y(n64) );
  NAND2X1 U87 ( .A(A[3]), .B(B[3]), .Y(n65) );
  XOR2X1 U88 ( .A(n69), .B(n13), .Y(SUM[2]) );
  OAI21X1 U89 ( .A(n69), .B(n67), .C(n68), .Y(n66) );
  NAND2X1 U90 ( .A(n68), .B(n87), .Y(n13) );
  NOR2X1 U92 ( .A(A[2]), .B(B[2]), .Y(n67) );
  NAND2X1 U93 ( .A(A[2]), .B(B[2]), .Y(n68) );
  XOR2X1 U94 ( .A(n14), .B(n74), .Y(SUM[1]) );
  OAI21X1 U96 ( .A(n71), .B(n74), .C(n72), .Y(n70) );
  NAND2X1 U97 ( .A(n72), .B(n88), .Y(n14) );
  NOR2X1 U99 ( .A(A[1]), .B(B[1]), .Y(n71) );
  NAND2X1 U100 ( .A(A[1]), .B(B[1]), .Y(n72) );
  NAND2X1 U105 ( .A(A[0]), .B(B[0]), .Y(n74) );
  OR2X2 U111 ( .A(A[0]), .B(B[0]), .Y(n150) );
  XOR2X1 U112 ( .A(A[15]), .B(B[15]), .Y(n151) );
  XOR2X1 U113 ( .A(n151), .B(n18), .Y(SUM[15]) );
  NAND2X1 U114 ( .A(A[15]), .B(B[15]), .Y(n152) );
  NAND2X1 U115 ( .A(A[15]), .B(n18), .Y(n153) );
  NAND2X1 U116 ( .A(B[15]), .B(n18), .Y(n154) );
  NAND3X1 U117 ( .A(n152), .B(n153), .C(n154), .Y(n17) );
  XOR2X1 U118 ( .A(n91), .B(n90), .Y(n155) );
  XOR2X1 U119 ( .A(n155), .B(n17), .Y(SUM[16]) );
  NAND2X1 U120 ( .A(n91), .B(n90), .Y(n156) );
  NAND2X1 U121 ( .A(n91), .B(n17), .Y(n157) );
  NAND2X1 U122 ( .A(n90), .B(n17), .Y(n158) );
  NAND3X1 U123 ( .A(n156), .B(n157), .C(n158), .Y(n16) );
  BUFX2 U124 ( .A(n53), .Y(n159) );
  BUFX2 U125 ( .A(n61), .Y(n160) );
  OR2X2 U126 ( .A(A[13]), .B(B[13]), .Y(n165) );
  AND2X1 U127 ( .A(n74), .B(n150), .Y(SUM[0]) );
  OR2X1 U128 ( .A(A[7]), .B(B[7]), .Y(n161) );
  OR2X1 U129 ( .A(A[9]), .B(B[9]), .Y(n162) );
  OR2X1 U130 ( .A(A[5]), .B(B[5]), .Y(n163) );
  OR2X1 U131 ( .A(A[11]), .B(B[11]), .Y(n164) );
  INVX1 U132 ( .A(n64), .Y(n86) );
  INVX2 U133 ( .A(A[17]), .Y(n91) );
  INVX2 U134 ( .A(B[17]), .Y(n90) );
  INVX2 U135 ( .A(n71), .Y(n88) );
  INVX2 U136 ( .A(n67), .Y(n87) );
  INVX2 U137 ( .A(n59), .Y(n85) );
  INVX2 U138 ( .A(n51), .Y(n83) );
  INVX2 U139 ( .A(n43), .Y(n81) );
  INVX2 U140 ( .A(n35), .Y(n79) );
  INVX2 U141 ( .A(n27), .Y(n77) );
  INVX2 U142 ( .A(n19), .Y(n75) );
  INVX2 U143 ( .A(n70), .Y(n69) );
  INVX2 U144 ( .A(n57), .Y(n55) );
  INVX2 U145 ( .A(n49), .Y(n47) );
  INVX2 U146 ( .A(n41), .Y(n39) );
  INVX2 U147 ( .A(n33), .Y(n31) );
  INVX2 U148 ( .A(n25), .Y(n23) );
  INVX2 U149 ( .A(n16), .Y(SUM[17]) );
endmodule


module alu ( src1_data, src2_data, alu_op, result, overflow );
  input [16:0] src1_data;
  input [16:0] src2_data;
  input [1:0] alu_op;
  output [16:0] result;
  output overflow;
  wire   N26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85;
  wire   [46:30] full_mult;
  wire   [17:0] large_sum;
  wire   [17:0] large_dif;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29;

  alu_DW_mult_uns_1 mult_35 ( .a({src1_data[15], n22, n43, src1_data[12:9], 
        n21, src1_data[7:2], n36, src1_data[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .b({
        src2_data[15:1], n34}), .product({N26, full_mult[45:30], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29}) );
  alu_DW01_sub_1 sub_44 ( .A({src1_data[16], src1_data[16], n9, n22, n43, 
        src1_data[12], n32, n26, n25, n21, n29, src1_data[6], n31, 
        src1_data[4], n30, src1_data[2], n15, n5}), .B({src2_data[16], 
        src2_data[16], n12, n4, n23, n17, src2_data[11], n24, n7, src2_data[8], 
        n2, n10, n14, src2_data[4:0]}), .CI(1'b0), .DIFF(large_dif) );
  alu_DW01_add_1 add_41 ( .A({src1_data[16], src1_data[16], n9, n33, n43, 
        src1_data[12], n32, n26, n25, n21, n29, src1_data[6], n31, 
        src1_data[4], n30, src1_data[2], n15, n5}), .B({src2_data[16], 
        src2_data[16], n12, n4, n23, n17, src2_data[11], n24, n7, src2_data[8], 
        n2, n10, n14, src2_data[4:1], n34}), .CI(1'b0), .SUM(large_sum) );
  INVX2 U3 ( .A(src1_data[1]), .Y(n37) );
  INVX2 U4 ( .A(n38), .Y(n30) );
  BUFX4 U6 ( .A(src1_data[0]), .Y(n5) );
  INVX1 U7 ( .A(src1_data[11]), .Y(n42) );
  INVX4 U9 ( .A(n37), .Y(n36) );
  INVX1 U10 ( .A(src2_data[7]), .Y(n1) );
  INVX2 U11 ( .A(n1), .Y(n2) );
  INVX1 U12 ( .A(src2_data[14]), .Y(n3) );
  INVX2 U13 ( .A(n3), .Y(n4) );
  INVX1 U14 ( .A(src2_data[9]), .Y(n6) );
  INVX2 U15 ( .A(n6), .Y(n7) );
  INVX1 U16 ( .A(src1_data[5]), .Y(n39) );
  INVX1 U17 ( .A(src1_data[15]), .Y(n8) );
  INVX2 U18 ( .A(n8), .Y(n9) );
  INVX4 U19 ( .A(n35), .Y(n34) );
  BUFX2 U20 ( .A(src2_data[6]), .Y(n10) );
  INVX1 U21 ( .A(src2_data[15]), .Y(n11) );
  INVX2 U22 ( .A(n11), .Y(n12) );
  INVX1 U23 ( .A(src2_data[5]), .Y(n13) );
  INVX2 U24 ( .A(n13), .Y(n14) );
  BUFX2 U25 ( .A(n36), .Y(n15) );
  INVX1 U26 ( .A(src2_data[12]), .Y(n16) );
  INVX2 U27 ( .A(n16), .Y(n17) );
  INVX2 U28 ( .A(n85), .Y(n80) );
  AND2X2 U29 ( .A(n49), .B(n48), .Y(n18) );
  AND2X2 U30 ( .A(alu_op[1]), .B(n48), .Y(n19) );
  AND2X2 U31 ( .A(alu_op[0]), .B(alu_op[1]), .Y(n20) );
  INVX2 U32 ( .A(src2_data[0]), .Y(n35) );
  BUFX4 U33 ( .A(src1_data[8]), .Y(n21) );
  BUFX4 U34 ( .A(src1_data[14]), .Y(n22) );
  INVX1 U35 ( .A(src1_data[9]), .Y(n41) );
  BUFX2 U36 ( .A(src2_data[13]), .Y(n23) );
  BUFX2 U37 ( .A(src2_data[10]), .Y(n24) );
  INVX1 U38 ( .A(src1_data[7]), .Y(n40) );
  INVX1 U39 ( .A(src1_data[3]), .Y(n38) );
  INVX1 U40 ( .A(n41), .Y(n25) );
  BUFX2 U41 ( .A(src1_data[10]), .Y(n26) );
  INVX1 U42 ( .A(n40), .Y(n29) );
  INVX1 U43 ( .A(n39), .Y(n31) );
  INVX1 U44 ( .A(n42), .Y(n32) );
  BUFX2 U45 ( .A(n22), .Y(n33) );
  INVX4 U46 ( .A(src1_data[13]), .Y(n44) );
  INVX8 U47 ( .A(n44), .Y(n43) );
  INVX2 U48 ( .A(large_sum[16]), .Y(n84) );
  XOR2X1 U49 ( .A(n84), .B(large_sum[17]), .Y(n47) );
  INVX2 U50 ( .A(alu_op[1]), .Y(n49) );
  NAND2X1 U51 ( .A(alu_op[0]), .B(n49), .Y(n85) );
  INVX2 U52 ( .A(alu_op[0]), .Y(n48) );
  XOR2X1 U53 ( .A(large_dif[16]), .B(large_dif[17]), .Y(n45) );
  AOI22X1 U54 ( .A(N26), .B(n20), .C(n19), .D(n45), .Y(n46) );
  OAI21X1 U55 ( .A(n47), .B(n85), .C(n46), .Y(overflow) );
  AOI22X1 U56 ( .A(n5), .B(n18), .C(full_mult[30]), .D(n20), .Y(n51) );
  AOI22X1 U57 ( .A(large_dif[0]), .B(n19), .C(large_sum[0]), .D(n80), .Y(n50)
         );
  NAND2X1 U58 ( .A(n51), .B(n50), .Y(result[0]) );
  AOI22X1 U59 ( .A(n15), .B(n18), .C(full_mult[31]), .D(n20), .Y(n53) );
  AOI22X1 U60 ( .A(large_dif[1]), .B(n19), .C(large_sum[1]), .D(n80), .Y(n52)
         );
  NAND2X1 U61 ( .A(n53), .B(n52), .Y(result[1]) );
  AOI22X1 U62 ( .A(src1_data[2]), .B(n18), .C(full_mult[32]), .D(n20), .Y(n55)
         );
  AOI22X1 U63 ( .A(large_dif[2]), .B(n19), .C(large_sum[2]), .D(n80), .Y(n54)
         );
  NAND2X1 U64 ( .A(n55), .B(n54), .Y(result[2]) );
  AOI22X1 U65 ( .A(n30), .B(n18), .C(full_mult[33]), .D(n20), .Y(n57) );
  AOI22X1 U66 ( .A(large_dif[3]), .B(n19), .C(large_sum[3]), .D(n80), .Y(n56)
         );
  NAND2X1 U67 ( .A(n57), .B(n56), .Y(result[3]) );
  AOI22X1 U68 ( .A(src1_data[4]), .B(n18), .C(full_mult[34]), .D(n20), .Y(n59)
         );
  AOI22X1 U69 ( .A(large_dif[4]), .B(n19), .C(large_sum[4]), .D(n80), .Y(n58)
         );
  NAND2X1 U70 ( .A(n59), .B(n58), .Y(result[4]) );
  AOI22X1 U71 ( .A(n31), .B(n18), .C(full_mult[35]), .D(n20), .Y(n61) );
  AOI22X1 U72 ( .A(large_dif[5]), .B(n19), .C(large_sum[5]), .D(n80), .Y(n60)
         );
  NAND2X1 U73 ( .A(n61), .B(n60), .Y(result[5]) );
  AOI22X1 U74 ( .A(src1_data[6]), .B(n18), .C(full_mult[36]), .D(n20), .Y(n63)
         );
  AOI22X1 U75 ( .A(large_dif[6]), .B(n19), .C(large_sum[6]), .D(n80), .Y(n62)
         );
  NAND2X1 U76 ( .A(n62), .B(n63), .Y(result[6]) );
  AOI22X1 U77 ( .A(n29), .B(n18), .C(full_mult[37]), .D(n20), .Y(n65) );
  AOI22X1 U78 ( .A(large_dif[7]), .B(n19), .C(large_sum[7]), .D(n80), .Y(n64)
         );
  NAND2X1 U79 ( .A(n64), .B(n65), .Y(result[7]) );
  AOI22X1 U80 ( .A(n21), .B(n18), .C(full_mult[38]), .D(n20), .Y(n67) );
  AOI22X1 U81 ( .A(large_dif[8]), .B(n19), .C(large_sum[8]), .D(n80), .Y(n66)
         );
  NAND2X1 U82 ( .A(n66), .B(n67), .Y(result[8]) );
  AOI22X1 U83 ( .A(n25), .B(n18), .C(full_mult[39]), .D(n20), .Y(n69) );
  AOI22X1 U84 ( .A(large_dif[9]), .B(n19), .C(large_sum[9]), .D(n80), .Y(n68)
         );
  NAND2X1 U85 ( .A(n68), .B(n69), .Y(result[9]) );
  AOI22X1 U86 ( .A(n26), .B(n18), .C(full_mult[40]), .D(n20), .Y(n71) );
  AOI22X1 U87 ( .A(large_dif[10]), .B(n19), .C(large_sum[10]), .D(n80), .Y(n70) );
  NAND2X1 U88 ( .A(n70), .B(n71), .Y(result[10]) );
  AOI22X1 U89 ( .A(n32), .B(n18), .C(full_mult[41]), .D(n20), .Y(n73) );
  AOI22X1 U90 ( .A(large_dif[11]), .B(n19), .C(large_sum[11]), .D(n80), .Y(n72) );
  NAND2X1 U91 ( .A(n72), .B(n73), .Y(result[11]) );
  AOI22X1 U92 ( .A(src1_data[12]), .B(n18), .C(full_mult[42]), .D(n20), .Y(n75) );
  AOI22X1 U93 ( .A(large_dif[12]), .B(n19), .C(large_sum[12]), .D(n80), .Y(n74) );
  NAND2X1 U94 ( .A(n74), .B(n75), .Y(result[12]) );
  AOI22X1 U95 ( .A(n43), .B(n18), .C(full_mult[43]), .D(n20), .Y(n77) );
  AOI22X1 U96 ( .A(large_dif[13]), .B(n19), .C(large_sum[13]), .D(n80), .Y(n76) );
  NAND2X1 U97 ( .A(n76), .B(n77), .Y(result[13]) );
  AOI22X1 U98 ( .A(n33), .B(n18), .C(full_mult[44]), .D(n20), .Y(n79) );
  AOI22X1 U99 ( .A(large_dif[14]), .B(n19), .C(large_sum[14]), .D(n80), .Y(n78) );
  NAND2X1 U100 ( .A(n78), .B(n79), .Y(result[14]) );
  AOI22X1 U101 ( .A(n9), .B(n18), .C(full_mult[45]), .D(n20), .Y(n82) );
  AOI22X1 U102 ( .A(large_dif[15]), .B(n19), .C(large_sum[15]), .D(n80), .Y(
        n81) );
  NAND2X1 U103 ( .A(n81), .B(n82), .Y(result[15]) );
  AOI22X1 U104 ( .A(src1_data[16]), .B(n18), .C(large_dif[16]), .D(n19), .Y(
        n83) );
  OAI21X1 U105 ( .A(n85), .B(n84), .C(n83), .Y(result[16]) );
endmodule


module flex_sreg_NUM_BITS17_15 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U3 ( .A(write_enable), .Y(n1) );
  INVX2 U4 ( .A(n4), .Y(n3) );
  INVX2 U5 ( .A(n_reset), .Y(n4) );
  INVX1 U6 ( .A(n14), .Y(n40) );
  INVX1 U7 ( .A(n12), .Y(n44) );
  INVX1 U8 ( .A(n18), .Y(n32) );
  INVX1 U9 ( .A(n16), .Y(n36) );
  INVX1 U10 ( .A(n11), .Y(n46) );
  INVX1 U11 ( .A(n15), .Y(n38) );
  INVX1 U12 ( .A(n17), .Y(n34) );
  INVX1 U13 ( .A(n20), .Y(n30) );
  INVX1 U14 ( .A(n13), .Y(n42) );
  INVX1 U15 ( .A(n22), .Y(n28) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(n2), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(write_enable), .Y(
        n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_14 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n11), .Y(n46) );
  INVX1 U3 ( .A(n14), .Y(n40) );
  INVX1 U4 ( .A(n22), .Y(n28) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n15), .Y(n38) );
  INVX1 U11 ( .A(n16), .Y(n36) );
  INVX1 U12 ( .A(n20), .Y(n30) );
  INVX1 U13 ( .A(n18), .Y(n32) );
  INVX1 U14 ( .A(n13), .Y(n42) );
  INVX1 U15 ( .A(n17), .Y(n34) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_13 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n11), .Y(n46) );
  INVX1 U3 ( .A(n14), .Y(n40) );
  INVX1 U4 ( .A(n22), .Y(n28) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n18), .Y(n32) );
  INVX1 U11 ( .A(n15), .Y(n38) );
  INVX1 U12 ( .A(n16), .Y(n36) );
  INVX1 U13 ( .A(n20), .Y(n30) );
  INVX1 U14 ( .A(n13), .Y(n42) );
  INVX1 U15 ( .A(n17), .Y(n34) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_12 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX1 U6 ( .A(n17), .Y(n34) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  INVX2 U8 ( .A(write_enable), .Y(n1) );
  INVX2 U9 ( .A(n4), .Y(n3) );
  INVX2 U10 ( .A(n_reset), .Y(n4) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_11 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX1 U6 ( .A(n17), .Y(n34) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  INVX2 U8 ( .A(write_enable), .Y(n1) );
  INVX2 U9 ( .A(n4), .Y(n3) );
  INVX2 U10 ( .A(n_reset), .Y(n4) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_10 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX1 U6 ( .A(n17), .Y(n34) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  INVX2 U8 ( .A(write_enable), .Y(n1) );
  INVX2 U9 ( .A(n4), .Y(n3) );
  INVX2 U10 ( .A(n_reset), .Y(n4) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_9 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n17), .Y(n34) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_8 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n17), .Y(n34) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_7 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX1 U6 ( .A(n17), .Y(n34) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  INVX2 U8 ( .A(write_enable), .Y(n1) );
  INVX2 U9 ( .A(n4), .Y(n3) );
  INVX2 U10 ( .A(n_reset), .Y(n4) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_6 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n17), .Y(n34) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_5 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n17), .Y(n34) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_4 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX1 U6 ( .A(n17), .Y(n34) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  INVX2 U8 ( .A(write_enable), .Y(n1) );
  INVX2 U9 ( .A(n4), .Y(n3) );
  INVX2 U10 ( .A(n_reset), .Y(n4) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_3 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX1 U6 ( .A(n17), .Y(n34) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  INVX2 U8 ( .A(write_enable), .Y(n1) );
  INVX2 U9 ( .A(n4), .Y(n3) );
  INVX2 U10 ( .A(n_reset), .Y(n4) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_2 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n11), .Y(n46) );
  INVX1 U3 ( .A(n14), .Y(n40) );
  INVX1 U4 ( .A(n12), .Y(n44) );
  INVX1 U5 ( .A(n17), .Y(n34) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(write_enable), .Y(n1) );
  INVX2 U8 ( .A(n4), .Y(n3) );
  INVX2 U9 ( .A(n_reset), .Y(n4) );
  INVX1 U10 ( .A(n22), .Y(n28) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_1 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX1 U6 ( .A(n17), .Y(n34) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  INVX2 U8 ( .A(write_enable), .Y(n1) );
  INVX2 U9 ( .A(n4), .Y(n3) );
  INVX2 U10 ( .A(n_reset), .Y(n4) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module flex_sreg_NUM_BITS17_0 ( clk, n_reset, write_enable, new_value, 
        current_value );
  input [16:0] new_value;
  output [16:0] current_value;
  input clk, n_reset, write_enable;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42,
         n44, n46, n48, n50, n52, n53, n54, n55;

  DFFSR \value_reg[16]  ( .D(n26), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[16]) );
  DFFSR \value_reg[15]  ( .D(n28), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[15]) );
  DFFSR \value_reg[14]  ( .D(n30), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[14]) );
  DFFSR \value_reg[13]  ( .D(n32), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[13]) );
  DFFSR \value_reg[12]  ( .D(n34), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[12]) );
  DFFSR \value_reg[11]  ( .D(n36), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[11]) );
  DFFSR \value_reg[10]  ( .D(n38), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[10]) );
  DFFSR \value_reg[9]  ( .D(n40), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[9]) );
  DFFSR \value_reg[8]  ( .D(n42), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[8]) );
  DFFSR \value_reg[7]  ( .D(n44), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[7]) );
  DFFSR \value_reg[6]  ( .D(n46), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[6]) );
  DFFSR \value_reg[5]  ( .D(n48), .CLK(clk), .R(n3), .S(1'b1), .Q(
        current_value[5]) );
  DFFSR \value_reg[4]  ( .D(n50), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[4]) );
  DFFSR \value_reg[3]  ( .D(n52), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[3]) );
  DFFSR \value_reg[2]  ( .D(n53), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[2]) );
  DFFSR \value_reg[1]  ( .D(n54), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[1]) );
  DFFSR \value_reg[0]  ( .D(n55), .CLK(clk), .R(n_reset), .S(1'b1), .Q(
        current_value[0]) );
  INVX1 U2 ( .A(n22), .Y(n28) );
  INVX1 U3 ( .A(n11), .Y(n46) );
  INVX1 U4 ( .A(n14), .Y(n40) );
  INVX1 U5 ( .A(n12), .Y(n44) );
  INVX1 U6 ( .A(n17), .Y(n34) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  INVX2 U8 ( .A(write_enable), .Y(n1) );
  INVX2 U9 ( .A(n4), .Y(n3) );
  INVX2 U10 ( .A(n_reset), .Y(n4) );
  INVX1 U11 ( .A(n18), .Y(n32) );
  INVX1 U12 ( .A(n15), .Y(n38) );
  INVX1 U13 ( .A(n16), .Y(n36) );
  INVX1 U14 ( .A(n20), .Y(n30) );
  INVX1 U15 ( .A(n13), .Y(n42) );
  MUX2X1 U16 ( .B(current_value[0]), .A(new_value[0]), .S(n2), .Y(n5) );
  INVX2 U17 ( .A(n5), .Y(n55) );
  MUX2X1 U18 ( .B(current_value[1]), .A(new_value[1]), .S(n2), .Y(n6) );
  INVX2 U19 ( .A(n6), .Y(n54) );
  MUX2X1 U20 ( .B(current_value[2]), .A(new_value[2]), .S(n2), .Y(n7) );
  INVX2 U21 ( .A(n7), .Y(n53) );
  MUX2X1 U22 ( .B(current_value[3]), .A(new_value[3]), .S(write_enable), .Y(n8) );
  INVX2 U23 ( .A(n8), .Y(n52) );
  MUX2X1 U24 ( .B(current_value[4]), .A(new_value[4]), .S(n2), .Y(n9) );
  INVX2 U25 ( .A(n9), .Y(n50) );
  MUX2X1 U26 ( .B(current_value[5]), .A(new_value[5]), .S(n2), .Y(n10) );
  INVX2 U27 ( .A(n10), .Y(n48) );
  MUX2X1 U28 ( .B(current_value[6]), .A(new_value[6]), .S(n2), .Y(n11) );
  MUX2X1 U29 ( .B(current_value[7]), .A(new_value[7]), .S(write_enable), .Y(
        n12) );
  MUX2X1 U30 ( .B(current_value[8]), .A(new_value[8]), .S(n2), .Y(n13) );
  MUX2X1 U31 ( .B(current_value[9]), .A(new_value[9]), .S(write_enable), .Y(
        n14) );
  MUX2X1 U32 ( .B(current_value[10]), .A(new_value[10]), .S(n2), .Y(n15) );
  MUX2X1 U33 ( .B(current_value[11]), .A(new_value[11]), .S(write_enable), .Y(
        n16) );
  MUX2X1 U34 ( .B(current_value[12]), .A(new_value[12]), .S(n2), .Y(n17) );
  MUX2X1 U35 ( .B(current_value[13]), .A(new_value[13]), .S(write_enable), .Y(
        n18) );
  MUX2X1 U36 ( .B(current_value[14]), .A(new_value[14]), .S(n2), .Y(n20) );
  MUX2X1 U54 ( .B(current_value[15]), .A(new_value[15]), .S(write_enable), .Y(
        n22) );
  MUX2X1 U55 ( .B(current_value[16]), .A(new_value[16]), .S(n2), .Y(n24) );
  INVX2 U56 ( .A(n24), .Y(n26) );
endmodule


module register_file ( clk, n_reset, w_en, r1_sel, r2_sel, w_sel, w_data, 
        r1_data, r2_data, outreg_data );
  input [3:0] r1_sel;
  input [3:0] r2_sel;
  input [3:0] w_sel;
  input [16:0] w_data;
  output [16:0] r1_data;
  output [16:0] r2_data;
  output [16:0] outreg_data;
  input clk, n_reset, w_en;
  wire   N10, N11, N12, N13, N14, N15, N16, N17, n675, \regs_matrix[15][16] ,
         \regs_matrix[15][15] , \regs_matrix[15][14] , \regs_matrix[15][13] ,
         \regs_matrix[15][12] , \regs_matrix[15][11] , \regs_matrix[15][10] ,
         \regs_matrix[15][9] , \regs_matrix[15][8] , \regs_matrix[15][7] ,
         \regs_matrix[15][6] , \regs_matrix[15][5] , \regs_matrix[15][4] ,
         \regs_matrix[15][3] , \regs_matrix[15][2] , \regs_matrix[15][1] ,
         \regs_matrix[15][0] , \regs_matrix[14][16] , \regs_matrix[14][15] ,
         \regs_matrix[14][14] , \regs_matrix[14][13] , \regs_matrix[14][12] ,
         \regs_matrix[14][11] , \regs_matrix[14][10] , \regs_matrix[14][9] ,
         \regs_matrix[14][8] , \regs_matrix[14][7] , \regs_matrix[14][6] ,
         \regs_matrix[14][5] , \regs_matrix[14][4] , \regs_matrix[14][3] ,
         \regs_matrix[14][2] , \regs_matrix[14][1] , \regs_matrix[14][0] ,
         \regs_matrix[13][16] , \regs_matrix[13][15] , \regs_matrix[13][14] ,
         \regs_matrix[13][13] , \regs_matrix[13][12] , \regs_matrix[13][11] ,
         \regs_matrix[13][10] , \regs_matrix[13][9] , \regs_matrix[13][8] ,
         \regs_matrix[13][7] , \regs_matrix[13][6] , \regs_matrix[13][5] ,
         \regs_matrix[13][4] , \regs_matrix[13][3] , \regs_matrix[13][2] ,
         \regs_matrix[13][1] , \regs_matrix[13][0] , \regs_matrix[12][16] ,
         \regs_matrix[12][15] , \regs_matrix[12][14] , \regs_matrix[12][13] ,
         \regs_matrix[12][12] , \regs_matrix[12][11] , \regs_matrix[12][10] ,
         \regs_matrix[12][9] , \regs_matrix[12][8] , \regs_matrix[12][7] ,
         \regs_matrix[12][6] , \regs_matrix[12][5] , \regs_matrix[12][4] ,
         \regs_matrix[12][3] , \regs_matrix[12][2] , \regs_matrix[12][1] ,
         \regs_matrix[12][0] , \regs_matrix[11][16] , \regs_matrix[11][15] ,
         \regs_matrix[11][14] , \regs_matrix[11][13] , \regs_matrix[11][12] ,
         \regs_matrix[11][11] , \regs_matrix[11][10] , \regs_matrix[11][9] ,
         \regs_matrix[11][8] , \regs_matrix[11][7] , \regs_matrix[11][6] ,
         \regs_matrix[11][5] , \regs_matrix[11][4] , \regs_matrix[11][3] ,
         \regs_matrix[11][2] , \regs_matrix[11][1] , \regs_matrix[11][0] ,
         \regs_matrix[10][16] , \regs_matrix[10][15] , \regs_matrix[10][14] ,
         \regs_matrix[10][13] , \regs_matrix[10][12] , \regs_matrix[10][11] ,
         \regs_matrix[10][10] , \regs_matrix[10][9] , \regs_matrix[10][8] ,
         \regs_matrix[10][7] , \regs_matrix[10][6] , \regs_matrix[10][5] ,
         \regs_matrix[10][4] , \regs_matrix[10][3] , \regs_matrix[10][2] ,
         \regs_matrix[10][1] , \regs_matrix[10][0] , \regs_matrix[9][16] ,
         \regs_matrix[9][15] , \regs_matrix[9][14] , \regs_matrix[9][13] ,
         \regs_matrix[9][12] , \regs_matrix[9][11] , \regs_matrix[9][10] ,
         \regs_matrix[9][9] , \regs_matrix[9][8] , \regs_matrix[9][7] ,
         \regs_matrix[9][6] , \regs_matrix[9][5] , \regs_matrix[9][4] ,
         \regs_matrix[9][3] , \regs_matrix[9][2] , \regs_matrix[9][1] ,
         \regs_matrix[9][0] , \regs_matrix[8][16] , \regs_matrix[8][15] ,
         \regs_matrix[8][14] , \regs_matrix[8][13] , \regs_matrix[8][12] ,
         \regs_matrix[8][11] , \regs_matrix[8][10] , \regs_matrix[8][9] ,
         \regs_matrix[8][8] , \regs_matrix[8][7] , \regs_matrix[8][6] ,
         \regs_matrix[8][5] , \regs_matrix[8][4] , \regs_matrix[8][3] ,
         \regs_matrix[8][2] , \regs_matrix[8][1] , \regs_matrix[8][0] ,
         \regs_matrix[7][16] , \regs_matrix[7][15] , \regs_matrix[7][14] ,
         \regs_matrix[7][13] , \regs_matrix[7][12] , \regs_matrix[7][11] ,
         \regs_matrix[7][10] , \regs_matrix[7][9] , \regs_matrix[7][8] ,
         \regs_matrix[7][7] , \regs_matrix[7][6] , \regs_matrix[7][5] ,
         \regs_matrix[7][4] , \regs_matrix[7][3] , \regs_matrix[7][2] ,
         \regs_matrix[7][1] , \regs_matrix[7][0] , \regs_matrix[6][16] ,
         \regs_matrix[6][15] , \regs_matrix[6][14] , \regs_matrix[6][13] ,
         \regs_matrix[6][12] , \regs_matrix[6][11] , \regs_matrix[6][10] ,
         \regs_matrix[6][9] , \regs_matrix[6][8] , \regs_matrix[6][7] ,
         \regs_matrix[6][6] , \regs_matrix[6][5] , \regs_matrix[6][4] ,
         \regs_matrix[6][3] , \regs_matrix[6][2] , \regs_matrix[6][1] ,
         \regs_matrix[6][0] , \regs_matrix[5][16] , \regs_matrix[5][15] ,
         \regs_matrix[5][14] , \regs_matrix[5][13] , \regs_matrix[5][12] ,
         \regs_matrix[5][11] , \regs_matrix[5][10] , \regs_matrix[5][9] ,
         \regs_matrix[5][8] , \regs_matrix[5][7] , \regs_matrix[5][6] ,
         \regs_matrix[5][5] , \regs_matrix[5][4] , \regs_matrix[5][3] ,
         \regs_matrix[5][2] , \regs_matrix[5][1] , \regs_matrix[5][0] ,
         \regs_matrix[4][16] , \regs_matrix[4][15] , \regs_matrix[4][14] ,
         \regs_matrix[4][13] , \regs_matrix[4][12] , \regs_matrix[4][11] ,
         \regs_matrix[4][10] , \regs_matrix[4][9] , \regs_matrix[4][8] ,
         \regs_matrix[4][7] , \regs_matrix[4][6] , \regs_matrix[4][5] ,
         \regs_matrix[4][4] , \regs_matrix[4][3] , \regs_matrix[4][2] ,
         \regs_matrix[4][1] , \regs_matrix[4][0] , \regs_matrix[3][16] ,
         \regs_matrix[3][15] , \regs_matrix[3][14] , \regs_matrix[3][13] ,
         \regs_matrix[3][12] , \regs_matrix[3][11] , \regs_matrix[3][10] ,
         \regs_matrix[3][9] , \regs_matrix[3][8] , \regs_matrix[3][7] ,
         \regs_matrix[3][6] , \regs_matrix[3][5] , \regs_matrix[3][4] ,
         \regs_matrix[3][3] , \regs_matrix[3][2] , \regs_matrix[3][1] ,
         \regs_matrix[3][0] , \regs_matrix[2][16] , \regs_matrix[2][15] ,
         \regs_matrix[2][14] , \regs_matrix[2][13] , \regs_matrix[2][12] ,
         \regs_matrix[2][11] , \regs_matrix[2][10] , \regs_matrix[2][9] ,
         \regs_matrix[2][8] , \regs_matrix[2][7] , \regs_matrix[2][6] ,
         \regs_matrix[2][5] , \regs_matrix[2][4] , \regs_matrix[2][3] ,
         \regs_matrix[2][2] , \regs_matrix[2][1] , \regs_matrix[2][0] ,
         \regs_matrix[1][16] , \regs_matrix[1][15] , \regs_matrix[1][14] ,
         \regs_matrix[1][13] , \regs_matrix[1][12] , \regs_matrix[1][11] ,
         \regs_matrix[1][10] , \regs_matrix[1][9] , \regs_matrix[1][8] ,
         \regs_matrix[1][7] , \regs_matrix[1][6] , \regs_matrix[1][5] ,
         \regs_matrix[1][4] , \regs_matrix[1][3] , \regs_matrix[1][2] ,
         \regs_matrix[1][1] , \regs_matrix[1][0] , n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n1, n2, n3, n4, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674;
  wire   [15:0] write_enables;
  assign N10 = r1_sel[0];
  assign N11 = r1_sel[1];
  assign N12 = r1_sel[2];
  assign N13 = r1_sel[3];
  assign N14 = r2_sel[0];
  assign N15 = r2_sel[1];
  assign N16 = r2_sel[2];
  assign N17 = r2_sel[3];

  NOR2X1 U6 ( .A(n5), .B(n6), .Y(write_enables[9]) );
  NOR2X1 U7 ( .A(n6), .B(n7), .Y(write_enables[8]) );
  NOR2X1 U8 ( .A(n8), .B(n9), .Y(write_enables[7]) );
  NOR2X1 U9 ( .A(n8), .B(n10), .Y(write_enables[6]) );
  NOR2X1 U10 ( .A(n9), .B(n11), .Y(write_enables[5]) );
  NOR2X1 U11 ( .A(n10), .B(n11), .Y(write_enables[4]) );
  NOR2X1 U12 ( .A(n9), .B(n12), .Y(write_enables[3]) );
  NOR2X1 U13 ( .A(n10), .B(n12), .Y(write_enables[2]) );
  NOR2X1 U14 ( .A(n6), .B(n9), .Y(write_enables[1]) );
  NAND3X1 U15 ( .A(w_en), .B(n674), .C(w_sel[0]), .Y(n9) );
  NOR2X1 U16 ( .A(n5), .B(n8), .Y(write_enables[15]) );
  NOR2X1 U17 ( .A(n7), .B(n8), .Y(write_enables[14]) );
  NAND2X1 U18 ( .A(w_sel[2]), .B(w_sel[1]), .Y(n8) );
  NOR2X1 U19 ( .A(n5), .B(n11), .Y(write_enables[13]) );
  NOR2X1 U20 ( .A(n7), .B(n11), .Y(write_enables[12]) );
  NAND2X1 U21 ( .A(w_sel[2]), .B(n672), .Y(n11) );
  NOR2X1 U22 ( .A(n5), .B(n12), .Y(write_enables[11]) );
  NAND3X1 U23 ( .A(w_sel[0]), .B(w_en), .C(w_sel[3]), .Y(n5) );
  NOR2X1 U24 ( .A(n7), .B(n12), .Y(write_enables[10]) );
  NAND2X1 U25 ( .A(w_sel[1]), .B(n673), .Y(n12) );
  NAND2X1 U26 ( .A(n13), .B(w_sel[3]), .Y(n7) );
  NOR2X1 U27 ( .A(n6), .B(n10), .Y(write_enables[0]) );
  NAND2X1 U28 ( .A(n13), .B(n674), .Y(n10) );
  NOR2X1 U29 ( .A(n671), .B(w_sel[0]), .Y(n13) );
  NAND2X1 U30 ( .A(n672), .B(n673), .Y(n6) );
  flex_sreg_NUM_BITS17_15 \genblk1[0].REGX  ( .clk(clk), .n_reset(n670), 
        .write_enable(write_enables[0]), .new_value({w_data[16], n660, n657, 
        n654, n651, n649, n646, n643, n641, n638, n636, n633, n630, n627, n624, 
        n621, n618}), .current_value({n675, outreg_data[15:0]}) );
  flex_sreg_NUM_BITS17_14 \genblk1[1].REGX  ( .clk(clk), .n_reset(n663), 
        .write_enable(write_enables[1]), .new_value({w_data[16], n659, n656, 
        n653, n651, n648, n645, n643, n640, n638, n635, n632, n629, n626, n623, 
        n620, n618}), .current_value({\regs_matrix[1][16] , 
        \regs_matrix[1][15] , \regs_matrix[1][14] , \regs_matrix[1][13] , 
        \regs_matrix[1][12] , \regs_matrix[1][11] , \regs_matrix[1][10] , 
        \regs_matrix[1][9] , \regs_matrix[1][8] , \regs_matrix[1][7] , 
        \regs_matrix[1][6] , \regs_matrix[1][5] , \regs_matrix[1][4] , 
        \regs_matrix[1][3] , \regs_matrix[1][2] , \regs_matrix[1][1] , 
        \regs_matrix[1][0] }) );
  flex_sreg_NUM_BITS17_13 \genblk1[2].REGX  ( .clk(clk), .n_reset(n663), 
        .write_enable(write_enables[2]), .new_value({w_data[16], n660, n657, 
        n654, n651, n649, n646, n643, n641, n638, n636, n633, n630, n627, n624, 
        n621, w_data[0]}), .current_value({\regs_matrix[2][16] , 
        \regs_matrix[2][15] , \regs_matrix[2][14] , \regs_matrix[2][13] , 
        \regs_matrix[2][12] , \regs_matrix[2][11] , \regs_matrix[2][10] , 
        \regs_matrix[2][9] , \regs_matrix[2][8] , \regs_matrix[2][7] , 
        \regs_matrix[2][6] , \regs_matrix[2][5] , \regs_matrix[2][4] , 
        \regs_matrix[2][3] , \regs_matrix[2][2] , \regs_matrix[2][1] , 
        \regs_matrix[2][0] }) );
  flex_sreg_NUM_BITS17_12 \genblk1[3].REGX  ( .clk(clk), .n_reset(n664), 
        .write_enable(write_enables[3]), .new_value({w_data[16], n659, n656, 
        n653, n651, n648, n645, n643, n640, n638, n635, n632, n629, n626, n623, 
        n620, n618}), .current_value({\regs_matrix[3][16] , 
        \regs_matrix[3][15] , \regs_matrix[3][14] , \regs_matrix[3][13] , 
        \regs_matrix[3][12] , \regs_matrix[3][11] , \regs_matrix[3][10] , 
        \regs_matrix[3][9] , \regs_matrix[3][8] , \regs_matrix[3][7] , 
        \regs_matrix[3][6] , \regs_matrix[3][5] , \regs_matrix[3][4] , 
        \regs_matrix[3][3] , \regs_matrix[3][2] , \regs_matrix[3][1] , 
        \regs_matrix[3][0] }) );
  flex_sreg_NUM_BITS17_11 \genblk1[4].REGX  ( .clk(clk), .n_reset(n664), 
        .write_enable(write_enables[4]), .new_value({w_data[16], n660, n657, 
        n654, n651, n649, n646, n643, n641, n638, n636, n633, n630, n627, n624, 
        n621, w_data[0]}), .current_value({\regs_matrix[4][16] , 
        \regs_matrix[4][15] , \regs_matrix[4][14] , \regs_matrix[4][13] , 
        \regs_matrix[4][12] , \regs_matrix[4][11] , \regs_matrix[4][10] , 
        \regs_matrix[4][9] , \regs_matrix[4][8] , \regs_matrix[4][7] , 
        \regs_matrix[4][6] , \regs_matrix[4][5] , \regs_matrix[4][4] , 
        \regs_matrix[4][3] , \regs_matrix[4][2] , \regs_matrix[4][1] , 
        \regs_matrix[4][0] }) );
  flex_sreg_NUM_BITS17_10 \genblk1[5].REGX  ( .clk(clk), .n_reset(n665), 
        .write_enable(write_enables[5]), .new_value({w_data[16], n659, n656, 
        n653, n651, n648, n645, n643, n640, n638, n635, n632, n629, n626, n623, 
        n620, n618}), .current_value({\regs_matrix[5][16] , 
        \regs_matrix[5][15] , \regs_matrix[5][14] , \regs_matrix[5][13] , 
        \regs_matrix[5][12] , \regs_matrix[5][11] , \regs_matrix[5][10] , 
        \regs_matrix[5][9] , \regs_matrix[5][8] , \regs_matrix[5][7] , 
        \regs_matrix[5][6] , \regs_matrix[5][5] , \regs_matrix[5][4] , 
        \regs_matrix[5][3] , \regs_matrix[5][2] , \regs_matrix[5][1] , 
        \regs_matrix[5][0] }) );
  flex_sreg_NUM_BITS17_9 \genblk1[6].REGX  ( .clk(clk), .n_reset(n665), 
        .write_enable(write_enables[6]), .new_value({w_data[16], n660, n657, 
        n654, n651, n649, n646, n643, n641, n638, n636, n633, n630, n627, n624, 
        n621, w_data[0]}), .current_value({\regs_matrix[6][16] , 
        \regs_matrix[6][15] , \regs_matrix[6][14] , \regs_matrix[6][13] , 
        \regs_matrix[6][12] , \regs_matrix[6][11] , \regs_matrix[6][10] , 
        \regs_matrix[6][9] , \regs_matrix[6][8] , \regs_matrix[6][7] , 
        \regs_matrix[6][6] , \regs_matrix[6][5] , \regs_matrix[6][4] , 
        \regs_matrix[6][3] , \regs_matrix[6][2] , \regs_matrix[6][1] , 
        \regs_matrix[6][0] }) );
  flex_sreg_NUM_BITS17_8 \genblk1[7].REGX  ( .clk(clk), .n_reset(n666), 
        .write_enable(write_enables[7]), .new_value({w_data[16], n659, n656, 
        n653, n651, n648, n645, n643, n640, n638, n635, n632, n629, n626, n623, 
        n620, n618}), .current_value({\regs_matrix[7][16] , 
        \regs_matrix[7][15] , \regs_matrix[7][14] , \regs_matrix[7][13] , 
        \regs_matrix[7][12] , \regs_matrix[7][11] , \regs_matrix[7][10] , 
        \regs_matrix[7][9] , \regs_matrix[7][8] , \regs_matrix[7][7] , 
        \regs_matrix[7][6] , \regs_matrix[7][5] , \regs_matrix[7][4] , 
        \regs_matrix[7][3] , \regs_matrix[7][2] , \regs_matrix[7][1] , 
        \regs_matrix[7][0] }) );
  flex_sreg_NUM_BITS17_7 \genblk1[8].REGX  ( .clk(clk), .n_reset(n666), 
        .write_enable(write_enables[8]), .new_value({w_data[16], n660, n657, 
        n654, n651, n649, n646, n643, n641, n638, n636, n633, n630, n627, n624, 
        n621, w_data[0]}), .current_value({\regs_matrix[8][16] , 
        \regs_matrix[8][15] , \regs_matrix[8][14] , \regs_matrix[8][13] , 
        \regs_matrix[8][12] , \regs_matrix[8][11] , \regs_matrix[8][10] , 
        \regs_matrix[8][9] , \regs_matrix[8][8] , \regs_matrix[8][7] , 
        \regs_matrix[8][6] , \regs_matrix[8][5] , \regs_matrix[8][4] , 
        \regs_matrix[8][3] , \regs_matrix[8][2] , \regs_matrix[8][1] , 
        \regs_matrix[8][0] }) );
  flex_sreg_NUM_BITS17_6 \genblk1[9].REGX  ( .clk(clk), .n_reset(n667), 
        .write_enable(write_enables[9]), .new_value({w_data[16], n659, n656, 
        n653, n651, n648, n645, n643, n640, n638, n635, n632, n629, n626, n623, 
        n620, n618}), .current_value({\regs_matrix[9][16] , 
        \regs_matrix[9][15] , \regs_matrix[9][14] , \regs_matrix[9][13] , 
        \regs_matrix[9][12] , \regs_matrix[9][11] , \regs_matrix[9][10] , 
        \regs_matrix[9][9] , \regs_matrix[9][8] , \regs_matrix[9][7] , 
        \regs_matrix[9][6] , \regs_matrix[9][5] , \regs_matrix[9][4] , 
        \regs_matrix[9][3] , \regs_matrix[9][2] , \regs_matrix[9][1] , 
        \regs_matrix[9][0] }) );
  flex_sreg_NUM_BITS17_5 \genblk1[10].REGX  ( .clk(clk), .n_reset(n667), 
        .write_enable(write_enables[10]), .new_value({w_data[16], n660, n657, 
        n654, n651, n649, n646, n643, n641, n638, n636, n633, n630, n627, n624, 
        n621, w_data[0]}), .current_value({\regs_matrix[10][16] , 
        \regs_matrix[10][15] , \regs_matrix[10][14] , \regs_matrix[10][13] , 
        \regs_matrix[10][12] , \regs_matrix[10][11] , \regs_matrix[10][10] , 
        \regs_matrix[10][9] , \regs_matrix[10][8] , \regs_matrix[10][7] , 
        \regs_matrix[10][6] , \regs_matrix[10][5] , \regs_matrix[10][4] , 
        \regs_matrix[10][3] , \regs_matrix[10][2] , \regs_matrix[10][1] , 
        \regs_matrix[10][0] }) );
  flex_sreg_NUM_BITS17_4 \genblk1[11].REGX  ( .clk(clk), .n_reset(n668), 
        .write_enable(write_enables[11]), .new_value({w_data[16], n659, n656, 
        n653, n651, n648, n645, n643, n640, n638, n635, n632, n629, n626, n623, 
        n620, n618}), .current_value({\regs_matrix[11][16] , 
        \regs_matrix[11][15] , \regs_matrix[11][14] , \regs_matrix[11][13] , 
        \regs_matrix[11][12] , \regs_matrix[11][11] , \regs_matrix[11][10] , 
        \regs_matrix[11][9] , \regs_matrix[11][8] , \regs_matrix[11][7] , 
        \regs_matrix[11][6] , \regs_matrix[11][5] , \regs_matrix[11][4] , 
        \regs_matrix[11][3] , \regs_matrix[11][2] , \regs_matrix[11][1] , 
        \regs_matrix[11][0] }) );
  flex_sreg_NUM_BITS17_3 \genblk1[12].REGX  ( .clk(clk), .n_reset(n668), 
        .write_enable(write_enables[12]), .new_value({w_data[16], n660, n657, 
        n654, n651, n649, n646, n643, n641, n638, n636, n633, n630, n627, n624, 
        n621, w_data[0]}), .current_value({\regs_matrix[12][16] , 
        \regs_matrix[12][15] , \regs_matrix[12][14] , \regs_matrix[12][13] , 
        \regs_matrix[12][12] , \regs_matrix[12][11] , \regs_matrix[12][10] , 
        \regs_matrix[12][9] , \regs_matrix[12][8] , \regs_matrix[12][7] , 
        \regs_matrix[12][6] , \regs_matrix[12][5] , \regs_matrix[12][4] , 
        \regs_matrix[12][3] , \regs_matrix[12][2] , \regs_matrix[12][1] , 
        \regs_matrix[12][0] }) );
  flex_sreg_NUM_BITS17_2 \genblk1[13].REGX  ( .clk(clk), .n_reset(n669), 
        .write_enable(write_enables[13]), .new_value({w_data[16], n659, n656, 
        n653, n651, n648, n645, n643, n640, n638, n635, n632, n629, n626, n623, 
        n620, n618}), .current_value({\regs_matrix[13][16] , 
        \regs_matrix[13][15] , \regs_matrix[13][14] , \regs_matrix[13][13] , 
        \regs_matrix[13][12] , \regs_matrix[13][11] , \regs_matrix[13][10] , 
        \regs_matrix[13][9] , \regs_matrix[13][8] , \regs_matrix[13][7] , 
        \regs_matrix[13][6] , \regs_matrix[13][5] , \regs_matrix[13][4] , 
        \regs_matrix[13][3] , \regs_matrix[13][2] , \regs_matrix[13][1] , 
        \regs_matrix[13][0] }) );
  flex_sreg_NUM_BITS17_1 \genblk1[14].REGX  ( .clk(clk), .n_reset(n669), 
        .write_enable(write_enables[14]), .new_value({w_data[16], n660, n657, 
        n654, n651, n649, n646, n643, n641, n638, n636, n633, n630, n627, n624, 
        n621, w_data[0]}), .current_value({\regs_matrix[14][16] , 
        \regs_matrix[14][15] , \regs_matrix[14][14] , \regs_matrix[14][13] , 
        \regs_matrix[14][12] , \regs_matrix[14][11] , \regs_matrix[14][10] , 
        \regs_matrix[14][9] , \regs_matrix[14][8] , \regs_matrix[14][7] , 
        \regs_matrix[14][6] , \regs_matrix[14][5] , \regs_matrix[14][4] , 
        \regs_matrix[14][3] , \regs_matrix[14][2] , \regs_matrix[14][1] , 
        \regs_matrix[14][0] }) );
  flex_sreg_NUM_BITS17_0 \genblk1[15].REGX  ( .clk(clk), .n_reset(n670), 
        .write_enable(write_enables[15]), .new_value({w_data[16], n659, n656, 
        n653, n651, n648, n645, n643, n640, n638, n635, n632, n629, n626, n623, 
        n620, n618}), .current_value({\regs_matrix[15][16] , 
        \regs_matrix[15][15] , \regs_matrix[15][14] , \regs_matrix[15][13] , 
        \regs_matrix[15][12] , \regs_matrix[15][11] , \regs_matrix[15][10] , 
        \regs_matrix[15][9] , \regs_matrix[15][8] , \regs_matrix[15][7] , 
        \regs_matrix[15][6] , \regs_matrix[15][5] , \regs_matrix[15][4] , 
        \regs_matrix[15][3] , \regs_matrix[15][2] , \regs_matrix[15][1] , 
        \regs_matrix[15][0] }) );
  BUFX4 U2 ( .A(n613), .Y(n1) );
  BUFX4 U3 ( .A(n613), .Y(n2) );
  BUFX4 U4 ( .A(n613), .Y(n3) );
  INVX2 U5 ( .A(n44), .Y(n613) );
  INVX8 U31 ( .A(n586), .Y(n587) );
  INVX8 U32 ( .A(n585), .Y(n589) );
  INVX4 U33 ( .A(n67), .Y(n317) );
  INVX4 U34 ( .A(n593), .Y(n594) );
  INVX4 U35 ( .A(n351), .Y(n606) );
  INVX8 U36 ( .A(n606), .Y(n608) );
  INVX8 U37 ( .A(n606), .Y(n607) );
  INVX8 U38 ( .A(n592), .Y(n595) );
  INVX2 U39 ( .A(N12), .Y(n291) );
  BUFX2 U40 ( .A(n590), .Y(n592) );
  BUFX2 U41 ( .A(n583), .Y(n585) );
  INVX4 U42 ( .A(n591), .Y(n596) );
  BUFX2 U43 ( .A(n590), .Y(n591) );
  INVX2 U44 ( .A(n28), .Y(n314) );
  INVX4 U45 ( .A(n29), .Y(n315) );
  INVX2 U46 ( .A(n350), .Y(n603) );
  BUFX2 U47 ( .A(n583), .Y(n586) );
  BUFX2 U48 ( .A(n590), .Y(n593) );
  INVX4 U49 ( .A(n323), .Y(n325) );
  INVX4 U50 ( .A(n28), .Y(n316) );
  INVX2 U51 ( .A(w_data[4]), .Y(n628) );
  INVX1 U52 ( .A(N10), .Y(n4) );
  INVX1 U53 ( .A(n4), .Y(n14) );
  INVX2 U54 ( .A(n69), .Y(n323) );
  INVX1 U55 ( .A(n19), .Y(n15) );
  MUX2X1 U56 ( .B(n429), .A(n430), .S(n615), .Y(r2_data[6]) );
  BUFX2 U57 ( .A(N12), .Y(n16) );
  INVX1 U58 ( .A(n18), .Y(n17) );
  MUX2X1 U59 ( .B(n103), .A(n102), .S(n326), .Y(r1_data[3]) );
  INVX2 U60 ( .A(n304), .Y(n18) );
  INVX1 U61 ( .A(n592), .Y(n19) );
  INVX4 U62 ( .A(n296), .Y(n301) );
  INVX4 U63 ( .A(n603), .Y(n35) );
  MUX2X1 U64 ( .B(n555), .A(n556), .S(N17), .Y(r2_data[15]) );
  INVX2 U65 ( .A(n329), .Y(r1_data[0]) );
  INVX1 U66 ( .A(n290), .Y(n30) );
  MUX2X1 U67 ( .B(n266), .A(n267), .S(N13), .Y(r1_data[15]) );
  MUX2X1 U68 ( .B(n157), .A(n156), .S(n326), .Y(r1_data[7]) );
  INVX4 U69 ( .A(n625), .Y(n627) );
  INVX4 U70 ( .A(n625), .Y(n626) );
  MUX2X1 U71 ( .B(n327), .A(n328), .S(n326), .Y(n329) );
  INVX1 U72 ( .A(N11), .Y(n20) );
  INVX1 U73 ( .A(N11), .Y(n21) );
  INVX1 U74 ( .A(N11), .Y(n290) );
  INVX4 U75 ( .A(n628), .Y(n630) );
  INVX4 U76 ( .A(n628), .Y(n629) );
  BUFX4 U77 ( .A(n583), .Y(n584) );
  MUX2X1 U78 ( .B(n77), .A(n76), .S(n326), .Y(r1_data[1]) );
  INVX4 U79 ( .A(n321), .Y(n322) );
  INVX4 U80 ( .A(n321), .Y(n42) );
  INVX4 U81 ( .A(n321), .Y(n41) );
  INVX8 U82 ( .A(n642), .Y(n643) );
  AND2X2 U83 ( .A(N11), .B(N10), .Y(n22) );
  INVX2 U84 ( .A(n600), .Y(n23) );
  INVX2 U85 ( .A(n600), .Y(n24) );
  INVX2 U86 ( .A(n307), .Y(n25) );
  INVX4 U87 ( .A(n63), .Y(n307) );
  INVX2 U88 ( .A(n296), .Y(n26) );
  BUFX2 U89 ( .A(N15), .Y(n27) );
  AND2X2 U90 ( .A(N15), .B(N14), .Y(n45) );
  AND2X2 U91 ( .A(n22), .B(n291), .Y(n28) );
  AND2X2 U92 ( .A(n22), .B(n291), .Y(n29) );
  INVX2 U93 ( .A(n609), .Y(n31) );
  INVX2 U94 ( .A(n609), .Y(n32) );
  INVX4 U95 ( .A(n352), .Y(n609) );
  INVX2 U96 ( .A(n307), .Y(n33) );
  INVX2 U97 ( .A(n603), .Y(n34) );
  INVX2 U98 ( .A(n317), .Y(n40) );
  INVX4 U99 ( .A(n36), .Y(n43) );
  AND2X2 U100 ( .A(n16), .B(n22), .Y(n36) );
  INVX2 U101 ( .A(n600), .Y(n37) );
  INVX2 U102 ( .A(n600), .Y(n38) );
  INVX4 U103 ( .A(n347), .Y(n600) );
  INVX2 U104 ( .A(n317), .Y(n39) );
  INVX4 U105 ( .A(n68), .Y(n321) );
  INVX2 U106 ( .A(N17), .Y(n616) );
  INVX4 U107 ( .A(n46), .Y(r1_data[2]) );
  INVX2 U108 ( .A(w_data[2]), .Y(n622) );
  INVX2 U109 ( .A(w_data[3]), .Y(n625) );
  INVX2 U110 ( .A(w_data[5]), .Y(n631) );
  INVX2 U111 ( .A(w_data[1]), .Y(n619) );
  INVX2 U112 ( .A(w_data[0]), .Y(n617) );
  INVX2 U113 ( .A(n603), .Y(n604) );
  INVX2 U114 ( .A(n603), .Y(n605) );
  INVX2 U115 ( .A(n616), .Y(n615) );
  INVX2 U116 ( .A(n616), .Y(n614) );
  INVX2 U117 ( .A(n609), .Y(n612) );
  INVX2 U118 ( .A(n609), .Y(n611) );
  INVX2 U119 ( .A(n600), .Y(n602) );
  INVX2 U120 ( .A(n317), .Y(n320) );
  INVX2 U121 ( .A(n317), .Y(n319) );
  INVX2 U122 ( .A(n600), .Y(n601) );
  INVX2 U123 ( .A(n317), .Y(n318) );
  INVX2 U124 ( .A(n609), .Y(n610) );
  AND2X2 U125 ( .A(n45), .B(N16), .Y(n44) );
  INVX2 U126 ( .A(n307), .Y(n308) );
  INVX2 U127 ( .A(N13), .Y(n326) );
  MUX2X1 U128 ( .B(n47), .A(n48), .S(N13), .Y(n46) );
  AND2X2 U129 ( .A(n96), .B(n97), .Y(n47) );
  AND2X2 U130 ( .A(n90), .B(n91), .Y(n48) );
  INVX4 U131 ( .A(n647), .Y(n649) );
  INVX4 U132 ( .A(n655), .Y(n657) );
  INVX4 U133 ( .A(n644), .Y(n646) );
  INVX4 U134 ( .A(n652), .Y(n654) );
  INVX4 U135 ( .A(n634), .Y(n635) );
  INVX4 U136 ( .A(n634), .Y(n636) );
  INVX4 U137 ( .A(n647), .Y(n648) );
  INVX4 U138 ( .A(n655), .Y(n656) );
  INVX4 U139 ( .A(n644), .Y(n645) );
  INVX4 U140 ( .A(n652), .Y(n653) );
  INVX4 U141 ( .A(n639), .Y(n641) );
  INVX4 U142 ( .A(n639), .Y(n640) );
  INVX2 U143 ( .A(n622), .Y(n624) );
  INVX2 U144 ( .A(n622), .Y(n623) );
  INVX2 U145 ( .A(n631), .Y(n633) );
  INVX2 U146 ( .A(n631), .Y(n632) );
  INVX2 U147 ( .A(n619), .Y(n621) );
  INVX2 U148 ( .A(n619), .Y(n620) );
  INVX2 U149 ( .A(n617), .Y(n618) );
  MUX2X1 U150 ( .B(n50), .A(n51), .S(N13), .Y(r1_data[10]) );
  NAND2X1 U151 ( .A(n204), .B(n205), .Y(n50) );
  NAND2X1 U152 ( .A(n198), .B(n199), .Y(n51) );
  INVX2 U153 ( .A(n662), .Y(outreg_data[16]) );
  INVX2 U154 ( .A(n675), .Y(n662) );
  BUFX2 U155 ( .A(n_reset), .Y(n663) );
  BUFX2 U156 ( .A(n_reset), .Y(n664) );
  BUFX2 U157 ( .A(n_reset), .Y(n665) );
  BUFX2 U158 ( .A(n_reset), .Y(n666) );
  BUFX2 U159 ( .A(n_reset), .Y(n667) );
  BUFX2 U160 ( .A(n_reset), .Y(n668) );
  BUFX2 U161 ( .A(n_reset), .Y(n669) );
  BUFX2 U162 ( .A(n_reset), .Y(n670) );
  AOI22X1 U163 ( .A(n55), .B(n54), .C(n53), .D(n52), .Y(n56) );
  INVX2 U164 ( .A(n56), .Y(r1_data[16]) );
  NOR2X1 U165 ( .A(n59), .B(n60), .Y(n58) );
  OAI22X1 U166 ( .A(\regs_matrix[8][0] ), .B(n301), .C(\regs_matrix[10][0] ), 
        .D(n18), .Y(n60) );
  OAI22X1 U167 ( .A(\regs_matrix[12][0] ), .B(n33), .C(\regs_matrix[14][0] ), 
        .D(n312), .Y(n59) );
  NOR2X1 U168 ( .A(n65), .B(n66), .Y(n57) );
  OAI22X1 U169 ( .A(\regs_matrix[11][0] ), .B(n314), .C(\regs_matrix[9][0] ), 
        .D(n40), .Y(n66) );
  OAI22X1 U170 ( .A(\regs_matrix[13][0] ), .B(n42), .C(\regs_matrix[15][0] ), 
        .D(n325), .Y(n65) );
  NOR2X1 U171 ( .A(n72), .B(n73), .Y(n71) );
  OAI22X1 U172 ( .A(outreg_data[0]), .B(n299), .C(\regs_matrix[2][0] ), .D(
        n305), .Y(n73) );
  OAI22X1 U173 ( .A(\regs_matrix[4][0] ), .B(n309), .C(\regs_matrix[6][0] ), 
        .D(n312), .Y(n72) );
  NOR2X1 U174 ( .A(n74), .B(n75), .Y(n70) );
  OAI22X1 U175 ( .A(\regs_matrix[3][0] ), .B(n314), .C(\regs_matrix[1][0] ), 
        .D(n319), .Y(n75) );
  OAI22X1 U176 ( .A(\regs_matrix[5][0] ), .B(n42), .C(\regs_matrix[7][0] ), 
        .D(n43), .Y(n74) );
  NAND2X1 U177 ( .A(n78), .B(n79), .Y(n77) );
  NOR2X1 U178 ( .A(n80), .B(n81), .Y(n79) );
  OAI22X1 U179 ( .A(\regs_matrix[8][1] ), .B(n299), .C(\regs_matrix[10][1] ), 
        .D(n305), .Y(n81) );
  OAI22X1 U180 ( .A(\regs_matrix[12][1] ), .B(n25), .C(\regs_matrix[14][1] ), 
        .D(n312), .Y(n80) );
  NOR2X1 U181 ( .A(n82), .B(n83), .Y(n78) );
  OAI22X1 U182 ( .A(\regs_matrix[11][1] ), .B(n314), .C(\regs_matrix[9][1] ), 
        .D(n320), .Y(n83) );
  OAI22X1 U183 ( .A(\regs_matrix[13][1] ), .B(n41), .C(\regs_matrix[15][1] ), 
        .D(n43), .Y(n82) );
  NAND2X1 U184 ( .A(n85), .B(n84), .Y(n76) );
  NOR2X1 U185 ( .A(n86), .B(n87), .Y(n85) );
  OAI22X1 U186 ( .A(outreg_data[1]), .B(n299), .C(\regs_matrix[2][1] ), .D(
        n305), .Y(n87) );
  OAI22X1 U187 ( .A(\regs_matrix[4][1] ), .B(n25), .C(\regs_matrix[6][1] ), 
        .D(n313), .Y(n86) );
  NOR2X1 U188 ( .A(n88), .B(n89), .Y(n84) );
  OAI22X1 U189 ( .A(\regs_matrix[3][1] ), .B(n314), .C(\regs_matrix[1][1] ), 
        .D(n40), .Y(n89) );
  OAI22X1 U190 ( .A(\regs_matrix[5][1] ), .B(n322), .C(\regs_matrix[7][1] ), 
        .D(n43), .Y(n88) );
  NOR2X1 U191 ( .A(n92), .B(n93), .Y(n91) );
  OAI22X1 U192 ( .A(\regs_matrix[8][2] ), .B(n299), .C(\regs_matrix[10][2] ), 
        .D(n305), .Y(n93) );
  OAI22X1 U193 ( .A(\regs_matrix[12][2] ), .B(n309), .C(\regs_matrix[14][2] ), 
        .D(n313), .Y(n92) );
  NOR2X1 U194 ( .A(n94), .B(n95), .Y(n90) );
  OAI22X1 U195 ( .A(\regs_matrix[11][2] ), .B(n314), .C(\regs_matrix[9][2] ), 
        .D(n319), .Y(n95) );
  OAI22X1 U196 ( .A(\regs_matrix[13][2] ), .B(n42), .C(\regs_matrix[15][2] ), 
        .D(n325), .Y(n94) );
  NOR2X1 U197 ( .A(n98), .B(n99), .Y(n97) );
  OAI22X1 U198 ( .A(outreg_data[2]), .B(n299), .C(\regs_matrix[2][2] ), .D(
        n305), .Y(n99) );
  OAI22X1 U199 ( .A(\regs_matrix[4][2] ), .B(n25), .C(\regs_matrix[6][2] ), 
        .D(n312), .Y(n98) );
  NOR2X1 U200 ( .A(n100), .B(n101), .Y(n96) );
  OAI22X1 U201 ( .A(\regs_matrix[3][2] ), .B(n314), .C(\regs_matrix[1][2] ), 
        .D(n40), .Y(n101) );
  OAI22X1 U202 ( .A(\regs_matrix[5][2] ), .B(n41), .C(\regs_matrix[7][2] ), 
        .D(n43), .Y(n100) );
  NAND2X1 U203 ( .A(n104), .B(n105), .Y(n103) );
  NOR2X1 U204 ( .A(n107), .B(n106), .Y(n105) );
  OAI22X1 U205 ( .A(\regs_matrix[8][3] ), .B(n299), .C(\regs_matrix[10][3] ), 
        .D(n305), .Y(n107) );
  OAI22X1 U206 ( .A(\regs_matrix[12][3] ), .B(n25), .C(\regs_matrix[14][3] ), 
        .D(n313), .Y(n106) );
  NOR2X1 U207 ( .A(n108), .B(n109), .Y(n104) );
  OAI22X1 U208 ( .A(\regs_matrix[11][3] ), .B(n314), .C(\regs_matrix[9][3] ), 
        .D(n39), .Y(n109) );
  OAI22X1 U209 ( .A(\regs_matrix[13][3] ), .B(n42), .C(\regs_matrix[15][3] ), 
        .D(n324), .Y(n108) );
  NAND2X1 U210 ( .A(n111), .B(n110), .Y(n102) );
  NOR2X1 U211 ( .A(n112), .B(n113), .Y(n111) );
  OAI22X1 U212 ( .A(outreg_data[3]), .B(n299), .C(\regs_matrix[2][3] ), .D(
        n305), .Y(n113) );
  OAI22X1 U213 ( .A(\regs_matrix[4][3] ), .B(n309), .C(\regs_matrix[6][3] ), 
        .D(n313), .Y(n112) );
  NOR2X1 U214 ( .A(n114), .B(n115), .Y(n110) );
  OAI22X1 U215 ( .A(\regs_matrix[3][3] ), .B(n314), .C(\regs_matrix[1][3] ), 
        .D(n319), .Y(n115) );
  OAI22X1 U216 ( .A(\regs_matrix[5][3] ), .B(n322), .C(\regs_matrix[7][3] ), 
        .D(n43), .Y(n114) );
  MUX2X1 U217 ( .B(n116), .A(n117), .S(N13), .Y(r1_data[4]) );
  NAND2X1 U218 ( .A(n118), .B(n119), .Y(n117) );
  NOR2X1 U219 ( .A(n120), .B(n121), .Y(n119) );
  OAI22X1 U220 ( .A(\regs_matrix[8][4] ), .B(n300), .C(\regs_matrix[10][4] ), 
        .D(n306), .Y(n121) );
  OAI22X1 U221 ( .A(\regs_matrix[12][4] ), .B(n310), .C(\regs_matrix[14][4] ), 
        .D(n313), .Y(n120) );
  NOR2X1 U222 ( .A(n122), .B(n123), .Y(n118) );
  OAI22X1 U223 ( .A(\regs_matrix[11][4] ), .B(n315), .C(\regs_matrix[9][4] ), 
        .D(n40), .Y(n123) );
  OAI22X1 U224 ( .A(\regs_matrix[13][4] ), .B(n42), .C(\regs_matrix[15][4] ), 
        .D(n324), .Y(n122) );
  NAND2X1 U225 ( .A(n124), .B(n125), .Y(n116) );
  NOR2X1 U226 ( .A(n126), .B(n127), .Y(n125) );
  OAI22X1 U227 ( .A(outreg_data[4]), .B(n300), .C(\regs_matrix[2][4] ), .D(
        n306), .Y(n127) );
  OAI22X1 U228 ( .A(\regs_matrix[4][4] ), .B(n33), .C(\regs_matrix[6][4] ), 
        .D(n312), .Y(n126) );
  NOR2X1 U229 ( .A(n128), .B(n129), .Y(n124) );
  OAI22X1 U230 ( .A(\regs_matrix[3][4] ), .B(n315), .C(\regs_matrix[1][4] ), 
        .D(n39), .Y(n129) );
  OAI22X1 U231 ( .A(\regs_matrix[5][4] ), .B(n42), .C(\regs_matrix[7][4] ), 
        .D(n324), .Y(n128) );
  MUX2X1 U232 ( .B(n130), .A(n131), .S(N13), .Y(r1_data[5]) );
  NAND2X1 U233 ( .A(n133), .B(n132), .Y(n131) );
  NOR2X1 U234 ( .A(n134), .B(n135), .Y(n133) );
  OAI22X1 U235 ( .A(\regs_matrix[8][5] ), .B(n26), .C(\regs_matrix[10][5] ), 
        .D(n306), .Y(n135) );
  OAI22X1 U236 ( .A(\regs_matrix[12][5] ), .B(n310), .C(\regs_matrix[14][5] ), 
        .D(n313), .Y(n134) );
  NOR2X1 U237 ( .A(n136), .B(n137), .Y(n132) );
  OAI22X1 U238 ( .A(\regs_matrix[11][5] ), .B(n315), .C(\regs_matrix[9][5] ), 
        .D(n318), .Y(n137) );
  OAI22X1 U239 ( .A(\regs_matrix[13][5] ), .B(n41), .C(\regs_matrix[15][5] ), 
        .D(n325), .Y(n136) );
  NAND2X1 U240 ( .A(n138), .B(n139), .Y(n130) );
  NOR2X1 U241 ( .A(n140), .B(n141), .Y(n139) );
  OAI22X1 U242 ( .A(outreg_data[5]), .B(n300), .C(\regs_matrix[2][5] ), .D(n18), .Y(n141) );
  OAI22X1 U243 ( .A(\regs_matrix[4][5] ), .B(n309), .C(\regs_matrix[6][5] ), 
        .D(n312), .Y(n140) );
  NOR2X1 U244 ( .A(n142), .B(n143), .Y(n138) );
  OAI22X1 U245 ( .A(\regs_matrix[3][5] ), .B(n315), .C(\regs_matrix[1][5] ), 
        .D(n319), .Y(n143) );
  OAI22X1 U246 ( .A(\regs_matrix[5][5] ), .B(n322), .C(\regs_matrix[7][5] ), 
        .D(n43), .Y(n142) );
  NOR2X1 U247 ( .A(n146), .B(n147), .Y(n145) );
  OAI22X1 U248 ( .A(\regs_matrix[8][6] ), .B(n299), .C(\regs_matrix[10][6] ), 
        .D(n306), .Y(n147) );
  OAI22X1 U249 ( .A(\regs_matrix[12][6] ), .B(n309), .C(\regs_matrix[14][6] ), 
        .D(n312), .Y(n146) );
  NOR2X1 U250 ( .A(n148), .B(n149), .Y(n144) );
  OAI22X1 U251 ( .A(\regs_matrix[11][6] ), .B(n315), .C(\regs_matrix[9][6] ), 
        .D(n39), .Y(n149) );
  OAI22X1 U252 ( .A(\regs_matrix[13][6] ), .B(n322), .C(\regs_matrix[15][6] ), 
        .D(n325), .Y(n148) );
  NOR2X1 U253 ( .A(n152), .B(n153), .Y(n151) );
  OAI22X1 U254 ( .A(n300), .B(outreg_data[6]), .C(\regs_matrix[2][6] ), .D(
        n306), .Y(n153) );
  OAI22X1 U255 ( .A(\regs_matrix[4][6] ), .B(n310), .C(\regs_matrix[6][6] ), 
        .D(n313), .Y(n152) );
  NOR2X1 U256 ( .A(n154), .B(n155), .Y(n150) );
  OAI22X1 U257 ( .A(\regs_matrix[3][6] ), .B(n315), .C(\regs_matrix[1][6] ), 
        .D(n318), .Y(n155) );
  OAI22X1 U258 ( .A(\regs_matrix[5][6] ), .B(n41), .C(\regs_matrix[7][6] ), 
        .D(n325), .Y(n154) );
  NAND2X1 U259 ( .A(n158), .B(n159), .Y(n157) );
  NOR2X1 U260 ( .A(n160), .B(n161), .Y(n159) );
  OAI22X1 U261 ( .A(\regs_matrix[8][7] ), .B(n300), .C(\regs_matrix[10][7] ), 
        .D(n306), .Y(n161) );
  OAI22X1 U262 ( .A(\regs_matrix[12][7] ), .B(n310), .C(\regs_matrix[14][7] ), 
        .D(n312), .Y(n160) );
  NOR2X1 U263 ( .A(n162), .B(n163), .Y(n158) );
  OAI22X1 U264 ( .A(\regs_matrix[11][7] ), .B(n315), .C(\regs_matrix[9][7] ), 
        .D(n320), .Y(n163) );
  OAI22X1 U265 ( .A(\regs_matrix[13][7] ), .B(n322), .C(\regs_matrix[15][7] ), 
        .D(n325), .Y(n162) );
  NAND2X1 U266 ( .A(n165), .B(n164), .Y(n156) );
  NOR2X1 U267 ( .A(n166), .B(n167), .Y(n165) );
  OAI22X1 U268 ( .A(outreg_data[7]), .B(n300), .C(\regs_matrix[2][7] ), .D(
        n306), .Y(n167) );
  OAI22X1 U269 ( .A(\regs_matrix[4][7] ), .B(n33), .C(\regs_matrix[6][7] ), 
        .D(n312), .Y(n166) );
  NOR2X1 U270 ( .A(n168), .B(n169), .Y(n164) );
  OAI22X1 U271 ( .A(\regs_matrix[3][7] ), .B(n315), .C(\regs_matrix[1][7] ), 
        .D(n319), .Y(n169) );
  OAI22X1 U272 ( .A(\regs_matrix[5][7] ), .B(n41), .C(\regs_matrix[7][7] ), 
        .D(n43), .Y(n168) );
  MUX2X1 U273 ( .B(n170), .A(n171), .S(N13), .Y(r1_data[8]) );
  NAND2X1 U274 ( .A(n172), .B(n173), .Y(n171) );
  NOR2X1 U275 ( .A(n174), .B(n175), .Y(n173) );
  OAI22X1 U276 ( .A(\regs_matrix[8][8] ), .B(n300), .C(\regs_matrix[10][8] ), 
        .D(n306), .Y(n175) );
  OAI22X1 U277 ( .A(\regs_matrix[12][8] ), .B(n308), .C(\regs_matrix[14][8] ), 
        .D(n312), .Y(n174) );
  NOR2X1 U278 ( .A(n176), .B(n177), .Y(n172) );
  OAI22X1 U279 ( .A(\regs_matrix[11][8] ), .B(n315), .C(\regs_matrix[9][8] ), 
        .D(n318), .Y(n177) );
  OAI22X1 U280 ( .A(\regs_matrix[13][8] ), .B(n322), .C(\regs_matrix[15][8] ), 
        .D(n43), .Y(n176) );
  NAND2X1 U281 ( .A(n178), .B(n179), .Y(n170) );
  NOR2X1 U282 ( .A(n180), .B(n181), .Y(n179) );
  OAI22X1 U283 ( .A(outreg_data[8]), .B(n300), .C(\regs_matrix[2][8] ), .D(
        n306), .Y(n181) );
  OAI22X1 U284 ( .A(\regs_matrix[4][8] ), .B(n309), .C(\regs_matrix[6][8] ), 
        .D(n312), .Y(n180) );
  NOR2X1 U285 ( .A(n182), .B(n183), .Y(n178) );
  OAI22X1 U286 ( .A(\regs_matrix[3][8] ), .B(n315), .C(\regs_matrix[1][8] ), 
        .D(n39), .Y(n183) );
  OAI22X1 U287 ( .A(\regs_matrix[5][8] ), .B(n41), .C(\regs_matrix[7][8] ), 
        .D(n325), .Y(n182) );
  MUX2X1 U288 ( .B(n184), .A(n185), .S(N13), .Y(r1_data[9]) );
  NAND2X1 U289 ( .A(n186), .B(n187), .Y(n185) );
  NOR2X1 U290 ( .A(n188), .B(n189), .Y(n187) );
  OAI22X1 U291 ( .A(\regs_matrix[8][9] ), .B(n300), .C(\regs_matrix[10][9] ), 
        .D(n306), .Y(n189) );
  OAI22X1 U292 ( .A(\regs_matrix[12][9] ), .B(n310), .C(\regs_matrix[14][9] ), 
        .D(n313), .Y(n188) );
  NOR2X1 U293 ( .A(n190), .B(n191), .Y(n186) );
  OAI22X1 U294 ( .A(\regs_matrix[11][9] ), .B(n315), .C(\regs_matrix[9][9] ), 
        .D(n320), .Y(n191) );
  OAI22X1 U295 ( .A(\regs_matrix[13][9] ), .B(n322), .C(\regs_matrix[15][9] ), 
        .D(n324), .Y(n190) );
  NAND2X1 U296 ( .A(n192), .B(n193), .Y(n184) );
  NOR2X1 U297 ( .A(n194), .B(n195), .Y(n193) );
  OAI22X1 U298 ( .A(outreg_data[9]), .B(n300), .C(\regs_matrix[2][9] ), .D(
        n306), .Y(n195) );
  OAI22X1 U299 ( .A(\regs_matrix[4][9] ), .B(n308), .C(\regs_matrix[6][9] ), 
        .D(n312), .Y(n194) );
  NOR2X1 U300 ( .A(n196), .B(n197), .Y(n192) );
  OAI22X1 U301 ( .A(\regs_matrix[3][9] ), .B(n315), .C(\regs_matrix[1][9] ), 
        .D(n320), .Y(n197) );
  OAI22X1 U302 ( .A(\regs_matrix[5][9] ), .B(n41), .C(\regs_matrix[7][9] ), 
        .D(n43), .Y(n196) );
  NOR2X1 U303 ( .A(n200), .B(n201), .Y(n199) );
  OAI22X1 U304 ( .A(\regs_matrix[8][10] ), .B(n26), .C(\regs_matrix[10][10] ), 
        .D(n305), .Y(n201) );
  OAI22X1 U305 ( .A(\regs_matrix[12][10] ), .B(n308), .C(\regs_matrix[14][10] ), .D(n313), .Y(n200) );
  NOR2X1 U306 ( .A(n202), .B(n203), .Y(n198) );
  OAI22X1 U307 ( .A(\regs_matrix[11][10] ), .B(n315), .C(\regs_matrix[9][10] ), 
        .D(n39), .Y(n203) );
  OAI22X1 U308 ( .A(\regs_matrix[13][10] ), .B(n322), .C(\regs_matrix[15][10] ), .D(n325), .Y(n202) );
  NOR2X1 U309 ( .A(n206), .B(n207), .Y(n205) );
  OAI22X1 U310 ( .A(outreg_data[10]), .B(n26), .C(\regs_matrix[2][10] ), .D(
        n306), .Y(n207) );
  OAI22X1 U311 ( .A(\regs_matrix[4][10] ), .B(n309), .C(\regs_matrix[6][10] ), 
        .D(n312), .Y(n206) );
  NOR2X1 U312 ( .A(n208), .B(n209), .Y(n204) );
  OAI22X1 U313 ( .A(\regs_matrix[3][10] ), .B(n316), .C(\regs_matrix[1][10] ), 
        .D(n40), .Y(n209) );
  OAI22X1 U314 ( .A(\regs_matrix[5][10] ), .B(n41), .C(\regs_matrix[7][10] ), 
        .D(n325), .Y(n208) );
  MUX2X1 U315 ( .B(n210), .A(n211), .S(N13), .Y(r1_data[11]) );
  NAND2X1 U316 ( .A(n212), .B(n213), .Y(n211) );
  NOR2X1 U317 ( .A(n214), .B(n215), .Y(n213) );
  OAI22X1 U318 ( .A(\regs_matrix[8][11] ), .B(n26), .C(\regs_matrix[10][11] ), 
        .D(n305), .Y(n215) );
  OAI22X1 U319 ( .A(\regs_matrix[12][11] ), .B(n308), .C(\regs_matrix[14][11] ), .D(n312), .Y(n214) );
  NOR2X1 U320 ( .A(n216), .B(n217), .Y(n212) );
  OAI22X1 U321 ( .A(\regs_matrix[11][11] ), .B(n316), .C(\regs_matrix[9][11] ), 
        .D(n318), .Y(n217) );
  OAI22X1 U322 ( .A(\regs_matrix[13][11] ), .B(n322), .C(\regs_matrix[15][11] ), .D(n325), .Y(n216) );
  NAND2X1 U323 ( .A(n218), .B(n219), .Y(n210) );
  NOR2X1 U324 ( .A(n220), .B(n221), .Y(n219) );
  OAI22X1 U325 ( .A(outreg_data[11]), .B(n301), .C(\regs_matrix[2][11] ), .D(
        n306), .Y(n221) );
  OAI22X1 U326 ( .A(\regs_matrix[4][11] ), .B(n309), .C(\regs_matrix[6][11] ), 
        .D(n312), .Y(n220) );
  NOR2X1 U327 ( .A(n222), .B(n223), .Y(n218) );
  OAI22X1 U328 ( .A(\regs_matrix[3][11] ), .B(n316), .C(\regs_matrix[1][11] ), 
        .D(n318), .Y(n223) );
  OAI22X1 U329 ( .A(\regs_matrix[5][11] ), .B(n42), .C(\regs_matrix[7][11] ), 
        .D(n325), .Y(n222) );
  MUX2X1 U330 ( .B(n224), .A(n225), .S(N13), .Y(r1_data[12]) );
  NAND2X1 U331 ( .A(n226), .B(n227), .Y(n225) );
  NOR2X1 U332 ( .A(n228), .B(n229), .Y(n227) );
  OAI22X1 U333 ( .A(\regs_matrix[8][12] ), .B(n26), .C(\regs_matrix[10][12] ), 
        .D(n18), .Y(n229) );
  OAI22X1 U334 ( .A(\regs_matrix[12][12] ), .B(n310), .C(\regs_matrix[14][12] ), .D(n313), .Y(n228) );
  NOR2X1 U335 ( .A(n230), .B(n231), .Y(n226) );
  OAI22X1 U336 ( .A(\regs_matrix[11][12] ), .B(n316), .C(\regs_matrix[9][12] ), 
        .D(n40), .Y(n231) );
  OAI22X1 U337 ( .A(\regs_matrix[13][12] ), .B(n42), .C(\regs_matrix[15][12] ), 
        .D(n324), .Y(n230) );
  NAND2X1 U338 ( .A(n232), .B(n233), .Y(n224) );
  NOR2X1 U339 ( .A(n234), .B(n235), .Y(n233) );
  OAI22X1 U340 ( .A(outreg_data[12]), .B(n299), .C(\regs_matrix[2][12] ), .D(
        n305), .Y(n235) );
  OAI22X1 U341 ( .A(\regs_matrix[4][12] ), .B(n25), .C(\regs_matrix[6][12] ), 
        .D(n312), .Y(n234) );
  NOR2X1 U342 ( .A(n236), .B(n237), .Y(n232) );
  OAI22X1 U343 ( .A(\regs_matrix[3][12] ), .B(n316), .C(\regs_matrix[1][12] ), 
        .D(n39), .Y(n237) );
  OAI22X1 U344 ( .A(\regs_matrix[5][12] ), .B(n41), .C(\regs_matrix[7][12] ), 
        .D(n325), .Y(n236) );
  MUX2X1 U345 ( .B(n238), .A(n239), .S(N13), .Y(r1_data[13]) );
  NAND2X1 U346 ( .A(n241), .B(n240), .Y(n239) );
  NOR2X1 U347 ( .A(n242), .B(n243), .Y(n241) );
  OAI22X1 U348 ( .A(\regs_matrix[8][13] ), .B(n301), .C(\regs_matrix[10][13] ), 
        .D(n305), .Y(n243) );
  OAI22X1 U349 ( .A(\regs_matrix[12][13] ), .B(n310), .C(\regs_matrix[14][13] ), .D(n313), .Y(n242) );
  NOR2X1 U350 ( .A(n244), .B(n245), .Y(n240) );
  OAI22X1 U351 ( .A(\regs_matrix[11][13] ), .B(n316), .C(\regs_matrix[9][13] ), 
        .D(n318), .Y(n245) );
  OAI22X1 U352 ( .A(\regs_matrix[13][13] ), .B(n322), .C(\regs_matrix[15][13] ), .D(n43), .Y(n244) );
  NAND2X1 U353 ( .A(n246), .B(n247), .Y(n238) );
  NOR2X1 U354 ( .A(n248), .B(n249), .Y(n247) );
  OAI22X1 U355 ( .A(outreg_data[13]), .B(n301), .C(\regs_matrix[2][13] ), .D(
        n305), .Y(n249) );
  OAI22X1 U356 ( .A(\regs_matrix[4][13] ), .B(n310), .C(\regs_matrix[6][13] ), 
        .D(n313), .Y(n248) );
  NOR2X1 U357 ( .A(n250), .B(n251), .Y(n246) );
  OAI22X1 U358 ( .A(\regs_matrix[3][13] ), .B(n316), .C(\regs_matrix[1][13] ), 
        .D(n319), .Y(n251) );
  OAI22X1 U359 ( .A(\regs_matrix[5][13] ), .B(n41), .C(\regs_matrix[7][13] ), 
        .D(n43), .Y(n250) );
  MUX2X1 U360 ( .B(n252), .A(n253), .S(N13), .Y(r1_data[14]) );
  NAND2X1 U361 ( .A(n254), .B(n255), .Y(n253) );
  NOR2X1 U362 ( .A(n256), .B(n257), .Y(n255) );
  OAI22X1 U363 ( .A(\regs_matrix[8][14] ), .B(n301), .C(\regs_matrix[10][14] ), 
        .D(n305), .Y(n257) );
  OAI22X1 U364 ( .A(\regs_matrix[12][14] ), .B(n308), .C(\regs_matrix[14][14] ), .D(n313), .Y(n256) );
  NOR2X1 U365 ( .A(n258), .B(n259), .Y(n254) );
  OAI22X1 U366 ( .A(\regs_matrix[11][14] ), .B(n316), .C(\regs_matrix[9][14] ), 
        .D(n40), .Y(n259) );
  OAI22X1 U367 ( .A(\regs_matrix[13][14] ), .B(n42), .C(\regs_matrix[15][14] ), 
        .D(n324), .Y(n258) );
  NAND2X1 U368 ( .A(n260), .B(n261), .Y(n252) );
  NOR2X1 U369 ( .A(n262), .B(n263), .Y(n261) );
  OAI22X1 U370 ( .A(outreg_data[14]), .B(n301), .C(\regs_matrix[2][14] ), .D(
        n306), .Y(n263) );
  OAI22X1 U371 ( .A(\regs_matrix[4][14] ), .B(n309), .C(\regs_matrix[6][14] ), 
        .D(n313), .Y(n262) );
  NOR2X1 U372 ( .A(n264), .B(n265), .Y(n260) );
  OAI22X1 U373 ( .A(\regs_matrix[3][14] ), .B(n316), .C(\regs_matrix[1][14] ), 
        .D(n39), .Y(n265) );
  OAI22X1 U374 ( .A(\regs_matrix[5][14] ), .B(n41), .C(\regs_matrix[7][14] ), 
        .D(n43), .Y(n264) );
  NAND2X1 U375 ( .A(n268), .B(n269), .Y(n267) );
  NOR2X1 U376 ( .A(n270), .B(n271), .Y(n269) );
  OAI22X1 U377 ( .A(\regs_matrix[8][15] ), .B(n301), .C(\regs_matrix[10][15] ), 
        .D(n305), .Y(n271) );
  OAI22X1 U378 ( .A(\regs_matrix[12][15] ), .B(n33), .C(\regs_matrix[14][15] ), 
        .D(n313), .Y(n270) );
  NOR2X1 U379 ( .A(n272), .B(n273), .Y(n268) );
  OAI22X1 U380 ( .A(\regs_matrix[11][15] ), .B(n316), .C(\regs_matrix[9][15] ), 
        .D(n320), .Y(n273) );
  OAI22X1 U381 ( .A(\regs_matrix[13][15] ), .B(n42), .C(\regs_matrix[15][15] ), 
        .D(n325), .Y(n272) );
  NAND2X1 U382 ( .A(n274), .B(n275), .Y(n266) );
  NOR2X1 U383 ( .A(n276), .B(n277), .Y(n275) );
  OAI22X1 U384 ( .A(outreg_data[15]), .B(n301), .C(\regs_matrix[2][15] ), .D(
        n305), .Y(n277) );
  OAI22X1 U385 ( .A(\regs_matrix[4][15] ), .B(n33), .C(\regs_matrix[6][15] ), 
        .D(n313), .Y(n276) );
  NOR2X1 U386 ( .A(n278), .B(n279), .Y(n274) );
  OAI22X1 U387 ( .A(\regs_matrix[3][15] ), .B(n316), .C(\regs_matrix[1][15] ), 
        .D(n320), .Y(n279) );
  OAI22X1 U388 ( .A(\regs_matrix[5][15] ), .B(n41), .C(\regs_matrix[7][15] ), 
        .D(n43), .Y(n278) );
  NOR2X1 U389 ( .A(n280), .B(n281), .Y(n52) );
  OAI21X1 U390 ( .A(\regs_matrix[6][16] ), .B(n313), .C(n282), .Y(n281) );
  AOI22X1 U391 ( .A(n17), .B(n283), .C(n298), .D(n662), .Y(n282) );
  INVX2 U392 ( .A(\regs_matrix[2][16] ), .Y(n283) );
  OAI21X1 U393 ( .A(\regs_matrix[4][16] ), .B(n310), .C(n326), .Y(n280) );
  NOR2X1 U394 ( .A(n284), .B(n285), .Y(n53) );
  OAI22X1 U395 ( .A(\regs_matrix[3][16] ), .B(n316), .C(\regs_matrix[1][16] ), 
        .D(n319), .Y(n285) );
  OAI22X1 U396 ( .A(\regs_matrix[5][16] ), .B(n322), .C(\regs_matrix[7][16] ), 
        .D(n324), .Y(n284) );
  NOR2X1 U397 ( .A(n286), .B(n287), .Y(n54) );
  OAI21X1 U398 ( .A(\regs_matrix[12][16] ), .B(n309), .C(n288), .Y(n287) );
  AOI22X1 U399 ( .A(n17), .B(n289), .C(n298), .D(n577), .Y(n288) );
  NAND3X1 U400 ( .A(n20), .B(n291), .C(n292), .Y(n61) );
  INVX2 U401 ( .A(\regs_matrix[10][16] ), .Y(n289) );
  NAND3X1 U402 ( .A(n291), .B(n30), .C(n292), .Y(n62) );
  NAND3X1 U403 ( .A(N12), .B(n20), .C(n292), .Y(n63) );
  OAI22X1 U404 ( .A(\regs_matrix[9][16] ), .B(n318), .C(\regs_matrix[14][16] ), 
        .D(n312), .Y(n286) );
  NAND3X1 U405 ( .A(N12), .B(n30), .C(n292), .Y(n64) );
  INVX2 U406 ( .A(N10), .Y(n292) );
  NAND3X1 U407 ( .A(n291), .B(n14), .C(n21), .Y(n67) );
  NOR2X1 U408 ( .A(n293), .B(n294), .Y(n55) );
  OAI21X1 U409 ( .A(\regs_matrix[11][16] ), .B(n316), .C(N13), .Y(n294) );
  OAI22X1 U410 ( .A(\regs_matrix[15][16] ), .B(n325), .C(\regs_matrix[13][16] ), .D(n322), .Y(n293) );
  NAND3X1 U411 ( .A(N12), .B(N10), .C(n21), .Y(n68) );
  NAND2X1 U412 ( .A(n16), .B(n22), .Y(n69) );
  BUFX4 U413 ( .A(n295), .Y(n296) );
  BUFX4 U414 ( .A(n295), .Y(n297) );
  BUFX4 U415 ( .A(n295), .Y(n298) );
  INVX8 U416 ( .A(n298), .Y(n299) );
  INVX8 U417 ( .A(n297), .Y(n300) );
  BUFX4 U418 ( .A(n302), .Y(n303) );
  BUFX4 U419 ( .A(n302), .Y(n304) );
  INVX8 U420 ( .A(n304), .Y(n305) );
  INVX8 U421 ( .A(n303), .Y(n306) );
  INVX8 U422 ( .A(n311), .Y(n312) );
  INVX8 U423 ( .A(n311), .Y(n313) );
  INVX2 U424 ( .A(n61), .Y(n295) );
  INVX2 U425 ( .A(n62), .Y(n302) );
  INVX4 U426 ( .A(n323), .Y(n324) );
  INVX4 U427 ( .A(n64), .Y(n311) );
  INVX4 U428 ( .A(n307), .Y(n310) );
  INVX4 U429 ( .A(n307), .Y(n309) );
  AND2X2 U430 ( .A(n150), .B(n151), .Y(n330) );
  AND2X2 U431 ( .A(n144), .B(n145), .Y(n331) );
  MUX2X1 U432 ( .B(n331), .A(n330), .S(n326), .Y(n332) );
  AND2X2 U433 ( .A(n71), .B(n70), .Y(n328) );
  AND2X2 U434 ( .A(n58), .B(n57), .Y(n327) );
  INVX4 U435 ( .A(n332), .Y(r1_data[6]) );
  AOI22X1 U436 ( .A(n336), .B(n335), .C(n334), .D(n333), .Y(n337) );
  INVX2 U437 ( .A(n337), .Y(r2_data[16]) );
  MUX2X1 U438 ( .B(n338), .A(n339), .S(n614), .Y(r2_data[0]) );
  NAND2X1 U439 ( .A(n340), .B(n341), .Y(n339) );
  NOR2X1 U440 ( .A(n342), .B(n343), .Y(n341) );
  OAI22X1 U441 ( .A(\regs_matrix[8][0] ), .B(n587), .C(\regs_matrix[10][0] ), 
        .D(n594), .Y(n343) );
  OAI22X1 U442 ( .A(\regs_matrix[12][0] ), .B(n599), .C(\regs_matrix[14][0] ), 
        .D(n601), .Y(n342) );
  NOR2X1 U443 ( .A(n348), .B(n349), .Y(n340) );
  OAI22X1 U444 ( .A(\regs_matrix[11][0] ), .B(n605), .C(\regs_matrix[9][0] ), 
        .D(n608), .Y(n349) );
  OAI22X1 U445 ( .A(\regs_matrix[13][0] ), .B(n612), .C(\regs_matrix[15][0] ), 
        .D(n1), .Y(n348) );
  NAND2X1 U446 ( .A(n353), .B(n354), .Y(n338) );
  NOR2X1 U447 ( .A(n355), .B(n356), .Y(n354) );
  OAI22X1 U448 ( .A(outreg_data[0]), .B(n587), .C(\regs_matrix[2][0] ), .D(
        n594), .Y(n356) );
  OAI22X1 U449 ( .A(\regs_matrix[4][0] ), .B(n598), .C(\regs_matrix[6][0] ), 
        .D(n602), .Y(n355) );
  NOR2X1 U450 ( .A(n357), .B(n358), .Y(n353) );
  OAI22X1 U451 ( .A(\regs_matrix[3][0] ), .B(n35), .C(\regs_matrix[1][0] ), 
        .D(n608), .Y(n358) );
  OAI22X1 U452 ( .A(\regs_matrix[5][0] ), .B(n612), .C(\regs_matrix[7][0] ), 
        .D(n1), .Y(n357) );
  MUX2X1 U453 ( .B(n359), .A(n360), .S(n615), .Y(r2_data[1]) );
  NAND2X1 U454 ( .A(n361), .B(n362), .Y(n360) );
  NOR2X1 U455 ( .A(n363), .B(n364), .Y(n362) );
  OAI22X1 U456 ( .A(\regs_matrix[8][1] ), .B(n587), .C(\regs_matrix[10][1] ), 
        .D(n594), .Y(n364) );
  OAI22X1 U457 ( .A(\regs_matrix[12][1] ), .B(n598), .C(\regs_matrix[14][1] ), 
        .D(n38), .Y(n363) );
  NOR2X1 U458 ( .A(n365), .B(n366), .Y(n361) );
  OAI22X1 U459 ( .A(\regs_matrix[11][1] ), .B(n604), .C(\regs_matrix[9][1] ), 
        .D(n608), .Y(n366) );
  OAI22X1 U460 ( .A(\regs_matrix[13][1] ), .B(n32), .C(\regs_matrix[15][1] ), 
        .D(n2), .Y(n365) );
  NAND2X1 U461 ( .A(n367), .B(n368), .Y(n359) );
  NOR2X1 U462 ( .A(n369), .B(n370), .Y(n368) );
  OAI22X1 U463 ( .A(outreg_data[1]), .B(n587), .C(\regs_matrix[2][1] ), .D(
        n594), .Y(n370) );
  OAI22X1 U464 ( .A(\regs_matrix[4][1] ), .B(n599), .C(\regs_matrix[6][1] ), 
        .D(n37), .Y(n369) );
  NOR2X1 U465 ( .A(n371), .B(n372), .Y(n367) );
  OAI22X1 U466 ( .A(\regs_matrix[3][1] ), .B(n34), .C(\regs_matrix[1][1] ), 
        .D(n608), .Y(n372) );
  OAI22X1 U467 ( .A(\regs_matrix[5][1] ), .B(n611), .C(\regs_matrix[7][1] ), 
        .D(n3), .Y(n371) );
  MUX2X1 U468 ( .B(n373), .A(n374), .S(n614), .Y(r2_data[2]) );
  NAND2X1 U469 ( .A(n375), .B(n376), .Y(n374) );
  NOR2X1 U470 ( .A(n377), .B(n378), .Y(n376) );
  OAI22X1 U471 ( .A(\regs_matrix[8][2] ), .B(n587), .C(\regs_matrix[10][2] ), 
        .D(n594), .Y(n378) );
  OAI22X1 U472 ( .A(\regs_matrix[12][2] ), .B(n598), .C(\regs_matrix[14][2] ), 
        .D(n23), .Y(n377) );
  NOR2X1 U473 ( .A(n379), .B(n380), .Y(n375) );
  OAI22X1 U474 ( .A(\regs_matrix[11][2] ), .B(n605), .C(\regs_matrix[9][2] ), 
        .D(n608), .Y(n380) );
  OAI22X1 U475 ( .A(\regs_matrix[13][2] ), .B(n610), .C(\regs_matrix[15][2] ), 
        .D(n1), .Y(n379) );
  NAND2X1 U476 ( .A(n381), .B(n382), .Y(n373) );
  NOR2X1 U477 ( .A(n383), .B(n384), .Y(n382) );
  OAI22X1 U478 ( .A(outreg_data[2]), .B(n587), .C(\regs_matrix[2][2] ), .D(
        n594), .Y(n384) );
  OAI22X1 U479 ( .A(\regs_matrix[4][2] ), .B(n598), .C(\regs_matrix[6][2] ), 
        .D(n37), .Y(n383) );
  NOR2X1 U480 ( .A(n385), .B(n386), .Y(n381) );
  OAI22X1 U481 ( .A(\regs_matrix[3][2] ), .B(n35), .C(\regs_matrix[1][2] ), 
        .D(n608), .Y(n386) );
  OAI22X1 U482 ( .A(\regs_matrix[5][2] ), .B(n32), .C(\regs_matrix[7][2] ), 
        .D(n1), .Y(n385) );
  MUX2X1 U483 ( .B(n387), .A(n388), .S(n615), .Y(r2_data[3]) );
  NAND2X1 U484 ( .A(n389), .B(n390), .Y(n388) );
  NOR2X1 U485 ( .A(n391), .B(n392), .Y(n390) );
  OAI22X1 U486 ( .A(\regs_matrix[8][3] ), .B(n587), .C(\regs_matrix[10][3] ), 
        .D(n594), .Y(n392) );
  OAI22X1 U487 ( .A(\regs_matrix[12][3] ), .B(n599), .C(\regs_matrix[14][3] ), 
        .D(n24), .Y(n391) );
  NOR2X1 U488 ( .A(n393), .B(n394), .Y(n389) );
  OAI22X1 U489 ( .A(\regs_matrix[11][3] ), .B(n34), .C(\regs_matrix[9][3] ), 
        .D(n608), .Y(n394) );
  OAI22X1 U490 ( .A(\regs_matrix[13][3] ), .B(n610), .C(\regs_matrix[15][3] ), 
        .D(n1), .Y(n393) );
  NAND2X1 U491 ( .A(n395), .B(n396), .Y(n387) );
  NOR2X1 U492 ( .A(n397), .B(n398), .Y(n396) );
  OAI22X1 U493 ( .A(outreg_data[3]), .B(n587), .C(\regs_matrix[2][3] ), .D(
        n594), .Y(n398) );
  OAI22X1 U494 ( .A(\regs_matrix[4][3] ), .B(n598), .C(\regs_matrix[6][3] ), 
        .D(n601), .Y(n397) );
  NOR2X1 U495 ( .A(n399), .B(n400), .Y(n395) );
  OAI22X1 U496 ( .A(\regs_matrix[3][3] ), .B(n34), .C(\regs_matrix[1][3] ), 
        .D(n608), .Y(n400) );
  OAI22X1 U497 ( .A(\regs_matrix[5][3] ), .B(n31), .C(\regs_matrix[7][3] ), 
        .D(n1), .Y(n399) );
  MUX2X1 U498 ( .B(n401), .A(n402), .S(n614), .Y(r2_data[4]) );
  NAND2X1 U499 ( .A(n403), .B(n404), .Y(n402) );
  NOR2X1 U500 ( .A(n405), .B(n406), .Y(n404) );
  OAI22X1 U501 ( .A(\regs_matrix[8][4] ), .B(n588), .C(\regs_matrix[10][4] ), 
        .D(n595), .Y(n406) );
  OAI22X1 U502 ( .A(\regs_matrix[12][4] ), .B(n598), .C(\regs_matrix[14][4] ), 
        .D(n23), .Y(n405) );
  NOR2X1 U503 ( .A(n407), .B(n408), .Y(n403) );
  OAI22X1 U504 ( .A(\regs_matrix[11][4] ), .B(n35), .C(\regs_matrix[9][4] ), 
        .D(n608), .Y(n408) );
  OAI22X1 U505 ( .A(\regs_matrix[13][4] ), .B(n612), .C(\regs_matrix[15][4] ), 
        .D(n1), .Y(n407) );
  NAND2X1 U506 ( .A(n409), .B(n410), .Y(n401) );
  NOR2X1 U507 ( .A(n411), .B(n412), .Y(n410) );
  OAI22X1 U508 ( .A(outreg_data[4]), .B(n588), .C(\regs_matrix[2][4] ), .D(
        n595), .Y(n412) );
  OAI22X1 U509 ( .A(\regs_matrix[4][4] ), .B(n598), .C(\regs_matrix[6][4] ), 
        .D(n38), .Y(n411) );
  NOR2X1 U510 ( .A(n413), .B(n414), .Y(n409) );
  OAI22X1 U511 ( .A(\regs_matrix[3][4] ), .B(n604), .C(\regs_matrix[1][4] ), 
        .D(n608), .Y(n414) );
  OAI22X1 U512 ( .A(\regs_matrix[5][4] ), .B(n612), .C(\regs_matrix[7][4] ), 
        .D(n1), .Y(n413) );
  MUX2X1 U513 ( .B(n415), .A(n416), .S(n615), .Y(r2_data[5]) );
  NAND2X1 U514 ( .A(n417), .B(n418), .Y(n416) );
  NOR2X1 U515 ( .A(n419), .B(n420), .Y(n418) );
  OAI22X1 U516 ( .A(\regs_matrix[8][5] ), .B(n588), .C(\regs_matrix[10][5] ), 
        .D(n595), .Y(n420) );
  OAI22X1 U517 ( .A(\regs_matrix[12][5] ), .B(n598), .C(\regs_matrix[14][5] ), 
        .D(n37), .Y(n419) );
  NOR2X1 U518 ( .A(n421), .B(n422), .Y(n417) );
  OAI22X1 U519 ( .A(\regs_matrix[11][5] ), .B(n605), .C(\regs_matrix[9][5] ), 
        .D(n608), .Y(n422) );
  OAI22X1 U520 ( .A(\regs_matrix[13][5] ), .B(n32), .C(\regs_matrix[15][5] ), 
        .D(n3), .Y(n421) );
  NAND2X1 U521 ( .A(n423), .B(n424), .Y(n415) );
  NOR2X1 U522 ( .A(n425), .B(n426), .Y(n424) );
  OAI22X1 U523 ( .A(outreg_data[5]), .B(n588), .C(\regs_matrix[2][5] ), .D(
        n595), .Y(n426) );
  OAI22X1 U524 ( .A(\regs_matrix[4][5] ), .B(n598), .C(\regs_matrix[6][5] ), 
        .D(n24), .Y(n425) );
  NOR2X1 U525 ( .A(n427), .B(n428), .Y(n423) );
  OAI22X1 U526 ( .A(\regs_matrix[3][5] ), .B(n35), .C(\regs_matrix[1][5] ), 
        .D(n608), .Y(n428) );
  OAI22X1 U527 ( .A(\regs_matrix[5][5] ), .B(n611), .C(\regs_matrix[7][5] ), 
        .D(n3), .Y(n427) );
  NAND2X1 U528 ( .A(n432), .B(n431), .Y(n430) );
  NOR2X1 U529 ( .A(n433), .B(n434), .Y(n432) );
  OAI22X1 U530 ( .A(\regs_matrix[8][6] ), .B(n588), .C(\regs_matrix[10][6] ), 
        .D(n595), .Y(n434) );
  OAI22X1 U531 ( .A(\regs_matrix[12][6] ), .B(n598), .C(\regs_matrix[14][6] ), 
        .D(n38), .Y(n433) );
  NOR2X1 U532 ( .A(n435), .B(n436), .Y(n431) );
  OAI22X1 U533 ( .A(\regs_matrix[11][6] ), .B(n605), .C(\regs_matrix[9][6] ), 
        .D(n607), .Y(n436) );
  OAI22X1 U534 ( .A(\regs_matrix[13][6] ), .B(n32), .C(\regs_matrix[15][6] ), 
        .D(n2), .Y(n435) );
  NAND2X1 U535 ( .A(n438), .B(n437), .Y(n429) );
  NOR2X1 U536 ( .A(n439), .B(n440), .Y(n438) );
  OAI22X1 U537 ( .A(outreg_data[6]), .B(n588), .C(\regs_matrix[2][6] ), .D(
        n595), .Y(n440) );
  OAI22X1 U538 ( .A(\regs_matrix[4][6] ), .B(n598), .C(\regs_matrix[6][6] ), 
        .D(n37), .Y(n439) );
  NOR2X1 U539 ( .A(n441), .B(n442), .Y(n437) );
  OAI22X1 U540 ( .A(\regs_matrix[3][6] ), .B(n604), .C(\regs_matrix[1][6] ), 
        .D(n607), .Y(n442) );
  OAI22X1 U541 ( .A(\regs_matrix[5][6] ), .B(n611), .C(\regs_matrix[7][6] ), 
        .D(n3), .Y(n441) );
  MUX2X1 U542 ( .B(n443), .A(n444), .S(n615), .Y(r2_data[7]) );
  NAND2X1 U543 ( .A(n446), .B(n445), .Y(n444) );
  NOR2X1 U544 ( .A(n447), .B(n448), .Y(n446) );
  OAI22X1 U545 ( .A(\regs_matrix[8][7] ), .B(n588), .C(\regs_matrix[10][7] ), 
        .D(n595), .Y(n448) );
  OAI22X1 U546 ( .A(\regs_matrix[12][7] ), .B(n598), .C(\regs_matrix[14][7] ), 
        .D(n24), .Y(n447) );
  NOR2X1 U547 ( .A(n449), .B(n450), .Y(n445) );
  OAI22X1 U548 ( .A(\regs_matrix[11][7] ), .B(n604), .C(\regs_matrix[9][7] ), 
        .D(n607), .Y(n450) );
  OAI22X1 U549 ( .A(\regs_matrix[13][7] ), .B(n31), .C(\regs_matrix[15][7] ), 
        .D(n2), .Y(n449) );
  NAND2X1 U550 ( .A(n451), .B(n452), .Y(n443) );
  NOR2X1 U551 ( .A(n453), .B(n454), .Y(n452) );
  OAI22X1 U552 ( .A(outreg_data[7]), .B(n588), .C(\regs_matrix[2][7] ), .D(
        n595), .Y(n454) );
  OAI22X1 U553 ( .A(\regs_matrix[4][7] ), .B(n598), .C(\regs_matrix[6][7] ), 
        .D(n601), .Y(n453) );
  NOR2X1 U554 ( .A(n455), .B(n456), .Y(n451) );
  OAI22X1 U555 ( .A(\regs_matrix[3][7] ), .B(n35), .C(\regs_matrix[1][7] ), 
        .D(n607), .Y(n456) );
  OAI22X1 U556 ( .A(\regs_matrix[5][7] ), .B(n610), .C(\regs_matrix[7][7] ), 
        .D(n2), .Y(n455) );
  MUX2X1 U557 ( .B(n457), .A(n458), .S(n614), .Y(r2_data[8]) );
  NAND2X1 U558 ( .A(n459), .B(n460), .Y(n458) );
  NOR2X1 U559 ( .A(n461), .B(n462), .Y(n460) );
  OAI22X1 U560 ( .A(\regs_matrix[8][8] ), .B(n588), .C(\regs_matrix[10][8] ), 
        .D(n595), .Y(n462) );
  OAI22X1 U561 ( .A(\regs_matrix[12][8] ), .B(n598), .C(\regs_matrix[14][8] ), 
        .D(n602), .Y(n461) );
  NOR2X1 U562 ( .A(n463), .B(n464), .Y(n459) );
  OAI22X1 U563 ( .A(\regs_matrix[11][8] ), .B(n35), .C(\regs_matrix[9][8] ), 
        .D(n607), .Y(n464) );
  OAI22X1 U564 ( .A(\regs_matrix[13][8] ), .B(n32), .C(\regs_matrix[15][8] ), 
        .D(n2), .Y(n463) );
  NAND2X1 U565 ( .A(n465), .B(n466), .Y(n457) );
  NOR2X1 U566 ( .A(n467), .B(n468), .Y(n466) );
  OAI22X1 U567 ( .A(outreg_data[8]), .B(n588), .C(\regs_matrix[2][8] ), .D(
        n595), .Y(n468) );
  OAI22X1 U568 ( .A(\regs_matrix[4][8] ), .B(n598), .C(\regs_matrix[6][8] ), 
        .D(n38), .Y(n467) );
  NOR2X1 U569 ( .A(n469), .B(n470), .Y(n465) );
  OAI22X1 U570 ( .A(\regs_matrix[3][8] ), .B(n35), .C(\regs_matrix[1][8] ), 
        .D(n607), .Y(n470) );
  OAI22X1 U571 ( .A(\regs_matrix[5][8] ), .B(n610), .C(\regs_matrix[7][8] ), 
        .D(n1), .Y(n469) );
  MUX2X1 U572 ( .B(n471), .A(n472), .S(n615), .Y(r2_data[9]) );
  NAND2X1 U573 ( .A(n473), .B(n474), .Y(n472) );
  NOR2X1 U574 ( .A(n475), .B(n476), .Y(n474) );
  OAI22X1 U575 ( .A(\regs_matrix[8][9] ), .B(n588), .C(\regs_matrix[10][9] ), 
        .D(n595), .Y(n476) );
  OAI22X1 U576 ( .A(\regs_matrix[12][9] ), .B(n598), .C(\regs_matrix[14][9] ), 
        .D(n24), .Y(n475) );
  NOR2X1 U577 ( .A(n477), .B(n478), .Y(n473) );
  OAI22X1 U578 ( .A(\regs_matrix[11][9] ), .B(n34), .C(\regs_matrix[9][9] ), 
        .D(n607), .Y(n478) );
  OAI22X1 U579 ( .A(\regs_matrix[13][9] ), .B(n610), .C(\regs_matrix[15][9] ), 
        .D(n3), .Y(n477) );
  NAND2X1 U580 ( .A(n479), .B(n480), .Y(n471) );
  NOR2X1 U581 ( .A(n481), .B(n482), .Y(n480) );
  OAI22X1 U582 ( .A(outreg_data[9]), .B(n588), .C(\regs_matrix[2][9] ), .D(
        n595), .Y(n482) );
  OAI22X1 U583 ( .A(\regs_matrix[4][9] ), .B(n598), .C(\regs_matrix[6][9] ), 
        .D(n37), .Y(n481) );
  NOR2X1 U584 ( .A(n483), .B(n484), .Y(n479) );
  OAI22X1 U585 ( .A(\regs_matrix[3][9] ), .B(n604), .C(\regs_matrix[1][9] ), 
        .D(n607), .Y(n484) );
  OAI22X1 U586 ( .A(\regs_matrix[5][9] ), .B(n31), .C(\regs_matrix[7][9] ), 
        .D(n2), .Y(n483) );
  MUX2X1 U587 ( .B(n485), .A(n486), .S(n614), .Y(r2_data[10]) );
  NAND2X1 U588 ( .A(n487), .B(n488), .Y(n486) );
  NOR2X1 U589 ( .A(n490), .B(n489), .Y(n488) );
  OAI22X1 U590 ( .A(\regs_matrix[8][10] ), .B(n589), .C(\regs_matrix[10][10] ), 
        .D(n596), .Y(n490) );
  OAI22X1 U591 ( .A(\regs_matrix[12][10] ), .B(n598), .C(\regs_matrix[14][10] ), .D(n601), .Y(n489) );
  NOR2X1 U592 ( .A(n491), .B(n492), .Y(n487) );
  OAI22X1 U593 ( .A(\regs_matrix[11][10] ), .B(n605), .C(\regs_matrix[9][10] ), 
        .D(n607), .Y(n492) );
  OAI22X1 U594 ( .A(\regs_matrix[13][10] ), .B(n610), .C(\regs_matrix[15][10] ), .D(n3), .Y(n491) );
  NAND2X1 U595 ( .A(n493), .B(n494), .Y(n485) );
  NOR2X1 U596 ( .A(n495), .B(n496), .Y(n494) );
  OAI22X1 U597 ( .A(outreg_data[10]), .B(n589), .C(\regs_matrix[2][10] ), .D(
        n596), .Y(n496) );
  OAI22X1 U598 ( .A(\regs_matrix[4][10] ), .B(n599), .C(\regs_matrix[6][10] ), 
        .D(n602), .Y(n495) );
  NOR2X1 U599 ( .A(n497), .B(n498), .Y(n493) );
  OAI22X1 U600 ( .A(\regs_matrix[3][10] ), .B(n34), .C(\regs_matrix[1][10] ), 
        .D(n607), .Y(n498) );
  OAI22X1 U601 ( .A(\regs_matrix[5][10] ), .B(n32), .C(\regs_matrix[7][10] ), 
        .D(n3), .Y(n497) );
  MUX2X1 U602 ( .B(n499), .A(n500), .S(n615), .Y(r2_data[11]) );
  NAND2X1 U603 ( .A(n501), .B(n502), .Y(n500) );
  NOR2X1 U604 ( .A(n503), .B(n504), .Y(n502) );
  OAI22X1 U605 ( .A(\regs_matrix[8][11] ), .B(n589), .C(\regs_matrix[10][11] ), 
        .D(n596), .Y(n504) );
  OAI22X1 U606 ( .A(\regs_matrix[12][11] ), .B(n599), .C(\regs_matrix[14][11] ), .D(n602), .Y(n503) );
  NOR2X1 U607 ( .A(n505), .B(n506), .Y(n501) );
  OAI22X1 U608 ( .A(\regs_matrix[11][11] ), .B(n34), .C(\regs_matrix[9][11] ), 
        .D(n607), .Y(n506) );
  OAI22X1 U609 ( .A(\regs_matrix[13][11] ), .B(n611), .C(\regs_matrix[15][11] ), .D(n2), .Y(n505) );
  NAND2X1 U610 ( .A(n507), .B(n508), .Y(n499) );
  NOR2X1 U611 ( .A(n509), .B(n510), .Y(n508) );
  OAI22X1 U612 ( .A(outreg_data[11]), .B(n589), .C(\regs_matrix[2][11] ), .D(
        n596), .Y(n510) );
  OAI22X1 U613 ( .A(\regs_matrix[4][11] ), .B(n599), .C(\regs_matrix[6][11] ), 
        .D(n23), .Y(n509) );
  NOR2X1 U614 ( .A(n511), .B(n512), .Y(n507) );
  OAI22X1 U615 ( .A(\regs_matrix[3][11] ), .B(n35), .C(\regs_matrix[1][11] ), 
        .D(n607), .Y(n512) );
  OAI22X1 U616 ( .A(\regs_matrix[5][11] ), .B(n31), .C(\regs_matrix[7][11] ), 
        .D(n2), .Y(n511) );
  MUX2X1 U617 ( .B(n513), .A(n514), .S(n614), .Y(r2_data[12]) );
  NAND2X1 U618 ( .A(n515), .B(n516), .Y(n514) );
  NOR2X1 U619 ( .A(n517), .B(n518), .Y(n516) );
  OAI22X1 U620 ( .A(\regs_matrix[8][12] ), .B(n589), .C(\regs_matrix[10][12] ), 
        .D(n19), .Y(n518) );
  OAI22X1 U621 ( .A(\regs_matrix[12][12] ), .B(n599), .C(\regs_matrix[14][12] ), .D(n38), .Y(n517) );
  NOR2X1 U622 ( .A(n519), .B(n520), .Y(n515) );
  OAI22X1 U623 ( .A(\regs_matrix[11][12] ), .B(n604), .C(\regs_matrix[9][12] ), 
        .D(n607), .Y(n520) );
  OAI22X1 U624 ( .A(\regs_matrix[13][12] ), .B(n32), .C(\regs_matrix[15][12] ), 
        .D(n2), .Y(n519) );
  NAND2X1 U625 ( .A(n521), .B(n522), .Y(n513) );
  NOR2X1 U626 ( .A(n523), .B(n524), .Y(n522) );
  OAI22X1 U627 ( .A(outreg_data[12]), .B(n589), .C(\regs_matrix[2][12] ), .D(
        n19), .Y(n524) );
  OAI22X1 U628 ( .A(\regs_matrix[4][12] ), .B(n599), .C(\regs_matrix[6][12] ), 
        .D(n37), .Y(n523) );
  NOR2X1 U629 ( .A(n525), .B(n526), .Y(n521) );
  OAI22X1 U630 ( .A(\regs_matrix[3][12] ), .B(n605), .C(\regs_matrix[1][12] ), 
        .D(n608), .Y(n526) );
  OAI22X1 U631 ( .A(\regs_matrix[5][12] ), .B(n611), .C(\regs_matrix[7][12] ), 
        .D(n3), .Y(n525) );
  MUX2X1 U632 ( .B(n527), .A(n528), .S(n615), .Y(r2_data[13]) );
  NAND2X1 U633 ( .A(n529), .B(n530), .Y(n528) );
  NOR2X1 U634 ( .A(n531), .B(n532), .Y(n530) );
  OAI22X1 U635 ( .A(\regs_matrix[8][13] ), .B(n589), .C(\regs_matrix[10][13] ), 
        .D(n596), .Y(n532) );
  OAI22X1 U636 ( .A(\regs_matrix[12][13] ), .B(n599), .C(\regs_matrix[14][13] ), .D(n38), .Y(n531) );
  NOR2X1 U637 ( .A(n533), .B(n534), .Y(n529) );
  OAI22X1 U638 ( .A(\regs_matrix[11][13] ), .B(n605), .C(\regs_matrix[9][13] ), 
        .D(n608), .Y(n534) );
  OAI22X1 U639 ( .A(\regs_matrix[13][13] ), .B(n611), .C(\regs_matrix[15][13] ), .D(n2), .Y(n533) );
  NAND2X1 U640 ( .A(n535), .B(n536), .Y(n527) );
  NOR2X1 U641 ( .A(n537), .B(n538), .Y(n536) );
  OAI22X1 U642 ( .A(outreg_data[13]), .B(n589), .C(\regs_matrix[2][13] ), .D(
        n596), .Y(n538) );
  OAI22X1 U643 ( .A(\regs_matrix[4][13] ), .B(n599), .C(\regs_matrix[6][13] ), 
        .D(n601), .Y(n537) );
  NOR2X1 U644 ( .A(n539), .B(n540), .Y(n535) );
  OAI22X1 U645 ( .A(\regs_matrix[3][13] ), .B(n35), .C(\regs_matrix[1][13] ), 
        .D(n608), .Y(n540) );
  OAI22X1 U646 ( .A(\regs_matrix[5][13] ), .B(n31), .C(\regs_matrix[7][13] ), 
        .D(n3), .Y(n539) );
  MUX2X1 U647 ( .B(n541), .A(n542), .S(n614), .Y(r2_data[14]) );
  NAND2X1 U648 ( .A(n544), .B(n543), .Y(n542) );
  NOR2X1 U649 ( .A(n545), .B(n546), .Y(n544) );
  OAI22X1 U650 ( .A(\regs_matrix[8][14] ), .B(n589), .C(\regs_matrix[10][14] ), 
        .D(n596), .Y(n546) );
  OAI22X1 U651 ( .A(\regs_matrix[12][14] ), .B(n599), .C(\regs_matrix[14][14] ), .D(n23), .Y(n545) );
  NOR2X1 U652 ( .A(n548), .B(n547), .Y(n543) );
  OAI22X1 U653 ( .A(\regs_matrix[11][14] ), .B(n35), .C(\regs_matrix[9][14] ), 
        .D(n608), .Y(n548) );
  OAI22X1 U654 ( .A(\regs_matrix[13][14] ), .B(n610), .C(\regs_matrix[15][14] ), .D(n2), .Y(n547) );
  NAND2X1 U655 ( .A(n549), .B(n550), .Y(n541) );
  NOR2X1 U656 ( .A(n551), .B(n552), .Y(n550) );
  OAI22X1 U657 ( .A(outreg_data[14]), .B(n589), .C(\regs_matrix[2][14] ), .D(
        n596), .Y(n552) );
  OAI22X1 U658 ( .A(\regs_matrix[4][14] ), .B(n599), .C(\regs_matrix[6][14] ), 
        .D(n602), .Y(n551) );
  NOR2X1 U659 ( .A(n554), .B(n553), .Y(n549) );
  OAI22X1 U660 ( .A(\regs_matrix[3][14] ), .B(n35), .C(\regs_matrix[1][14] ), 
        .D(n608), .Y(n554) );
  OAI22X1 U661 ( .A(\regs_matrix[5][14] ), .B(n31), .C(\regs_matrix[7][14] ), 
        .D(n3), .Y(n553) );
  NAND2X1 U662 ( .A(n557), .B(n558), .Y(n556) );
  NOR2X1 U663 ( .A(n559), .B(n560), .Y(n558) );
  OAI22X1 U664 ( .A(\regs_matrix[8][15] ), .B(n589), .C(\regs_matrix[10][15] ), 
        .D(n596), .Y(n560) );
  OAI22X1 U665 ( .A(\regs_matrix[12][15] ), .B(n599), .C(\regs_matrix[14][15] ), .D(n601), .Y(n559) );
  NOR2X1 U666 ( .A(n561), .B(n562), .Y(n557) );
  OAI22X1 U667 ( .A(\regs_matrix[11][15] ), .B(n35), .C(\regs_matrix[9][15] ), 
        .D(n607), .Y(n562) );
  OAI22X1 U668 ( .A(\regs_matrix[13][15] ), .B(n612), .C(\regs_matrix[15][15] ), .D(n3), .Y(n561) );
  NAND2X1 U669 ( .A(n563), .B(n564), .Y(n555) );
  NOR2X1 U670 ( .A(n565), .B(n566), .Y(n564) );
  OAI22X1 U671 ( .A(outreg_data[15]), .B(n589), .C(\regs_matrix[2][15] ), .D(
        n596), .Y(n566) );
  OAI22X1 U672 ( .A(\regs_matrix[4][15] ), .B(n599), .C(\regs_matrix[6][15] ), 
        .D(n24), .Y(n565) );
  NOR2X1 U673 ( .A(n567), .B(n568), .Y(n563) );
  OAI22X1 U674 ( .A(\regs_matrix[3][15] ), .B(n604), .C(\regs_matrix[1][15] ), 
        .D(n608), .Y(n568) );
  OAI22X1 U675 ( .A(\regs_matrix[5][15] ), .B(n612), .C(\regs_matrix[7][15] ), 
        .D(n3), .Y(n567) );
  NOR2X1 U676 ( .A(n569), .B(n570), .Y(n333) );
  OAI21X1 U677 ( .A(\regs_matrix[6][16] ), .B(n23), .C(n571), .Y(n570) );
  AOI22X1 U678 ( .A(n593), .B(n283), .C(n586), .D(n662), .Y(n571) );
  OAI21X1 U679 ( .A(\regs_matrix[4][16] ), .B(n599), .C(n616), .Y(n569) );
  NOR2X1 U680 ( .A(n572), .B(n573), .Y(n334) );
  OAI22X1 U681 ( .A(\regs_matrix[3][16] ), .B(n35), .C(\regs_matrix[1][16] ), 
        .D(n607), .Y(n573) );
  OAI22X1 U682 ( .A(\regs_matrix[5][16] ), .B(n31), .C(\regs_matrix[7][16] ), 
        .D(n3), .Y(n572) );
  NOR2X1 U683 ( .A(n574), .B(n575), .Y(n335) );
  OAI21X1 U684 ( .A(\regs_matrix[12][16] ), .B(n599), .C(n576), .Y(n575) );
  AOI22X1 U685 ( .A(n15), .B(n289), .C(n584), .D(n577), .Y(n576) );
  INVX2 U686 ( .A(\regs_matrix[8][16] ), .Y(n577) );
  NAND3X1 U687 ( .A(n578), .B(n579), .C(n580), .Y(n344) );
  NAND3X1 U688 ( .A(n27), .B(n579), .C(n580), .Y(n345) );
  NAND3X1 U689 ( .A(n578), .B(N16), .C(n580), .Y(n346) );
  OAI22X1 U690 ( .A(\regs_matrix[9][16] ), .B(n608), .C(\regs_matrix[14][16] ), 
        .D(n24), .Y(n574) );
  NAND3X1 U691 ( .A(N16), .B(n27), .C(n580), .Y(n347) );
  INVX2 U692 ( .A(N14), .Y(n580) );
  NAND3X1 U693 ( .A(N14), .B(n579), .C(n578), .Y(n351) );
  NOR2X1 U694 ( .A(n581), .B(n582), .Y(n336) );
  OAI21X1 U695 ( .A(\regs_matrix[11][16] ), .B(n34), .C(n614), .Y(n582) );
  NAND2X1 U696 ( .A(n45), .B(n579), .Y(n350) );
  OAI22X1 U697 ( .A(\regs_matrix[15][16] ), .B(n2), .C(\regs_matrix[13][16] ), 
        .D(n611), .Y(n581) );
  NAND3X1 U698 ( .A(N16), .B(N14), .C(n578), .Y(n352) );
  INVX2 U699 ( .A(N15), .Y(n578) );
  INVX8 U700 ( .A(n584), .Y(n588) );
  INVX8 U701 ( .A(n597), .Y(n598) );
  INVX8 U702 ( .A(n597), .Y(n599) );
  INVX2 U703 ( .A(n345), .Y(n590) );
  INVX4 U704 ( .A(N16), .Y(n579) );
  INVX2 U705 ( .A(n344), .Y(n583) );
  INVX4 U706 ( .A(n346), .Y(n597) );
  INVX4 U707 ( .A(w_data[9]), .Y(n642) );
  INVX4 U708 ( .A(w_data[7]), .Y(n637) );
  INVX4 U709 ( .A(w_data[13]), .Y(n652) );
  INVX4 U710 ( .A(w_data[11]), .Y(n647) );
  INVX4 U711 ( .A(w_data[8]), .Y(n639) );
  INVX4 U712 ( .A(w_data[6]), .Y(n634) );
  INVX4 U713 ( .A(w_data[12]), .Y(n650) );
  INVX4 U714 ( .A(w_data[10]), .Y(n644) );
  INVX4 U715 ( .A(w_data[14]), .Y(n655) );
  INVX4 U716 ( .A(n658), .Y(n659) );
  INVX4 U717 ( .A(n658), .Y(n660) );
  INVX4 U718 ( .A(w_data[15]), .Y(n658) );
  INVX8 U719 ( .A(n637), .Y(n638) );
  INVX8 U720 ( .A(n650), .Y(n651) );
  INVX2 U721 ( .A(w_en), .Y(n671) );
  INVX2 U722 ( .A(w_sel[1]), .Y(n672) );
  INVX2 U723 ( .A(w_sel[2]), .Y(n673) );
  INVX2 U724 ( .A(w_sel[3]), .Y(n674) );
endmodule


module datapath ( clk, n_reset, op, src1, src2, dest, ext_data1, ext_data2, 
        outreg_data, overflow );
  input [2:0] op;
  input [3:0] src1;
  input [3:0] src2;
  input [3:0] dest;
  input [15:0] ext_data1;
  input [15:0] ext_data2;
  output [16:0] outreg_data;
  input clk, n_reset;
  output overflow;
  wire   w_en, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;
  wire   [1:0] w_data_sel;
  wire   [1:0] alu_op;
  wire   [16:0] src1_data;
  wire   [16:0] src2_data;
  wire   [16:0] alu_result;
  wire   [16:0] dest_data;

  datapath_decode DEC ( .op(op), .w_en(w_en), .w_data_sel(w_data_sel), 
        .alu_op(alu_op) );
  alu CORE ( .src1_data({src1_data[16:13], n2, src1_data[11:10], n1, 
        src1_data[8:5], n6, src1_data[3:0]}), .src2_data(src2_data), .alu_op(
        alu_op), .result(alu_result), .overflow(overflow) );
  register_file RF ( .clk(clk), .n_reset(n_reset), .w_en(w_en), .r1_sel(src1), 
        .r2_sel({src2[3], n3, src2[1:0]}), .w_sel(dest), .w_data(dest_data), 
        .r1_data(src1_data), .r2_data(src2_data), .outreg_data(outreg_data) );
  BUFX4 U2 ( .A(src2[2]), .Y(n3) );
  BUFX2 U3 ( .A(src1_data[12]), .Y(n2) );
  BUFX4 U4 ( .A(src1_data[9]), .Y(n1) );
  INVX2 U5 ( .A(w_data_sel[1]), .Y(n40) );
  AND2X2 U6 ( .A(n40), .B(n7), .Y(n4) );
  AND2X2 U7 ( .A(w_data_sel[0]), .B(n40), .Y(n5) );
  BUFX4 U8 ( .A(src1_data[4]), .Y(n6) );
  AND2X2 U9 ( .A(alu_result[16]), .B(w_data_sel[1]), .Y(dest_data[16]) );
  INVX2 U10 ( .A(alu_result[15]), .Y(n9) );
  INVX2 U11 ( .A(w_data_sel[0]), .Y(n7) );
  AOI22X1 U12 ( .A(ext_data2[15]), .B(n5), .C(ext_data1[15]), .D(n4), .Y(n8)
         );
  OAI21X1 U13 ( .A(n40), .B(n9), .C(n8), .Y(dest_data[15]) );
  INVX2 U14 ( .A(alu_result[14]), .Y(n11) );
  AOI22X1 U15 ( .A(ext_data2[14]), .B(n5), .C(ext_data1[14]), .D(n4), .Y(n10)
         );
  OAI21X1 U16 ( .A(n40), .B(n11), .C(n10), .Y(dest_data[14]) );
  INVX2 U17 ( .A(alu_result[13]), .Y(n13) );
  AOI22X1 U18 ( .A(ext_data2[13]), .B(n5), .C(ext_data1[13]), .D(n4), .Y(n12)
         );
  OAI21X1 U19 ( .A(n40), .B(n13), .C(n12), .Y(dest_data[13]) );
  INVX2 U20 ( .A(alu_result[12]), .Y(n15) );
  AOI22X1 U21 ( .A(ext_data2[12]), .B(n5), .C(ext_data1[12]), .D(n4), .Y(n14)
         );
  OAI21X1 U22 ( .A(n40), .B(n15), .C(n14), .Y(dest_data[12]) );
  INVX2 U23 ( .A(alu_result[11]), .Y(n17) );
  AOI22X1 U24 ( .A(ext_data2[11]), .B(n5), .C(ext_data1[11]), .D(n4), .Y(n16)
         );
  OAI21X1 U25 ( .A(n40), .B(n17), .C(n16), .Y(dest_data[11]) );
  INVX2 U26 ( .A(alu_result[10]), .Y(n19) );
  AOI22X1 U27 ( .A(ext_data2[10]), .B(n5), .C(ext_data1[10]), .D(n4), .Y(n18)
         );
  OAI21X1 U28 ( .A(n40), .B(n19), .C(n18), .Y(dest_data[10]) );
  INVX2 U29 ( .A(alu_result[9]), .Y(n21) );
  AOI22X1 U30 ( .A(ext_data2[9]), .B(n5), .C(ext_data1[9]), .D(n4), .Y(n20) );
  OAI21X1 U31 ( .A(n40), .B(n21), .C(n20), .Y(dest_data[9]) );
  INVX2 U32 ( .A(alu_result[8]), .Y(n23) );
  AOI22X1 U33 ( .A(ext_data2[8]), .B(n5), .C(ext_data1[8]), .D(n4), .Y(n22) );
  OAI21X1 U34 ( .A(n40), .B(n23), .C(n22), .Y(dest_data[8]) );
  INVX2 U35 ( .A(alu_result[7]), .Y(n25) );
  AOI22X1 U36 ( .A(ext_data2[7]), .B(n5), .C(ext_data1[7]), .D(n4), .Y(n24) );
  OAI21X1 U37 ( .A(n40), .B(n25), .C(n24), .Y(dest_data[7]) );
  INVX2 U38 ( .A(alu_result[6]), .Y(n27) );
  AOI22X1 U39 ( .A(ext_data2[6]), .B(n5), .C(ext_data1[6]), .D(n4), .Y(n26) );
  OAI21X1 U40 ( .A(n40), .B(n27), .C(n26), .Y(dest_data[6]) );
  INVX2 U41 ( .A(alu_result[5]), .Y(n29) );
  AOI22X1 U42 ( .A(ext_data2[5]), .B(n5), .C(ext_data1[5]), .D(n4), .Y(n28) );
  OAI21X1 U43 ( .A(n40), .B(n29), .C(n28), .Y(dest_data[5]) );
  INVX2 U44 ( .A(alu_result[4]), .Y(n31) );
  AOI22X1 U45 ( .A(ext_data2[4]), .B(n5), .C(ext_data1[4]), .D(n4), .Y(n30) );
  OAI21X1 U46 ( .A(n40), .B(n31), .C(n30), .Y(dest_data[4]) );
  INVX2 U47 ( .A(alu_result[3]), .Y(n33) );
  AOI22X1 U48 ( .A(ext_data2[3]), .B(n5), .C(ext_data1[3]), .D(n4), .Y(n32) );
  OAI21X1 U49 ( .A(n40), .B(n33), .C(n32), .Y(dest_data[3]) );
  INVX2 U50 ( .A(alu_result[2]), .Y(n35) );
  AOI22X1 U51 ( .A(ext_data2[2]), .B(n5), .C(ext_data1[2]), .D(n4), .Y(n34) );
  OAI21X1 U52 ( .A(n40), .B(n35), .C(n34), .Y(dest_data[2]) );
  INVX2 U53 ( .A(alu_result[1]), .Y(n37) );
  AOI22X1 U54 ( .A(ext_data2[1]), .B(n5), .C(ext_data1[1]), .D(n4), .Y(n36) );
  OAI21X1 U55 ( .A(n40), .B(n37), .C(n36), .Y(dest_data[1]) );
  INVX2 U56 ( .A(alu_result[0]), .Y(n39) );
  AOI22X1 U57 ( .A(ext_data2[0]), .B(n5), .C(ext_data1[0]), .D(n4), .Y(n38) );
  OAI21X1 U58 ( .A(n40), .B(n39), .C(n38), .Y(dest_data[0]) );
endmodule


module flex_counter_NUM_CNT_BITS10_DW01_inc_0 ( A, SUM );
  input [10:0] A;
  output [10:0] SUM;

  wire   [10:2] carry;

  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(SUM[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module flex_counter_NUM_CNT_BITS10_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  XOR2X1 U1 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module flex_counter_NUM_CNT_BITS10 ( clk, n_rst, rollover_flag, clear, 
        count_enable, rollover_val, count_out );
  input [9:0] rollover_val;
  output [9:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   next_flag, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n1, n2, n3, n4, n6, n7, n8,
         n9, n10, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33;
  wire   SYNOPSYS_UNCONNECTED__0;

  DFFSR \current_reg[0]  ( .D(n110), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \current_reg[8]  ( .D(n102), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \current_reg[7]  ( .D(n103), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \current_reg[6]  ( .D(n104), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \current_reg[5]  ( .D(n105), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \current_reg[4]  ( .D(n106), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \current_reg[3]  ( .D(n107), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \current_reg[2]  ( .D(n108), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \current_reg[1]  ( .D(n109), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \current_reg[9]  ( .D(n101), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR current_flag_reg ( .D(next_flag), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  AND2X2 U15 ( .A(n50), .B(n51), .Y(n46) );
  NOR2X1 U37 ( .A(n43), .B(n44), .Y(next_flag) );
  NAND3X1 U38 ( .A(n45), .B(n46), .C(n47), .Y(n44) );
  NOR2X1 U39 ( .A(n48), .B(n49), .Y(n47) );
  OAI21X1 U40 ( .A(N9), .B(n31), .C(count_enable), .Y(n49) );
  OAI22X1 U41 ( .A(N8), .B(n24), .C(N7), .D(n30), .Y(n48) );
  OAI21X1 U42 ( .A(n52), .B(n53), .C(n54), .Y(n51) );
  OAI22X1 U43 ( .A(rollover_val[4]), .B(n9), .C(rollover_val[3]), .D(n10), .Y(
        n53) );
  OAI21X1 U44 ( .A(rollover_val[2]), .B(n22), .C(n55), .Y(n52) );
  AOI22X1 U45 ( .A(rollover_val[0]), .B(count_out[0]), .C(N6), .D(n29), .Y(n55) );
  OAI21X1 U46 ( .A(n56), .B(n57), .C(n2), .Y(n50) );
  NAND2X1 U47 ( .A(n29), .B(n30), .Y(n57) );
  NAND2X1 U48 ( .A(n24), .B(n31), .Y(n56) );
  AOI22X1 U49 ( .A(n58), .B(n28), .C(rollover_val[1]), .D(n23), .Y(n45) );
  NAND3X1 U50 ( .A(n59), .B(n60), .C(n61), .Y(n43) );
  NOR2X1 U51 ( .A(n62), .B(n63), .Y(n61) );
  OAI21X1 U52 ( .A(N10), .B(n25), .C(n64), .Y(n63) );
  OAI21X1 U53 ( .A(n27), .B(n65), .C(n2), .Y(n64) );
  NAND2X1 U54 ( .A(n25), .B(n26), .Y(n65) );
  NOR3X1 U55 ( .A(rollover_val[8]), .B(rollover_val[9]), .C(rollover_val[7]), 
        .Y(n66) );
  NAND2X1 U56 ( .A(n67), .B(n32), .Y(n62) );
  OAI21X1 U57 ( .A(n68), .B(n69), .C(n54), .Y(n67) );
  OAI22X1 U58 ( .A(rollover_val[9]), .B(n3), .C(rollover_val[8]), .D(n4), .Y(
        n69) );
  OAI21X1 U59 ( .A(rollover_val[7]), .B(n6), .C(n70), .Y(n68) );
  AOI22X1 U60 ( .A(N10), .B(n25), .C(N11), .D(n26), .Y(n70) );
  AOI22X1 U61 ( .A(rollover_val[6]), .B(n7), .C(rollover_val[7]), .D(n6), .Y(
        n60) );
  AOI22X1 U62 ( .A(rollover_val[8]), .B(n4), .C(rollover_val[9]), .D(n3), .Y(
        n59) );
  OAI21X1 U63 ( .A(n3), .B(n71), .C(n72), .Y(n101) );
  NAND2X1 U64 ( .A(count_out[9]), .B(n1), .Y(n72) );
  OAI21X1 U65 ( .A(n4), .B(n71), .C(n74), .Y(n102) );
  NAND2X1 U66 ( .A(count_out[8]), .B(n1), .Y(n74) );
  OAI21X1 U67 ( .A(n6), .B(n71), .C(n75), .Y(n103) );
  NAND2X1 U68 ( .A(count_out[7]), .B(n1), .Y(n75) );
  OAI21X1 U69 ( .A(n7), .B(n71), .C(n76), .Y(n104) );
  NAND2X1 U70 ( .A(count_out[6]), .B(n1), .Y(n76) );
  OAI21X1 U71 ( .A(n8), .B(n71), .C(n77), .Y(n105) );
  NAND2X1 U72 ( .A(count_out[5]), .B(n1), .Y(n77) );
  OAI21X1 U73 ( .A(n9), .B(n71), .C(n78), .Y(n106) );
  NAND2X1 U74 ( .A(count_out[4]), .B(n1), .Y(n78) );
  OAI21X1 U75 ( .A(n10), .B(n71), .C(n79), .Y(n107) );
  NAND2X1 U76 ( .A(count_out[3]), .B(n1), .Y(n79) );
  OAI21X1 U77 ( .A(n22), .B(n71), .C(n80), .Y(n108) );
  NAND2X1 U78 ( .A(count_out[2]), .B(n1), .Y(n80) );
  OAI21X1 U79 ( .A(n23), .B(n71), .C(n81), .Y(n109) );
  NAND2X1 U80 ( .A(count_out[1]), .B(n1), .Y(n81) );
  NAND3X1 U81 ( .A(n54), .B(n32), .C(n33), .Y(n71) );
  OAI21X1 U82 ( .A(n1), .B(n82), .C(n83), .Y(n110) );
  NAND2X1 U83 ( .A(count_out[0]), .B(n1), .Y(n83) );
  NAND2X1 U84 ( .A(n58), .B(n32), .Y(n82) );
  NAND2X1 U85 ( .A(count_out[0]), .B(n54), .Y(n58) );
  NAND3X1 U86 ( .A(n84), .B(n85), .C(n86), .Y(n54) );
  NOR2X1 U87 ( .A(n87), .B(n88), .Y(n86) );
  NAND3X1 U88 ( .A(n89), .B(n90), .C(n91), .Y(n88) );
  XNOR2X1 U89 ( .A(N8), .B(N18), .Y(n91) );
  XNOR2X1 U90 ( .A(N13), .B(N23), .Y(n90) );
  XNOR2X1 U91 ( .A(N10), .B(N20), .Y(n89) );
  NAND2X1 U92 ( .A(n92), .B(n93), .Y(n87) );
  XNOR2X1 U93 ( .A(N14), .B(N24), .Y(n93) );
  NOR2X1 U94 ( .A(N25), .B(n94), .Y(n92) );
  XNOR2X1 U95 ( .A(N22), .B(n6), .Y(n94) );
  NOR2X1 U96 ( .A(n95), .B(n96), .Y(n85) );
  NAND2X1 U97 ( .A(n97), .B(n98), .Y(n96) );
  XNOR2X1 U98 ( .A(N9), .B(N19), .Y(n98) );
  XNOR2X1 U99 ( .A(N11), .B(N21), .Y(n97) );
  XNOR2X1 U100 ( .A(n22), .B(N17), .Y(n95) );
  NOR2X1 U101 ( .A(n99), .B(n100), .Y(n84) );
  XNOR2X1 U102 ( .A(count_out[0]), .B(N15), .Y(n100) );
  XNOR2X1 U103 ( .A(n23), .B(N16), .Y(n99) );
  NOR2X1 U104 ( .A(count_enable), .B(clear), .Y(n73) );
  flex_counter_NUM_CNT_BITS10_DW01_inc_0 add_47 ( .A({1'b0, rollover_val}), 
        .SUM({N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15}) );
  flex_counter_NUM_CNT_BITS10_DW01_inc_1 add_45 ( .A(count_out), .SUM({N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, SYNOPSYS_UNCONNECTED__0}) );
  BUFX2 U16 ( .A(n73), .Y(n1) );
  INVX2 U17 ( .A(n54), .Y(n2) );
  INVX2 U18 ( .A(N14), .Y(n3) );
  INVX2 U19 ( .A(N13), .Y(n4) );
  INVX2 U20 ( .A(N12), .Y(n6) );
  INVX2 U21 ( .A(N11), .Y(n7) );
  INVX2 U22 ( .A(N10), .Y(n8) );
  INVX2 U23 ( .A(N9), .Y(n9) );
  INVX2 U24 ( .A(N8), .Y(n10) );
  INVX2 U25 ( .A(N7), .Y(n22) );
  INVX2 U26 ( .A(N6), .Y(n23) );
  INVX2 U27 ( .A(rollover_val[3]), .Y(n24) );
  INVX2 U28 ( .A(rollover_val[5]), .Y(n25) );
  INVX2 U29 ( .A(rollover_val[6]), .Y(n26) );
  INVX2 U30 ( .A(n66), .Y(n27) );
  INVX2 U31 ( .A(rollover_val[0]), .Y(n28) );
  INVX2 U32 ( .A(rollover_val[1]), .Y(n29) );
  INVX2 U33 ( .A(rollover_val[2]), .Y(n30) );
  INVX2 U34 ( .A(rollover_val[4]), .Y(n31) );
  INVX2 U35 ( .A(clear), .Y(n32) );
  INVX2 U36 ( .A(n1), .Y(n33) );
endmodule


module counter ( clk, n_reset, cnt_up, clear, one_k_samples );
  input clk, n_reset, cnt_up, clear;
  output one_k_samples;


  flex_counter_NUM_CNT_BITS10 COUNT ( .clk(clk), .n_rst(n_reset), 
        .rollover_flag(one_k_samples), .clear(clear), .count_enable(cnt_up), 
        .rollover_val({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0}) );
endmodule


module fir_filter ( clk, n_reset, sample_data, fir_coefficient, data_ready, 
        load_coeff, one_k_samples, modwait, fir_out, err );
  input [15:0] sample_data;
  input [15:0] fir_coefficient;
  output [15:0] fir_out;
  input clk, n_reset, data_ready, load_coeff;
  output one_k_samples, modwait, err;
  wire   syncdr, synclc, overflow, count_up, clear;
  wire   [2:0] operation;
  wire   [3:0] source1;
  wire   [3:0] source2;
  wire   [3:0] destination;
  wire   [16:0] dpout;

  controller drake ( .clk(clk), .n_reset(n_reset), .dr(syncdr), .lc(synclc), 
        .overflow(overflow), .cnt_up(count_up), .clear(clear), .modwait(
        modwait), .op(operation), .src1(source1), .src2(source2), .dest(
        destination), .err(err) );
  sync_low_1 sync1 ( .clk(clk), .n_rst(n_reset), .async_in(data_ready), 
        .sync_out(syncdr) );
  sync_low_0 sync2 ( .clk(clk), .n_rst(n_reset), .async_in(load_coeff), 
        .sync_out(synclc) );
  magnitude mag ( .in(dpout), .out(fir_out) );
  datapath dp ( .clk(clk), .n_reset(n_reset), .op(operation), .src1(source1), 
        .src2(source2), .dest(destination), .ext_data1(sample_data), 
        .ext_data2(fir_coefficient), .outreg_data(dpout), .overflow(overflow)
         );
  counter count ( .clk(clk), .n_reset(n_reset), .cnt_up(count_up), .clear(
        clear), .one_k_samples(one_k_samples) );
endmodule

