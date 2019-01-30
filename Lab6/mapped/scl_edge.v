/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Oct  4 23:50:26 2017
/////////////////////////////////////////////////////////////


module scl_edge ( clk, falling_edge_found, n_rst, scl, rising_edge_found );
  input clk, n_rst, scl;
  output falling_edge_found, rising_edge_found;
  wire   reg1, reg2, reg3, n5;

  DFFSR reg1_reg ( .D(scl), .CLK(clk), .R(1'b1), .S(n_rst), .Q(reg1) );
  DFFSR reg2_reg ( .D(reg1), .CLK(clk), .R(1'b1), .S(n_rst), .Q(reg2) );
  DFFSR reg3_reg ( .D(reg2), .CLK(clk), .R(1'b1), .S(n_rst), .Q(reg3) );
  AND2X1 U9 ( .A(n5), .B(reg2), .Y(rising_edge_found) );
  NOR2X1 U10 ( .A(reg2), .B(n5), .Y(falling_edge_found) );
  INVX1 U11 ( .A(reg3), .Y(n5) );
endmodule

