module sda_sel
(
	input wire tx_out,
	input wire [1:0] sda_mode,
	output reg sda_out
);
	always @ (sda_mode, tx_out) begin
		sda_out = 1'b1; //to prevent latch formation and set default
		case(sda_mode) 
			2'b00: sda_out = 1'b1;
			2'b01: sda_out = 1'b0;
			2'b10: sda_out = 1'b1;
			2'b11: sda_out = tx_out;
	        endcase
	end
endmodule
