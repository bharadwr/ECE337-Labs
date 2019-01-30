/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Sep 15 18:35:06 2017
/////////////////////////////////////////////////////////////


module flex_stp_sr_NUM_BITS8_SHIFT_MSB1 ( clk, n_rst, shift_enable, serial_in, 
        parallel_out );
  output [7:0] parallel_out;
  input clk, n_rst, shift_enable;
  output serial_in;
  wire   n11, n13, n15, n17, n19, n21, n23, n25, n1, n2, n3, n4, n5, n6, n7,
         n8;

  DFFSR \parallel_out_reg[0]  ( .D(n25), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  DFFSR \parallel_out_reg[1]  ( .D(n23), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \parallel_out_reg[2]  ( .D(n21), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \parallel_out_reg[3]  ( .D(n19), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  DFFSR \parallel_out_reg[4]  ( .D(n17), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[4]) );
  DFFSR \parallel_out_reg[5]  ( .D(n15), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[5]) );
  DFFSR \parallel_out_reg[6]  ( .D(n13), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[6]) );
  DFFSR \parallel_out_reg[7]  ( .D(n11), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[7]) );
  NOR2X1 U2 ( .A(shift_enable), .B(n1), .Y(n25) );
  MUX2X1 U3 ( .B(n2), .A(n1), .S(shift_enable), .Y(n23) );
  INVX1 U4 ( .A(parallel_out[0]), .Y(n1) );
  MUX2X1 U5 ( .B(n3), .A(n2), .S(shift_enable), .Y(n21) );
  INVX1 U6 ( .A(parallel_out[1]), .Y(n2) );
  MUX2X1 U7 ( .B(n4), .A(n3), .S(shift_enable), .Y(n19) );
  INVX1 U8 ( .A(parallel_out[2]), .Y(n3) );
  MUX2X1 U9 ( .B(n5), .A(n4), .S(shift_enable), .Y(n17) );
  INVX1 U10 ( .A(parallel_out[3]), .Y(n4) );
  INVX1 U11 ( .A(parallel_out[4]), .Y(n5) );
  INVX1 U12 ( .A(n6), .Y(n15) );
  MUX2X1 U13 ( .B(parallel_out[5]), .A(parallel_out[4]), .S(shift_enable), .Y(
        n6) );
  INVX1 U14 ( .A(n7), .Y(n13) );
  MUX2X1 U15 ( .B(parallel_out[6]), .A(parallel_out[5]), .S(shift_enable), .Y(
        n7) );
  INVX1 U16 ( .A(n8), .Y(n11) );
  MUX2X1 U17 ( .B(parallel_out[7]), .A(parallel_out[6]), .S(shift_enable), .Y(
        n8) );
endmodule


module stp_sr_8_msb ( clk, n_rst, serial_in, shift_enable, parallel_out );
  output [7:0] parallel_out;
  input clk, n_rst, serial_in, shift_enable;


  flex_stp_sr_NUM_BITS8_SHIFT_MSB1 CORE ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(shift_enable), .parallel_out(parallel_out) );
endmodule

