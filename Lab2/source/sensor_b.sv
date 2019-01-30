// $Id: $
// File name:   sensor_b.sv
// Created:     8/31/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Creates the file
module sensor_b
(
	input wire[3:0] sensors,
	output reg error
);

always_comb
begin
	error = ((sensors[1]&sensors[2])|(sensors[1]&sensors[3])|(sensors[0]));
end
endmodule
