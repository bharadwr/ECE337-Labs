/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Sep 15 19:27:21 2017
/////////////////////////////////////////////////////////////


module flex_stp_sr ( clk, n_rst, shift_enable, serial_in, parallel_out );
  output [3:0] parallel_out;
  input clk, n_rst, shift_enable;
  output serial_in;
  wire   n7, n9, n11, n13, n14, n15, n16, n17;

  DFFSR \parallel_out_reg[0]  ( .D(n13), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  DFFSR \parallel_out_reg[1]  ( .D(n11), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \parallel_out_reg[2]  ( .D(n9), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \parallel_out_reg[3]  ( .D(n7), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  INVX1 U15 ( .A(n14), .Y(n9) );
  MUX2X1 U16 ( .B(parallel_out[2]), .A(parallel_out[1]), .S(shift_enable), .Y(
        n14) );
  INVX1 U17 ( .A(n15), .Y(n7) );
  MUX2X1 U18 ( .B(parallel_out[3]), .A(parallel_out[2]), .S(shift_enable), .Y(
        n15) );
  NOR2X1 U19 ( .A(shift_enable), .B(n16), .Y(n13) );
  MUX2X1 U20 ( .B(n17), .A(n16), .S(shift_enable), .Y(n11) );
  INVX1 U21 ( .A(parallel_out[0]), .Y(n16) );
  INVX1 U22 ( .A(parallel_out[1]), .Y(n17) );
endmodule

