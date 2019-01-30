// $Id: $
// File name:   tb_mealy.sv
// Created:     9/7/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: test bench for mealy model.

`timescale 1ns / 100ps

module tb_mealy();

localparam CLK_PERIOD = 2.5;
localparam CHECK_DELAY = 1;
localparam NUM_CNT_BITS = 4;
integer test;
reg tb_clk;
reg tb_n_rst;
reg tb_input;
reg tb_output;

	mealy DUT
	(
	 .clk(tb_clk),
	 .n_rst(tb_n_rst),
	 .i(tb_input),
	 .o(tb_output)		
	);

	//clock generation here
	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end


	initial 
	begin

	//case 1
	//first case passing 1101 to it
	test = 1;
	tb_n_rst = 1'b0;
	#5;
	tb_n_rst = 1'b1;
	//@(posedge tb_clk);
	#5;
	tb_input=1'b1;
	@(posedge tb_clk);
	tb_input=1'b1;
	@(posedge tb_clk);
	tb_input=1'b0;
	@(posedge tb_clk);
	tb_input=1'b1;

	#(CHECK_DELAY);
	if(tb_output == 1)
		$info("CORRECT: CASE 1");
	else
		$error("ERROR: CASE 1");

	//case 2
	test = 2;	
	tb_n_rst = 1'b0;				
	#5;
	tb_n_rst = 1'b1;
	//@(posedge tb_clk);
	#5;
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b1;	
	@(posedge tb_clk);	
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b0;
	@(posedge tb_clk);
	tb_input = 1'b0;
	#(CHECK_DELAY);	
	if(tb_output == 0)
		$info("CORRECT: CASE 2");
	else
		$error("ERROR: CASE 2");

	//case 3
	test = 3;	
	tb_n_rst = 1'b0;				
	#5;
	tb_n_rst = 1'b1;
	#5;
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b0;
	@(posedge tb_clk);
	tb_input = 1'b1;	
	@(posedge tb_clk);	
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b0;
	@(posedge tb_clk);
	tb_input = 1'b1;
	#(CHECK_DELAY);	
	if(tb_output == 1)
		$info("CORRECT: CASE 3");
	else
		$error("ERROR: CASE 3");

	//case 4 
	test = 4;	
	tb_n_rst = 1'b0;				
	#5;
	tb_n_rst = 1'b1;
	//@(posedge tb_clk);
	#5;
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b1;	
	@(posedge tb_clk);	
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b1;
	@(posedge tb_clk);
	tb_input = 1'b0;
	#(CHECK_DELAY);	

	if(tb_output == 0)
		$info("CORRECT: CASE 4");
	else
		$error("ERROR: CASE 4");
	end

endmodule
