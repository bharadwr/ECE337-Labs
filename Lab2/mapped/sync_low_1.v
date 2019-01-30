/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Sep  6 20:50:44 2017
/////////////////////////////////////////////////////////////


module sync_low ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   q1;

  DFFSR q1_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(q1) );
  DFFSR sync_out_reg ( .D(q1), .CLK(clk), .R(n_rst), .S(1'b1), .Q(sync_out) );
endmodule

