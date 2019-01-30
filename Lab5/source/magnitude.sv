// $Id: $
// File name:   magnitude.sv
// Created:     9/24/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: magnitude file


module magnitude
(

	input wire [16:0] in,
	output reg [15:0] out
);
	assign out = ((in[16] != 0) ? (~in[15:0] + 1) : in[15:0]);
endmodule
