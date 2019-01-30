// $Id: $
// File name:   sensor_s.sv
// Created:     8/31/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Creates the file

module sensor_s
(
   input wire[3:0] sensors,
   output wire error
);

   wire temp1;
   wire temp2;
   wire temp3;

   AND2X1 A1 (sensors[1], sensors[2], temp1);
   AND2X1 A2 (sensors[3], sensors[1], temp2);
   OR2X1 OR1(temp1, temp2, temp3);
   OR2X1 OR2 (temp3, sensors[0], error);
   
endmodule
