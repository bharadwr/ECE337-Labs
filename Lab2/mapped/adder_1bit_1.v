/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Sep  6 19:13:54 2017
/////////////////////////////////////////////////////////////


module adder_1bit ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n9, n10;

  XOR2X1 U9 ( .A(carry_in), .B(n9), .Y(sum) );
  INVX1 U10 ( .A(n10), .Y(carry_out) );
  AOI22X1 U11 ( .A(b), .B(a), .C(n9), .D(carry_in), .Y(n10) );
  XOR2X1 U12 ( .A(a), .B(b), .Y(n9) );
endmodule

