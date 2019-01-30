// $Id: $
// File name:   sensor_d.sv
// Created:     8/31/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Creates the file.

module sensor_d
(
input wire[3:0] sensors,
 output wire error
 );

   wire      t1;
   wire      t2;
   wire      t3;

   assign t1 = (sensors[2] & sensors[1]);
   assign t2 = (sensors[3] & sensors[1]);
   assign t3 = (t1 | t2);
   assign error = (t3 | sensors[0]);

endmodule
