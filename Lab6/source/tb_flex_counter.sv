// $Id: $
// File name:   tb_flex_counter.sv
// Created:     9/7/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: test bench for flex counter.

`timescale 1ns / 100ps

module tb_flex_counter ();

reg tb_clk;
reg tb_n_rst;
reg tb_clear;
localparam NUM_CNT_BITS = 4;
localparam CLK_PERIOD = 2.5;
localparam CHECK_DELAY = 1; 
reg tb_count_enable;
reg [NUM_CNT_BITS-1:0] tb_rollover_val;
reg [NUM_CNT_BITS-1:0] tb_count_out;
reg tb_rollover_flag;

flex_counter DUT
	( 
	 .clk( tb_clk ),
	 .n_rst( tb_n_rst ),
	 .clear( tb_clear ),
	 .count_enable( tb_count_enable ),
	 .rollover_val( tb_rollover_val ),
	 .count_out( tb_count_out ),
	 .rollover_flag( tb_rollover_flag ) 
	);
	integer testcase;
	always begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end
	initial begin
		@(posedge tb_clk);
		tb_clear = 1'b1;
		@(posedge tb_clk);
		tb_clear = 1'b0;
		@(posedge tb_clk)

		//TEST CASE 1
		testcase = 1;
		tb_n_rst = 1'b1;		
		tb_rollover_val = 4;
		tb_count_enable = 1'b0;
		tb_clear = 1'b1;

		@(posedge tb_clk); 
		#(CHECK_DELAY);
		if((tb_count_out == 0) && (tb_rollover_flag == 0))
			$info("CASE 1: PASSED");
		else 
			$error("CASE 2: PASSED");


		//TEST CASE 2
		@(posedge tb_clk);
		tb_clear = 1'b1;
		@(posedge tb_clk);
		tb_clear = 1'b0;
		tb_n_rst = 1'b0;		
		tb_rollover_val = 4;
		tb_count_enable = 1'b1;
		tb_clear = 1'b0;
		testcase = 2;

		#(CHECK_DELAY);
		if((tb_count_out == 0) && (tb_rollover_flag == 0))
			$info("CASE 2: PASSED");
		else 
			$error("CASE 2: FAILED");

		@(posedge tb_clk);
		tb_clear = 1'b1;
		@(posedge tb_clk);
		tb_clear = 1'b0;

		tb_rollover_val = 5;
		tb_count_enable = 1'b1;
		tb_clear = 1'b0;
		testcase = 3;
		tb_n_rst= 1'b1;		

		@(posedge tb_clk); 
		@(posedge tb_clk); 
		@(posedge tb_clk); 
		@(posedge tb_clk); 
		@(posedge tb_clk);



		#(CHECK_DELAY);
		if((tb_count_out == tb_rollover_val) && (tb_rollover_flag == 1))
			$info("CASE 3: PASSED");
		else 
			$error("CASE 3: FAILED");

		//TEST CASE 4
		tb_count_enable = 1'b0;
		@(posedge tb_clk);
		tb_clear = 1'b1;
		@(posedge tb_clk);
		tb_clear = 1'b0;
		tb_n_rst = 1'b1;		
		tb_rollover_val = 5;
		testcase = 4;
		@(posedge tb_clk); 
		@(posedge tb_clk); 
		@(posedge tb_clk); 


		#(CHECK_DELAY);
		if((tb_count_out == 0) && (tb_rollover_flag == 0))
			$info("CASE 4: PASSED");
		else 
			$error("CASE 4: FAILED");

		//TEST CASE 5
		@(posedge tb_clk);
		tb_clear = 1'b1;
		@(posedge tb_clk);
		tb_clear = 1'b0;
		tb_n_rst = 1'b1;		
		tb_rollover_val = 5;
		tb_count_enable = 1'b1;
		testcase = 5;
		tb_n_rst = 1'b0; 
		@(posedge tb_clk);

		#(CHECK_DELAY);
		if((tb_count_out == 0) && ( tb_rollover_flag == 0))
			$info("CASE 5: PASSED");
		else 
			$error("CASE 5: FAILED");

	end

endmodule
