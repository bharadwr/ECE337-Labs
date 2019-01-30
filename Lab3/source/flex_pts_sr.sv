// $Id: $
// File name:   flex_pts_sr.sv
// Created:     9/7/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: flex Parallel-to-Serial file.

module flex_pts_sr
#(
	parameter NUM_BITS = 4,
	parameter SHIFT_MSB = 1	 
)
(
 input wire clk,
 input wire n_rst,
 input wire shift_enable,
 input wire load_enable,
 input reg [NUM_BITS-1: 0] parallel_in,
 output wire serial_out
 );

reg [(NUM_BITS -1): 0] current;
reg [(NUM_BITS-1): 0] next;

always_ff @ (posedge clk, negedge n_rst) begin

	if( n_rst == 0)
		current <= '1;
	else
		current <= next;       
end

always_comb begin
	if(load_enable == 1)
		next = parallel_in;   
	else
	begin
		if(shift_enable == 1) begin
			if (SHIFT_MSB == 1)
				next = {current[NUM_BITS-2:0], 1'b1};    
			else
				next = { 1'b1, current[NUM_BITS-1:1]};              
		end
		else
			next = current;       
	end   
end

if(SHIFT_MSB == 1)
	assign serial_out = current[(NUM_BITS-1)];
	else
		assign serial_out = current[0];

endmodule


