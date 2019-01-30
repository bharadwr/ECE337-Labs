// $Id: $
// File name:   tb_moore.sv
// Created:     9/7/2017
// Author:      Rtvik Sriram Bharadwaj
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: test bench for moore model.

`timescale 1ns / 100ps
	
module tb_moore();

localparam CLK_PERIOD = 2.5;
localparam CHECK_DELAY = 1;
localparam NUM_CNT_BITS = 4;
integer test;
reg tb_clk;
reg tb_n_rst;
reg tb_input;
reg tb_output;

	moore DUT
	(
	 .clk(tb_clk),
	 .n_rst(tb_n_rst),
	 .i(tb_input),
	 .o(tb_output)		
	);

	//clock generation block
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
	test = 1;
	tb_n_rst = 1'b0;
	#(CHECK_DELAY);
	@(posedge tb_clk);
	tb_n_rst = 1'b1;
	@(posedge tb_clk);

	tb_input=1'b1;

	if(tb_output == 0)
		$info("CORRECT: CASE 1");
	else
		$error("ERROR: CASE 1");

	//case 2
	test = 2;		
	tb_input = 1'b1;

	@(posedge tb_clk);
	if(tb_output == 0)
		$info("CORRECT: CASE 2");
	else
		$error("ERROR: CASE 2");
	//case 3
	test = 3;		
	tb_input = 1'b0;

	@(posedge tb_clk);
	if(tb_output == 0)
		$info("CORRECT: CASE 3");
	else
		$error("ERROR: CASE 3");

	//case 4 
	test = 4;
	tb_input = 1'b1;
	@(posedge tb_clk);
	@(posedge tb_clk);
	if(tb_output == 1)
		$info("CORRECT: CASE 4");
	else
		$error("ERROR: CASE 4");

	//case 5	
	test = 5;
	tb_input = 1'b1;

	@(posedge tb_clk);
	if(tb_output == 0)
		$info("CORRECT: CASE 5");
	else
		$error("ERROR: CASE 5");   

	//case 6	
	test = 6;
	tb_input = 1'b0;

	@(posedge tb_clk);
	if(tb_output == 0)
		$info("CORRECT: CASE 6");
	else
		$error("ERROR: CASE 6");  

	//case 7	
	test = 7;
	tb_input = 1'b1;

	@(posedge tb_clk);
	if(tb_output == 0)
		$info("CORRECT: CASE 7");
	else
		$error("ERROR: CASE 7");  

	end
endmodule

