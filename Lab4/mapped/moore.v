/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Sep 18 19:32:01 2017
/////////////////////////////////////////////////////////////


module moore ( clk, n_rst, i, o );
  input clk, n_rst, i;
  output o;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [2:0] current;
  wire   [2:0] next;

  DFFSR \current_reg[0]  ( .D(next[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        current[0]) );
  DFFSR \current_reg[1]  ( .D(next[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        current[1]) );
  DFFSR \current_reg[2]  ( .D(next[2]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        current[2]) );
  INVX1 U20 ( .A(n15), .Y(o) );
  NOR2X1 U21 ( .A(n16), .B(n17), .Y(next[2]) );
  OAI21X1 U22 ( .A(n18), .B(n15), .C(n19), .Y(next[1]) );
  MUX2X1 U23 ( .B(n20), .A(n21), .S(current[1]), .Y(n19) );
  NOR2X1 U24 ( .A(current[2]), .B(current[0]), .Y(n21) );
  INVX1 U25 ( .A(n16), .Y(n20) );
  NAND3X1 U26 ( .A(current[0]), .B(n22), .C(i), .Y(n16) );
  NAND3X1 U27 ( .A(n23), .B(n17), .C(current[2]), .Y(n15) );
  INVX1 U28 ( .A(current[1]), .Y(n17) );
  NOR2X1 U29 ( .A(n24), .B(n25), .Y(next[0]) );
  NAND2X1 U30 ( .A(n23), .B(n22), .Y(n25) );
  INVX1 U31 ( .A(current[2]), .Y(n22) );
  INVX1 U32 ( .A(current[0]), .Y(n23) );
  XOR2X1 U33 ( .A(n18), .B(current[1]), .Y(n24) );
  INVX1 U34 ( .A(i), .Y(n18) );
endmodule

