/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Sep  6 20:48:35 2017
/////////////////////////////////////////////////////////////


module sync_high ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   q1;

  DFFSR q1_reg ( .D(async_in), .CLK(clk), .R(1'b1), .S(n_rst), .Q(q1) );
  DFFSR sync_out_reg ( .D(q1), .CLK(clk), .R(1'b1), .S(n_rst), .Q(sync_out) );
endmodule

