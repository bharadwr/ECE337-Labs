// $Id: $
// File name:   counter.sv
// Created:     9/24/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: counter file

module counter
(
	input	wire clk,
	input	wire n_reset,
	input	wire cnt_up,
	input	wire clear,
	output 	wire one_k_samples
);

flex_counter #(10) COUNT
(
      .rollover_val(10'd1000),
      .clk(clk),
      .n_rst(n_reset),
      .clear(clear),
      .count_enable(cnt_up),
      .rollover_flag(one_k_samples)
);

endmodule
