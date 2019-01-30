// $Id: $
// File name:   fir_filter.sv
// Created:     9/24/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: fir_filter file

module fir_filter
(
	 input  wire clk,
	 input  wire n_reset,
	 input  wire [15:0] sample_data,
	 input  wire [15:0] fir_coefficient,
	 input  wire data_ready,
	 input  wire load_coeff,
	 output wire one_k_samples,
	 output wire modwait,
	 output wire [15:0] fir_out,
	 output wire err
 );

//make function call here
	logic count_up;
	logic clear;
	logic [16:0] dpout;
	logic [2:0] operation;
	logic [3:0] source1;
	logic [3:0] source2;
	logic [3:0] destination;
	logic overflow;
	logic syncdr;
	logic synclc;   
	controller drake (
			.clk(clk),
			.n_reset(n_reset),
			.dr(syncdr),
			.lc(synclc),
			.overflow(overflow),
			.cnt_up(count_up),
			.clear(clear),
			.modwait(modwait),
			.op(operation),
			.src1(source1),
			.src2(source2),
			.dest(destination),
			.err(err)
			);
	sync_low sync1 (
			.clk(clk),
			.n_rst(n_reset),
			.async_in(data_ready),
			.sync_out(syncdr)
		  );
	sync_low sync2 (
			.clk(clk),
			.n_rst(n_reset),
			.async_in(load_coeff),
			.sync_out(synclc)
		  );
	magnitude mag (
			.in(dpout),
			.out(fir_out)
		      );
	datapath dp (
			.clk(clk),
			.n_reset(n_reset),
			.op(operation),
			.src1(source1),
			.src2(source2),
			.dest(destination),
			.ext_data1(sample_data),
			.ext_data2(fir_coefficient),
			.outreg_data(dpout),
			.overflow(overflow)
		    );
	counter count (
			.clk(clk),
			.n_reset(n_reset),
			.cnt_up(count_up),
			.clear(clear),
			.one_k_samples(one_k_samples)
		    );

endmodule 
