/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Sep 15 18:35:16 2017
/////////////////////////////////////////////////////////////


module flex_stp_sr_NUM_BITS4_SHIFT_MSB0 ( clk, n_rst, shift_enable, serial_in, 
        parallel_out );
  output [3:0] parallel_out;
  input clk, n_rst, shift_enable;
  output serial_in;
  wire   n7, n9, n11, n13, n1, n2, n3, n4;

  DFFSR \parallel_out_reg[3]  ( .D(n13), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  DFFSR \parallel_out_reg[2]  ( .D(n11), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \parallel_out_reg[1]  ( .D(n9), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \parallel_out_reg[0]  ( .D(n7), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  INVX1 U2 ( .A(n1), .Y(n9) );
  MUX2X1 U3 ( .B(parallel_out[1]), .A(parallel_out[2]), .S(shift_enable), .Y(
        n1) );
  INVX1 U4 ( .A(n2), .Y(n7) );
  MUX2X1 U5 ( .B(parallel_out[0]), .A(parallel_out[1]), .S(shift_enable), .Y(
        n2) );
  NOR2X1 U6 ( .A(shift_enable), .B(n3), .Y(n13) );
  MUX2X1 U7 ( .B(n4), .A(n3), .S(shift_enable), .Y(n11) );
  INVX1 U8 ( .A(parallel_out[3]), .Y(n3) );
  INVX1 U9 ( .A(parallel_out[2]), .Y(n4) );
endmodule


module stp_sr_4_lsb ( clk, n_rst, serial_in, shift_enable, parallel_out );
  output [3:0] parallel_out;
  input clk, n_rst, serial_in, shift_enable;


  flex_stp_sr_NUM_BITS4_SHIFT_MSB0 CORE ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(shift_enable), .parallel_out(parallel_out) );
endmodule

