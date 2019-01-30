/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Sep  6 20:06:45 2017
/////////////////////////////////////////////////////////////


module adder_1bit_7 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n3, n4;

  XOR2X1 U1 ( .A(carry_in), .B(n3), .Y(sum) );
  INVX1 U2 ( .A(n4), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n3), .D(carry_in), .Y(n4) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n3) );
endmodule


module adder_1bit_6 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U1 ( .A(carry_in), .B(n4), .Y(sum) );
  INVX1 U2 ( .A(n5), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n4), .D(carry_in), .Y(n5) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n4) );
endmodule


module adder_1bit_0 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U1 ( .A(carry_in), .B(n4), .Y(sum) );
  INVX1 U2 ( .A(n5), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n4), .D(carry_in), .Y(n5) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n4) );
endmodule


module adder_1bit_1 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U1 ( .A(carry_in), .B(n4), .Y(sum) );
  INVX1 U2 ( .A(n5), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n4), .D(carry_in), .Y(n5) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n4) );
endmodule


module adder_1bit_2 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U1 ( .A(carry_in), .B(n4), .Y(sum) );
  INVX1 U2 ( .A(n5), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n4), .D(carry_in), .Y(n5) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n4) );
endmodule


module adder_1bit_3 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U1 ( .A(carry_in), .B(n4), .Y(sum) );
  INVX1 U2 ( .A(n5), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n4), .D(carry_in), .Y(n5) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n4) );
endmodule


module adder_1bit_4 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U1 ( .A(carry_in), .B(n4), .Y(sum) );
  INVX1 U2 ( .A(n5), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n4), .D(carry_in), .Y(n5) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n4) );
endmodule


module adder_1bit_5 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U1 ( .A(carry_in), .B(n4), .Y(sum) );
  INVX1 U2 ( .A(n5), .Y(carry_out) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n4), .D(carry_in), .Y(n5) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n4) );
endmodule


module adder_nbit_BIT_WIDTH8 ( a, b, carry_in, sum, overflow );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input carry_in;
  output overflow;

  wire   [7:1] carry_flags;

  adder_1bit_7 \genblk1[0].IX  ( .a(a[0]), .b(b[0]), .carry_in(carry_in), 
        .sum(sum[0]), .carry_out(carry_flags[1]) );
  adder_1bit_6 \genblk1[1].IX  ( .a(a[1]), .b(b[1]), .carry_in(carry_flags[1]), 
        .sum(sum[1]), .carry_out(carry_flags[2]) );
  adder_1bit_5 \genblk1[2].IX  ( .a(a[2]), .b(b[2]), .carry_in(carry_flags[2]), 
        .sum(sum[2]), .carry_out(carry_flags[3]) );
  adder_1bit_4 \genblk1[3].IX  ( .a(a[3]), .b(b[3]), .carry_in(carry_flags[3]), 
        .sum(sum[3]), .carry_out(carry_flags[4]) );
  adder_1bit_3 \genblk1[4].IX  ( .a(a[4]), .b(b[4]), .carry_in(carry_flags[4]), 
        .sum(sum[4]), .carry_out(carry_flags[5]) );
  adder_1bit_2 \genblk1[5].IX  ( .a(a[5]), .b(b[5]), .carry_in(carry_flags[5]), 
        .sum(sum[5]), .carry_out(carry_flags[6]) );
  adder_1bit_1 \genblk1[6].IX  ( .a(a[6]), .b(b[6]), .carry_in(carry_flags[6]), 
        .sum(sum[6]), .carry_out(carry_flags[7]) );
  adder_1bit_0 \genblk1[7].IX  ( .a(a[7]), .b(b[7]), .carry_in(carry_flags[7]), 
        .sum(sum[7]), .carry_out(overflow) );
endmodule


module adder_8bit ( a, b, carry_in, sum, overflow );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input carry_in;
  output overflow;


  adder_nbit_BIT_WIDTH8 IX ( .a(a), .b(b), .carry_in(carry_in), .sum(sum), 
        .overflow(overflow) );
endmodule

