// $Id: $
// File name:   adder_16bit.sv
// Created:     9/7/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: 16-bit adder.

module adder_16bit
(
	input wire [15:0] a,
	input wire [15:0] b,
	input wire carry_in,
	output wire [15:0] sum,
	output wire overflow
);


genvar j;

generate
	for (j = 0;j <= (16-1) ; j = j + 1)
	begin
		always @ (a[j], b[j], carry_in )
		begin
			assert( (a[j] == 1'b1) || (a[j] == 1'b0) )
			else
			$error("ERROR: Input 'a' component %d is not a digital logic ", j);
			
			
			assert( (b[j] == 1'b1) || (b[j] == 1'b0) )
			else
			$error("ERROR: Input 'a' component %d is not a digital logic ", j);
			
			
			assert( (carry_in == 1'b1) || (carry_in == 1'b0) )
			else
			$error("ERROR: Input 'carry_in' component %d is not a digital logic ");
			
				
		end		   
	end	
  	endgenerate

	adder_nbit #(16) IX (.a(a), .b(b), .carry_in(carry_in),.sum(sum), .overflow(overflow));		
	
endmodule
