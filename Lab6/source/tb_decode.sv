`timescale 1ns / 100ps
module tb_decode ();
localparam  CLK_PERIOD  = 10;
localparam  CHECK_DELAY = 3;
localparam  NUM_CNT_BITS = 4;
reg Clk, N_rst, tb_scl, sda_in, rw_mode, address_match, stop_found, start_found;
	reg [7:0] tb_starting_byte;
	decode DUT 
	(
		.sda_in(sda_in),.starting_byte(tb_starting_byte),.rw_mode(rw_mode),.address_match(address_match),.stop_found(stop_found),.start_found(start_found),.clk(Clk),.n_rst(N_rst),.scl(tb_scl)
	);
	always begin
		Clk = 1'b0;
		#(CLK_PERIOD / 2.0);
		Clk = 1'b1;
		#(CLK_PERIOD / 2.0);
	end
	initial begin
		//CASE 1
		N_rst = 1;
		tb_scl = 1'b0;
		sda_in = 1'b0;
		tb_starting_byte = 8'b01110000;
		@(posedge Clk);
		#CHECK_DELAY
		@(posedge Clk);
		#CHECK_DELAY
		assert (!stop_found && !address_match && !rw_mode && !start_found) 
			$info("PASS: CASE 1");
		else
			$error("FAIL: CASE 1");

		//CASE 2 
		#CHECK_DELAY
		N_rst = 1;
		tb_scl = 1'b0;
		sda_in = 1'b1;
		tb_starting_byte = 8'b11111000;
		@(posedge Clk);
		#CHECK_DELAY
		@(posedge Clk);
		#CHECK_DELAY
		assert (!address_match && !stop_found && !start_found && !rw_mode) 
			$info("PASS: CASE 2");
		else
			$error("FAIL: CASE 2");

		//CASE 3
		N_rst = 1;
		tb_scl = 1'b0;
		sda_in = 1'b0;
		tb_starting_byte = 8'b11110001;
		@(posedge Clk);
		#CHECK_DELAY
		@(posedge Clk);
		#CHECK_DELAY
		assert (address_match && !stop_found && !start_found && rw_mode)
			$info("PASS: CASE 3");
		else
			$error("FAIL: CASE 3");

		//CASE 4
    		#CHECK_DELAY
       		N_rst = 1;
        	tb_scl = 1'b1;
        	sda_in = 1'b0;
        	tb_starting_byte = 8'b11110000; 
        	@(posedge Clk);
        	#CHECK_DELAY
        	@(posedge Clk);
        	#CHECK_DELAY
        	assert (address_match && !stop_found && !start_found && !rw_mode)  
			$info("PASS: CASE 4"); 
        	else 
                	$error("FAIL: CASE 4");
 
		//CASE 5
		#CHECK_DELAY  
		sda_in = 1'b1; 
		tb_starting_byte = 8'b11111111; 
		N_rst = 1;
		tb_scl = 1'b0;
		@(posedge Clk);
		#CHECK_DELAY
		@(posedge Clk);
		#CHECK_DELAY
		assert (!stop_found && !address_match && rw_mode && !start_found) 
			$info("PASS: CASE 5"); 
		else 
			$error("FAIL: CASE 5");

		//CASE 6
		#CHECK_DELAY 
		tb_scl = 1'b1;
		sda_in = 1'b1; 
		tb_starting_byte = 8'b11110000; 
		@(posedge Clk);
		#CHECK_DELAY
		@(posedge Clk);
		#CHECK_DELAY 
		tb_scl = 1'b1;
		sda_in = 1'b0; 
		@(posedge Clk);
		#CHECK_DELAY 
		assert (address_match && !stop_found && start_found && !rw_mode) 
		    	$info("PASS: CASE 6"); 
		else 
		    	$error("FAIL: CASE 6");
	
		//CASE 7 
		#CHECK_DELAY
		tb_scl = 1'b1;
		sda_in = 1'b0;
		tb_starting_byte = 8'b11111101;
		@(posedge Clk);
		#CHECK_DELAY
		@(posedge Clk);
		#CHECK_DELAY
		tb_scl = 1'b1;
		sda_in = 1'b1;
		@(posedge Clk);
		#CHECK_DELAY
		assert (!address_match && stop_found && !start_found && rw_mode) 
		    	$info("PASS: CASE 7");
		else
		    	$error("FAIL: CASE 7");

		//CASE 8
		N_rst = 1;
		#CHECK_DELAY
		tb_scl = 1'b0;
		sda_in = 1'b0;
		tb_scl = 1'b1;
		sda_in = 1'b1;
		tb_starting_byte = 8'b10110000;
		@(posedge Clk);
		#CHECK_DELAY
		@(posedge Clk);
		#CHECK_DELAY
		tb_scl = 1'b1;
		sda_in = 1'b0;
		@(posedge Clk);
		#CHECK_DELAY
		assert (!address_match && !stop_found && start_found && !rw_mode)  
		    	$info("PASS: CASE 8");
		else
			$error("FAIL: CASE 8");

		//CASE 9
		#CHECK_DELAY
		tb_scl = 1'b1;
		sda_in = 1'b0;
		tb_starting_byte = 8'b11010000;
		@(posedge Clk);
		#CHECK_DELAY
		@(posedge Clk);
		#CHECK_DELAY
		tb_scl = 1'b1;
		sda_in = 1'b1;
		@(posedge Clk);
		#CHECK_DELAY
		assert (!address_match && stop_found && !start_found && !rw_mode)      
			$info("PASS: CASE 9");
		else
		    $error("FAIL: CASE 9");

		//CASE 10
		#CHECK_DELAY
		N_rst = 0;
		N_rst = 1;
		tb_scl = 1'b0;
		tb_scl = 1'b1;
		sda_in = 1'b1;
		sda_in = 1'b0;
		tb_starting_byte = 8'b11100000;
		@(posedge Clk);
		#CHECK_DELAY
		@(posedge Clk);
		#CHECK_DELAY
		assert (!address_match && !stop_found && !start_found && !rw_mode) 
		    	$info("PASS: CASE 10");
		else
			$error("FAIL: CASE 10");
	end	
endmodule
