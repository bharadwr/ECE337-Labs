// $Id: $
// File name:   sr_9bit.sv
// Created:     20/7/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-IDK
// Version:     1.0  Initial Design Entry
// Description: reg shift by 9 bits.
module sr_9bit
(
 input wire clk,
 input wire n_rst,
 input wire shift_strobe,
 input wire serial_in,
 output wire [7:0] packet_data,
 output wire stop_bit
 );
reg [8:0] parallel_out;
flex_stp_sr #(9,0) SHIFT_REG_9BIT
(	
	 .n_rst (n_rst),
	 .shift_enable (shift_strobe),
	 .serial_in (serial_in),
	 .clk (clk),
	 .parallel_out (parallel_out)

);
assign packet_data = parallel_out[7:0];
assign stop_bit = parallel_out[8];
endmodule
