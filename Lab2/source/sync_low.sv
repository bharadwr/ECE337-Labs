// $Id: $
// File name:   sync_low.sv
// Created:     9/6/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Postlab 2.4

module sync_low
(
input wire clk,
input wire n_rst,
input wire async_in,
output reg sync_out
);
reg Intermediate;

always_ff @ (posedge clk, negedge n_rst)
begin //[: flipone]
 if(1'b0 == n_rst)
   begin
   Intermediate <= 0;
   end
 else
   begin
   Intermediate <= async_in;
   end
end

always_ff @ (posedge clk, negedge n_rst)
begin //[: fliptwo]
 if(1'b0 == n_rst)
  begin
  sync_out <= 0;
  end
 else
  begin
  sync_out <= Intermediate;
  end
end

endmodule
